const FilmGenre = require('../models/FilmGenre.model');

exports.getAllFilmGenres = async (limit, offset) => {
    return await FilmGenre.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createFilmGenre = async (filmGenreData) => {
    return await FilmGenre.create(filmGenreData);
};

exports.getFilmGenreById = async (id) => {
    return await FilmGenre.findByPk(id);
};

exports.updateFilmGenre = async (id, filmGenreData) => {
    const filmGenre = await FilmGenre.findByPk(id);
    if (!filmGenre) {
        throw new Error('FilmGenre not found');
    }
    return await filmGenre.update(filmGenreData);
};

exports.deleteFilmGenre = async (id) => {
    const filmGenre = await FilmGenre.findByPk(id);
    if (!filmGenre) {
        throw new Error('FilmGenre not found');
    }
    return await filmGenre.destroy();
};
