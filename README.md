# 📊 Ejercicios de Bases de Datos

Bienvenido a esta colección de consultas SQL que te ayudarán a comprender el uso de **JOINS** en bases de datos relacionales. 🚀

---

## 👑 **Índice**
1. [🔗 Los Joins](#-los-joins)
   - [📋 Mostrar número de factura, fecha y producto](#-mostrar-número-de-factura-fecha-y-producto)
   - [📋 Clientes con y sin facturas](#-clientes-con-y-sin-facturas)
   - [📋 Facturas y vendedores](#-facturas-y-vendedores)
   - [📋 Clientes y vendedores](#-clientes-y-vendedores)
   - [📋 Total gastado por cliente](#-total-gastado-por-cliente)
   - [📋 Productos vendidos y no vendidos](#-productos-vendidos-y-no-vendidos)
   - [📋 Productos más vendidos](#-productos-más-vendidos)
   - [📋 Productos nunca vendidos](#-productos-nunca-vendidos)
   - [📋 Facturas con clientes](#-facturas-con-clientes)
   - [📋 Facturas sin clientes](#-facturas-sin-clientes)
   - [📋 Clientes sin compras](#-clientes-sin-compras)
   - [📋 Facturas con total de compra](#-facturas-con-total-de-compra)

---

## 🔗 **Los Joins**

### 📋 **Mostrar número de factura, fecha y producto**
```sql
SELECT 
    f.numero, 
    f.fecha_venta, 
    p.nombre_producto AS producto
FROM facturas f
INNER JOIN items_facturas i ON f.numero = i.numero
INNER JOIN productos p ON i.codigo_producto = p.codigo_producto;
```

---

### 📋 **Clientes con y sin facturas**
```sql
SELECT 
    c.nombre, 
    c.ciudad, 
    f.numero, 
    f.fecha_venta
FROM clientes c
LEFT JOIN facturas f ON c.dni = f.dni;
```

---

### 📋 **Facturas y vendedores**
```sql
SELECT 
    f.numero, 
    f.fecha_venta, 
    v.nombre AS vendedor, 
    v.barrio
FROM facturas f
RIGHT JOIN vendedores v ON f.matricula = v.matricula;
```

---

### 📋 **Clientes y vendedores**
```sql
SELECT 
    c.nombre AS cliente, 
    v.nombre AS vendedor, 
    f.fecha_venta
FROM clientes c
INNER JOIN facturas f ON f.dni = c.dni
LEFT JOIN vendedores v ON f.matricula = v.matricula;
```

---

### 📋 **Total gastado por cliente**
```sql
SELECT 
    c.nombre AS cliente, 
    v.nombre AS vendedor, 
    f.numero AS numero_factura, 
    f.fecha_venta, 
    SUM(i.cantidad * i.precio) AS total_gastado
FROM clientes c
INNER JOIN facturas f ON f.dni = c.dni
LEFT JOIN vendedores v ON f.matricula = v.matricula
INNER JOIN items_facturas i ON f.numero = i.numero
GROUP BY c.nombre, v.nombre, f.numero, f.fecha_venta
ORDER BY total_gastado DESC;
```

---

### 📋 **Productos vendidos y no vendidos**
```sql
SELECT 
    p.nombre_producto AS producto, 
    i.numero AS factura
FROM productos p
RIGHT JOIN items_facturas i ON p.codigo_producto = i.codigo_producto;
```

---

### 📋 **Productos más vendidos**
```sql
SELECT 
    p.codigo_producto, 
    p.nombre_producto,
    p.tamano,
    p.sabor,
    SUM(i.cantidad) AS total_vendido
FROM productos p
INNER JOIN items_facturas i ON p.codigo_producto = i.codigo_producto
GROUP BY p.codigo_producto, p.nombre_producto, p.tamano, p.sabor
ORDER BY total_vendido DESC;
```

---

### 📋 **Productos nunca vendidos**
```sql
SELECT 
    p.codigo_producto, 
    p.nombre_producto,
    p.tamano,
    p.sabor
FROM productos p
LEFT JOIN items_facturas i ON p.codigo_producto = i.codigo_producto
WHERE i.codigo_producto IS NULL;
```

---

### 📋 **Facturas con clientes**
```sql
SELECT 
    f.numero, 
    f.fecha_venta, 
    c.nombre AS cliente
FROM facturas f
INNER JOIN clientes c ON f.dni = c.dni;
```

---

### 📋 **Facturas sin clientes**
```sql
SELECT 
    f.numero, 
    f.fecha_venta, 
    c.nombre AS cliente
FROM facturas f
LEFT JOIN clientes c ON f.dni = c.dni
WHERE c.nombre IS NULL;
```

---

### 📋 **Clientes sin compras**
```sql
SELECT 
    c.nombre, 
    f.numero
FROM facturas f
RIGHT JOIN clientes c ON f.dni = c.dni
WHERE f.numero IS NULL;
```

---

### 📋 **Facturas con total de compra**
```sql
SELECT 
    f.numero, 
    f.fecha_venta, 
    c.nombre AS cliente,
    SUM(i.cantidad * i.precio) AS total_factura
FROM facturas f
INNER JOIN clientes c ON f.dni = c.dni
INNER JOIN items_facturas i ON f.numero = i.numero
GROUP BY f.numero, f.fecha_venta, c.nombre;
```

---
