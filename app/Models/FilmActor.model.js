const { DataTypes } = require('sequelize');
const sequelize = require('../../lib/database');

const FilmActor = sequelize.define('FilmActor', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID (khóa chính)',
    },
    film_id: {
        type: DataTypes.INTEGER,
        comment: 'ID phim (liên kết với bảng films)',
    },
    actor_id: {
        type: DataTypes.INTEGER,
        comment: 'ID diễn viên (liên kết với bảng actors)',
    },
}, {
    tableName: 'film_actors',
    timestamps: false,
});

module.exports = FilmActor;
