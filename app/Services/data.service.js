const axios = require('axios');
const Film = require('../models/Film.model');
const Country = require('../models/Country.model');
const Genre = require('../models/Genre.model');
const Actor = require('../models/Actor.model');
const Episode = require('../models/Episode.model');

const PHIMAPI = 'https://phimapi.com';

// Hàm gọi API danh sách phim mới cập nhật
exports.getUpdatedMovies = async (startPage = 1, pageCount = 10) => {
    let repData = [];
    let allMovies = [];
    let currentPage = startPage;
    let totalPages = startPage + pageCount - 1; // Tính tổng số trang cần lấy

    try {
        // Lặp qua các trang từ trang bắt đầu cho đến số trang cần lấy
        while (currentPage <= totalPages) {
            const response = await axios.get(PHIMAPI + `/danh-sach/phim-moi-cap-nhat?page=${currentPage}`);
            const {items, pagination} = response.data;

            // Lưu các item phim vào mảng allMovies
            allMovies = allMovies.concat(items);

            // Nếu trang hiện tại lớn hơn số trang tối đa, thoát vòng lặp
            if (currentPage >= pagination.totalPages) break;

            currentPage++;
        }
        await handleItemFilm(allMovies, repData);

        return repData;
    } catch (error) {
        throw new Error('Error fetching updated movies: ' + error.message);
    }
};

// Hàm xử lý từng item phim
const handleItemFilm = async (allMovies, repData) => {

    try {
        // Xử lý từng item phim
        for (const movie of allMovies) {
            const existingFilm = await Film.findOne({where: {outside_id: movie._id}});
            const movieDetailsAll = await getMovieDetails(movie.slug);
            const movieDetails = movieDetailsAll?.movie;
            const movieDetailsEpisodes = movieDetailsAll?.episodes[0]?.server_data;

            // Chuẩn bị dữ liệu phim
            var dataFilm = handleDataFilm(movieDetails);

            // Xử lý quốc gia
            dataFilm.country_id = await handleCountry(movieDetails)

            let film;
            if (existingFilm) {
                // Nếu phim đã tồn tại, thực hiện cập nhật tất cả các thông tin
                await existingFilm?.update(dataFilm);
                film = existingFilm;

                console.log(`Updated movie: ${movieDetails.name}`);
                repData.push(`Updated movie: ${movieDetails.name}`);
            } else {
                // Nếu phim chưa tồn tại, thực hiện thêm mới
                dataFilm.outside_id = movieDetails?._id;
                film = await Film.create(dataFilm);

                console.log(`Created new movie: ${movieDetails.name}`);
                repData.push(`Created new movie: ${movieDetails.name}`);
            }

            // Xử lý tập phim (episode)
            handleEpisode(movieDetailsEpisodes, film);
        }
    } catch (error) {
        throw new Error('Error handling items film: ' + error.message);
    }
};


const getMovieDetails = async (Slug) => {
    try {
        const response = await axios.get(PHIMAPI + `/phim/${Slug}`);
        return response.data;
    } catch (error) {
        throw new Error('Error fetching movie details: ' + error.message);
    }
};

const handleDataFilm = (movieDetails) => {
    return {
        title: movieDetails?.name,
        release_year: movieDetails?.year,
        poster_url: movieDetails?.poster_url,
        duration: movieDetails?.time,
        status: movieDetails?.status,
        episodes: movieDetails?.episode_total,
        quality: movieDetails?.quality,
        language: movieDetails?.lang,
        description: movieDetails?.content,
        director: JSON.stringify(movieDetails?.director)
    };
}

const handleCountry = async (movieDetails) => {
    let countryId = null;
    if (movieDetails?.country && movieDetails?.country?.length > 0) {
        const countryName = movieDetails?.country[0]?.name; // Lấy tên quốc gia đầu tiên
        let country = await Country.findOne({where: {name: countryName}});

        // Nếu quốc gia chưa tồn tại, tạo quốc gia mới
        if (!country) {
            country = await Country.create({name: countryName});
        }

        countryId = country.id;
    }
    return countryId;
};

const handleEpisode = async (movieDetailsEpisodes, film) => {

    if (movieDetailsEpisodes && movieDetailsEpisodes?.length > 0) {
        for (const episode of movieDetailsEpisodes) {
            let existingEpisode = await Episode.findOne({
                where: {
                    film_id: film.id,
                    slug: episode.slug
                }
            });

            const episodeData = {
                film_id: film.id,
                episode_number: episode?.episode_number,
                slug: episode?.slug,
                episode_title: episode?.name || `Tập ${episode?.filename}`,
                episode_url: episode?.link_embed
            };

            if (existingEpisode) {
                // Nếu tập phim đã tồn tại, thực hiện cập nhật
                await existingEpisode.update(episodeData);
                console.log(`Updated episode: ${episode.episode_title || `Episode ${episode.episode_number}`}`);
            } else {
                // Nếu tập phim chưa tồn tại, tạo mới
                await Episode.create(episodeData);
                console.log(`Created new episode: ${episode.episode_title || `Episode ${episode.episode_number}`}`);
            }
        }
    }
}