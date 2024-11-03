const { Contenido, Actor, Genero, Categoria } = require('../models/relaciones');
const { Sequelize } = require('sequelize');
const Op = Sequelize.Op;

/**
 * @swagger
 * /contenido/filter:
 *   get:
 *     summary: Filtrar contenidos por título, género y/o categoría
 *     description: Devuelve una lista de contenidos que coincidan con los filtros de título, género o categoría.
 *     parameters:
 *       - in: query
 *         name: titulo
 *         schema:
 *           type: string
 *         description: Título del contenido
 *       - in: query
 *         name: nombre_genero
 *         schema:
 *           type: string
 *         description: Nombre del género
 *       - in: query
 *         name: nombre_categoria
 *         schema:
 *           type: string
 *         description: Nombre de la categoría
 *     responses:
 *       200:
 *         description: Lista de contenidos filtrados
 *       404:
 *         description: No se encontraron contenidos que coincidan con los filtros
 *       500:
 *         description: Error interno del servidor
 */
// Filtrar contenidos por título, género y/o categoría
const filterContenidos = async (req, res) => {
    const { titulo, nombre_genero, nombre_categoria } = req.query;

    let where = {};
    if (titulo) {
        where.titulo = { [Op.like]: `%${titulo}%` };
    }

    const generoCondition = nombre_genero ? { nombre_genero: { [Op.like]: `%${nombre_genero}%` } } : {};
    const categoriaCondition = nombre_categoria ? { nombre_categoria: { [Op.like]: `%${nombre_categoria}%` } } : {};

    try {
        const contenidos = await Contenido.findAndCountAll({
            where,
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'],
            include: [
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'] },
                { model: Genero, as: 'generos', attributes: ['ID', 'nombre_genero'], where: generoCondition },
                { model: Categoria, as: 'categoria', attributes: ['nombre_categoria'], where: categoriaCondition }
            ]
        });

        //Lo utilizo para comprobar si tiene temporadas o duración
        const resultados = contenidos.rows.map(contenido => {
            const contenidoData = contenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas;
            }
            return contenidoData;
        });

        if (resultados.length === 0) {
            return res.status(404).json({ message: 'No se encontraron contenidos que coincidan con los filtros ingresados.' });
        }

        res.json({ count: resultados.length, rows: resultados });
    } catch (error) {
        console.error('Error al filtrar contenidos:', error);
        res.status(500).json({ error: 'Ocurrió un error al filtrar los contenidos'});
    }
};

/**
 * @swagger
 * /contenido:
 *   get:
 *     summary: Obtener todos los contenidos
 *     description: Devuelve una lista de todos los contenidos disponibles con sus respectivos actores, géneros y categoría.
 *     responses:
 *       200:
 *         description: Lista de contenidos
 *       500:
 *         description: Error interno del servidor
 */
// Obtener todos los contenidos
const getAllContenidos = async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'],
            include: [
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'] },
                { model: Genero, as: 'generos', attributes: ['ID', 'nombre_genero'] },
                { model: Categoria, as: 'categoria', attributes: ['nombre_categoria'] }
            ]
        });

        //Lo utilizo para comprobar si tiene temporadas o duración
        const resultados = contenidos.map(contenido => {
            const contenidoData = contenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas;
            }
            return contenidoData;
        });

        res.status(200).json(resultados);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al obtener los contenidos'});
    }
};

/**
 * @swagger
 * /contenido/{id}:
 *   get:
 *     summary: Obtener contenido por ID
 *     description: Devuelve un contenido específico por su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido
 *     responses:
 *       200:
 *         description: Contenido encontrado
 *       404:
 *         description: Contenido no encontrado
 *       400:
 *         description: ID inválido
 *       500:
 *         description: Error interno del servidor
 */
// Obtener contenido por ID
const getContenidoById = async (req, res) => {
    const contenidoId = req.params.id;

    if (isNaN(contenidoId)) {
        return res.status(400).json({ error: 'El ID debe ser un número válido.' });
    }

    try {
        const contenido = await Contenido.findByPk(contenidoId, {
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'],
            include: [
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'] },
                { model: Genero, as: 'generos', attributes: ['ID', 'nombre_genero'] },
                { model: Categoria, as: 'categoria', attributes: ['nombre_categoria'] }
            ]
        });

        if (!contenido) {
            return res.status(404).json({ error: 'Contenido no encontrado por ese ID!' });
        }

        //Lo utilizo para comprobar si tiene temporadas o duración
        const contenidoData = contenido.get({ plain: true });
        if (contenidoData.temporadas === null) {
            delete contenidoData.temporadas;
        }

        res.status(200).json(contenidoData);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al obtener el contenido'});
    }
};

/**
 * @swagger
 * /contenido:
 *   post:
 *     summary: Crear nuevo contenido
 *     description: Crea un nuevo contenido con título, resumen, temporadas, duración, categoría, enlace al tráiler, géneros y actores.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               titulo:
 *                 type: string
 *               resumen:
 *                 type: string
 *               temporadas:
 *                 type: integer
 *               duracion:
 *                 type: string
 *               id_categoria:
 *                 type: integer
 *               enlaces_trailer:
 *                 type: string
 *               generos:
 *                 type: array
 *                 items:
 *                   type: integer
 *               actores:
 *                 type: array
 *                 items:
 *                   type: object
 *                   properties:
 *                     nombre:
 *                       type: string
 *                     apellido:
 *                       type: string
 *     responses:
 *       201:
 *         description: Contenido creado correctamente
 *       400:
 *         description: Error en los datos ingresados
 *       500:
 *         description: Error interno del servidor
 */
