# Mostrar el número de factura, la fecha de venta y el nombre del producto.
SELECT facturas.NUMERO, facturas.FECHA_VENTA, tabla_de_productos.NOMBRE_DEL_PRODUCTO AS producto
FROM facturas
INNER JOIN items_facturas ON facturas.NUMERO = items_facturas.NUMERO
INNER JOIN tabla_de_productos ON items_facturas.CODIGO_DEL_PRODUCTO = tabla_de_productos.CODIGO_DEL_PRODUCTO;

# Mostrar todos los clientes y, si tienen una factura, el número de esta
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, facturas.NUMERO, facturas.FECHA_VENTA
FROM tabla_de_clientes
LEFT JOIN facturas ON tabla_de_clientes.DNI = facturas.DNI;

# Mostrar todas las facturas y los vendedores asociados, incluyendo los vendedores sin ventas.
SELECT facturas.NUMERO, facturas.FECHA_VENTA, tabla_de_vendedores.NOMBRE AS vendedor, tabla_de_vendedores.BARRIO
FROM facturas
RIGHT JOIN tabla_de_vendedores ON facturas.MATRICULA = tabla_de_vendedores.MATRICULA;

# Mostrar todos los clientes y sus vendedores asignados.
SELECT 
    tabla_de_clientes.NOMBRE AS cliente, 
    tabla_de_vendedores.NOMBRE AS vendedor, 
    facturas.FECHA_VENTA
FROM tabla_de_clientes
INNER JOIN facturas ON facturas.DNI = tabla_de_clientes.DNI
LEFT JOIN tabla_de_vendedores ON facturas.MATRICULA = tabla_de_vendedores.MATRICULA;

# Consulta para obtener el total gastado por cada cliente en una factura
SELECT 
    c.NOMBRE AS cliente, 
    v.NOMBRE AS vendedor, 
    f.NUMERO AS numero_factura, 
    f.FECHA_VENTA, 
    SUM(i.CANTIDAD * i.PRECIO) AS total_gastado
FROM tabla_de_clientes c
INNER JOIN facturas f ON f.DNI = c.DNI
LEFT JOIN tabla_de_vendedores v ON f.MATRICULA = v.MATRICULA
INNER JOIN items_facturas i ON f.NUMERO = i.NUMERO
GROUP BY c.NOMBRE, v.NOMBRE, f.NUMERO, f.FECHA_VENTA
ORDER BY total_gastado DESC;

# Ver qué productos han sido vendidos y cuáles no.
SELECT tabla_de_productos.NOMBRE_DEL_PRODUCTO AS producto, items_facturas.NUMERO AS factura
FROM tabla_de_productos
RIGHT JOIN items_facturas ON tabla_de_productos.CODIGO_DEL_PRODUCTO = items_facturas.CODIGO_DEL_PRODUCTO;

# Productos más vendidos
SELECT 
    p.CODIGO_DEL_PRODUCTO, 
    p.NOMBRE_DEL_PRODUCTO,
    p.TAMANO,
    p.SABOR,
    SUM(i.CANTIDAD) AS total_vendido
FROM tabla_de_productos p
INNER JOIN items_facturas i ON p.CODIGO_DEL_PRODUCTO = i.CODIGO_DEL_PRODUCTO
GROUP BY p.CODIGO_DEL_PRODUCTO, p.NOMBRE_DEL_PRODUCTO
ORDER BY total_vendido DESC;

# Productos que nunca se han vendido
SELECT 
    p.CODIGO_DEL_PRODUCTO, 
    p.NOMBRE_DEL_PRODUCTO,
    p.TAMANO,
    p.SABOR
FROM tabla_de_productos p
LEFT JOIN items_facturas i ON p.CODIGO_DEL_PRODUCTO = i.CODIGO_DEL_PRODUCTO
WHERE i.CODIGO_DEL_PRODUCTO IS NULL;

# Mostrar facturas con el cliente que las realizó.
SELECT facturas.NUMERO, facturas.FECHA_VENTA, tabla_de_clientes.NOMBRE AS cliente
FROM facturas
INNER JOIN tabla_de_clientes ON facturas.DNI = tabla_de_clientes.DNI;

# mostrar cuales productos compro
SELECT 
    f.NUMERO AS numero_factura, 
    f.FECHA_VENTA, 
    c.NOMBRE AS cliente, 
    p.NOMBRE_DEL_PRODUCTO AS producto, 
    i.CANTIDAD, 
    i.PRECIO, 
    (i.CANTIDAD * i.PRECIO) AS total
FROM facturas f
INNER JOIN tabla_de_clientes c ON f.DNI = c.DNI
INNER JOIN items_facturas i ON f.NUMERO = i.NUMERO
INNER JOIN tabla_de_productos p ON i.CODIGO_DEL_PRODUCTO = p.CODIGO_DEL_PRODUCTO
ORDER BY f.NUMERO, p.NOMBRE_DEL_PRODUCTO;

# Mostrar facturas sin cliente asociado.
SELECT facturas.NUMERO, facturas.FECHA_VENTA, tabla_de_clientes.NOMBRE AS cliente
FROM facturas
LEFT JOIN tabla_de_clientes ON facturas.DNI = tabla_de_clientes.DNI
WHERE tabla_de_clientes.NOMBRE IS NULL;

# mostrar cuales fueron esos productos comprados
SELECT 
	c.NOMBRE AS cliente,
    f.NUMERO AS numero_factura, 
    f.FECHA_VENTA, 
    p.NOMBRE_DEL_PRODUCTO AS producto, 
    i.CANTIDAD, 
    i.PRECIO, 
    (i.CANTIDAD * i.PRECIO) AS total
FROM facturas f
LEFT JOIN tabla_de_clientes c ON f.DNI = c.DNI
INNER JOIN items_facturas i ON f.NUMERO = i.NUMERO
INNER JOIN tabla_de_productos p ON i.CODIGO_DEL_PRODUCTO = p.CODIGO_DEL_PRODUCTO
WHERE c.NOMBRE IS NULL
ORDER BY f.NUMERO, p.NOMBRE_DEL_PRODUCTO;

# Mostrar clientes que nunca han realizado una compra.
SELECT tabla_de_clientes.NOMBRE, facturas.NUMERO
FROM facturas
RIGHT JOIN tabla_de_clientes ON facturas.DNI = tabla_de_clientes.DNI
WHERE facturas.NUMERO IS NULL;

# Mostrar las facturas con el cliente y el total de la compra.
SELECT facturas.NUMERO, facturas.FECHA_VENTA, tabla_de_clientes.NOMBRE AS cliente,
       SUM(items_facturas.CANTIDAD * items_facturas.PRECIO) AS total_factura
FROM facturas
INNER JOIN tabla_de_clientes ON facturas.DNI = tabla_de_clientes.DNI
INNER JOIN items_facturas ON facturas.NUMERO = items_facturas.NUMERO
INNER JOIN tabla_de_productos ON items_facturas.CODIGO_DEL_PRODUCTO = tabla_de_productos.CODIGO_DEL_PRODUCTO
GROUP BY facturas.NUMERO;

















