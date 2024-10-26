// models/categoria.js
const { sequelize } = require('../conexion/database');
const { DataTypes } = require('sequelize');

const Categoria = sequelize.define('Categoria', {
    ID: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre_categoria: {
        type: DataTypes.STRING,
        allowNull: false,
    },
}, {
    tableName: 'categorias',
    timestamps: false,
})

module.exports = { Categoria };

    