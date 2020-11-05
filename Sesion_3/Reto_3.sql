USE tienda;

#Obtener el puesto de un empleado.
CREATE VIEW puesto_023 AS
SELECT e.nombre AS nombre_empleado, p.nombre AS puesto
FROM empleado AS e
JOIN puesto AS p
ON e.id_puesto = p.id_puesto;

SELECT * FROM puesto_023;

#Saber qué artículos ha vendido cada empleado.
CREATE VIEW vendedor_articulo_023 AS
SELECT e.nombre AS nombre_empleado, a.nombre AS articulo
FROM venta AS v
JOIN articulo AS a
ON a.id_articulo = v.id_articulo
JOIN empleado AS e
ON e.id_empleado = v.id_empleado;

SELECT * FROM vendedor_articulo_023;

#Saber qué puesto ha tenido más ventas.
CREATE VIEW venta_puesto_023 AS
SELECT p.nombre AS puesto, COUNT(v.clave) AS total
FROM empleado AS e
JOIN venta AS v
ON e.id_empleado = v.id_empleado
JOIN puesto AS p
ON e.id_puesto = p.id_puesto
GROUP BY p.nombre;

SELECT * FROM venta_puesto_023 ORDER BY total DESC LIMIT 1;

SELECT * FROM venta_puesto_023;