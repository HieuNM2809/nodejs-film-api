const episodeService = require('../services/episode.service');

exports.getAllEpisodes = async (req, res) => {
    try {
        // Lấy page và limit từ query parameters với giá trị mặc định
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const episodes = await episodeService.getAllEpisodes(limit, offset);

        // Trả về dữ liệu với thông tin phân trang
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: episodes.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(episodes.count / limit),
                episodes: episodes.rows
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

exports.createEpisode = async (req, res) => {
    try {
        const newEpisode = await episodeService.createEpisode(req.body);

        res.status(201).json({
            status: 201,
            message: 'Episode created successfully',
            data: newEpisode
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getEpisodeById = async (req, res) => {
    try {
        const episode = await episodeService.getEpisodeById(req.params.id);
        if (!episode) {
            return res.status(404).json({
                status: 404,
                message: 'Episode not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: episode
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateEpisode = async (req, res) => {
    try {
        const updatedEpisode = await episodeService.updateEpisode(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'Episode updated successfully',
            data: updatedEpisode
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteEpisode = async (req, res) => {
    try {
        await episodeService.deleteEpisode(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'Episode deleted successfully',
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
