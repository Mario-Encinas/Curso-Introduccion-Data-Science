/*
1.- Definir los campos y tipos de datos para la tabla movies haciendo uso de los archivos movies.dat y README.
2.- Crear la tabla movies (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).
3.- Definir los campos y tipos de datos para la tabla ratings haciendo uso de los archivos ratings.dat y README.
4.- Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)
*/
USE Bedu_test;

CREATE TABLE IF NOT EXISTS users(
	id_user INT PRIMARY KEY,
    genero CHAR(1),
    edad INT,
    ocupacion INT,
    cp VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS movies(
	id_movie INT PRIMARY KEY,
    nombre VARCHAR(40),
    categoria VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS ratings(
	id_user int,
    id_movie INT,
    rating INT,
    duracion BIGINT,
    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_movie) REFERENCES movies(id_movie)
);

DESCRIBE users;
DESCRIBE movies;
DESCRIBE ratings;
