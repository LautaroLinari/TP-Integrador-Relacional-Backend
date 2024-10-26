// models/contenido.js
const { sequelize } = require('../conexion/database');
const { DataTypes } = require('sequelize');

const Contenido = sequelize.define('Contenido', {
    ID: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    resumen: {
        type: DataTypes.TEXT,
        allowNull: true,
    },
    temporadas: {
        type: DataTypes.INTEGER,
        allowNull: true, 
    },
    duracion: {
        type: DataTypes.STRING,
        allowNull: false, 
    },
    id_categoria: {
        type: DataTypes.INTEGER,
        references: {
            model: 'categorias',
            key: 'ID'
        }
    },
    enlaces_trailer: {
        type: DataTypes.STRING,
        allowNull: true,
    },
}, {
    tableName: 'contenidos',
    timestamps: false,
});

module.exports = { Contenido };
