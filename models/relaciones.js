// models/index.js
const { Actor } = require('./actor.js');
const { Contenido } = require('./contenido.js');
const { Genero } = require('./genero.js');
const { Categoria } = require('./categoria.js');

// Establecer asociación muchos a muchos entre Contenido y Actor
Contenido.belongsToMany(Actor, { 
    through: 'contenido_actores', 
    foreignKey: 'ID_contenido', 
    as: 'actores',
    timestamps: false  // Deshabilitar createdAt y updatedAt en la tabla intermedia
});

Actor.belongsToMany(Contenido, { 
    through: 'contenido_actores', 
    foreignKey: 'ID_actor', 
    as: 'contenidos',
    timestamps: false  // Deshabilitar createdAt y updatedAt en la tabla intermedia
});

// Similar con otras relaciones que tienen una tabla intermedia
Contenido.belongsToMany(Genero, { 
    through: 'contenido_generos', 
    foreignKey: 'ID_contenido', 
    as: 'generos',
    timestamps: false  // Deshabilitar createdAt y updatedAt en la tabla intermedia
});

Genero.belongsToMany(Contenido, { 
    through: 'contenido_generos', 
    foreignKey: 'ID_genero', 
    as: 'contenidos',
    timestamps: false  // Deshabilitar createdAt y updatedAt en la tabla intermedia
});

// Relación uno a muchos entre Contenido y Categoría
Contenido.belongsTo(Categoria, { foreignKey: 'id_categoria', as: 'categoria' });
Categoria.hasMany(Contenido, { foreignKey: 'id_categoria', as: 'contenidos' });

// //Comprobar asociaciones
// console.log('Contenido Associations:', Contenido.associations);
// console.log('Actor Associations:', Actor.associations);
// console.log('Genero Associations:', Genero.associations);
// console.log('Categoria Associations:', Categoria.associations);

// Exportar modelos
module.exports = { Actor, Contenido, Genero, Categoria }

