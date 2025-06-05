# 🔍 Guía completa de Vistas en MySQL

---

## 📄 ¿Qué es una Vista?

Una **vista** es una tabla virtual que se genera a partir del resultado de una consulta SQL. No almacena datos propios, sino que muestra datos que provienen de una o varias tablas.

> Las vistas facilitan el trabajo con datos complejos, mejoran la seguridad y permiten reutilizar consultas.

---

## 🔄 Ventajas de usar Vistas

* Ocultan la complejidad de consultas.
* Permiten mostrar solo ciertos campos a ciertos usuarios.
* Ayudan a centralizar lógica de negocio en una sola consulta reutilizable.
* Mejoran la seguridad y organización de los datos.

---

## 📌 Sintaxis Básica

```sql
CREATE VIEW nombre_vista AS
SELECT columnas
FROM tabla
[WHERE condiciones];
```

---

## 🔹 Ejemplos Prácticos

### 👉 Crear una vista simple

```sql
CREATE VIEW vista_alumnos_mayores AS
SELECT nombre, edad
FROM alumnos
WHERE edad >= 18;
```

> Muestra solo los alumnos mayores de edad.

### 👉 Consultar la vista

```sql
SELECT * FROM vista_alumnos_mayores;
```

### 👉 Vista con JOIN

```sql
CREATE VIEW vista_notas AS
SELECT a.nombre, e.nota
FROM alumnos a
JOIN examenes e ON a.id = e.alumno_id;
```

> Une alumnos con sus notas.

### 👉 Vista con funciones de agregación

```sql
CREATE VIEW resumen_notas AS
SELECT alumno_id, AVG(nota) AS promedio
FROM examenes
GROUP BY alumno_id;
```

> Muestra el promedio de notas por alumno.

---

## 🔄 Modificar una Vista

```sql
CREATE OR REPLACE VIEW vista_notas AS
SELECT a.nombre, e.nota, e.fecha
FROM alumnos a
JOIN examenes e ON a.id = e.alumno_id;
```

> Reemplaza el contenido de la vista con nueva información.

---

## ❌ Eliminar una Vista

```sql
DROP VIEW vista_alumnos_mayores;
```

---

## 🔧 Comprobando Vistas

### 👉 Ver todas las vistas existentes

```sql
SHOW FULL TABLES WHERE Table_type = 'VIEW';
```

### 👉 Ver la definición de una vista

```sql
SHOW CREATE VIEW vista_notas;
```

---

## 🔒 Seguridad con Vistas

Las vistas pueden restringir el acceso a ciertas columnas o registros, permitiendo que usuarios consulten solo parte de la información sin modificar los datos originales.

```sql
GRANT SELECT ON vista_notas TO 'usuario1'@'localhost';
```

> Da permiso para leer datos de la vista, no de las tablas reales.

---

## 📅 Buenas prácticas con vistas

* Usa nombres claros y descriptivos.
* No abuses de vistas anidadas o con demasiada complejidad.
* Documenta para qué sirve cada vista.
* Usa `CREATE OR REPLACE` para actualizarlas sin borrarlas.
* Asínalas como interfaz para usuarios que no deben acceder directamente a tablas.

---

## 🚀 Resumen visual

| Acción                | Comando SQL                                   |
| --------------------- | --------------------------------------------- |
| Crear vista           | `CREATE VIEW nombre AS SELECT...`             |
| Ver contenido         | `SELECT * FROM vista`                         |
| Modificar             | `CREATE OR REPLACE VIEW...`                   |
| Eliminar              | `DROP VIEW nombre`                            |
| Ver vistas existentes | `SHOW FULL TABLES WHERE Table_type = 'VIEW';` |
| Ver definición        | `SHOW CREATE VIEW nombre;`                    |

---

🚀 Las vistas te ayudan a trabajar con datos complejos de forma simple y segura. ¡Son una herramienta poderosa que debes dominar!
