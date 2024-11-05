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
          titulo: { type: 'string', example: 'Peaky Blinders' },
          resumen: { type: 'string', example: 'Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.' },
          temporadas: { type: 'integer', example: 6, nullable: true },
          duracion: { type: 'string', example: ' ', nulleable: true },
          id_categoria: { type: 'integer', example: 1 },
          enlaces_trailer: { type: 'string', example: 'https://www.youtube.com/watch?v=H282c9q2MUU' },
          generos: { type: 'array', items: { type: 'integer', example: 5 } },
          actores: {
            type: 'array',
            items: {
              type: 'object',
              properties: {
                nombre: { type: 'string', example: 'Cillian' },
                apellido: { type: 'string', example: 'Murphy' },
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
          error: { 
            type: 'string', example: 'Ocurrió un error al procesar la solicitud.',
          },
          details: { type: 'string', example: "Error" },
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
