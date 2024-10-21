const filmActorService = require('../services/filmActor.service');

exports.getAllFilmActors = async (req, res) => {
    try {
        // Lấy page và limit từ query parameters với giá trị mặc định
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const filmActors = await filmActorService.getAllFilmActors(limit, offset);

        // Trả về dữ liệu với thông tin phân trang
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: filmActors.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(filmActors.count / limit),
                filmActors: filmActors.rows
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

exports.createFilmActor = async (req, res) => {
    try {
        const newFilmActor = await filmActorService.createFilmActor(req.body);

        res.status(201).json({
            status: 201,
            message: 'FilmActor created successfully',
            data: newFilmActor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getFilmActorById = async (req, res) => {
    try {
        const filmActor = await filmActorService.getFilmActorById(req.params.id);
        if (!filmActor) {
            return res.status(404).json({
                status: 404,
                message: 'FilmActor not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: filmActor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateFilmActor = async (req, res) => {
    try {
        const updatedFilmActor = await filmActorService.updateFilmActor(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'FilmActor updated successfully',
            data: updatedFilmActor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteFilmActor = async (req, res) => {
    try {
        await filmActorService.deleteFilmActor(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'FilmActor deleted successfully',
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
