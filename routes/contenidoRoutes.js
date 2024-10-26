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


// Crear nuevo contenido
router.post('/contenido', async (req, res) => {
    const { titulo, resumen, temporadas, duracion, id_categoria, enlaces_trailer, generos, actores } = req.body;

    // Validaciones de entrada
    if (!titulo || typeof titulo !== 'string' || titulo.trim().length === 0) {
        return res.status(400).json({ error: 'El título es obligatorio y debe ser una cadena de texto.' });
    }

    if (temporadas !== undefined && (!Number.isInteger(temporadas) || temporadas < 0)) {
        return res.status(400).json({ error: 'El número de temporadas debe ser un entero positivo.' });
    }

    if (duracion !== undefined && (!Number.isInteger(duracion) || duracion < 0)) {
        return res.status(400).json({ error: 'La duración debe ser un entero positivo.' });
    }

    // Validar que id_categoria solo sea 1 o 2
    if (id_categoria !== 1 && id_categoria !== 2) {
        return res.status(400).json({ error: 'La categoría debe ser 1 o 2.' });
    }

    // Verificar si id_categoria existe en la tabla categorias
    const categoria = await Categoria.findByPk(id_categoria);
    if (!categoria) {
        return res.status(400).json({ error: 'La categoría especificada no existe.' });
    }


    try {
        // Crear el nuevo contenido
        const nuevoContenido = await Contenido.create({
            titulo,
            resumen,
            temporadas,
            duracion,
            id_categoria,
            enlaces_trailer
        });

        // Recargar el contenido para asegurarte de que tiene las asociaciones
        await nuevoContenido.reload();

        // Asociar los géneros, si se proporcionaron
        if (generos && generos.length > 0) {
            await nuevoContenido.setGeneros(generos);
        }

        // Manejar actores
        if (actores && actores.length > 0) {
            const actoresInstancias = [];  // Array para almacenar instancias de actores

            for (const actor of actores) {
                const { nombre, apellido } = actor;

                // Buscar si el actor ya existe por nombre y apellido
                let actorExistente = await Actor.findOne({
                    where: { nombre, apellido }
                });

                // Si el actor no existe, crear uno nuevo
                if (!actorExistente) {
                    actorExistente = await Actor.create({ nombre, apellido });
                }

                // Agregar la instancia del actor al array
                actoresInstancias.push(actorExistente);
            }

            // Usar 'setActores' para asociar todos los actores con el contenido
            await nuevoContenido.setActores(actoresInstancias);
        }

        // Obtener el contenido recién creado con los géneros y actores asociados
        const contenidoCompleto = await Contenido.findByPk(nuevoContenido.ID, {
            include: [
                {
                    model: Genero,
                    as: 'generos',
                    attributes: ['ID', 'nombre_genero']
                },
                {
                    model: Actor,
                    as: 'actores',
                    attributes: ['nombre', 'apellido']
                }
            ]
        });

        res.status(201).json(contenidoCompleto);

    } catch (error) {
        console.error('Error al crear contenido:', error); // Mostrar error completo en la consola
        res.status(500).json({ error: 'Ocurrió un error al crear el contenido', details: error.message });
    }
})


// Actualizar contenido por ID
router.put('/contenido/:id', async (req, res) => {
    const { titulo, resumen, temporadas, duracion, id_categoria, enlaces_trailer, generos, actores } = req.body;

    // Validaciones de entrada
    if (titulo !== undefined && (typeof titulo !== 'string' || titulo.trim().length === 0)) {
        return res.status(400).json({ error: 'El título debe ser una cadena de texto válida.' });
    }

    if (temporadas !== undefined && (!Number.isInteger(temporadas) || temporadas < 0)) {
        return res.status(400).json({ error: 'El número de temporadas debe ser un entero positivo.' });
    }

    if (duracion !== undefined && (typeof duracion !== 'string' || duracion.trim().length === 0)) {
        return res.status(400).json({ error: 'La duración debe ser una cadena de texto válida.' });
    }

    // Validar que id_categoria solo sea 1 o 2
    if (id_categoria !== undefined && id_categoria !== 1 && id_categoria !== 2) {
        return res.status(400).json({ error: 'La categoría debe ser 1 o 2.' });
    }

    // Verificar si el contenido existe
    const contenido = await Contenido.findByPk(req.params.id);
    if (!contenido) {
        return res.status(404).json({ error: 'Contenido no encontrado' });
    }

    // Verificar si id_categoria existe en la tabla categorias
    if (id_categoria !== undefined) {
        const categoria = await Categoria.findByPk(id_categoria);
        if (!categoria) {
            return res.status(400).json({ error: 'La categoría especificada no existe.' });
        }
    }

    // Actualizar el contenido
    try {
        await contenido.update({
            titulo,
            resumen,
            temporadas,
            duracion,  // Se mantiene como string
            id_categoria,
            enlaces_trailer
        });

        // Actualizar los géneros, si se proporcionan
        if (generos && generos.length > 0) {
            await contenido.setGeneros(generos);
        }

        // Actualizar los actores, si se proporcionan
        if (actores && actores.length > 0) {
            const actoresInstancias = [];

            for (const actor of actores) {
                const { nombre, apellido } = actor;

                // Buscar si el actor ya existe por nombre y apellido
                let actorExistente = await Actor.findOne({
                    where: { nombre, apellido }
                });

                // Si el actor no existe, crear uno nuevo
                if (!actorExistente) {
                    actorExistente = await Actor.create({ nombre, apellido });
                }

                // Agregar la instancia del actor al array
                actoresInstancias.push(actorExistente);
            }

            // Asociar los actores actualizados con el contenido
            await contenido.setActores(actoresInstancias);
        }

        // Obtener el contenido actualizado con géneros y actores asociados
        const contenidoActualizado = await Contenido.findByPk(contenido.ID, {
            include: [
                {
                    model: Genero,
                    as: 'generos',
                    attributes: ['ID', 'nombre_genero']
                },
                {
                    model: Actor,
                    as: 'actores',
                    attributes: ['nombre', 'apellido']
                }
            ]
        });

        res.json(contenidoActualizado); // Devolver el contenido actualizado con géneros y actores
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al actualizar el contenido', details: error.message });
    }
})


// Eliminar contenido por ID
router.delete('/contenido/:id', async (req, res) => {
    try {
        // Verificar si el contenido existe
        const contenido = await Contenido.findByPk(req.params.id);
        if (!contenido) {
            return res.status(404).json({ error: 'Contenido no encontrado para eliminar. Ingrese un ID valido!.' });
        }

        // Eliminar las asociaciones en la tabla intermedia
        await contenido.setActores([]);  // Eliminar todas las relaciones con actores
        await contenido.setGeneros([]); // Esto elimina todas las asociaciones con géneros

        // Eliminar el contenido
        await contenido.destroy();
        res.json({ message: 'Contenido eliminado correctamente!.' });
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al eliminar el contenido', details: error.message });
    }
})


module.exports = router;
    