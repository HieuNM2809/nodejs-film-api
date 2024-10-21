const { DataTypes } = require('sequelize');
const sequelize = require('../../lib/database');

const Country = sequelize.define('Country', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID quốc gia (khóa chính)',
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false,
        comment: 'Tên quốc gia',
    },
}, {
    tableName: 'countries',
    timestamps: false,
});

module.exports = Country;
