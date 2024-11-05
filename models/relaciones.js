const { Actor } = require('./actor.js');
const { Contenido } = require('./contenido.js');
const { Genero } = require('./genero.js');
const { Categoria } = require('./categoria.js');

// Establecer asociación muchos a muchos entre Contenido y Actor/Generos
Contenido.belongsToMany(Actor, { 
    through: 'contenido_actores', 
    as: 'actores',
    foreignKey: 'ID_contenido', 
    timestamps: false  // Deshabilitar createdAt y updatedAt en la tabla intermedia
});

Actor.belongsToMany(Contenido, { 
    through: 'contenido_actores', 
    as: 'contenidos',
    foreignKey: 'ID_actor', 
    timestamps: false  
});

Contenido.belongsToMany(Genero, { 
    through: 'contenido_generos', 
    as: 'generos',
    foreignKey: 'ID_contenido', 
    timestamps: false  
});

Genero.belongsToMany(Contenido, { 
    through: 'contenido_generos', 
    as: 'contenidos',
    foreignKey: 'ID_genero', 
    timestamps: false 
});

// Relación uno a muchos entre Contenido y Categoría
Contenido.belongsTo(Categoria, { foreignKey: 'id_categoria', as: 'categoria' });
Categoria.hasMany(Contenido, { foreignKey: 'id_categoria', as: 'contenidos' });


// Exportar modelos
module.exports = { Actor, Contenido, Genero, Categoria }

