const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController');

/**
 * @swagger
 * /contenido/filter:
 *   get:
 *     tags:
 *       - Ejemplos
 *     summary: Filtrar contenidos
 *     description: Filtra los contenidos por título, género y/o categoría.
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
 *         description: Género del contenido
 *       - in: query
 *         name: nombre_categoria
 *         schema:
 *           type: string
 *         description: Categoría del contenido
 *     responses:
 *       200:
 *         description: Contenidos filtrados
 *       404:
 *         description: No se encontraron contenidos
 *       500:
 *         description: Error interno del servidor
 */
router.get('/contenido/filter', contenidoController.filterContenidos);

/**
 * @swagger
 * /:
 *   get:
 *     tags:
 *       - Ejemplos
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
router.get('/', (req, res) => { res.status(200).json({ message: 'Bienvenido al Trabajo Practico de BD Relacionales Backend!' }) })

/**
 * @swagger
 * /contenido:
 *   get:
 *     tags:
 *       - Ejemplos
 *     summary: Obtener todos los contenidos
 *     description: Devuelve una lista de todos los contenidos disponibles.
 *     responses:
 *       200:
 *         description: Lista de contenidos
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/Contenido'
 */
router.get('/contenido', contenidoController.getAllContenidos);

/**
 * @swagger
 * /contenido/{id}:
 *   get:
 *     tags:
 *       - Ejemplos
 *     summary: Obtener contenido por ID
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido a obtener
 *     responses:
 *       200:
 *         description: Contenido encontrado
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/Contenido'
 *       404:
 *         description: Contenido no encontrado
 *       500:
 *         description: Error interno del servidor
 */
router.get('/contenido/:id', contenidoController.getContenidoById);

/**
 * @swagger
 * /contenido:
 *   post:
 *     tags:
 *       - Ejemplos
 *     summary: Crear nuevo contenido
 *     description: Crea un contenido con actores, géneros y otra información.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Contenido'
 *     responses:
 *       201:
 *         description: Contenido creado correctamente
 *       400:
 *         description: Error en los datos proporcionados
 *       500:
 *         description: Error interno del servidor
 */
router.post('/contenido', contenidoController.createContenido);

/**
 * @swagger
 * /contenido/{id}:
 *   put:
 *     tags:
 *       - Ejemplos
 *     summary: Actualizar contenido por ID
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido a actualizar
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Contenido'
 *     responses:
 *       200:
 *         description: Contenido actualizado correctamente
 *       404:
 *         description: Contenido no encontrado
 *       500:
 *         description: Error interno del servidor
 */
router.put('/contenido/:id', contenidoController.updateContenidoById);

/**
 * @swagger
 * /contenido/{id}:
 *   delete:
 *     tags:
 *       - Ejemplos
 *     summary: Eliminar contenido por ID
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido a eliminar
 *     responses:
 *       200:
 *         description: Contenido eliminado correctamente
 *       404:
 *         description: Contenido no encontrado
 *       500:
 *         description: Error interno del servidor
 */
router.delete('/contenido/:id', contenidoController.deleteContenidoById);


module.exports = router;
    