# Guía Completa de Triggers en MySQL #

## ¿Qué es un Trigger? ##

Un **trigger** (o disparador) es un objeto de la base de datos que se asocia a una tabla y se activa automáticamente cuando ocurre un evento determinado (INSERT, UPDATE o DELETE).

### Sintaxis básica

```sql
CREATE TRIGGER nombre_trigger
[BEFORE | AFTER] [INSERT | UPDATE | DELETE]
ON nombre_tabla
FOR EACH ROW
BEGIN
   -- Sentencias SQL
END;
```

---

## ¿Cuándo se usan los Triggers?

Los triggers se usan para:
- Validar datos antes de que sean insertados o actualizados.
- Auditar cambios en las tablas.
- Automatizar acciones relacionadas (por ejemplo, registrar una modificación en otra tabla).
- Prevenir operaciones que violen las reglas del negocio.

---

## Tipos de Triggers

| Evento      | BEFORE o AFTER | Uso típico                            |
|-------------|----------------|----------------------------------------|
| INSERT      | BEFORE          | Validación de datos                   |
| INSERT      | AFTER           | Auditoría, notificaciones             |
| UPDATE      | BEFORE          | Prevención de cambios no permitidos   |
| UPDATE      | AFTER           | Registro de cambios, cálculos         |
| DELETE      | BEFORE          | Prevención de borrado                 |
| DELETE      | AFTER           | Auditoría de eliminación              |

---

## Variables OLD y NEW

En los triggers `UPDATE` y `DELETE` puedes acceder a los valores previos (`OLD`). En `INSERT` y `UPDATE` puedes acceder a los nuevos valores (`NEW`).

```sql
-- Ejemplo en trigger BEFORE UPDATE
IF OLD.precio <> NEW.precio THEN
   -- código
END IF;
```

---

## Ejemplo 1: Auditoría de cambios

```sql
CREATE TABLE auditoria_precios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT,
    precio_anterior DECIMAL(10,2),
    precio_nuevo DECIMAL(10,2),
    fecha DATETIME DEFAULT NOW()
);

CREATE TRIGGER auditar_precio
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
  IF OLD.precio <> NEW.precio THEN
    INSERT INTO auditoria_precios (producto_id, precio_anterior, precio_nuevo)
    VALUES (OLD.id, OLD.precio, NEW.precio);
  END IF;
END;
```

---

## Ejemplo 2: Evitar precio negativo

```sql
CREATE TRIGGER validar_precio
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN
  IF NEW.precio < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El precio no puede ser negativo.';
  END IF;
END;
```

---

## Tips y Buenas Prácticas

✅ Usa triggers para **acciones automáticas necesarias**, no para lógica de aplicación.  
✅ Mantén los triggers **simples y claros**.  
✅ Evita usar triggers que se llaman entre sí (puede causar loops).  
✅ Asegúrate de que el trigger **no impacte negativamente el rendimiento**.  
✅ Documenta lo que hace cada trigger (nombre descriptivo y comentarios).  
✅ Verifica los triggers con `SHOW TRIGGERS`.

---

## Ver y eliminar triggers

```sql
-- Ver triggers existentes
SHOW TRIGGERS;

-- Eliminar un trigger
DROP TRIGGER IF EXISTS nombre_trigger;
```

---

## Recursos útiles

- [MySQL CREATE TRIGGER Documentation](https://dev.mysql.com/doc/refman/8.0/en/trigger-syntax.html)

---

