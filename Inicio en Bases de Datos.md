# 📘 Guía de Inicio en Bases de Datos: DDL y DML

## 📌 Introducción
Una **base de datos** es un conjunto de datos organizados de forma que pueden ser fácilmente accedidos, gestionados y actualizados.  
En SQL (Structured Query Language) existen diferentes tipos de comandos que permiten trabajar con las bases de datos.

Los dos primeros que aprenderás son:
- **DDL (Data Definition Language):** Lenguaje de Definición de Datos.
- **DML (Data Manipulation Language):** Lenguaje de Manipulación de Datos.

---

## 🏗️ 1. DDL – Data Definition Language
Los comandos DDL sirven para **definir y estructurar** la base de datos.  
Con ellos puedes crear, modificar o eliminar tablas, así como otros objetos de la base de datos.

### 🔹 Principales comandos DDL
1. **CREATE** → Crea bases de datos y tablas.
2. **ALTER** → Modifica la estructura de una tabla existente.
3. **DROP** → Elimina bases de datos o tablas.
4. **TRUNCATE** → Vacía todos los datos de una tabla pero conserva la estructura.

### 📖 Ejemplos
```sql
-- Crear una base de datos
CREATE DATABASE Escuela;

-- Usar la base de datos creada
USE Escuela;

-- Crear una tabla de estudiantes
CREATE TABLE Estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT,
    curso VARCHAR(30)
);

-- Modificar una tabla (agregar una columna)
ALTER TABLE Estudiantes ADD correo VARCHAR(100);

-- Eliminar una tabla
DROP TABLE Estudiantes;
```

---

## 📝 2. DML – Data Manipulation Language
Los comandos DML se utilizan para **gestionar y manipular los datos** que se encuentran dentro de las tablas.

### 🔹 Principales comandos DML
1. **INSERT** → Inserta nuevos registros en una tabla.
2. **SELECT** → Consulta datos de una o varias tablas.
3. **UPDATE** → Modifica registros existentes.
4. **DELETE** → Elimina registros.

### 📖 Ejemplos
```sql
-- Insertar datos en la tabla
INSERT INTO Estudiantes (nombre, edad, curso, correo)
VALUES ('Juan Pérez', 20, 'Matemáticas', 'juanp@example.com');

-- Consultar todos los datos
SELECT * FROM Estudiantes;

-- Consultar estudiantes mayores de 18 años
SELECT nombre, curso FROM Estudiantes WHERE edad > 18;

-- Actualizar el correo de un estudiante
UPDATE Estudiantes SET correo = 'juanperez@correo.com' WHERE id = 1;

-- Eliminar un estudiante por ID
DELETE FROM Estudiantes WHERE id = 1;
```

---

## ⚡ Diferencias entre DDL y DML
| Aspecto | DDL (Definición) | DML (Manipulación) |
|---------|-----------------|--------------------|
| Uso | Estructura de la BD | Gestión de datos |
| Palabras clave | CREATE, ALTER, DROP, TRUNCATE | INSERT, SELECT, UPDATE, DELETE |
| Efecto | Cambios permanentes en la estructura | Cambios en los registros |
| Ejemplo | `CREATE TABLE` | `INSERT INTO` |

---

## ✅ Tips para principiantes
- Siempre utiliza **`USE NombreBD;`** para asegurarte de estar en la base correcta.
- Usa **`SELECT * FROM tabla;`** para revisar el contenido de las tablas antes de hacer cambios.
- Prueba primero tus consultas con un **`SELECT`** antes de un **`DELETE`** o **`UPDATE`**.
- Usa nombres de tablas y columnas **descriptivos** y en singular.
- Guarda tus scripts SQL en archivos `.sql` para reutilizarlos.

---

## 🎯 Ejercicios recomendados
1. Crea una base de datos llamada `Biblioteca`.
2. Dentro de ella, crea una tabla `Libros` con: id, titulo, autor, año y editorial.
3. Inserta al menos 3 libros.
4. Consulta todos los libros.
5. Actualiza el año de uno de los libros.
6. Elimina un libro por su `id`.
7. Borra la tabla completa y vuelve a crearla.

---

## 📌 Conclusión
- **DDL** define la estructura de la base de datos.  
- **DML** manipula los datos dentro de las tablas.  
Ambos son esenciales para aprender a trabajar con bases de datos en SQL.

