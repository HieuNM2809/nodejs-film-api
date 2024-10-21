const filmService = require('../Services/film.service');

exports.getAllFilms = async (req, res) => {
    try {
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        // Lấy từ khóa tìm kiếm từ query parameter
        const search = req.query.search || '';

        const films = await filmService.getAllFilms(limit, offset, search);

        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: films.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(films.count / limit),
                films: films.rows
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

exports.createFilm = async (req, res) => {
    try {
        const newFilm = await filmService.createFilm(req.body);

        res.status(201).json({
            status: 201,
            message: 'Film created successfully',
            data: newFilm
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getFilmById = async (req, res) => {
    try {
        const film = await filmService.getFilmById(req.params.id);
        if (!film) {
            return res.status(404).json({
                status: 404,
                message: 'Film not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: film
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateFilm = async (req, res) => {
    try {
        const updatedFilm = await filmService.updateFilm(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'Film updated successfully',
            data: updatedFilm
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteFilm = async (req, res) => {
    try {
        await filmService.deleteFilm(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'Film deleted successfully',
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
