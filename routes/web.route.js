const express = require('express');

const dataController = require('../app/Controllers/data.controller')
const router = express.Router();

router.get('/', dataController.getIndex);
router.get('/crawl/phimapi', dataController.handleCallApiPhimapi);

module.exports = router;
