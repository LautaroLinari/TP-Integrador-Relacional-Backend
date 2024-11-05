const { Contenido, Actor, Genero, Categoria } = require('../models/relaciones');
const { Sequelize } = require('sequelize');
const Op = Sequelize.Op;

// Filtrar contenidos por título, género y/o categoría
const filterContenidos = async (req, res) => {
    const { titulo, nombre_genero, nombre_categoria } = req.query;

    let where = {};
    if (titulo) { where.titulo = { [Op.like]: `%${titulo}%` }; }

    const generoCondition = nombre_genero ? { nombre_genero: { [Op.like]: `%${nombre_genero}%` } } : {};
    const categoriaCondition = nombre_categoria ? { nombre_categoria: { [Op.like]: `%${nombre_categoria}%` } } : {};

    try {
        const contenidos = await Contenido.findAndCountAll({
            where,
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'],
            include: [
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'], through: { attributes: []} },
                { model: Genero, as: 'generos', attributes: ['nombre_genero'], through: { attributes: []}, where: generoCondition },
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

// Obtener todos los contenidos
const getAllContenidos = async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
            attributes: ['ID', 'titulo', 'resumen', 'duracion', 'enlaces_trailer', 'temporadas'],
            include: [
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'], through: { attributes: []} },
                { model: Genero, as: 'generos', attributes: ['nombre_genero'], through: { attributes: []}  },
                { model: Categoria, as: 'categoria', attributes: ['nombre_categoria']}
            ]
        });

        //Lo utilizo para comprobar si tiene temporadas o duración
        const resultados = contenidos.map(newContenido => {
            const contenidoData = newContenido.get({ plain: true });
            if (contenidoData.temporadas === null) {
                delete contenidoData.temporadas;
            }
            return contenidoData;
        });

        res.status(200).json(resultados);
    } catch (error) {
        console.error('Error al obtener todos los contenidos:', error);
        res.status(500).json({ error: 'Ocurrió un error al obtener los contenidos' });
    }
};

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
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'], through: { attributes: []} },
                { model: Genero, as: 'generos', attributes: ['nombre_genero'], through: { attributes: []}  },
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

// Crear nuevo contenido
const createContenido = async (req, res) => {
    const { titulo, resumen, temporadas, duracion, id_categoria, enlaces_trailer, generos, actores } = req.body;

    if (!titulo || typeof titulo !== 'string') {
        return res.status(400).json({ error: 'El título debe ser una cadena de texto.' });
    }

    if (!Number.isInteger(temporadas) || temporadas < 0) {
        return res.status(400).json({ error: 'El número de temporadas debe ser un entero positivo.' });
    }

    if (typeof duracion !== 'string') {
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
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'], through: { attributes: []} },
                { model: Genero, as: 'generos', attributes: ['nombre_genero'], through: { attributes: []}  }
            ]
        });

        res.status(201).json(contenidoCompleto);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al crear el contenido'});
    }
};

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
                { model: Actor, as: 'actores', attributes: ['nombre', 'apellido'], through: { attributes: []} },
                { model: Genero, as: 'generos', attributes: ['nombre_genero'], through: { attributes: []}  }
            ]
        });

        res.status(200).json(contenidoActualizado);
    } catch (error) {
        res.status(500).json({ error: 'Ocurrió un error al actualizar el contenido'});
    }
};

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
