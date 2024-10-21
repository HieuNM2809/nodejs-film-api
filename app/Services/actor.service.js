const Actor = require('../models/Actor.model');

exports.getAllActors = async (limit, offset) => {
    return await Actor.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createActor = async (actorData) => {
    return await Actor.create(actorData);
};

exports.getActorById = async (id) => {
    return await Actor.findByPk(id);
};

exports.updateActor = async (id, actorData) => {
    const actor = await Actor.findByPk(id);
    if (!actor) {
        throw new Error('Actor not found');
    }
    return await actor.update(actorData);
};

exports.deleteActor = async (id) => {
    const actor = await Actor.findByPk(id);
    if (!actor) {
        throw new Error('Actor not found');
    }
    return await actor.destroy();
};
