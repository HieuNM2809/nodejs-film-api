const Episode = require('../models/Episode.model');

exports.getAllEpisodes = async (limit, offset) => {
    return await Episode.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createEpisode = async (episodeData) => {
    return await Episode.create(episodeData);
};

exports.getEpisodeById = async (id) => {
    return await Episode.findByPk(id);
};

exports.updateEpisode = async (id, episodeData) => {
    const episode = await Episode.findByPk(id);
    if (!episode) {
        throw new Error('Episode not found');
    }
    return await episode.update(episodeData);
};

exports.deleteEpisode = async (id) => {
    const episode = await Episode.findByPk(id);
    if (!episode) {
        throw new Error('Episode not found');
    }
    return await episode.destroy();
};
