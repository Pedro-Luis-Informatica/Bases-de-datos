USE jugos_ventas;

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, CP, 
 FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA, PRIMERA_COMPRA)
VALUES
('NY2001', 'Carlos Rivera', '123 Broadway', 'Manhattan', 'Nueva York', 'NY', '10001', '2000-05-15', 24, 'M', 45000, 3200, 0),
('NY2002', 'Ana Martínez', '456 5th Ave', 'Midtown', 'Nueva York', 'NY', '10018', '1999-08-22', 25, 'F', 55000, 4100, 0),
('NY2003', 'Robert Johnson', '789 Wall St', 'Financial District', 'Nueva York', 'NY', '10005', '1998-11-03', 26, 'M', 62000, 3800, 0),
('NY2004', 'Laura Torres', '321 Madison Ave', 'Murray Hill', 'Nueva York', 'NY', '10016', '2001-02-18', 23, 'F', 38000, 2100, 1),
('NY2005', 'Michael Chen', '654 Park Ave', 'Upper East Side', 'Nueva York', 'NY', '10065', '1997-07-30', 27, 'M', 58000, 4500, 0),
('MIA001', 'Sofia García', '100 Biscayne Blvd', 'Downtown', 'Miami', 'FL', '33132', '2000-09-12', 24, 'F', 49000, 3500, 0),
('MIA002', 'James Wilson', '200 Ocean Dr', 'South Beach', 'Miami Beach', 'FL', '33139', '1998-04-25', 26, 'M', 67000, 5200, 0),
('MIA003', 'Elena Rodríguez', '300 Collins Ave', 'Mid-Beach', 'Miami Beach', 'FL', '33140', '1999-12-05', 25, 'F', 43000, 2900, 1),
('ORL001', 'David Pérez', '400 International Dr', 'Tourist District', 'Orlando', 'FL', '32819', '2001-03-14', 23, 'M', 35000, 1800, 1),
('ORL002', 'Michelle Chang', '500 Sand Lake Rd', 'Dr. Phillips', 'Orlando', 'FL', '32819', '1997-10-28', 27, 'F', 51000, 3900, 0);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, CP, 
 FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA, PRIMERA_COMPRA)
