CREATE VIEW listado_pagos_clientes AS
SELECT 
    CONCAT(c.nombre_cliente, ' ', c.nombre_contacto, ' ', c.apellido_contacto) AS nombre_completo,
    c.telefono,
    c.ciudad,
    c.pais,
    p.fecha_pago,
    p.total AS total_pago,
    p.id_transaccion
FROM cliente c
LEFT JOIN pago p ON c.codigo_cliente = p.codigo_cliente;

CREATE VIEW listado_pedidos_clientes AS
SELECT 
    c.codigo_cliente,
    CONCAT(c.nombre_cliente, ' ', COALESCE(c.nombre_contacto, ''), ' ', COALESCE(c.apellido_contacto, '')) AS nombre_completo,
    c.telefono,
    c.ciudad,
    c.pais,
    p.codigo_pedido,
    p.fecha_pedido,
    p.fecha_esperada,
    p.fecha_entrega,
    COALESCE(SUM(dp.cantidad * dp.precio_unidad), 0) AS total_pedido
FROM cliente c
LEFT JOIN pedido p ON c.codigo_cliente = p.codigo_cliente
LEFT JOIN detalle_pedido dp ON p.codigo_pedido = dp.codigo_pedido
GROUP BY c.codigo_cliente, c.nombre_cliente, c.nombre_contacto, c.apellido_contacto, 
         c.telefono, c.ciudad, c.pais, p.codigo_pedido, p.fecha_pedido, 
         p.fecha_esperada, p.fecha_entrega;

/*
¿Cuándo usar COALESCE?
✅ Para evitar valores NULL en resultados de consultas.
✅ Para reemplazar valores NULL con un valor por defecto.
✅ Para asegurar cálculos correctos cuando una columna puede ser NULL.
*/

SELECT * 
FROM listado_pagos_clientes 
WHERE ciudad = 'Madrid';

SELECT * 
FROM listado_pedidos_clientes 
WHERE fecha_entrega IS NULL;

SELECT 
    codigo_cliente, 
    nombre_apellidos, 
    COUNT(codigo_pedido) AS total_pedidos
FROM listado_pedidos_clientes
GROUP BY codigo_cliente, nombre_apellidos
ORDER BY total_pedidos DESC;

SELECT 
    codigo_cliente, 
    nombre_apellidos, 
    MAX(total_pedido) AS pedido_maximo, 
    MIN(total_pedido) AS pedido_minimo
FROM listado_pedidos_clientes
GROUP BY codigo_cliente, nombre_apellidos
ORDER BY pedido_maximo DESC;


RENAME TABLE listado_pagos_clientes TO listado_de_pagos;

DROP VIEW IF EXISTS listado_pagos_clientes;
DROP VIEW IF EXISTS listado_de_pagos;
DROP VIEW IF EXISTS listado_pedidos_clientes;
