const FilmActor = require('../Models/FilmActor.model');

exports.getAllFilmActors = async (limit, offset) => {
    return await FilmActor.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createFilmActor = async (filmActorData) => {
    return await FilmActor.create(filmActorData);
};

exports.getFilmActorById = async (id) => {
    return await FilmActor.findByPk(id);
};

exports.updateFilmActor = async (id, filmActorData) => {
    const filmActor = await FilmActor.findByPk(id);
    if (!filmActor) {
        throw new Error('FilmActor not found');
    }
    return await filmActor.update(filmActorData);
};

exports.deleteFilmActor = async (id) => {
    const filmActor = await FilmActor.findByPk(id);
    if (!filmActor) {
        throw new Error('FilmActor not found');
    }
    return await filmActor.destroy();
};
