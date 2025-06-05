
# Guía de Procedimientos Almacenados en MySQL

## ¿Qué es un Procedimiento Almacenado?

Un procedimiento almacenado (Stored Procedure) es un conjunto de instrucciones SQL que se pueden guardar y reutilizar. Se almacena en la base de datos y puede ser ejecutado múltiples veces mediante una simple llamada.

---

## ¿Para qué sirven?

- Encapsulan lógica de negocio compleja.
- Mejoran la reutilización de código SQL.
- Reducen la cantidad de tráfico entre el servidor y el cliente.
- Aumentan la seguridad limitando el acceso a datos.

---

## Sintaxis General

```sql
DELIMITER $$
CREATE PROCEDURE nombre_del_procedimiento (parámetros)
BEGIN
    -- Cuerpo del procedimiento
END$$
DELIMITER ;
```

### Llamar un procedimiento
```sql
CALL nombre_del_procedimiento(valores);
```

---

## Tipos de Parámetros

- **IN**: Entrada (por defecto)
- **OUT**: Salida
- **INOUT**: Entrada y salida

### Ejemplo con todos los tipos

```sql
DELIMITER $$
CREATE PROCEDURE ejemplo_parametros (IN entrada INT, OUT salida INT, INOUT intermedio INT)
BEGIN
    SET salida = entrada * 2;
    SET intermedio = intermedio + entrada;
END$$
DELIMITER ;
```

---

## Ejemplos Prácticos

### Ejemplo 1: Procedimiento sin parámetros

```sql
DELIMITER $$
CREATE PROCEDURE listar_usuarios()
BEGIN
    SELECT * FROM usuarios;
END$$
DELIMITER ;
```

### Ejemplo 2: Procedimiento con parámetros de entrada

```sql
DELIMITER $$
CREATE PROCEDURE obtener_usuario(IN id_usuario INT)
BEGIN
    SELECT * FROM usuarios WHERE id = id_usuario;
END$$
DELIMITER ;
```

### Ejemplo 3: Procedimiento con parámetro de salida

```sql
DELIMITER $$
CREATE PROCEDURE contar_usuarios(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM usuarios;
END$$
DELIMITER ;
```

---

## Buenas Prácticas

- Usa nombres descriptivos para los procedimientos.
- Documenta los parámetros y su uso.
- Maneja errores con bloques `DECLARE ... HANDLER` si es necesario.
- Mantén la lógica separada en procedimientos distintos si es muy larga o compleja.

---

## Consultas Útiles

### Ver procedimientos existentes
```sql
SHOW PROCEDURE STATUS WHERE Db = 'nombre_base_de_datos';
```

### Ver el código fuente de un procedimiento
```sql
SHOW CREATE PROCEDURE nombre_del_procedimiento;
```

---