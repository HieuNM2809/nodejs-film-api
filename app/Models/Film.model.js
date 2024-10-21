const {DataTypes} = require('sequelize');
const sequelize = require('../../lib/database');
const Episode = require('./Episode.model');
const Country = require('./Country.model');
const Actor = require('./Actor.model');
const FilmActor = require('./FilmActor.model');
const FilmGenre = require('./FilmGenre.model');
const Genre = require('./Genre.model');

const Film = sequelize.define('Film', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID của phim (khóa chính)',
    },
    title: {
        type: DataTypes.STRING(255),
        // allowNull: false,
        comment: 'Tên phim',
    },
    status: {
        type: DataTypes.STRING(50),
        comment: 'Tình trạng phim (hoàn thành, đang chiếu, etc.)',
    },
    episodes: {
        type: DataTypes.INTEGER,
        comment: 'Số tập phim',
    },
    duration: {
        type: DataTypes.STRING(50),
        comment: 'Thời lượng phim (mỗi tập hoặc tổng)',
    },
    release_year: {
        type: DataTypes.INTEGER,
        comment: 'Năm phát hành phim',
    },
    quality: {
        type: DataTypes.STRING(50),
        comment: 'Chất lượng phim (Full HD, SD, etc.)',
    },
    language: {
        type: DataTypes.STRING(50),
        comment: 'Ngôn ngữ phim',
    },
    director: {
        type: DataTypes.STRING(255),
        comment: 'Đạo diễn phim',
    },
    description: {
        type: DataTypes.TEXT,
        comment: 'Nội dung phim',
    },
    poster_url: {
        type: DataTypes.STRING(255),
        comment: 'URL ảnh bìa phim',
    },
    country_id: {
        type: DataTypes.INTEGER,
        comment: 'ID quốc gia (liên kết với bảng countries)',
    },
    outside_id : {
        type: DataTypes.STRING(255),
        allowNull: false,
        comment: 'Id film bên ngoài',
    }
}, {
    tableName: 'films',
    timestamps: false,
});

// Định nghĩa quan hệ
Film.belongsTo(Country, {foreignKey: 'country_id', as: 'country'});
Film.hasMany(Episode, {foreignKey: 'film_id', as: 'filmEpisodes'});
Film.belongsToMany(Genre, {through: FilmGenre, foreignKey: 'film_id', otherKey: 'genre_id', as: 'genres'});
Film.belongsToMany(Actor, {through: FilmActor, foreignKey: 'film_id', otherKey: 'actor_id', as: 'actors'});

module.exports = Film;