const express = require('express');
const app = express();
const contenidoRoutes = require('./routes/contenidoRoutes');
const db = require('./conexion/database');
const { sequelize } = require('./conexion/database');


sequelize.sync()
  .then(() => {
    console.log('Base de datos sincronizada.');
  })
  .catch((err) => {
    console.error('Error al sincronizar la base de datos:', err);
  })


// Middlewares
app.use(express.json());
app.use('/', contenidoRoutes);


// Middleware para manejar rutas inexistentes
app.use((req, res, next) => {
  res.status(404).json({ message: 'Ruta no encontrada' });
})


// Middleware de manejo de errores
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Ocurrió un error en el servidor', details: err.message });
})


// Server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
})