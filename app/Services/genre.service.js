const Genre = require('../models/Genre.model');

exports.getAllGenres = async (limit, offset) => {
    return await Genre.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createGenre = async (genreData) => {
    return await Genre.create(genreData);
};

exports.getGenreById = async (id) => {
    return await Genre.findByPk(id);
};

exports.updateGenre = async (id, genreData) => {
    const genre = await Genre.findByPk(id);
    if (!genre) {
        throw new Error('Genre not found');
    }
    return await genre.update(genreData);
};

exports.deleteGenre = async (id) => {
    const genre = await Genre.findByPk(id);
    if (!genre) {
        throw new Error('Genre not found');
    }
    return await genre.destroy();
};
