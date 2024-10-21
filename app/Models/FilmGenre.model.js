const { DataTypes } = require('sequelize');
const sequelize = require('../../lib/database');

const FilmGenre = sequelize.define('FilmGenre', {
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
    genre_id: {
        type: DataTypes.INTEGER,
        comment: 'ID thể loại (liên kết với bảng genres)',
    },
}, {
    tableName: 'film_genres',
    timestamps: false,
});

module.exports = FilmGenre;
