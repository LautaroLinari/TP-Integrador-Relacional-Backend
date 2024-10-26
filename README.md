# Trabajo Practico Integrador Relacional Backend

Este trabajo es una API REST construida con Node.js, Express, MySQL Workbench y Sequelize. 
Proporciona funcionalidades para gestionar contenidos, incluyendo su creación, actualización, eliminación y filtrado.


## Descripción

Esta API permite gestionar diferentes contenidos, cada uno asociado a actores, géneros y categorías. 
Los principales endpoints permiten realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre los contenidos y realizar búsquedas filtradas según diversos criterios.


## Tecnologías Utilizadas

- Node.js
- Express.js
- MySQL Workbench
- Sequelize


## Requisitos previos

Antes de comenzar, asegúrate de tener instalados los siguientes componentes:

- Node.js y npm (Node Package Manager)
- Mysql Workbench


## Instalación

1. **Clona el repositorio**:
   git clone <url-del-repositorio>
   cd <nombre-del-repositorio>

2. **Instala las dependencias:**
   npm install express mysql sequelize

3. **Descarga los archivos SQL**
   Primero ingresa a Mysql Workbench y a su usuario root.
   Luego ejecuta el archivo trailerflix.sql para que le genere la BD junto con sus tablas.
   Luego ejecuta el archivo insert-datos-tablas.sql para cargar datos en las tablas.


## Uso

1. **Inicia el servidor**
   npm start

2. **Accede a la API**
   Ya sea desde el archivo api.http o desde su navegador.


## Endpoints

1. **GET /contenido**
   Obtiene todos los contenidos con sus actores, géneros y categoría.

2. **GET /contenido:id**
   Obtiene un contenido específico por ID con sus respectivos géneros, actores y categorías.

3. **POST /contenido**
   Crea un nuevo contenido con el siguiente formato:
   {
    "ID": 11,
    "id_categoria": 1
    "titulo": "Nuevo Contenido",
    "resumen": "Descripción del nuevo contenido.",
    "temporadas": 2
   }

4. **PUT /contenido/:id**
   Actualiza un contenido específico por ID con el siguiente formato:
   {
    "titulo": "Contenido Actualizado",
    "resumen": "Descripción actualizada del contenido.",
    "temporadas": 3,
    "id_categoria": 1
   }

5. **DELETE /contenido:id**
   Elimina un contenido específico por ID.


## Filtrado de contenidos

1. **GET /contenido/filter**
   Filtra contenidos por título, género o categoría (puede ser parcial o total).

   Query Parameters:
   titulo: Filtra por título.
   nombre_genero: Filtra por nombre de género.
   nombre_categoria: Filtra por nombre de categoría.

   Ejemplos: 
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


- **Presentación Final**: 24 de Octubre de 2024
- Proyecto completo con CRUD y toda la documentación.


## Autor

   - [LautaroLinari](https://github.com/LautaroLinari)


## Profesores y/o Tutores

   - [FabioDrizZt](https://github.com/FabioDrizZt)
   - [JuanNebbia](https://github.com/JuanNebbia)
   - [NKrein](https://github.com/NKrein)
   - [mathiasbarbosa](https://github.com/mathiasbarbosa)

