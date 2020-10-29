USE tienda;


#¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) as Salario FROM puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) FROM articulo WHERE nombre LIKE '%Pasta%';

#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS minimo, MAX(salario) AS maximo FROM puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) AS total FROM (SELECT * FROM puesto order by id_puesto desc limit 5) AS puesto;
