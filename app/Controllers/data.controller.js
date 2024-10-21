const path = require('path');
const dataService = require('../services/data.service');

exports.getIndex = async (req, res) => {
    res.sendFile(path.join(__dirname, '../../resources/views', 'film_crawler.html'));
};

exports.handleCallApiPhimapi = async (req, res) => {
    try {
        const startPage = parseInt(req.query.startPage, 10) || 1;
        const pageCount = parseInt(req.query.pageCount, 10) || 10;

        // Gọi API danh sách phim mới cập nhật với các trang
        const updatedMovies = await dataService.getUpdatedMovies(startPage, pageCount);

        res.status(200).json({
            status: 200,
            message: 'Fetched data successfully',
            updatedMovies: updatedMovies
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: 'Internal Server Error',
            error: error.message
        });
    }
};

