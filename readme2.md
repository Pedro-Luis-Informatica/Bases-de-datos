# **Optimización de Consultas en MySQL**

Optimizar consultas en MySQL es fundamental para mejorar el rendimiento de una base de datos. La optimización incluye el uso de **índices**, reestructuración de consultas y análisis de planes de ejecución.

---

## **1. Índices en MySQL**

Los **índices** son estructuras que aceleran la búsqueda de datos en una tabla. Sin índices, MySQL debe recorrer todas las filas (búsqueda secuencial), lo que puede ser ineficiente en bases de datos grandes.

### **1.1 Tipos de Índices**

1. **Índice Primario (`PRIMARY KEY`)**
   - Único por tabla.
   - No permite valores repetidos ni nulos.
   - Se crea automáticamente si hay una columna `AUTO_INCREMENT`.

   ```sql
   CREATE TABLE empleados (
       id INT AUTO_INCREMENT PRIMARY KEY,
       nombre VARCHAR(100),
       apellido VARCHAR(100)
   );
   ```

2. **Índice Único (`UNIQUE INDEX`)**
   - Garantiza valores únicos.
   - Permite valores `NULL`.
   
   ```sql
   CREATE UNIQUE INDEX idx_email ON empleados(email);
   ```

3. **Índice Normal (`INDEX` o `KEY`)**
   - Acelera búsquedas en una o varias columnas.
   
   ```sql
   CREATE INDEX idx_nombre ON empleados(nombre);
   ```

4. **Índice Compuesto**
   - Se usa en múltiples columnas.
   
   ```sql
   CREATE INDEX idx_nombre_apellido ON empleados(nombre, apellido);
   ```

5. **Índice de Texto Completo (`FULLTEXT INDEX`)**
   - Optimiza búsquedas en `VARCHAR` y `TEXT`.
   
   ```sql
   CREATE FULLTEXT INDEX idx_descripcion ON productos(descripcion);
   ```

---

## **1.2 Gestión de Índices**

### **1.2.1 Crear Índices**

#### **1.2.1.1 `CREATE INDEX`**

```sql
CREATE INDEX idx_apellido ON empleados(apellido);
```

#### **1.2.1.2 `ALTER TABLE`**

```sql
ALTER TABLE empleados ADD INDEX idx_nombre (nombre);
```

#### **1.2.1.3 `CREATE TABLE`**

```sql
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    INDEX idx_nombre_apellido (nombre, apellido)
);
```

### **1.2.2 Mostrar Índices**

#### **1.2.2.1 `SHOW INDEX`**

```sql
SHOW INDEX FROM empleados;
```

#### **1.2.2.2 `DESCRIBE`**

```sql
DESCRIBE empleados;
```

### **1.2.3 Eliminar Índices**

#### **1.2.3.1 `DROP INDEX`**

```sql
DROP INDEX idx_nombre ON empleados;
```

#### **1.2.3.2 `ALTER TABLE`**

```sql
ALTER TABLE empleados DROP INDEX idx_apellido;
```

### **1.2.4 Actualizar y Reordenar Índices**

#### **1.2.4.1 `OPTIMIZE TABLE`**

```sql
OPTIMIZE TABLE empleados;
```

#### **1.2.4.2 `ANALYZE TABLE`**

```sql
ANALYZE TABLE empleados;
```

---

## **1.3 Optimización de Consultas con Índices**

Podemos analizar cómo MySQL ejecuta una consulta con `EXPLAIN`.

```sql
EXPLAIN SELECT * FROM empleados WHERE nombre = 'Juan';
```

Esto muestra:
- Si la consulta usa índices.
- El tipo de búsqueda (`index`, `ALL`, `ref`, etc.).
- La cantidad de filas escaneadas.

Si el `type` es `ALL`, significa que MySQL está recorriendo toda la tabla, lo cual es ineficiente.

---

## **1.4 Ejemplos de Optimización de Consultas**

### **1.4.1 Ejemplo 1: Usando un Índice Normal**

```sql
CREATE INDEX idx_nombre ON empleados(nombre);
SELECT * FROM empleados WHERE nombre = 'Pedro';
```

El índice `idx_nombre` acelera la consulta reduciendo el número de filas escaneadas.

### **1.4.2 Ejemplo 2: Usando `FULLTEXT INDEX`**

Sin índice:
```sql
SELECT * FROM productos WHERE descripcion LIKE '%natural%';
```

Con `FULLTEXT INDEX`:
```sql
CREATE FULLTEXT INDEX idx_descripcion ON productos(descripcion);
SELECT * FROM productos WHERE MATCH(descripcion) AGAINST('natural');
```

Esto mejora la velocidad en textos grandes.

### **1.4.3 Ejemplo 3: `FULLTEXT INDEX` en Múltiples Columnas**

```sql
CREATE FULLTEXT INDEX idx_nombre_desc ON productos(nombre, descripcion);
SELECT * FROM productos WHERE MATCH(nombre, descripcion) AGAINST('jugo de naranja');
```

---
