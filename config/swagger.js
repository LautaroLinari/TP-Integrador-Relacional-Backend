const swaggerJSDoc = require('swagger-jsdoc');

const swaggerDefinition = {
  openapi: '3.0.0',
  info: {
    title: 'API Documentación',
    version: '1.0.0',
    description: 'Documentación de la API para el proyecto de BD Relacionales',
  },
  servers: [
    {
      url: 'http://localhost:3000',
    },
    {
      url: 'https://tp-integrador-relacional-backend-production.up.railway.app/',
    },
  ],
  components: {
    schemas: {
      Contenido: {
        type: 'object',
        properties: {
          ID: { type: 'integer', example: 101 },
          titulo: { type: 'string', example: 'Super Mario Bros' },
          resumen: { type: 'string', example: 'Descripción del contenido.' },
          temporadas: { type: 'integer', example: 0, nullable: true },
          duracion: { type: 'string', example: '120 minutos' },
          id_categoria: { type: 'integer', example: 2 },
          enlaces_trailer: { type: 'string', example: 'https://www.youtube.com/watch?v=GIJIESOZALQ' },
          generos: { type: 'array', items: { type: 'integer', example: [1, 3, 6] } },
          actores: {
            type: 'array',
            items: {
              type: 'object',
              properties: {
                nombre: { type: 'string', example: 'Chris' },
                apellido: { type: 'string', example: 'Pratt' },
              },
            },
          },
        },
      },
      Actor: {
        type: 'object',
        properties: {
          id: { type: 'integer', example: 77},
          nombre: { type: 'string', example: 'Chris' },
          apellido: { type: 'string', example: 'Pratt' },
        },
      },
      Categoria: {
        type: 'object',
        properties: {
          id: { type: 'integer', example: 1},
          nombre_categoria: { type: 'string', example: 'Serie' },
        },
      },
      Genero: {
        type: 'object',
        properties: {
          id: { type: 'integer', example: 5},
          nombre_genero: { type: 'string', example: 'Acción' },
        },
      },
      ErrorResponse: {
        type: 'object',
        properties: {
          error: { type: 'string', example: 'Ocurrió un error al procesar la solicitud.' },
          details: { type: 'string', example: 'Detalles del error si es necesario.' },
        },
      },
    },
    tags: [
      {
        name: 'Ejemplos',
        description: 'Ejemplos para gestionar contenidos y filtros en la API',
      }
    ],
  },
};

const options = {
  swaggerDefinition,
  apis: ['./routes/*.js'],
};

const swaggerDocs = swaggerJSDoc(options);
module.exports = swaggerDocs;
