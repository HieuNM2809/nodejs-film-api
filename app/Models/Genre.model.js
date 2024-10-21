const { DataTypes } = require('sequelize');
const sequelize = require('../../lib/database');

const Genre = sequelize.define('Genre', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID thể loại (khóa chính)',
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false,
        comment: 'Tên thể loại phim',
    },
}, {
    tableName: 'genres',
    timestamps: false,
});

module.exports = Genre;
