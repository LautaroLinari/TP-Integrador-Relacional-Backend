const swaggerJSDoc = require('swagger-jsdoc');

const swaggerDefinition = {
  openapi: '3.0.0',
  info: {
    title: 'API Documentation',
    version: '1.0.0',
    description: 'Documentación de la API de tu proyecto desplegado en Railway',
  },
  servers: [
    {
      url: 'http://localhost:3000',
    },
    {
      url: 'https://tp-integrador-relacional-backend-production.up.railway.app/', 
    },
  ],
};

const options = {
  swaggerDefinition,
  apis: ['../routes/contenidoRoutes.js'],
};

const swaggerSpec = swaggerJSDoc(options);

module.exports = swaggerSpec;
