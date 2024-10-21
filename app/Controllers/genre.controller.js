const genreService = require('../services/genre.service');

exports.getAllGenres = async (req, res) => {
    try {
        // Lấy page và limit từ query parameters với giá trị mặc định
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const genres = await genreService.getAllGenres(limit, offset);

        // Trả về dữ liệu với thông tin phân trang
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: genres.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(genres.count / limit),
                genres: genres.rows
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

exports.createGenre = async (req, res) => {
    try {
        const newGenre = await genreService.createGenre(req.body);

        res.status(201).json({
            status: 201,
            message: 'Genre created successfully',
            data: newGenre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getGenreById = async (req, res) => {
    try {
        const genre = await genreService.getGenreById(req.params.id);
        if (!genre) {
            return res.status(404).json({
                status: 404,
                message: 'Genre not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: genre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateGenre = async (req, res) => {
    try {
        const updatedGenre = await genreService.updateGenre(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'Genre updated successfully',
            data: updatedGenre
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteGenre = async (req, res) => {
    try {
        await genreService.deleteGenre(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'Genre deleted successfully',
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
