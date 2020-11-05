USE tienda;
SHOW TABLES;
DESCRIBE articulo;
SELECT * FROM venta;

#¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT e.nombre, v.clave FROM empleado AS e JOIN venta AS v ON e.id_empleado = v.id_empleado;  

#¿Cuál es el nombre de los artículos que se han vendido?
SELECT a.nombre, v.clave FROM articulo AS a JOIN venta AS v ON a.id_articulo = v.id_articulo; 

#¿Cuál es el total de cada venta?
SELECT v.clave, SUM(a.precio) AS total FROM articulo AS a JOIN venta AS v ON a.id_articulo = v.id_articulo GROUP BY v.id_venta;