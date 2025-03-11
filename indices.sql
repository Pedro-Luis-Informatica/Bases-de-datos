-- Creación de la tabla empleados
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Creación de índices
CREATE UNIQUE INDEX idx_email ON empleados(email);
CREATE INDEX idx_nombre ON empleados(nombre);
CREATE INDEX idx_nombre_apellido ON empleados(nombre, apellido);

-- Creación de la tabla productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

-- Creación de un índice FULLTEXT
CREATE FULLTEXT INDEX idx_descripcion ON productos(descripcion);
CREATE FULLTEXT INDEX idx_nombre_desc ON productos(nombre, descripcion);

-- Gestión de índices
-- Crear un índice con CREATE INDEX
CREATE INDEX idx_apellido ON empleados(apellido);

-- Crear un índice con ALTER TABLE
ALTER TABLE empleados ADD INDEX idx_nombre (nombre);

-- Crear un índice al definir la tabla
CREATE TABLE empleados_indexados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    INDEX idx_nombre_apellido (nombre, apellido)
);

-- Mostrar índices
SHOW INDEX FROM empleados;
DESCRIBE empleados;

-- Eliminar índices
DROP INDEX idx_nombre ON empleados;
ALTER TABLE empleados DROP INDEX idx_apellido;

-- Optimización de índices
OPTIMIZE TABLE empleados;
ANALYZE TABLE empleados;

-- Optimización de consultas con EXPLAIN
EXPLAIN SELECT * FROM empleados WHERE nombre = 'Juan';

-- Ejemplo de uso de un índice normal
SELECT * FROM empleados WHERE nombre = 'Pedro';

-- Ejemplo de búsqueda con FULLTEXT INDEX
SELECT * FROM productos WHERE MATCH(descripcion) AGAINST('natural');
SELECT * FROM productos WHERE MATCH(nombre, descripcion) AGAINST('jugo de naranja');
