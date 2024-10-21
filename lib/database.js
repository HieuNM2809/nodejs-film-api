const {Sequelize} = require('sequelize');
const mysqlConfig = require('../config/mysql');

const sequelize = new Sequelize(mysqlConfig.DATABASE, mysqlConfig.USERNAME, mysqlConfig.PASSWORD, mysqlConfig.option);

// Hàm kết nối lại khi có lỗi
async function reconnect() {
    try {
        await sequelize.authenticate();
        console.log('MySQL connected');
    } catch (error) {
        console.error('Unable to connect to MySQL:', error);
        setTimeout(reconnect, 5000); // Thử kết nối lại sau 5 giây
    }
}

reconnect();

module.exports = sequelize;