VALUES
('SFO001', 'Roberto Rivera', '123 Market St', 'Downtown', 'San Francisco', 'CA', '94105', '1988-06-15', 36, 'M', 72000, 5800, 0),
('SFO002', 'Patricia Rivera', '456 Mission St', 'SOMA', 'San Francisco', 'CA', '94105', '1990-09-22', 34, 'F', 68000, 5200, 0),
('SFO003', 'Carlos Rivera Jr', '789 Howard St', 'SOMA', 'San Francisco', 'CA', '94105', '1995-02-10', 29, 'M', 45000, 3100, 0),
('SFO004', 'Ana Rivera Smith', '321 Bush St', 'Financial District', 'San Francisco', 'CA', '94104', '1992-11-30', 32, 'F', 59000, 4300, 0),
('SFO005', 'José Rivera', '654 Pine St', 'Nob Hill', 'San Francisco', 'CA', '94108', '1985-07-18', 39, 'M', 81000, 6700, 0);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO, PRIMERA_COMPRA)
VALUES
('CHI001', 'John Anderson', 'Chicago', 'IL', 28, 35000, 1),
('CHI002', 'Maria Sánchez', 'Chicago', 'IL', 32, 42000, 1),
('CHI003', 'Robert Taylor', 'Chicago', 'IL', 25, 28000, 1),
('HOU001', 'Lisa Johnson', 'Houston', 'TX', 29, 39000, 1),
('HOU002', 'Carlos Méndez', 'Houston', 'TX', 31, 45000, 1),
('HOU003', 'Patricia Brown', 'Houston', 'TX', 27, 33000, 1);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA)
VALUES
('LAX001', 'Michael Scott', 'Los Angeles', 'CA', 25, 35000, 2200),
('LAX002', 'Jennifer López', 'Los Angeles', 'CA', 27, 48000, 3100),
('LAX003', 'Kevin Hart', 'Los Angeles', 'CA', 26, 39000, 2800),
('SEA001', 'Emma Watson', 'Seattle', 'WA', 28, 52000, 3400),
('SEA002', 'Tom Hanks', 'Seattle', 'WA', 24, 41000, 2600),
('SEA003', 'Julia Roberts', 'Seattle', 'WA', 29, 56000, 3900);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO)
VALUES
('BOS001', 'Ben Affleck', 'Boston', 'MA', 32, 45000),
('BOS002', 'Matt Damon', 'Boston', 'MA', 35, 52000),
('PHX001', 'Alice Cooper', 'Phoenix', 'AZ', 28, 38000),
('PHX002', 'Stevie Nicks', 'Phoenix', 'AZ', 31, 43000),
('DEN001', 'John Denver', 'Denver', 'CO', 33, 47000),
('DEN002', 'Judy Collins', 'Denver', 'CO', 29, 39000);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, LIMITE_DE_CREDITO)
VALUES
('CHI004', 'Harrison Ford', 'Chicago', 'IL', 65000),
('CHI005', 'Carrie Fisher', 'Chicago', 'IL', 58000),
('CHI006', 'Mark Hamill', 'Chicago', 'IL', 62000);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('MIX001', 'Jugo Naranja-Fresa Deluxe', '470 ml', 'naranja fresa', 'Botella Vidrio', 18.90),
('MIX002', 'Jugo Naranja-Fresa Premium', '1 Litro', 'naranja fresa', 'Botella Vidrio', 22.50),
('MIX003', 'Jugo Naranja-Fresa Natural', '470 ml', 'naranja fresa', 'Botella PET', 16.80),
('MIX004', 'Jugo Naranja-Manzana', '470 ml', 'naranja manzana', 'Botella Vidrio', 17.50),
('MIX005', 'Jugo Naranja-Manzana', '1 Litro', 'naranja manzana', 'Botella PET', 21.20),
('MIX006', 'Jugo Naranja-Manzana Light', '470 ml', 'naranja manzana', 'Lata', 15.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('NAV001', 'Jugo Naranja Avena', '470 ml', 'Naranja Avena', 'Botella Vidrio', 16.50),
('NAV002', 'Jugo Naranja Avena', '1 Litro', 'Naranja Avena', 'Botella Vidrio', 22.80),
('NAV003', 'Jugo Naranja Avena', '1.5 Litros', 'Naranja Avena', 'Botella PET', 28.90),
('MMA001', 'Jugo Mango Maracuyá', '470 ml', 'Mango Maracuyá', 'Botella Vidrio', 17.20),
('MMA002', 'Jugo Mango Maracuyá', '1 Litro', 'Mango Maracuyá', 'Botella Vidrio', 23.50),
('MMA003', 'Jugo Mango Maracuyá', '1.5 Litros', 'Mango Maracuyá', 'Botella PET', 29.80);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('PCO001', 'Jugo Piña Coco', '470 ml', 'Piña Coco', 'Botella Vidrio', 16.90),
('PCO002', 'Jugo Piña Coco', '1 Litro', 'Piña Coco', 'Botella Vidrio', 22.30),
('PCO003', 'Jugo Piña Coco', '355 ml', 'Piña Coco', 'Lata', 14.80);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('MAN001', 'Jugo de Mango', '470 ml', 'Mango', 'Botella Vidrio', 16.50),
('MAN002', 'Jugo de Mango', '1 Litro', 'Mango', 'Botella PET', 21.90),
('MAN003', 'Jugo de Mango', '355 ml', 'Mango', 'Botella Retornable', 14.50),
('MAR001', 'Jugo de Maracuyá', '470 ml', 'Maracuyá', 'Botella Vidrio', 17.80),
('MAR002', 'Jugo de Maracuyá', '1 Litro', 'Maracuyá', 'Botella Vidrio', 24.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('SAB001', 'Jugo de Mandarina', '470 ml', 'Mandarina', 'Botella PET', 15.90),
('SAB002', 'Jugo de Mora', '470 ml', 'Mora', 'Botella Vidrio', 18.50),
('SAB003', 'Jugo de Maracuyá', '470 ml', 'Maracuyá', 'Botella Vidrio', 17.80),
('SAB004', 'Jugo de Piña', '1 Litro', 'Piña', 'Botella PET', 19.90),
('SAB005', 'Jugo de Uva', '470 ml', 'Uva', 'Botella Vidrio', 16.80),
('SAB006', 'Jugo de Fresa', '470 ml', 'Fresa', 'Botella Vidrio', 18.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('JGO001', 'Jugo de Naranja Natural', '1 Litro', 'jugo naranja', 'Tetra Pak', 14.50),
('JGO002', 'Jugo de Manzana', '1 Litro', 'jugo manzana', 'Tetra Pak', 15.20),
('JGO003', 'Jugo de Uva', '1 Litro', 'jugo uva', 'Tetra Pak', 16.80),
('JGO004', 'Refresco de Cola', '355 ml', 'refresco cola', 'Lata', 12.90),
('JGO005', 'Refresco de Naranja', '355 ml', 'refresco naranja', 'Lata', 13.50),
('JGO006', 'Refresco de Limón', '355 ml', 'refresco limón', 'Lata', 12.80),
('JGO007', 'Jugo de Tomate', '355 ml', 'jugo tomate', 'Lata', 14.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('ENV001', 'Jugo de Naranja', '1 Litro', 'Naranja', 'Tetra Pak', 13.80),
('ENV002', 'Jugo de Manzana', '1 Litro', 'Manzana', 'Tetra Pak', 14.20),
('ENV003', 'Jugo de Pera', '1 Litro', 'Pera', 'Tetra Pak', 15.50),
('ENV004', 'Jugo de Durazno', '470 ml', 'Durazno', 'Botella Retornable', 12.90),
('ENV005', 'Jugo de Piña', '470 ml', 'Piña', 'Botella Retornable', 13.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('LGT001', 'Refresco Cola Light', '355 ml', 'Cola', 'Lata', 11.90),
('LGT002', 'Refresco Naranja Light', '355 ml', 'Naranja', 'Lata', 12.50),
('LGT003', 'Jugo Manzana Light', '470 ml', 'Manzana', 'Botella PET', 13.80),
('LGT004', 'Jugo Uva Light', '470 ml', 'Uva', 'Botella PET', 14.20),
('LGT005', 'Jugo Naranja Light', '1 Litro', 'Naranja', 'Botella PET', 16.50),
('LGT006', 'Refresco Limón Light', '355 ml', 'Limón', 'Lata', 11.80),
('LGT007', 'Jugo Piña Light', '470 ml', 'Piña', 'Botella PET', 13.90),
('LGT008', 'Jugo Frutilla Light', '470 ml', 'Frutilla', 'Botella PET', 14.50),
('LGT009', 'Refresco Tónica Light', '355 ml', 'Tónica', 'Lata', 12.90),
('LGT010', 'Jugo Multifruta Light', '1 Litro', 'Multifruta', 'Botella PET', 17.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('TPK001', 'Jugo Naranja', '1 Litro', 'Naranja', 'Tetra Pak', 13.50),
('TPK002', 'Jugo Manzana', '1 Litro', 'Manzana', 'Tetra Pak', 14.20),
('TPK003', 'Jugo Pera', '1 Litro', 'Pera', 'Tetra Pak', 15.80),
('TPK004', 'Jugo Uva', '1 Litro', 'Uva', 'Tetra Pak', 16.30),
('TPK005', 'Jugo Durazno', '1 Litro', 'Durazno', 'Tetra Pak', 17.50),
('TPK006', 'Jugo Piña', '1 Litro', 'Piña', 'Tetra Pak', 16.90),
('TPK007', 'Jugo Naranja', '200 ml', 'Naranja', 'Tetra Pak', 8.90),
('TPK008', 'Jugo Manzana', '200 ml', 'Manzana', 'Tetra Pak', 9.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('LIM001', 'Jugo de Limón', '470 ml', 'Limón', 'Botella Vidrio', 14.50),
('LIM002', 'Jugo de Limón', '1 Litro', 'Limón', 'Botella Vidrio', 19.90),
('LIM003', 'Refresco de Limón', '355 ml', 'Limón', 'Lata', 11.80),
('LIM004', 'Jugo de Limón', '200 ml', 'Limón', 'Botella PET', 8.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('MAN001', 'Jugo de Manzana', '470 ml', 'Manzana', 'Botella Vidrio', 15.20),
('MAN002', 'Jugo de Manzana', '1 Litro', 'Manzana', 'Botella PET', 19.80),
('MAN003', 'Jugo de Manzana', '1.5 Litros', 'Manzana', 'Botella PET', 24.50),
('MAN004', 'Jugo de Manzana', '200 ml', 'Manzana', 'Tetra Pak', 8.90),
('MAN005', 'Refresco de Manzana', '355 ml', 'Manzana', 'Lata', 12.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('PRE001', 'Jugo Premium Naranja', '1.5 Litros', 'Naranja', 'Botella Vidrio', 32.50),
('PRE002', 'Jugo Premium Manzana', '1.5 Litros', 'Manzana', 'Botella Vidrio', 33.80),
('PRE003', 'Jugo Premium Uva', '1.5 Litros', 'Uva', 'Botella Vidrio', 35.20),
('ECO001', 'Jugo Económico Naranja', '200 ml', 'Naranja', 'Bolsa', 4.50),
('ECO002', 'Jugo Económico Manzana', '200 ml', 'Manzana', 'Bolsa', 4.80),
('ECO003', 'Jugo Económico Piña', '200 ml', 'Piña', 'Bolsa', 5.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('LAT001', 'Refresco Cola', '355 ml', 'Cola', 'Lata', 15.20),
('LAT002', 'Refresco Naranja', '355 ml', 'Naranja', 'Lata', 15.80),
('LAT003', 'Refresco Limón', '355 ml', 'Limón', 'Lata', 14.90),
('LAT004', 'Refresco Manzana', '355 ml', 'Manzana', 'Lata', 16.20),
('LAT005', 'Jugo de Tomate', '355 ml', 'Tomate', 'Lata', 16.50),
('LAT006', 'Refresco Tónica', '355 ml', 'Tónica', 'Lata', 15.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('UVA001', 'Jugo de Uva', '470 ml', 'Uva', 'Botella Vidrio', 16.80),
('UVA002', 'Jugo de Uva', '1 Litro', 'Uva', 'Botella Vidrio', 17.90),
('UVA003', 'Jugo de Uva', '355 ml', 'Uva', 'Lata', 15.50),
('UVA004', 'Refresco de Uva', '355 ml', 'Uva', 'Lata', 15.90);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('SDA001', 'Soda de Naranja', '355 ml', 'Naranja', 'Lata', 11.90),
('SDA002', 'Soda de Limón', '355 ml', 'Limón', 'Lata', 11.90),
('SDA003', 'Soda de Manzana', '355 ml', 'Manzana', 'Lata', 12.50),
('SDA004', 'Soda de Uva', '355 ml', 'Uva', 'Lata', 12.80),
('SDA005', 'Soda Zero de Cola', '355 ml', 'Cola', 'Lata', 12.20),
('SDA006', 'Soda Zero de Naranja', '355 ml', 'Naranja', 'Lata', 12.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('T35001', 'Jugo de Naranja', '350 ml', 'Naranja', 'Botella PET', 12.50),
('T35002', 'Jugo de Manzana', '350 ml', 'Manzana', 'Botella PET', 12.80),
('T35003', 'Refresco de Cola', '350 ml', 'Cola', 'Botella PET', 11.90),
('T35004', 'Refresco de Limón', '350 ml', 'Limón', 'Botella PET', 11.90),
('T35005', 'Jugo de Uva', '350 ml', 'Uva', 'Botella PET', 13.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('FAM001', 'Jugo Naranja Familiar', '2 Litros', 'Naranja', 'Botella PET', 18.90),
('FAM002', 'Jugo Manzana Familiar', '2 Litros', 'Manzana', 'Botella PET', 19.50),
('FAM003', 'Refresco Cola Familiar', '2 Litros', 'Cola', 'Botella PET', 16.80),
('FAM004', 'Refresco Naranja Familiar', '2 Litros', 'Naranja', 'Botella PET', 17.20),
('FAM005', 'Jugo Uva Familiar', '2 Litros', 'Uva', 'Botella PET', 20.50);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('CER001', 'Jugo de Cereza', '470 ml', 'Cereza', 'Botella Vidrio', 22.50),
('CER002', 'Jugo de Cereza', '1 Litro', 'Cereza', 'Botella Vidrio', 29.80),
('MOR001', 'Jugo de Mora', '470 ml', 'Mora', 'Botella Vidrio', 19.90),
('MOR002', 'Jugo de Mora', '1 Litro', 'Mora', 'Botella Vidrio', 26.50),
('CEM001', 'Jugo de Cereza y Mora', '470 ml', 'Cereza Mora', 'Botella Vidrio', 24.80);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('ECO01', 'Jugo Naranja Económico', '200 ml', 'Naranja', 'Bolsa', 5.90),
('ECO02', 'Jugo Manzana Económico', '200 ml', 'Manzana', 'Bolsa', 6.20),
('ECO03', 'Refresco Cola Mini', '250 ml', 'Cola', 'Lata', 7.50),
('ECO04', 'Refresco Naranja Mini', '250 ml', 'Naranja', 'Lata', 7.80),
('ECO05', 'Jugo de Piña Mini', '250 ml', 'Piña', 'Lata', 8.20);

INSERT INTO tabla_de_productos 
(CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, TAMANO, SABOR, ENVASE, PRECIO_DE_LISTA)
VALUES
('FRE001', 'Jugo de Fresa', '200 ml', 'Fresa', 'Bolsa', 4.90),
('FRE002', 'Jugo de Fresa', '200 ml', 'Fresa', 'Tetra Pak', 4.80),
('FRE003', 'Jugo de Fresa', '250 ml', 'Fresa', 'Lata', 4.95);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO)
VALUES
('CA001', 'Arnold Schwarzenegger', 'Los Angeles', 'CA', 35, 75000),
('CA002', 'Clint Eastwood', 'San Francisco', 'CA', 42, 82000),
('CA003', 'Leonardo DiCaprio', 'Los Angeles', 'CA', 31, 68000),
('TX001', 'Matthew McConaughey', 'Austin', 'TX', 28, 45000),
('TX002', 'Sandra Bullock', 'Austin', 'TX', 26, 52000),
('TX003', 'Woody Harrelson', 'Houston', 'TX', 32, 49000);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO)
VALUES
('NY3001', 'Robert De Niro', 'Nueva York', 'NY', 35, 85000),
('NY3002', 'Al Pacino', 'Nueva York', 'NY', 42, 92000),
('NY3003', 'Scarlett Johansson', 'Nueva York', 'NY', 32, 78000),
('NY3004', 'Chris Evans', 'Nueva York', 'NY', 38, 71000),
('NY3005', 'Sarah Jessica Parker', 'Nueva York', 'NY', 33, 69000);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, SEXO, LIMITE_DE_CREDITO)
VALUES
('ED001', 'Tom Cruise', 'Los Angeles', 'CA', 20, 'M', 35000),
('ED002', 'Brad Pitt', 'Nueva York', 'NY', 25, 'M', 48000),
('ED003', 'Angelina Jolie', 'San Francisco', 'CA', 30, 'F', 62000),
('ED004', 'George Clooney', 'Chicago', 'IL', 20, 'M', 39000),
('ED005', 'Julia Roberts', 'Miami', 'FL', 25, 'F', 45000),
('ED006', 'Matt Damon', 'Boston', 'MA', 30, 'M', 55000);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD)
VALUES
('NOM001', 'Gabriel Sánchez', 'Miami', 'FL', 28),
('NOM002', 'Daniel Fernández', 'Nueva York', 'NY', 32),
('NOM003', 'Rafael Pérez', 'Los Angeles', 'CA', 29),
('NOM004', 'Santiago López', 'Chicago', 'IL', 31),
('NOM005', 'Valentina Gómez', 'Houston', 'TX', 27),
('NOM006', 'Mariana Torres', 'Seattle', 'WA', 26),
('NOM007', 'Catalina Díaz', 'Denver', 'CO', 30),
('NOM008', 'Bárbara Ruiz', 'Phoenix', 'AZ', 33),
('NOM009', 'Fernando Castro', 'Orlando', 'FL', 29),
('NOM010', 'Alejandro Vargas', 'Boston', 'MA', 34);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, VOLUMEN_DE_COMPRA, LIMITE_DE_CREDITO)
VALUES
('VOL001', 'Bruce Willis', 'Nueva York', 'NY', 5500, 70000),
('VOL002', 'Denzel Washington', 'Los Angeles', 'CA', 6200, 85000),
('VOL003', 'Nicole Kidman', 'Chicago', 'IL', 4800, 60000),
('VOL004', 'Tom Hanks', 'Seattle', 'WA', 5300, 75000),
('VOL005', 'Meryl Streep', 'Boston', 'MA', 5900, 80000),
('VOL006', 'Harrison Ford', 'San Francisco', 'CA', 6100, 82000),
('VOL007', 'Morgan Freeman', 'Miami', 'FL', 4500, 58000),
('VOL008', 'Jack Nicholson', 'Nueva York', 'NY', 5700, 72000);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, EDAD)
VALUES
('SFO006', 'Elena Rivera', '123 California St', 'Financial District', 'San Francisco', 'CA', 28),
('SFO007', 'Miguel Rivera', '456 Montgomery St', 'Downtown', 'San Francisco', 'CA', 32),
('SFO008', 'Carmen Rivera', '789 Market St', 'SOMA', 'San Francisco', 'CA', 26),
('SFO009', 'Antonio Rivera', '321 Mission St', 'Mission District', 'San Francisco', 'CA', 35),
('SFO010', 'Isabel Rivera', '654 Valencia St', 'Mission District', 'San Francisco', 'CA', 29);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, BARRIO, CIUDAD, ESTADO, VOLUMEN_DE_COMPRA)
VALUES
('11111110', 'Carlos López', 'Centro', 'Ciudad de México', 'CDMX', 800),
('22222220', 'María García', 'Centro', 'Ciudad de México', 'CDMX', 950),
('33333330', 'Juan Pérez', 'Centro', 'Guadalajara', 'JAL', 750),
('44444440', 'Ana Martínez', 'Centro', 'Monterrey', 'NL', 850),
('55555550', 'Roberto Sánchez', 'Centro', 'Puebla', 'PUE', 900),
('66666660', 'Laura Torres', 'Centro', 'Querétaro', 'QRO', 700),
('77777770', 'Miguel Rodríguez', 'Centro', 'Tijuana', 'BCN', 650),
('88888880', 'Patricia Fernández', 'Centro', 'Mérida', 'YUC', 800),
('99999990', 'Fernando Gómez', 'Centro', 'Cancún', 'QROO', 950),
('10101010', 'Gabriela Ruiz', 'Centro', 'Ciudad de México', 'CDMX', 850);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD)
VALUES
('12345670', 'Héctor Ramírez', 'Nueva York', 'NY', 31),
('23456780', 'Silvia Mendoza', 'Los Angeles', 'CA', 29),
('34567890', 'Oscar Jiménez', 'Chicago', 'IL', 33),
('45678900', 'Diana Herrera', 'Miami', 'FL', 27),
('56789010', 'Javier Castro', 'Houston', 'TX', 35),
('67890120', 'Verónica Soto', 'Seattle', 'WA', 30),
('78901230', 'Ricardo Vargas', 'Boston', 'MA', 32),
('89012340', 'Adriana Ríos', 'Denver', 'CO', 28),
('90123450', 'Eduardo Paz', 'Phoenix', 'AZ', 34),
('01234560', 'Luisa Flores', 'Orlando', 'FL', 26);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD, LIMITE_DE_CREDITO)
VALUES
('JOV001', 'Luis González', 'Nueva York', 'NY', 18, 15000),
('JOV002', 'Ana Rodríguez', 'Miami', 'FL', 19, 18000),
('JOV003', 'Pedro Sánchez', 'Los Angeles', 'CA', 20, 20000),
('JOV004', 'Laura Martínez', 'Chicago', 'IL', 21, 22000),
('JOV005', 'Diego Fernández', 'Houston', 'TX', 18, 16000),
('JOV006', 'Carla López', 'Seattle', 'WA', 19, 17000),
('JOV007', 'Andrés Torres', 'Boston', 'MA', 20, 21000),
('JOV008', 'Valeria Ruiz', 'Denver', 'CO', 21, 23000),
('JOV009', 'Santiago Pérez', 'Phoenix', 'AZ', 18, 15500),
('JOV010', 'Fernanda Gómez', 'Orlando', 'FL', 19, 18500);

INSERT INTO tabla_de_clientes 
(DNI, NOMBRE, CIUDAD, ESTADO, EDAD)
VALUES
('PAR001', 'Alejandro Cruz', 'Miami', 'FL', 22),
('PAR002', 'Daniela Ortiz', 'Miami', 'FL', 24),
('PAR003', 'Fernando Reyes', 'Miami', 'FL', 26),
('PAR004', 'Gabriela Silva', 'Miami', 'FL', 28),
('PAR005', 'Humberto Mora', 'Miami', 'FL', 30),
('PAR006', 'Isabel Castro', 'Miami', 'FL', 32),
('PAR007', 'Jorge Núñez', 'Miami', 'FL', 34),
('PAR008', 'Karina Acosta', 'Miami', 'FL', 36),
('PAR009', 'Leonardo Pacheco', 'Miami', 'FL', 38),
('PAR010', 'Mónica Salazar', 'Miami', 'FL', 40);

INSERT INTO tabla_de_vendedores 
(MATRICULA, NOMBRE, PORCENTAJE_COMISION, FECHA_ADMISION, VACACIONES, BARRIO)
VALUES
('V001', 'Juan Pérez', 5.5, '2020-01-15', 0, 'Centro'),
('V002', 'María López', 8.0, '2019-03-20', 0, 'Norte'),
('V003', 'Carlos Sánchez', 12.5, '2018-05-10', 1, 'Sur'),
('V004', 'Ana Martínez', 10.0, '2021-07-25', 0, 'Este'),
('V005', 'Roberto Gómez', 7.5, '2017-11-30', 1, 'Oeste'),
('V006', 'Laura Fernández', 15.0, '2016-09-12', 0, 'Centro'),
('V007', 'Miguel Rodríguez', 9.5, '2022-02-18', 0, 'Norte'),
('V008', 'Patricia Torres', 11.0, '2019-08-05', 0, 'Sur'),
('V009', 'Fernando Ruiz', 6.0, '2023-01-10', 1, 'Este'),
('V010', 'Gabriela Castro', 13.5, '2015-12-03', 0, 'Oeste');

SELECT COUNT(*) FROM tabla_de_clientes;
SELECT COUNT(*) FROM tabla_de_productos;
SELECT COUNT(*) FROM tabla_de_vendedores;
