// contenidoRoutes.js
const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController');

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
//Ruta de Filtrado
router.get('/contenido/filter', contenidoController.filterContenidos);

/**
 * @swagger
 * /:
 *   get:
 *     summary: Ruta de bienvenida
 *     description: Muestra un mensaje de bienvenida al usuario indicando que la API está funcionando.
 *     responses:
 *       200:
 *         description: Bienvenida al usuario
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Bienvenido al Trabajo Practico de BD Relacionales Backend!
 */
// Ruta de Bienvenida
router.get('/', (req, res) => {
    res.status(200).json({ message: 'Bienvenido al Trabajo Practico de BD Relacionales Backend!' })
})

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
//Ruta de Todos los contenidos
router.get('/contenido', contenidoController.getAllContenidos);

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
//Ruta de buscar por ID
router.get('/contenido/:id', contenidoController.getContenidoById);

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
//Ruta de Crear nuevo contenido
router.post('/contenido', contenidoController.createContenido);

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
//Ruta de Actualizar contenido por ID
router.put('/contenido/:id', contenidoController.updateContenidoById);

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
//Ruta de Eliminar contenido por ID
router.delete('/contenido/:id', contenidoController.deleteContenidoById);


module.exports = router;
    