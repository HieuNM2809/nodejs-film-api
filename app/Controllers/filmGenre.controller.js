const filmGenreService = require('../services/filmGenre.service');

exports.getAllFilmGenres = async (req, res) => {
    try {
        // Lấy page và limit từ query parameters với giá trị mặc định
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const filmGenres = await filmGenreService.getAllFilmGenres(limit, offset);

        // Trả về dữ liệu với thông tin phân trang
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: filmGenres.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(filmGenres.count / limit),
                filmGenres: filmGenres.rows
            }
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.createFilmGenre = async (req, res) => {
    try {
        const newFilmGenre = await filmGenreService.createFilmGenre(req.body);

        res.status(201).json({
            status: 201,
            message: 'FilmGenre created successfully',
            data: newFilmGenre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getFilmGenreById = async (req, res) => {
    try {
        const filmGenre = await filmGenreService.getFilmGenreById(req.params.id);
        if (!filmGenre) {
            return res.status(404).json({
                status: 404,
                message: 'FilmGenre not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: filmGenre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateFilmGenre = async (req, res) => {
    try {
        const updatedFilmGenre = await filmGenreService.updateFilmGenre(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'FilmGenre updated successfully',
            data: updatedFilmGenre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteFilmGenre = async (req, res) => {
    try {
        await filmGenreService.deleteFilmGenre(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'FilmGenre deleted successfully',
            data: null
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};
