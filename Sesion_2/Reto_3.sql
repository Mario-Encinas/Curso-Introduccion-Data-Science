USE tienda;

#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, COUNT(*) AS total FROM puesto GROUP BY nombre;

#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, SUM(salario) AS suma_salario FROM puesto GROUP BY id_puesto;

#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, COUNT(id_venta) AS suma_venta FROM venta GROUP BY id_empleado;

#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(id_venta) AS total_ventas FROM venta GROUP BY id_articulo;
