-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS empleados;
USE empleados;

-- Crear la tabla de empleados con índices
CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nif VARCHAR(9) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    id_departamento INT UNSIGNED,
    email VARCHAR(100) UNIQUE,
    INDEX idx_nombre (nombre),
    INDEX idx_apellido (apellido1, apellido2)
);

-- Crear la tabla de departamentos
CREATE TABLE IF NOT EXISTS departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    presupuesto DOUBLE UNSIGNED NOT NULL,
    gastos DOUBLE UNSIGNED NOT NULL
);

-- Agregar clave foránea después de la creación de la tabla
ALTER TABLE empleados ADD CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id);

-- Insertar datos de prueba
INSERT INTO departamento (nombre, presupuesto, gastos) VALUES ('IT', 50000, 10000);
INSERT INTO empleados (nif, nombre, apellido1, apellido2, id_departamento, email) VALUES
('12345678A', 'Pedro', 'Gómez', 'López', 1, 'pedro@example.com'),
('87654321B', 'María', 'Fernández', 'Ruiz', 1, 'maria@example.com'),
('11223344C', 'Luis', 'Martínez', 'Santos', 1, 'luis@example.com');

-- Crear un índice para optimizar las búsquedas por email
CREATE UNIQUE INDEX idx_email ON empleados(email);

-- Mostrar los índices de la tabla empleados
SHOW INDEX FROM empleados;

-- Uso de EXPLAIN para analizar la optimización de una consulta
EXPLAIN SELECT * FROM empleados WHERE nombre = 'Pedro';

-- Ejemplo de optimización con FULLTEXT INDEX en descripciones de empleados
ALTER TABLE empleados ADD COLUMN descripcion TEXT;
CREATE FULLTEXT INDEX idx_descripcion ON empleados(descripcion);

-- Consultar usando MATCH() AGAINST() en lugar de LIKE
SELECT * FROM empleados WHERE MATCH(descripcion) AGAINST('experiencia en SQL');

-- Optimización y reordenamiento de índices
OPTIMIZE TABLE empleados;
ANALYZE TABLE empleados;

-- Eliminar un índice si ya no es necesario
DROP INDEX idx_apellido ON empleados;
