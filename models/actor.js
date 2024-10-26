// models/actor.js
const { sequelize } = require('../conexion/database');
const { DataTypes } = require('sequelize');

const Actor = sequelize.define('Actor', {
    ID: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    apellido: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    tableName: 'actores',
    timestamps: false,
});

module.exports = { Actor };

