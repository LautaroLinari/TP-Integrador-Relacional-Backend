const express = require('express');
const contenidoRoutes = require('./routes/contenidoRoutes');
const db = require('./conexion/database');
const { sequelize } = require('./conexion/database');
const app = express();

sequelize.authenticate()
  .then(() => {
    console.log('Conexión a la base de datos establecida correctamente.');
  })
  .catch((err) => {
    console.error('No se pudo conectar a la base de datos:', err);
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

//Server
const port = process.env.PORT || 3000;
app.listen(port, async () => {
  await sequelize.authenticate()
  console.log(`Servidor Funcionando en http://localhost:${port}`)
})