// Crear nuevo contenido
const createContenido = async (req, res) => {
    const { titulo, resumen, temporadas, duracion, id_categoria, enlaces_trailer, generos, actores } = req.body;

    if (!titulo || typeof titulo !== 'string' || titulo.trim().length === 0) {
        return res.status(400).json({ error: 'El título es obligatorio y debe ser una cadena de texto.' });
    }

    if (temporadas !== undefined && (!Number.isInteger(temporadas) || temporadas < 0)) {
        return res.status(400).json({ error: 'El número de temporadas debe ser un entero positivo.' });
    }

    if (duracion !== undefined && (typeof duracion !== 'string' || duracion.trim().length === 0)) {
        return res.status(400).json({ error: 'La duración debe ser una cadena de texto válida.' });
    }

    if (id_categoria !== 1 && id_categoria !== 2) {
        return res.status(400).json({ error: 'La categoría debe ser 1 o 2.' });
    }

    if (generos && !Array.isArray(generos)) {
            return res.status(400).json({ error: 'Generos debe ser un array de IDs.' });
    }
    
    if (actores && !Array.isArray(actores)) {
            return res.status(400).json({ error: 'Actores debe ser un array de objetos con nombre y apellido.' });
    }

    try {
        const nuevoContenido = await Contenido.create({
            titulo,
            resumen,
            temporadas,
            duracion,
            id_categoria,
            enlaces_trailer
        });

        if (generos && generos.length > 0) {
            await nuevoContenido.setGeneros(generos);
        }

        //Lo utilizo para comprobar si tiene temporadas o duración
        if (actores && actores.length > 0) {
            const actoresInstancias = await Promise.all(
                actores.map(async actor => {
                    const [actorExistente] = await Actor.findOrCreate({
                        where: { nombre: actor.nombre, apellido: actor.apellido }
                    });
                    return actorExistente;
                })
            );
            await nuevoContenido.addActores(actoresInstancias);
        }

        const contenidoCompleto = await Contenido.findByPk(nuevoContenido.ID, {
            include: [
                { model: Genero, as: 'generos', attributes: ['ID', 'nombre_genero'] },
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'] }
            ]
        });

        res.status(201).json(contenidoCompleto);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al crear el contenido'});
    }
};

/**
 * @swagger
 * /contenido/{id}:
 *   put:
 *     summary: Actualizar contenido por ID
 *     description: Actualiza un contenido específico por su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               titulo:
 *                 type: string
 *               resumen:
 *                 type: string
 *               temporadas:
 *                 type: integer
 *               duracion:
 *                 type: string
 *               id_categoria:
 *                 type: integer
 *               enlaces_trailer:
 *                 type: string
 *               generos:
 *                 type: array
 *                 items:
 *                   type: integer
 *               actores:
 *                 type: array
 *                 items:
 *                   type: object
 *                   properties:
 *                     nombre:
 *                       type: string
 *                     apellido:
 *                       type: string
 *     responses:
 *       200:
 *         description: Contenido actualizado correctamente
 *       400:
 *         description: ID inválido o error en los datos ingresados
 *       404:
 *         description: Contenido no encontrado
 *       500:
 *         description: Error interno del servidor
 */
// Actualizar contenido por ID
const updateContenidoById = async (req, res) => {
    const contenidoId = req.params.id;

    if (isNaN(contenidoId)) {
        return res.status(400).json({ error: 'El ID debe ser un número válido.' });
    }

    const { titulo, resumen, temporadas, duracion, id_categoria, enlaces_trailer, generos, actores } = req.body;

    try {
        const contenido = await Contenido.findByPk(contenidoId);
        if (!contenido) return res.status(404).json({ error: 'Contenido no encontrado para actualizar/modificar!' });

        await contenido.update({
            titulo,
            resumen,
            temporadas,
            duracion,
            id_categoria,
            enlaces_trailer
        });

        if (generos && generos.length > 0) {
            await contenido.setGeneros(generos);
        }

        //Lo utilizo para comprobar si tiene temporadas o duración
        if (actores && actores.length > 0) {
            const actoresInstancias = await Promise.all(
                actores.map(async actor => {
                    const [actorExistente] = await Actor.findOrCreate({
                        where: { nombre: actor.nombre, apellido: actor.apellido }
                    });
                    return actorExistente;
                })
            );
            await contenido.addActores(actoresInstancias);
        }

        const contenidoActualizado = await Contenido.findByPk(contenido.ID, {
            include: [
                { model: Genero, as: 'generos', attributes: ['ID', 'nombre_genero'] },
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'] }
            ]
        });

        res.status(200).json(contenidoActualizado);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al actualizar el contenido'});
    }
};

/**
 * @swagger
 * /contenido/{id}:
 *   delete:
 *     summary: Eliminar contenido por ID
 *     description: Elimina un contenido específico por su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido
 *     responses:
 *       200:
 *         description: Contenido eliminado correctamente
 *       400:
 *         description: ID inválido
 *       404:
 *         description: Contenido no encontrado
 *       500:
 *         description: Error interno del servidor
 */
// Eliminar contenido por ID
const deleteContenidoById = async (req, res) => {
    const contenidoId = req.params.id;

    // Verificación si el ID es un número
    if (isNaN(contenidoId)) {
        return res.status(400).json({ error: 'El ID debe ser un número válido.' });
    }

    try {
        const contenido = await Contenido.findByPk(contenidoId);
        if (!contenido) return res.status(404).json({ error: 'Contenido no encontrado por ese ID para Eliminar!' });

        await contenido.setActores([]);
        await contenido.setGeneros([]);
        await contenido.destroy();

        res.status(200).json({ message: 'Contenido eliminado correctamente' });
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al eliminar el contenido'});
    }
};


module.exports = {
    filterContenidos,
    getAllContenidos,
    getContenidoById,
    createContenido,
    updateContenidoById,
    deleteContenidoById
};
