const {Op} = require('sequelize');
Film = require('../Models/Film.model');
const Episode = require('../Models/Episode.model');
const Country = require('../Models/Country.model');
const FilmActor = require('../Models/FilmActor.model');
const Actor = require('../Models/Actor.model');
const FilmGenre = require('../Models/FilmGenre.model');
const Genre = require('../Models/Genre.model');

exports.getAllFilms = async (limit, offset, search) => {
    const whereCondition = search
        ? {
            [Op.or]: [
                {title: {[Op.like]: `%${search}%`}},
                {status: {[Op.like]: `%${search}%`}},
                {director: {[Op.like]: `%${search}%`}},
                {description: {[Op.like]: `%${search}%`}},
                {language: {[Op.like]: `%${search}%`}},
                {quality: {[Op.like]: `%${search}%`}},
                {release_year: {[Op.like]: `%${search}%`}}
            ]
        }
        : {}; // Nếu search rỗng, không sử dụng điều kiện where

    return await Film.findAndCountAll({
        limit: limit,
        offset: offset,
        where: whereCondition, // Sử dụng điều kiện where ở đây
        include: [
            {
                model: Country,
                as: 'country',
                attributes: ['id', 'name'] // Chỉ lấy các thuộc tính cần thiết
            },
            {
                model: Episode,
                as: 'filmEpisodes',
                attributes: ['id', 'episode_number', 'episode_title', 'episode_url'] // Lấy các thông tin về tập phim
            },
            {
                model: Actor,
                as: 'actors',
                through: {attributes: []}, // Ẩn bảng trung gian FilmActor
                attributes: ['id', 'name'] // Lấy các thông tin về diễn viên
            },
            {
                model: Genre,
                as: 'genres',
                through: {attributes: []}, // Ẩn bảng trung gian FilmGenre
                attributes: ['id', 'name'] // Lấy các thông tin về thể loại phim
            }
        ]
    });
};

exports.createFilm = async (filmData) => {
    return await Film.create(filmData);
};

exports.getFilmById = async (id) => {
    return await Film.findByPk(id, {
        include: [
            {
                model: Country,
                as: 'country',
                attributes: ['id', 'name'] // Chỉ lấy các thuộc tính cần thiết từ bảng Country
            },
            {
                model: Episode,
                as: 'filmEpisodes',
                attributes: ['id', 'episode_number', 'episode_title', 'episode_url'] // Lấy các thông tin về tập phim
            }]
    });
};

exports.updateFilm = async (id, filmData) => {
    const film = await Film.findByPk(id);
    if (!film) {
        throw new Error('Film not found');
    }
    return await film.update(filmData);
};

exports.deleteFilm = async (id) => {
    const film = await Film.findByPk(id);
    if (!film) {
        throw new Error('Film not found');
    }
    return await film.destroy();
};
