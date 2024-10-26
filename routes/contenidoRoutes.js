// contenidoRoutes.js
const { Contenido, Actor, Genero, Categoria } = require('../models/relaciones')
const { Sequelize } = require('sequelize')
const Op = Sequelize.Op

const express = require('express')
const router = express.Router()


// Endpoint para filtrar contenidos por título, género y/o categoría
router.get('/contenido/filter', async (req, res) => {
    const { titulo, nombre_genero, nombre_categoria } = req.query;

    // Filtros dinámicos
    let where = {};
    
    // Añadir filtro por título solo si se proporciona
    if (titulo) {
        where.titulo = { [Op.like]: `%${titulo}%` };  // Filtro por título
    }

    const generoCondition = nombre_genero ? { nombre_genero: { [Op.like]: `%${nombre_genero}%` } } : {};
    const categoriaCondition = nombre_categoria ? { nombre_categoria: { [Op.like]: `%${nombre_categoria}%` } } : {};

    console.log('Filtros aplicados:', { 
        where, 
        nombre_genero, 
        nombre_categoria 
    });

    try {
        const contenidos = await Contenido.findAndCountAll({
            where,
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'], // Incluir todos los campos
            include: [
                {
                    model: Actor,
                    as: 'actores',
                    attributes: ['nombre', 'apellido']
                },
                {
                    model: Genero,
                    as: 'generos',
                    attributes: ['ID', 'nombre_genero'],
                    where: generoCondition  // Aplicar el filtro para género aquí
                },
                {
                    model: Categoria,
                    as: 'categoria',
                    attributes: ['nombre_categoria'],
                    where: categoriaCondition  // Aplicar el filtro para categoría aquí
                }
            ]
        });

        console.log('Conteo de contenidos encontrados:', contenidos.count);
        console.log('Contenidos encontrados:', contenidos.rows);  // Imprimir los contenidos encontrados

        // Modificar la respuesta para omitir 'temporadas' si es NULL
        const resultados = contenidos.rows.map(contenido => {
            const contenidoData = contenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas; // Eliminar el campo si es NULL
            }
            return contenidoData;
        });

        if (resultados.length === 0) {
            return res.status(404).json({ message: 'No se encontraron contenidos que coincidan con los filtros.' });
        }

        res.json({ count: resultados.length, rows: resultados });
    } catch (error) {
        console.error('Error al filtrar contenidos:', error); // Log de error
        res.status(500).json({ error: 'Ocurrió un error al filtrar los contenidos', details: error.message });
    }
})


// Ruta de prueba para ver si funciona
router.get('/', (req, res) => {
    res.status(200).json({ message: 'Bienvenido al Trabajo Practico de BD Relacionales Backend!' })
})


// Obtener todos los contenidos con sus actores, géneros, categoría, duración y temporadas
router.get('/contenido', async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'], // Incluir todos los campos
            include: [
                {
                    model: Actor,
                    as: 'actores',
                    attributes: ['nombre', 'apellido']
                },
                {
                    model: Genero,
                    as: 'generos',
                    attributes: ['ID', 'nombre_genero']
                },
                {
                    model: Categoria,
                    as: 'categoria',
                    attributes: ['nombre_categoria']
                }
            ]
        });

        // Modificar la respuesta para omitir 'temporadas' si es NULL
        const resultados = contenidos.map(contenido => {
            const contenidoData = contenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas; // Eliminar el campo si es NULL
            }
            return contenidoData;
        });

        res.json(resultados);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al obtener los contenidos', details: error.message });
    }
})

// Obtener contenido por ID con sus asociaciones
router.get('/contenido/:id', async (req, res) => {
    try {
        const contenido = await Contenido.findByPk(req.params.id, {
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'], // Incluir todos los campos
            include: [
                {
                    model: Actor,
                    as: 'actores',
                    attributes: ['nombre', 'apellido']
                },
                {
                    model: Genero,
                    as: 'generos',
                    attributes: ['ID', 'nombre_genero']
                },
                {
                    model: Categoria,
                    as: 'categoria',
                    attributes: ['nombre_categoria']
                }
            ]
        });

        if (contenido) {
            const contenidoData = contenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas; // Eliminar el campo si es NULL
            }
            res.json(contenidoData);
        } else {
            res.status(404).json({ error: 'Contenido no encontrado' });
        }
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al obtener el contenido', details: error.message });
    }
})


router.post('/', (req, res) => {
    // Add new content
});


router.put('/:id', (req, res) => {
    // Update content by ID
});


router.delete('/:id', (req, res) => {
    // Delete content by ID
});


module.exports = router;
    