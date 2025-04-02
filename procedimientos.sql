DELIMITER $$

-- Procedimiento para insertar un estudiante
CREATE PROCEDURE insertar_estudiante(
    IN p_nif VARCHAR(9), 
    IN p_nombre VARCHAR(25), 
    IN p_apellido1 VARCHAR(50), 
    IN p_apellido2 VARCHAR(50), 
    IN p_ciudad VARCHAR(25), 
    IN p_direccion VARCHAR(50), 
    IN p_telefono VARCHAR(9), 
    IN p_fecha_nacimiento DATE, 
    IN p_sexo ENUM('H', 'M')
)
BEGIN
    INSERT INTO alumno (nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo)
    VALUES (p_nif, p_nombre, p_apellido1, p_apellido2, p_ciudad, p_direccion, p_telefono, p_fecha_nacimiento, p_sexo);
END$$

-- Procedimiento para actualizar el nombre de un estudiante
CREATE PROCEDURE actualizar_estudiante(IN p_id INT, IN p_nuevo_nombre VARCHAR(25))
BEGIN
    UPDATE alumno
    SET nombre = p_nuevo_nombre
    WHERE id = p_id;
END$$

-- Procedimiento para eliminar un estudiante
CREATE PROCEDURE eliminar_estudiante(IN p_id INT)
BEGIN
    DELETE FROM alumno
    WHERE id = p_id;
END$$

-- Procedimiento para consultar todos los estudiantes
CREATE PROCEDURE consultar_estudiantes()
BEGIN
    SELECT * FROM alumno;
END$$

-- Procedimiento para verificar la antigüedad de un estudiante basado en su fecha de nacimiento
CREATE PROCEDURE verificar_antiguedad(IN p_id INT)
BEGIN
    DECLARE v_fecha_nacimiento DATE;
    DECLARE v_resultado VARCHAR(50);

    SELECT fecha_nacimiento INTO v_fecha_nacimiento FROM alumno WHERE id = p_id;

    IF v_fecha_nacimiento <= '1997-01-01' THEN
        SET v_resultado = 'Estudiante Antiguo';
    ELSE
        SET v_resultado = 'Estudiante Reciente';
    END IF;

    SELECT v_resultado AS Antiguedad;
END$$

-- Procedimiento con loop para contar estudiantes
CREATE PROCEDURE contar_estudiantes()
BEGIN
    DECLARE v_contador INT DEFAULT 0;
    DECLARE v_total INT;
    
    SELECT COUNT(*) INTO v_total FROM alumno;

    WHILE v_contador < v_total DO
        SET v_contador = v_contador + 1;
    END WHILE;

    SELECT v_contador AS total_estudiantes;
END$$

-- Procedimiento para verificar beca de un estudiante basado en su promedio (requiere que la tabla tenga una columna promedio)
CREATE PROCEDURE verificar_beca(IN estudiante_id INT)
BEGIN
    DECLARE promedio DECIMAL(4,2);
    DECLARE resultado VARCHAR(50);

    SELECT promedio INTO promedio FROM alumno WHERE id = estudiante_id;

    IF promedio >= 9.0 THEN
        SET resultado = 'Beca Completa';
    ELSEIF promedio >= 7.0 THEN
        SET resultado = 'Media Beca';
    ELSE
        SET resultado = 'Sin Beca';
    END IF;

    SELECT resultado AS Estado_Beca;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE verificar_antiguedad(IN p_id INT)
