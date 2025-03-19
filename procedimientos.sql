DELIMITER $$
CREATE PROCEDURE `hola_mundo`()
BEGIN
SELECT "Hola Mundo!!!!";
END$$
DELIMITER ;

CALL hola_mundo;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `muestra_numero`()
BEGIN
SELECT(9+5)*2 AS RESULTADO;
END$$
DELIMITER ;

CALL muestra_numero;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar`()
BEGIN
SELECT CONCAT('Hola Mundo', " ", '!!!!') AS RESULTADO;
END$$
DELIMITER ;

CALL concatenar;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_con_comentarios`()
BEGIN
/*
Este es un ejemplo de comentario
al interior de un procedire
*/
-- Así se comenta un stored procedure.
# Así también.
SELECT CONCAT("Hola a todos!!", ' ', 'Este procedure concatena strings.') AS RESULTADO;
END$$
DELIMITER ;

CALL concatenar_con_comentarios;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar2`()
BEGIN
SELECT CONCAT('Hola Mundo', " ", '!!!!') AS RESULTADO;
END$$
DELIMITER ;

CALL concatenar2;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `exhibir_variable`()
BEGIN
DECLARE texto CHAR(20) DEFAULT 'Hola Mundo!!!!!!!';
SELECT texto;
END$$
DELIMITER ;

CALL exhibir_variable;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `declaracion`()
BEGIN
DECLARE v VARCHAR(30) DEFAULT "Caracteres Variables";
DECLARE i INTEGER DEFAULT 564;
DECLARE d DECIMAL(5,3) DEFAULT 89.765;
DECLARE f DATE DEFAULT "2021-01-01";
DECLARE ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP();
SELECT v;
SELECT i;
SELECT d;
SELECT f;
SELECT ts;
END$$
DELIMITER ;

CALL declaracion;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sin_declaracion`()
BEGIN
SELECT texto;
END$$
DELIMITER ;

CALL sin_declaracion;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `atribuir_valores`()
BEGIN
DECLARE numero INTEGER DEFAULT 987;
SELECT numero;
SET numero = 324;
SELECT numero;
END$$
DELIMITER ;

CALL atribuir_valores;



DELIMITER $$

-- Procedimiento para insertar un profesor
CREATE PROCEDURE insertar_profesor(IN p_id INT, IN p_nombre VARCHAR(100), IN p_departamento VARCHAR(100))
BEGIN
    INSERT INTO tabla_profesores (id_profesor, nombre, departamento)
    VALUES (p_id, p_nombre, p_departamento);
END$$

-- Procedimiento para actualizar el nombre de un profesor
CREATE PROCEDURE actualizar_profesor(IN p_id INT, IN p_nuevo_nombre VARCHAR(100))
BEGIN
    UPDATE tabla_profesores
    SET nombre = p_nuevo_nombre
    WHERE id_profesor = p_id;
END$$

-- Procedimiento para eliminar un profesor
CREATE PROCEDURE eliminar_profesor(IN p_id INT)
BEGIN
    DELETE FROM tabla_profesores
    WHERE id_profesor = p_id;
END$$

-- Procedimiento para consultar todos los profesores
CREATE PROCEDURE consultar_profesores()
BEGIN
    SELECT * FROM tabla_profesores;
END$$

-- Procedimiento con cursor para mostrar todos los nombres de los profesores
CREATE PROCEDURE cursor_profesores()
BEGIN
    DECLARE fin INT DEFAULT 0;
    DECLARE p_nombre VARCHAR(100);
    DECLARE cur CURSOR FOR SELECT nombre FROM tabla_profesores;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = 1;
    
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO p_nombre;
        IF fin THEN LEAVE read_loop;
        END IF;
        SELECT p_nombre;
    END LOOP;
    CLOSE cur;
END$$

-- Procedimiento para verificar la antigüedad de los estudiantes
CREATE PROCEDURE verificar_antiguedad(IN p_id INT)
BEGIN
    DECLARE v_fecha_ingreso DATE;
    DECLARE v_resultado VARCHAR(50);
    SELECT fecha_ingreso INTO v_fecha_ingreso FROM tabla_estudiantes WHERE id_estudiante = p_id;
    IF v_fecha_ingreso <= '2015-01-01' THEN
        SET v_resultado = 'Estudiante Antiguo';
    ELSE
        SET v_resultado = 'Estudiante Reciente';
    END IF;
    SELECT v_resultado;
END$$

-- Procedimiento con loop para contar estudiantes
CREATE PROCEDURE contar_estudiantes()
BEGIN
    DECLARE v_contador INT DEFAULT 0;
    DECLARE v_total INT;
    SELECT COUNT(*) INTO v_total FROM tabla_estudiantes;
    WHILE v_contador < v_total DO
        SET v_contador = v_contador + 1;
    END WHILE;
    SELECT v_contador AS total_estudiantes;
END$$

-- Procedimiento para insertar un estudiante
CREATE PROCEDURE insertar_estudiante(IN p_id INT, IN p_nombre VARCHAR(100), IN p_fecha_ingreso DATE)
BEGIN
    INSERT INTO tabla_estudiantes (id_estudiante, nombre, fecha_ingreso)
    VALUES (p_id, p_nombre, p_fecha_ingreso);
END$$

-- Procedimiento para actualizar el nombre de un estudiante
CREATE PROCEDURE actualizar_estudiante(IN p_id INT, IN p_nuevo_nombre VARCHAR(100))
BEGIN
    UPDATE tabla_estudiantes
    SET nombre = p_nuevo_nombre
    WHERE id_estudiante = p_id;
END$$

-- Procedimiento para eliminar un estudiante
CREATE PROCEDURE eliminar_estudiante(IN p_id INT)
BEGIN
    DELETE FROM tabla_estudiantes
    WHERE id_estudiante = p_id;
END$$

-- Procedimiento para consultar todos los estudiantes
CREATE PROCEDURE consultar_estudiantes()
BEGIN
    SELECT * FROM tabla_estudiantes;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE verificar_beca(estudiante_id INT)
BEGIN
  DECLARE promedio DECIMAL(4,2);
  DECLARE resultado VARCHAR(50);

  SELECT promedio INTO promedio FROM tabla_estudiantes WHERE id_estudiante = estudiante_id;

  IF promedio >= 9.0 THEN
    SET resultado = 'Beca Completa';
  ELSEIF promedio >= 7.0 THEN
    SET resultado = 'Media Beca';
  ELSE
    SET resultado = 'Sin Beca';
  END IF;

  SELECT resultado;
END$$
DELIMITER ;

CALL verificar_beca(1);
