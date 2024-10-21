const Country = require('../models/Country.model');

exports.getAllCountries = async (limit, offset) => {
    return await Country.findAndCountAll({
        limit: limit,
        offset: offset
    });
};

exports.createCountry = async (countryData) => {
    return await Country.create(countryData);
};

exports.getCountryById = async (id) => {
    return await Country.findByPk(id);
};

exports.updateCountry = async (id, countryData) => {
    const country = await Country.findByPk(id);
    if (!country) {
        throw new Error('Country not found');
    }
    return await country.update(countryData);
};

exports.deleteCountry = async (id) => {
    const country = await Country.findByPk(id);
    if (!country) {
        throw new Error('Country not found');
    }
    return await country.destroy();
};
