-- ==========================================
-- CREACIÓN DE TABLAS AUXILIARES PARA TRIGGERS
-- ==========================================

-- Tabla para almacenar el total de las facturas
CREATE TABLE IF NOT EXISTS total_facturas (
    NUMERO INT PRIMARY KEY,
    TOTAL FLOAT DEFAULT 0
);

-- Tabla para historial de precios
CREATE TABLE IF NOT EXISTS historial_precios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    CODIGO_DEL_PRODUCTO VARCHAR(10),
    PRECIO_ANTERIOR FLOAT,
    PRECIO_NUEVO FLOAT,
    FECHA_CAMBIO DATETIME
);

-- ==========================================
-- TRIGGER 1: Calcular total de factura después de insertar ítems
-- ==========================================
DELIMITER $$
CREATE TRIGGER calcular_total_factura
AFTER INSERT ON items_facturas
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM total_facturas WHERE NUMERO = NEW.NUMERO) THEN
        UPDATE total_facturas
        SET TOTAL = TOTAL + (NEW.CANTIDAD * NEW.PRECIO)
        WHERE NUMERO = NEW.NUMERO;
    ELSE
        INSERT INTO total_facturas (NUMERO, TOTAL)
        VALUES (NEW.NUMERO, NEW.CANTIDAD * NEW.PRECIO);
    END IF;
END$$
DELIMITER ;

-- ==========================================
-- TRIGGER 2: Validar crédito del cliente antes de insertar factura
-- ==========================================
DELIMITER $$
CREATE TRIGGER validar_credito
BEFORE INSERT ON facturas
FOR EACH ROW
BEGIN
    DECLARE limite FLOAT;

    SELECT LIMITE_DE_CREDITO INTO limite
    FROM tabla_de_clientes
    WHERE DNI = NEW.DNI;

    IF limite < NEW.IMPUESTO THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Crédito insuficiente para registrar la factura';
    END IF;
END$$
DELIMITER ;

-- ==========================================
-- TRIGGER 3: Auditar cambios de precios en productos
-- ==========================================
DELIMITER $$
CREATE TRIGGER auditar_precios
BEFORE UPDATE ON tabla_de_productos
FOR EACH ROW
BEGIN
    IF OLD.PRECIO_DE_LISTA != NEW.PRECIO_DE_LISTA THEN
        INSERT INTO historial_precios (CODIGO_DEL_PRODUCTO, PRECIO_ANTERIOR, PRECIO_NUEVO, FECHA_CAMBIO)
        VALUES (OLD.CODIGO_DEL_PRODUCTO, OLD.PRECIO_DE_LISTA, NEW.PRECIO_DE_LISTA, NOW());
    END IF;
END$$
DELIMITER ;

-- ==========================================
-- TRIGGER 4: Calcular automáticamente la edad del cliente
-- ==========================================
DELIMITER $$
CREATE TRIGGER calcular_edad_insert
BEFORE INSERT ON tabla_de_clientes
FOR EACH ROW
BEGIN
    SET NEW.EDAD = TIMESTAMPDIFF(YEAR, NEW.FECHA_DE_NACIMIENTO, CURDATE());
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER calcular_edad_update
BEFORE UPDATE ON tabla_de_clientes
FOR EACH ROW
BEGIN
    SET NEW.EDAD = TIMESTAMPDIFF(YEAR, NEW.FECHA_DE_NACIMIENTO, CURDATE());
END$$
DELIMITER ;

-- ==========================================
-- TRIGGER 5: Registrar auditoría de facturas eliminadas
-- ==========================================
CREATE TABLE IF NOT EXISTS auditoria_facturas (
    numero INT,
    dni VARCHAR(11),
    fecha_venta DATE,
    eliminado_en DATETIME
);

DELIMITER $$
CREATE TRIGGER auditar_eliminacion_factura
BEFORE DELETE ON facturas
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_facturas (numero, dni, fecha_venta, eliminado_en)
    VALUES (OLD.NUMERO, OLD.DNI, OLD.FECHA_VENTA, NOW());
END$$
DELIMITER ;

-- ==========================================
-- TRIGGER 6: Notificar si se inserta un producto duplicado (solo simulado)
-- ==========================================
DELIMITER $$
CREATE TRIGGER evitar_producto_duplicado
BEFORE INSERT ON tabla_de_productos
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = NEW.CODIGO_DEL_PRODUCTO
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El producto ya existe.';
    END IF;
END$$
DELIMITER ;

