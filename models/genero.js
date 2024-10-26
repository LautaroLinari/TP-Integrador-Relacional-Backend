// models/genero.js
const { sequelize } = require('../conexion/database');
const { DataTypes } = require('sequelize');

const Genero = sequelize.define('Genero', {
    ID: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre_genero: {
        type: DataTypes.STRING,
        allowNull: false,
    },
}, {
    tableName: 'generos',
    timestamps: false,
});

module.exports = { Genero };