BEGIN
    DECLARE v_fecha_ingreso DATE;
    DECLARE v_resultado VARCHAR(50);

    -- Verifica si el estudiante existe antes de continuar
    IF NOT EXISTS (SELECT 1 FROM alumno WHERE id = p_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El estudiante no existe';
    END IF;

    -- Suponiendo que la fecha de ingreso no está en la tabla, usamos fecha_nacimiento como referencia
    SELECT fecha_nacimiento INTO v_fecha_ingreso FROM alumno WHERE id = p_id;

    -- Verifica la antigüedad en base a la fecha de nacimiento
    IF v_fecha_ingreso <= '1997-01-01' THEN
        SET v_resultado = 'Estudiante Antiguo';
    ELSE
        SET v_resultado = 'Estudiante Reciente';
    END IF;

    -- Devuelve el resultado
    SELECT v_resultado AS Antiguedad;
END$$

DELIMITER ;

-- Procedimiento para verificar si un estudiante tiene una asignatura aprobada
DELIMITER $$

CREATE PROCEDURE verificar_aprobacion_asignatura(IN p_id_alumno INT, IN p_id_asignatura INT)
BEGIN
    DECLARE v_promedio DECIMAL(4,2);
    DECLARE v_resultado VARCHAR(50);

    -- Obtener el promedio del alumno en la asignatura
    SELECT promedio INTO v_promedio
    FROM alumno_se_matricula_asignatura
    WHERE id_alumno = p_id_alumno AND id_asignatura = p_id_asignatura;

    -- Verificar si el promedio es mayor o igual a 5.0
    IF v_promedio >= 5.0 THEN
        SET v_resultado = 'Asignatura Aprobada';
    ELSE
        SET v_resultado = 'Asignatura No Aprobada';
    END IF;

    SELECT v_resultado AS Estado;
END$$

DELIMITER ;

--Procedimiento para determinar el tipo de asignatura según los créditos
DELIMITER $$

CREATE PROCEDURE determinar_tipo_asignatura(IN p_id_asignatura INT)
BEGIN
    DECLARE v_creditos FLOAT;
    DECLARE v_tipo VARCHAR(20);

    -- Obtener los créditos de la asignatura
    SELECT creditos INTO v_creditos
    FROM asignatura
    WHERE id = p_id_asignatura;

    -- Determinar el tipo de asignatura según los créditos
    IF v_creditos <= 6 THEN
        SET v_tipo = 'Básica';
    ELSEIF v_creditos > 6 AND v_creditos <= 12 THEN
        SET v_tipo = 'Obligatoria';
    ELSE
        SET v_tipo = 'Optativa';
    END IF;

    SELECT v_tipo AS Tipo_Asignatura;
END$$

DELIMITER ;
--Procedimiento para asignar un profesor a una asignatura
DELIMITER $$

CREATE PROCEDURE asignar_profesor_a_asignatura(IN p_id_asignatura INT, IN p_id_profesor INT)
BEGIN
    DECLARE v_id_profesor INT;

    -- Obtener el profesor asignado a la asignatura
    SELECT id_profesor INTO v_id_profesor
    FROM asignatura
    WHERE id = p_id_asignatura;

    -- Verificar si ya tiene un profesor asignado
    IF v_id_profesor IS NULL THEN
        UPDATE asignatura
        SET id_profesor = p_id_profesor
        WHERE id = p_id_asignatura;
        SELECT 'Profesor asignado exitosamente' AS Estado;
    ELSE
        SELECT 'La asignatura ya tiene un profesor asignado' AS Estado;
    END IF;
END$$

DELIMITER ;

--Procedimiento para verificar si un estudiante puede matricularse en una asignatura
DELIMITER $$

CREATE PROCEDURE verificar_matricula_asignatura(IN p_id_alumno INT, IN p_id_asignatura INT)
BEGIN
    DECLARE v_promedio DECIMAL(4,2);
    DECLARE v_matricula_permitida VARCHAR(50);

    -- Verificar si el estudiante tiene el promedio necesario
    SELECT promedio INTO v_promedio
    FROM alumno
    WHERE id = p_id_alumno;

    IF v_promedio >= 6.0 THEN
        SET v_matricula_permitida = 'Matricula Permitida';
    ELSE
        SET v_matricula_permitida = 'Matricula NO Permitida. Promedio insuficiente';
    END IF;

    SELECT v_matricula_permitida AS Estado_Matricula;
END$$

DELIMITER ;
