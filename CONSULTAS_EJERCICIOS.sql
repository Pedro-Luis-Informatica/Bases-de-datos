1. CONSULTAS CONDICIONALES
Selecciona los productos cuyo precio de lista sea mayor a 100.
SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA > 100;
Obtén los clientes que tienen un límite de crédito entre 5000 y 10000.
SELECT * FROM tabla_de_clientes WHERE LIMITE_DE_CREDITO BETWEEN 5000 AND 10000;
Lista las facturas con un impuesto superior al 15%.
SELECT * FROM facturas WHERE IMPUESTO > 15;

2. CONSULTAS LIKE
Encuentra productos cuyo sabor comience con 'C'.
SELECT * FROM tabla_de_productos WHERE SABOR LIKE 'C%';
Busca clientes cuyo nombre contenga 'Luis'.
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%Luis%';

3. CONSULTAS DISTINCT
Muestra los diferentes barrios en los que viven los clientes.
SELECT DISTINCT BARRIO FROM tabla_de_clientes;
Obtén los sabores únicos de los productos.
SELECT DISTINCT SABOR FROM tabla_de_productos;

4. CONSULTAS LIMIT
Obtén las primeras 5 facturas.
sql
Copiar código
SELECT * FROM facturas LIMIT 5;
Lista los 3 productos más baratos ordenados por precio.
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA ASC LIMIT 3;

5. CONSULTAS ORDER BY
Ordena a los clientes por su volumen de compra en orden descendente.
SELECT * FROM tabla_de_clientes ORDER BY VOLUMEN_DE_COMPRA DESC;
Muestra los productos ordenados por sabor y tamaño.
SELECT * FROM tabla_de_productos ORDER BY SABOR, TAMANO;

6. CONSULTAS GROUP BY
Agrupa las facturas por matrícula del vendedor y muestra el número de facturas emitidas por cada uno.
SELECT MATRICULA, COUNT(*) AS NUMERO_FACTURAS FROM facturas GROUP BY MATRICULA;
Agrupa los productos por envase y muestra el precio promedio de cada tipo de envase.
SELECT ENVASE, AVG(PRECIO_DE_LISTA) AS PRECIO_PROMEDIO FROM tabla_de_productos GROUP BY ENVASE;

7. CONSULTAS HAVING
Muestra los vendedores que han emitido más de 10 facturas.
SELECT MATRICULA, COUNT(*) AS TOTAL_FACTURAS FROM facturas GROUP BY MATRICULA HAVING TOTAL_FACTURAS > 10;

# tarea: ¿Quiénes fueron los clientes que realizaron más de 2000 compras en 2016?
select * from facturas;
SELECT 
    DNI, COUNT(*)
FROM
    facturas
WHERE
    YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;

8. CONSULTAS CASE
Crea una consulta que clasifique los productos como "Caro" si su precio es mayor a 50 y "Barato" en caso contrario.
SELECT CODIGO_DEL_PRODUCTO, PRECIO_DE_LISTA, 
       CASE 
           WHEN PRECIO_DE_LISTA > 50 THEN 'Caro'
           ELSE 'Barato'
       END AS CATEGORIA_PRECIO 
FROM tabla_de_productos;

#TAREA: Registre el año de nacimiento de los clientes y clasifíquelos de la siguiente manera:
# Nacidos antes de 1990= Viejos, nacidos entre 1990 y 1995= Jóvenes y nacidos después de 1995= Niños. Liste el nombre del cliente y esta clasificación.
SELECT 
    NOMBRE,
    CASE
        WHEN YEAR(fecha_de_nacimiento) < 1990 THEN 'Viejos'
        WHEN
            YEAR(fecha_de_nacimiento) >= 1990
                AND YEAR(fecha_de_nacimiento) <= 1995
        THEN
            'Jóvenes'
        ELSE 'Niños'
    END AS CLASIFICACION_EDAD
FROM
    tabla_de_clientes
order by CLASIFICACION_EDAD;

9. CONSULTAS INNER JOIN
Lista todas las facturas junto con la información de los clientes.
SELECT f.*, c.NOMBRE AS CLIENTE 
FROM facturas f 
INNER JOIN tabla_de_clientes c ON f.DNI = c.DNI;

#tarea: Obtén la facturación anual de la empresa.
#Ten en cuenta que el valor financiero de las ventas consiste en multiplicar la cantidad por el precio.
select * from facturas;
select * from items_facturas;
SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD * PRECIO) AS FACTURACION
FROM facturas F 
INNER JOIN 
items_facturas IFa 
ON F.NUMERO = IFa.NUMERO
GROUP BY YEAR(FECHA_VENTA)
order by facturacion;

10. CONSULTAS LEFT Y RIGHT JOIN
Muestra todas las facturas, incluidas aquellas sin detalles en items_facturas (LEFT JOIN).
SELECT f.*, i.CODIGO_DEL_PRODUCTO 
FROM facturas f 
LEFT JOIN items_facturas i ON f.NUMERO = i.NUMERO;
11. CONSULTAS CROSS JOIN
Genera una combinación de todos los productos con todos los vendedores.
SELECT p.CODIGO_DEL_PRODUCTO, v.MATRICULA 
FROM tabla_de_productos p 
CROSS JOIN tabla_de_vendedores v;

12. CONSULTAS UNION Y FULL JOIN
Combina los nombres de los clientes y los vendedores en una única lista.
SELECT NOMBRE AS NOMBRE_PERSONA FROM tabla_de_clientes 
UNION 
SELECT NOMBRE FROM tabla_de_vendedores;

13. SUBCONSULTAS
Encuentra las facturas cuyo importe total (cantidad * precio) sea mayor al promedio general de todas las facturas.
SELECT NUMERO, (CANTIDAD * PRECIO) AS IMPORTE_TOTAL 
FROM items_facturas 
WHERE (CANTIDAD * PRECIO) > (
    SELECT AVG(CANTIDAD * PRECIO) FROM items_facturas
);
