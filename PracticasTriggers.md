# Guía de Ejercicios Prácticos: Auditoría de Precios de Productos

**Objetivo:** Aplicar y entender el uso de triggers en auditoría de cambios de precios, mediante ejercicios prácticos en la base de datos `jugos_ventas`.

---

## Ejercicio 1: Verificación del Trigger de Auditoría de Precios
**Trigger Relacionado:** `auditarPrecios`

**Instrucciones:**
1. Actualiza el precio de un producto existente en la tabla `tabla_de_productos`.
2. Verifica que el cambio se haya registrado en la tabla `historial_de_precios`.

**Consulta sugerida:**
```sql
UPDATE tabla_de_productos
SET PRECIO_DE_LISTA = 6.75
WHERE CODIGO_DEL_PRODUCTO = 'P001';

SELECT * FROM historial_de_precios
WHERE CODIGO_DEL_PRODUCTO = 'P001';
```

---

## Ejercicio 2: Generación Automática de Mensajes del Sistema
**Trigger Relacionado:** `auditarPrecios` (versión extendida con mensajes)

**Instrucciones:**
1. Cambia nuevamente el precio de un producto.
2. Verifica que se haya generado un mensaje automático en la tabla `mensajes_sistema`.

**Consulta sugerida:**
```sql
UPDATE tabla_de_productos
SET PRECIO_DE_LISTA = 7.50
WHERE CODIGO_DEL_PRODUCTO = 'P001';

SELECT * FROM mensajes_sistema
ORDER BY fecha DESC
LIMIT 5;
```

---

## Ejercicio 3: Validación de Funcionamiento del Trigger
**Trigger Relacionado:** `auditarPrecios`

**Instrucciones:**
1. Ejecuta una actualización que **no cambia el precio** del producto.
2. Verifica que **no se insertó un nuevo registro** en la tabla `historial_de_precios`.

**Consulta sugerida:**
```sql
-- Suponiendo que el precio actual ya es 7.50
UPDATE tabla_de_productos
SET PRECIO_DE_LISTA = 7.50
WHERE CODIGO_DEL_PRODUCTO = 'P001';

-- Confirmar que no se generó una nueva fila
SELECT * FROM historial_de_precios
WHERE CODIGO_DEL_PRODUCTO = 'P001'
ORDER BY fecha_cambio DESC;
```

---

## Sugerencia Final
Verifica que los triggers están activos con:

```sql
SHOW TRIGGERS FROM jugos_ventas;
```
