const express = require('express');
const contenidoRoutes = require('./routes/contenidoRoutes');
const db = require('./conexion/database');
const { sequelize } = require('./conexion/database');
const swaggerUi = require('swagger-ui-express');
const swaggerSpec = require('./config/swagger');
const app = express();

// Conexión a la base de datos
sequelize.authenticate()
  .then(() => {
    console.log('Conexión a la base de datos establecida correctamente.');
  })
  .catch((err) => {
    console.error('No se pudo conectar a la base de datos:', err);
  });

// Middlewares
app.use(express.json());

// Ruta de Documentación con Swagger
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

//Ruta de Bienvenida
app.use('/', contenidoRoutes);

// Middleware para manejar rutas inexistentes
app.use((req, res, next) => {
  res.status(404).json({ message: 'Ruta no encontrada' });
});

// Middleware de manejo de errores
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Ocurrió un error en el servidor'});
});

// Server
const port = process.env.PORT || 3000;
app.listen(port, async () => {
  await sequelize.authenticate();
  console.log(`Servidor Funcionando en http://localhost:${port}`)
  console.log(`Documentación de la API en http://localhost:${port}/api-docs`)
});
