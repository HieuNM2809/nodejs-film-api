const countryService = require('../services/country.service');

exports.getAllCountries = async (req, res) => {
    try {
        // Lấy page và limit từ query parameters với giá trị mặc định
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.limit) || 10;
        const offset = (page - 1) * limit;

        const countries = await countryService.getAllCountries(limit, offset);

        // Trả về dữ liệu với thông tin phân trang
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: {
                total: countries.count,
                limit: limit,
                page: page,
                totalPages: Math.ceil(countries.count / limit),
                countries: countries.rows
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

exports.createCountry = async (req, res) => {
    try {
        const newCountry = await countryService.createCountry(req.body);

        res.status(201).json({
            status: 201,
            message: 'Country created successfully',
            data: newCountry
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.getCountryById = async (req, res) => {
    try {
        const country = await countryService.getCountryById(req.params.id);
        if (!country) {
            return res.status(404).json({
                status: 404,
                message: 'Country not found',
                data: null
            });
        }
        res.status(200).json({
            status: 200,
            message: 'Success',
            data: country
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.updateCountry = async (req, res) => {
    try {
        const updatedCountry = await countryService.updateCountry(req.params.id, req.body);
        res.status(200).json({
            status: 200,
            message: 'Country updated successfully',
            data: updatedCountry
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

exports.deleteCountry = async (req, res) => {
    try {
        await countryService.deleteCountry(req.params.id);
        res.status(200).json({
            status: 200,
            message: 'Country deleted successfully',
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
