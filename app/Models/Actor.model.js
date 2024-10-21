const {DataTypes} = require('sequelize');
const sequelize = require('../../lib/database');

const Actor = sequelize.define('Actor', {
    id: {
        type: DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true,
        comment: 'ID diễn viên (khóa chính)',
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false,
        comment: 'Tên diễn viên',
    },
}, {
    tableName: 'actors',
    timestamps: false,
});

// Actor.belongsToMany(Film, { through: FilmActor, foreignKey: 'actor_id', otherKey: 'film_id', as: 'films' });

module.exports = Actor;

