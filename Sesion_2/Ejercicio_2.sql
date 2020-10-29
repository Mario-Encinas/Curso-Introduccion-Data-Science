USE tienda;
SHOW TABLES;

SELECT AVG(salario) as Salario FROM puesto;
SELECT COUNT(*) FROM articulo WHERE nombre LIKE '%Pasta%';
SELECT MIN(salario) AS minimo, MAX(salario) AS maximo FROM puesto;
SELECT SUM(salario) AS total FROM (SELECT * FROM puesto order by id_puesto desc limit 5) AS puesto;