module.exports.option = {
    host: 'localhost',
    dialect: 'mysql',
    pool: {
        max: 50,      // Maximum number of connections in pool
        min: 0,       // Minimum number of connections in pool
        acquire: 30000, // Maximum time (in ms) to wait for a connection
        idle: 10000,   // Time (in ms) before a connection is considered idle
    },
    retry: {
        // match: [/Deadlock/i, /Connection lost/i],
        max: 3,  // Số lần thử lại khi lỗi kết nối
    }
};
module.exports.DATABASE = 'film-db';
module.exports.USERNAME = 'root';
module.exports.PASSWORD = 'root@123';
