# Trabajo Practico Integrador Relacional Backend

Este trabajo es una API REST construida con Node.js, Express, MySQL Workbench y Sequelize. 

Proporciona funcionalidades para gestionar contenidos, incluyendo su creación, actualización, eliminación y filtrado.


## Descripción

Esta API permite gestionar diferentes contenidos, cada uno asociado a actores, géneros y categorías. 

Los principales endpoints permiten realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre los contenidos y realizar búsquedas filtradas según diversos criterios.

En este proyecto se usa una arquitectura por capas para mantener el proyecto limpio y ordenado,  como la utilización de Controllers para las cada una de las rutas(endpoints)

Además se utilizó Swagger para manejar la documentación y hacer las pruebas correspondientes.


## Tecnologías Utilizadas

- Node.js
- Express.js
- MySQL Workbench
- Sequelize
- Swagger


## Requisitos previos

Antes de comenzar, asegúrate de tener instalados los siguientes componentes:

- Node.js y NPM (Node Package Manager)
- Mysql Workbench


## Instalación

1. **Clona el repositorio**:
   git clone <url-del-repositorio>
   cd <nombre-del-repositorio>

2. **Instala las dependencias:**
   npm install express sequelize swagger-jsdoc swagger-ui-express dotenv

3. **Descarga los archivos SQL**
   
   Primero ingresa a Mysql Workbench y a su usuario root.

   Luego ejecuta el archivo trailerflix.sql para que le genere la BD junto con sus tablas.

   Luego ejecuta el archivo insert-datos-tablas.sql para cargar datos en las tablas.


## Uso

1. **Inicia el servidor**
   
   npm run start:local

2. **Accede a la API**
   
   Ya sea desde el archivo api.http (Para utilizar api.http es necesario tener instalado la extensión "Rest Client" en VSC) 
   o desde su navegador a traves del link del despliegue (https://tp-integrador-relacional-backend-production.up.railway.app).


## Endpoints de Busqueda

1. **GET /contenido**
   
   Obtiene todos los contenidos con sus respectivos actores, géneros y categoría.

2. **GET /contenido:id**
   
   Obtiene un contenido específico por ID con sus respectivos actores, géneros y categorías.


## Endpoints de Agregación y Actualización

1. **POST /contenido**
   
   Crea un nuevo contenido con el siguiente formato:

```json
   {
      "id_categoria": 1,
      "titulo": "Nuevo Contenido",
      "resumen": "Descripción del nuevo contenido.",
      "enlaces_trailer": "https://www.youtube.com/watch?v=_1f2RLdxQfA",
      "duracion": 120,
      "generos": [1, 2, 9],
      "actores": 
      [
         { "nombre": "Chris", "apellido": "Pratt" },
         { "nombre": "Anya", "apellido": "Taylor-Joy" }

      ]
   }
```

2. **PUT /contenido/:id**
   
   Actualiza un contenido específico por ID con el siguiente formato:

```json
   {
      "id_categoria": 2,
      "titulo": "Super Mario Bros 2",
      "resumen": "Dos hermanos plomeros, Mario y Luigi, caen por las alcantarillas y llegan a un mundo subterráneo mágico en el que deben enfrentarse al malvado Bowser para 
      rescatar a la princesa Peach.",
      "enlaces_trailer": "https://www.youtube.com/watch?v=GIJIESOZALQ&ab_channel=TrailersTC",
      "duracion": "105 minutos",
      "generos": [1, 2, 4, 9, 10, 11],
      "actores": 
      [
         { "nombre": "Jack", "apellido": "Black" },
         { "nombre": "Charlie", "apellido": "Day" }

      ]
   }
```


## Endpoint de Eliminación

1. **DELETE /contenido:id**
   
   Elimina un contenido específico por ID.


## Filtrado de contenidos

1. **GET /contenido/filter**
   
   Filtra contenidos por título, género o categoría (puede ser parcial o total).

   Query Parameters:

   titulo: Filtra por título.

   nombre_genero: Filtra por nombre de género.

   nombre_categoria: Filtra por nombre de categoría.


   **Ejemplos**: 
   
   GET http://localhost:3000/contenido/filter?nombre_genero=Drama

   GET http://localhost:3000/contenido/filter?nombre_categoria=Pelí


## Manejo de Errores

La API maneja errores y devuelve códigos de estado HTTP apropiados. 

Se puede recibir un mensaje de error detallado en caso de fallos en la creación o actualización de contenidos.


## Contribuciones

Las contribuciones son más que bienvenidas. 

Si deseas colaborar, por favor, abre un issue o un pull request.


## Fechas Importantes

- **Avance del Proyecto**: 10 de Octubre de 2024
- Tener diseñadas las tablas en DB Designer, con el archivo SQL generado y los primeros endpoints funcionando.


- **Presentación Final**: 31 de Octubre de 2024
- Proyecto completo con CRUD y toda la documentación.


## Autor

   - [LautaroLinari](https://github.com/LautaroLinari)


## Profesores y/o Tutores

   - [FabioDrizZt](https://github.com/FabioDrizZt)
   - [JuanNebbia](https://github.com/JuanNebbia)
   - [NKrein](https://github.com/NKrein)
   - [mathiasbarbosa](https://github.com/mathiasbarbosa)

