const {DataTypes} = require('sequelize');
const sequelize = require('../../lib/database');

const Episode = sequelize.define('Episode', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID tập phim (khóa chính)',
    },
    film_id: {
        type: DataTypes.INTEGER,
        comment: 'ID phim (liên kết với bảng films)',
    },
    episode_number: {
        type: DataTypes.INTEGER,
        comment: 'Số tập',
    },
    episode_title: {
        type: DataTypes.STRING(255),
        comment: 'Tên tập phim (nếu có)',
    },
    slug: {
        type: DataTypes.STRING(255),
        comment: 'slug',
    },
    episode_url: {
        type: DataTypes.STRING(255),
        comment: 'URL dẫn tới tập phim',
    },
}, {
    tableName: 'episodes',
    timestamps: false,
});

module.exports = Episode;
