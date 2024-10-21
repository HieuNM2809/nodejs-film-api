const actorService = require('../services/actor.service');

exports.getAllActors = async (req, res) => {
    try {
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const actors = await actorService.getAllActors(limit, offset);

        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: actors.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(actors.count / limit),
                actors: actors.rows
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

exports.createActor = async (req, res) => {
    try {
        const newActor = await actorService.createActor(req.body);

        res.status(201).json({
            status: 201,
            message: 'Actor created successfully',
            data: newActor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getActorById = async (req, res) => {
    try {
        const actor = await actorService.getActorById(req.params.id);
        if (!actor) {
            return res.status(404).json({
                status: 404,
                message: 'Actor not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: actor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateActor = async (req, res) => {
    try {
        const updatedActor = await actorService.updateActor(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'Actor updated successfully',
            data: updatedActor
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteActor = async (req, res) => {
    try {
        await actorService.deleteActor(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'Actor deleted successfully',
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
