// contenidoRoutes.js
const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController');

//Ruta de Filtrado
router.get('/contenido/filter', contenidoController.filterContenidos);
// Ruta de prueba para ver si funciona
router.get('/', (req, res) => {
    res.status(200).json({ message: 'Bienvenido al Trabajo Practico de BD Relacionales Backend!' })
})
//Ruta de Todos los contenidos
router.get('/contenido', contenidoController.getAllContenidos);
//Ruta de buscar por ID
router.get('/contenido/:id', contenidoController.getContenidoById);
//Ruta de Crear nuevo contenido
router.post('/contenido', contenidoController.createContenido);
//Ruta de Actualizar contenido por ID
router.put('/contenido/:id', contenidoController.updateContenidoById);
//Ruta de Eliminar contenido por ID
router.delete('/contenido/:id', contenidoController.deleteContenidoById);


module.exports = router;
    