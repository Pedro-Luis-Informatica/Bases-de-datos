## 👤 Estudiante 1
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **1-L1** | [WHERE + IN + BETWEEN + ORDER BY + LIMIT] Muestra DNI, NOMBRE, CIUDAD y EDAD de clientes en 'Nueva York', 'Miami' o 'Orlando', entre 20 y 28 años. Ordena por edad (ASC) y muestra 8. |
| 2 | **2-L1** | [WHERE + LIKE + AND + ORDER BY + LIMIT] Muestra CODIGO, NOMBRE, SABOR y PRECIO de productos con sabor 'naranja' Y 'fresa', precio > 15. Ordena por precio (DESC) y muestra 5. |
| 3 | **3-L1** | [ALIAS + WHERE + AND + ORDER BY] DNI as 'IDENTIFICACION', NOMBRE as 'CLIENTE', LIMITE_DE_CREDITO as 'CREDITO' en 'Nueva York' con crédito > 40000. Ordena por crédito (DESC). |
| 4 | **4-L1** | [WHERE + OR + AND + ORDER BY] Productos sabor 'Naranja Avena' O 'Mango Maracuyá', precio entre 15 y 25. Ordena por sabor (ASC) y precio (DESC). |
| 5 | **5-L1** | [GROUP BY + HAVING + ORDER BY] Agrupa por SABOR, muestra cantidad y precio promedio. Solo sabores con > 2 productos. Ordena por cantidad (DESC). |
| 6 | **6-L1** | [DISTINCT + WHERE + ORDER BY + LIMIT] Muestra los diferentes BARRIOS de clientes en 'Nueva York'. Ordena alfabéticamente y muestra 6. |
| 7 | **7-L1** | [WHERE + NOT IN + BETWEEN + ORDER BY] Productos cuyo envase NO sea 'Botella PET' ni 'Lata', precio entre 12 y 20. Ordena por precio (DESC) y nombre (ASC). |
| 8 | **8-L1** | [ALIAS + WHERE + LIKE + OR + ORDER BY] CODIGO_DEL_PRODUCTO as 'CODIGO', PRODUCTO de sabores con 'jugo' O 'refresco'. Ordena por precio (DESC). |
| 9 | **9-L1** | [GROUP BY + HAVING + AVG + ORDER BY] Agrupa por CIUDAD, muestra cantidad y crédito promedio. Solo si hay > 3 clientes y promedio > 35000. Ordena por promedio (DESC). |
| 10 | **10-L1** | [WHERE + BETWEEN + AND + OR + ORDER BY + LIMIT] Clientes FL (22-28 años) O NY (25-30 años). Ordena por edad (DESC) y muestra 12. |
| 11 | **11-L1** | [WHERE + LIKE + NOT + ORDER BY] Sabor 'naranja' pero NO 'fresa'. Ordena por precio (DESC). |
| 12 | **12-L1** | [DISTINCT + WHERE + IN + ORDER BY] Diferentes SABORES en 'Botella Vidrio' O 'Tetra Pak'. Ordena alfabéticamente. |
| 13 | **13-L1** | [GROUP BY + HAVING + MIN + MAX + ORDER BY] Agrupa por ENVASE, muestra precio mín/máx y diferencia. Solo si diferencia > 5. Ordena por diferencia (DESC). |
| 14 | **14-L1** | [ALIAS + WHERE + AND + NOT + ORDER BY + LIMIT] NOMBRE as 'CLIENTE' de quienes NO viven en 'CDMX' y tienen edad > 25. Ordena por edad (ASC) y muestra 10. |
| 15 | **15-L1** | [WHERE + LIKE + AND + BETWEEN + ORDER BY] Productos con NOMBRE que contenga 'Jugo' y precio entre 12 y 18. Ordena por precio (ASC). |

---

## 👤 Estudiante 2
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **16-L1** | [GROUP BY + HAVING + COUNT + SUM + ORDER BY] Agrupa por ESTADO, cantidad de clientes y suma de crédito. Solo estados con > 3 clientes. Ordena por suma (DESC). |
| 2 | **17-L1** | [WHERE + OR + AND + NOT + ORDER BY + LIMIT] Sabor 'Mango' O 'Maracuyá', precio > 15 y que NO sea 'Lata'. Ordena por precio (DESC) y muestra 6. |
| 3 | **18-L1** | [DISTINCT + WHERE + BETWEEN + ORDER BY] Diferentes CIUDADES de clientes con crédito entre 40000 y 60000. Ordena alfabéticamente. |
| 4 | **19-L1** | [GROUP BY + HAVING + AVG + COUNT + ORDER BY + LIMIT] Agrupa por SABOR, precio promedio y cantidad. Solo si hay > 1 producto. Ordena por promedio (DESC) y muestra 5. |
| 5 | **20-L1** | [ALIAS + WHERE + IN + LIKE + AND + ORDER BY] ID, PRODUCTO, SABOR y PRECIO de sabores ('Naranja Fresa', 'Mango Maracuyá', 'Piña Coco') con nombre 'Jugo'. Ordena por precio (DESC). |
| 6 | **B1** | [GROUP BY + CASE] Agrupa clientes por rango (Joven <25, Adulto 25-35, Mayor >35). Muestra cantidad y promedio. Solo grupos > 2 clientes. Ordena por promedio DESC. |
| 7 | **B2** | [GROUP BY + AVG] Por ciudad: cantidad, edad promedio, límite y volumen. Solo ciudades con > 2 clientes y edad promedio > 25. Ordena por cantidad DESC. |
| 8 | **B3** | [Lógica Mixta] Sabor (naranja o mango), precio (15-30), envase (NO PET ni Lata) y tamaño (1L o 470ml). Ordena por sabor (ASC) y precio (DESC). |
| 9 | **1-L2** | [WHERE + IN + NOT + ORDER BY + LIMIT] Clientes que NO viven en 'CDMX', 'Guadalajara' ni 'Monterrey'. Ordena alfabéticamente y muestra 15. |
| 10 | **2-L2** | [WHERE + LIKE + OR + BETWEEN + ORDER BY] Sabor inicie con 'M' O termine con 'a', precio entre 10 y 25. Ordena por sabor (ASC) y precio (DESC). |
| 11 | **3-L2** | [GROUP BY + COUNT + MAX + HAVING + ORDER BY] Agrupa por ENVASE, muestra cantidad y máx precio. Solo envases con > 3 productos. Ordena por máx DESC. |
| 12 | **4-L2** | [ALIAS + WHERE + NOT + IN + ORDER BY] PRODUCTO y PRECIO de sabores NO en ('Mango', 'Uva', 'Naranja'). Ordena por precio (DESC). |
| 13 | **5-L2** | [DISTINCT + WHERE + LIKE + ORDER BY + LIMIT] Diferentes ENVASES de productos con nombre 'Jugo' O 'Refresco'. Ordena alfabéticamente y muestra 8. |
| 14 | **6-L2** | [WHERE + AND + OR + NOT + ORDER BY] ('Nueva York' y edad > 25) O ('Miami' y crédito > 50000). Ordena por crédito (DESC). |
| 15 | **7-L2** | [GROUP BY + SUM + AVG + HAVING + ORDER BY] Agrupa por SEXO, suma crédito y promedio volumen. Solo grupos > 5 clientes. Ordena por suma (DESC). |

---

## 👤 Estudiante 3
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **8-L2** | [WHERE + BETWEEN + AND + NOT + ORDER BY + LIMIT] Precio 18-30, NO 'Botella Vidrio' ni 'PET'. Ordena por precio (ASC) y muestra los 10 más baratos. |
| 2 | **9-L2** | [ALIAS + WHERE + LIKE + AND + ORDER BY] CLIENTE, AÑOS y CREDITO de quienes se llamen 'Maria' o 'Jose' y tengan edad > 25. Ordena por crédito (DESC). |
| 3 | **10-L2** | [DISTINCT + WHERE + IN + ORDER BY + LIMIT] Diferentes CIUDADES con crédito en (30000, 40000, 50000, 60000). Ordena por ciudad y muestra 12. |
| 4 | **11-L2** | [WHERE + LIKE + NOT LIKE + BETWEEN + ORDER BY] Sabor con 'manzana' pero NO 'pera', precio entre 12 y 22. Ordena por precio (DESC). |
| 5 | **12-L2** | [GROUP BY + MIN + MAX + COUNT + HAVING + ORDER BY] Agrupa por TAMANO, muestra mín/máx precio y cantidad. Solo si hay > 2 productos. Ordena por diferencia DESC. |
| 6 | **13-L2** | [ALIAS + WHERE + AND + NOT + IN + ORDER BY + LIMIT] COD y NOMBRE de envase NO en ('Lata', 'Tetra Pak') y precio > 16. Ordena por nombre y muestra 7. |
| 7 | **14-L2** | [WHERE + OR + AND + BETWEEN + ORDER BY] Clientes (22-35 años) Y (crédito > 40000 O volumen > 2500). Ordena por edad descendente. |
| 8 | **15-L2** | [GROUP BY + AVG + SUM + HAVING + ORDER BY + LIMIT] Agrupa por SABOR, muestra promedio y suma total. Solo si promedio > 15. Ordena por suma DESC y muestra 5. |
| 9 | **16-L2** | [WHERE + IN + LIKE + AND + ORDER BY + LIMIT] Sabores ('Naranja Fresa', 'Mango Maracuyá', 'Piña Coco') y envase 'Vidrio' o 'PET'. Ordena por precio (DESC) y muestra 8. |
| 10 | **17-L2** | [DISTINCT + WHERE + NOT + BETWEEN + ORDER BY] Diferentes ESTADOS de clientes cuyo crédito NO esté entre 20000 y 50000. Ordena alfabéticamente. |
| 11 | **18-L2** | [GROUP BY + CASE + COUNT + HAVING + ORDER BY] Agrupa por precio (Económico <15, Medio 15-25, Premium >25). Solo grupos con > 3 productos. Ordena por cantidad (DESC). |
| 12 | **19-L2** | [ALIAS + WHERE + LIKE + OR + NOT + ORDER BY] ID y CLIENTE cuyo nombre contenga 'a' O 'e', pero NO contenga 'i'. Ordena alfabéticamente. |
| 13 | **20-L2** | [WHERE + AND + OR + IN + ORDER BY + LIMIT] Sabor 'Naranja' o 'Manzana', envase PET/Vidrio y precio > 14. Ordena por precio (ASC) y muestra 10. |
| 14 | **21-L2** | [GROUP BY + COUNT + AVG + HAVING + ORDER BY + LIMIT] Agrupa por BARRIO, cantidad y edad promedio. Solo barrios con > 2 clientes y edad > 25. Ordena por cantidad DESC y muestra 8. |
| 15 | **22-L2** | [WHERE + NOT + IN + BETWEEN + LIKE + ORDER BY] Envase NO en ('Lata', 'Tetra Pak'), precio 10-20 y nombre contenga 'Jugo'. Ordena por precio (DESC). |

---

## 👤 Estudiante 4
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **23-L2** | [DISTINCT + WHERE + AND + OR + ORDER BY + LIMIT] Combinaciones CIUDAD/ESTADO de clientes de NYC o Miami con edad > 23. Ordena por ciudad y muestra 10. |
| 2 | **24-L2** | [GROUP BY + SUM + MAX + MIN + HAVING + ORDER BY] Agrupa por CIUDAD, suma crédito, máx y mín. Solo ciudades con > 2 clientes y suma > 100000. Ordena por suma DESC. |
| 3 | **25-L2** | [ALIAS + WHERE + NOT + BETWEEN + AND + ORDER BY] PRODUCTO y PRECIO de productos con precio NO entre 13-17 y sabor 'Naranja Avena' o 'Mango Maracuyá'. Ordena por precio ASC. |
| 4 | **26-L2** | [WHERE + LIKE + AND + OR + NOT + ORDER BY + LIMIT] Sabor con 'naranja' Y ('fresa' O 'manzana'), pero NO 'limón'. Ordena por precio DESC y muestra 6. |
| 5 | **27-L2** | [GROUP BY + COUNT + SUM + AVG + HAVING + ORDER BY] Agrupa por PRIMERA_COMPRA, muestra cantidad, suma crédito y edad promedio. Solo grupos > 3 clientes. Ordena por suma DESC. |
| 6 | **28-L2** | [DISTINCT + WHERE + LIKE + IN + ORDER BY] Diferentes TAMANOS de sabor que contenga 'jugo' y esté en ('naranja', 'manzana', 'uva'). Ordena alfabéticamente. |
| 7 | **29-L2** | [WHERE + AND + OR + BETWEEN + NOT + ORDER BY] Clientes 20-40 años Y (crédito > 30000 O volumen > 2000), pero NO de 'CDMX'. Ordena por edad (ASC). |
| 8 | **30-L2** | [GROUP BY + CASE + COUNT + AVG + HAVING + ORDER BY + LIMIT] Agrupa por Tipo (Cítrico, Tropical, Otro). Muestra cantidad y promedio. Solo grupos > 2 productos. Ordena por promedio DESC y muestra 3. |
| 9 | **31-NX** | [WHERE + LIKE + AND + LIMIT] Muestra clientes con apellido 'Rivera' que vivan en 'San Francisco'. Muestra los primeros 5. |
| 10 | **32-NX** | [ALIAS + MATH] Muestra NOMBRE_DEL_PRODUCTO y (PRECIO_DE_LISTA * 1.15) como 'PRECIO_CON_IMPUESTO'. Solo para envases de '1.5 Litros'. |
| 11 | **33-NX** | [WHERE + IN + AND] Clientes de 'Chicago' o 'Houston' que realizaron su primera compra en el año 2025. |
| 12 | **34-NX** | [GROUP BY + COUNT + MAX] Agrupa por SABOR y muestra el producto más caro de cada uno, solo si el máximo es mayor a 25. |
| 13 | **35-NX** | [DISTINCT + WHERE + LIKE] Muestra los diferentes SABORES que contienen la palabra 'Mezcla' en su nombre. |
| 14 | **36-NX** | [WHERE + NOT BETWEEN] Muestra productos cuyo precio de lista NO esté entre 5 y 15. Ordena por nombre (ASC). |
| 15 | **37-NX** | [ALIAS + WHERE + AND] Muestra DNI as 'ID' de clientes que viven en el barrio 'Centro' y tienen un volumen de compra < 1000. |

---

## 👤 Estudiante 5
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **38-NX** | [GROUP BY + AVG + HAVING] Muestra el volumen de compra promedio por CIUDAD, solo para aquellas ciudades donde el promedio sea > 2500. |
| 2 | **39-NX** | [WHERE + LIKE + ORDER BY] Productos cuyo nombre comience con 'A' y termine con 's'. Ordena por precio (DESC). |
| 3 | **40-NX** | [DISTINCT + IN] Muestra las diferentes EDADES de los clientes que viven en 'Los Angeles' o 'Seattle'. |
| 4 | **41-NX** | [ALIAS + MATH + WHERE] Muestra CODIGO y (PRECIO_DE_LISTA * 0.90) as 'PRECIO_REBAJADO' de productos con precio original > 20. |
| 5 | **42-NX** | [WHERE + OR + AND] Clientes de 'California' (ESTADO='CA') que tengan más de 30 años O clientes de 'Texas' (ESTADO='TX') con más de 25 años. |
| 6 | **43-NX** | [GROUP BY + COUNT + ORDER BY] Cantidad de productos por cada ENVASE. Ordena de mayor a menor cantidad. |
| 7 | **44-NX** | [WHERE + NOT LIKE] Muestra productos cuyo sabor NO contenga la letra 'e'. Ordena por sabor. |
| 8 | **45-NX** | [ALIAS + WHERE] Muestra NOMBRE_DEL_PRODUCTO as 'Nombre' de productos que pesen '500 ml' y cuesten menos de 10. |
| 9 | **46-NX** | [GROUP BY + SUM + HAVING] Suma de crédito por CIUDAD, solo para ciudades cuya suma total supere los 200,000. |
| 10 | **47-NX** | [WHERE + BETWEEN + AND] Productos con precio entre 14.50 y 16.75 que sean del envase 'Lata'. |
| 11 | **48-NX** | [DISTINCT + WHERE] Diferentes BARRIOS de clientes que NO han realizado su primera compra. |
| 12 | **49-NX** | [WHERE + LIKE + LIMIT] Muestra los primeros 10 productos cuyo nombre contenga la palabra 'Light'. |
| 13 | **50-NX** | [ALIAS + WHERE + ORDER BY] DNI as 'Documento' de clientes con edad par (EDAD % 2 = 0) de la ciudad de 'Miami'. |
| 14 | **51-NX** | [GROUP BY + COUNT + AVG] Agrupa por TAMANO, muestra cantidad y precio promedio. Solo para tamaños con más de 5 productos. |
| 15 | **52-NX** | [WHERE + AND + NOT IN] Clientes de 'Nueva York' con edad > 21 que NO vivan en el barrio 'Brooklyn' ni 'Queens'. |

---

## 👤 Estudiante 6
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **53-NX** | [ALIAS + WHERE + LIKE] Muestra SABOR as 'Gusto' de productos que contengan 'Cereza' o 'Mora'. |
| 2 | **54-NX** | [GROUP BY + MAX + MIN] Muestra la edad máxima y mínima por cada CIUDAD. |
| 3 | **55-NX** | [WHERE + BETWEEN + ORDER BY] Clientes con volumen de compra entre 1500 y 3000. Ordena por nombre descendente. |
| 4 | **56-NX** | [DISTINCT + WHERE] Muestra los diferentes TAMAÑOS disponibles para el sabor 'Limón'. |
| 5 | **57-NX** | [WHERE + OR + LIMIT] Productos de precio < 10 O precio > 30. Muestra solo los primeros 15 resultados. |
| 6 | **58-NX** | [ALIAS + MATH] Muestra NOMBRE y (EDAD + 5) as 'EDAD_EN_5_AÑOS' de todos los clientes. |
| 7 | **59-NX** | [GROUP BY + COUNT + HAVING] Cantidad de clientes por ESTADO, solo para estados con exactamente 2 clientes. |
| 8 | **60-NX** | [WHERE + NOT LIKE] Clientes cuyo nombre NO empiece con la letra 'J'. |
| 9 | **61-NX** | [DISTINCT + ORDER BY] Diferentes CIUDADES registradas en la tabla de clientes, ordenadas de la Z a la A. |
| 10 | **62-NX** | [WHERE + AND + BETWEEN] Productos de sabor 'Uva' con precio entre 15 y 18. |
| 11 | **63-NX** | [ALIAS + WHERE] CODIGO_DEL_PRODUCTO as 'SKU' de productos con envase 'Botella PET' y tamaño '2 Litros'. |
| 12 | **64-NX** | [GROUP BY + SUM] Suma de volumen de compra por SEXO de los clientes. |
| 13 | **65-NX** | [WHERE + IN + ORDER BY] Clientes que vivan en 'Boston', 'Phoenix' o 'Denver'. Ordena por edad. |
| 14 | **66-NX** | [WHERE + LIKE + NOT LIKE] Productos con nombre que contenga 'Soda' pero que NO contenga 'Zero'. |
| 15 | **67-NX** | [GROUP BY + AVG + HAVING] Precio promedio por SABOR, solo si el promedio es menor a 12. |

---

## 👤 Estudiante 7
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **68-NX** | [ALIAS + WHERE] Muestra NOMBRE as 'Socio' de clientes con crédito > 50000 que viven en 'Miami'. |
| 2 | **69-NX** | [DISTINCT + WHERE] Diferentes ENVASE de productos que cuestan más de 20. |
| 3 | **70-NX** | [WHERE + BETWEEN + AND] Clientes de 'Nueva York' con edad entre 30 y 45 años. |
| 4 | **71-NX** | [GROUP BY + COUNT + ORDER BY] Muestra cuántos clientes hay por cada BARRIO, ordenados por cantidad DESC. |
| 5 | **72-NX** | [WHERE + LIKE + LIMIT] Productos que terminan en 'S' en su nombre. Muestra solo los 3 primeros. |
| 6 | **73-NX** | [ALIAS + MATH + WHERE] Muestra DNI y (LIMITE_DE_CREDITO / 2) as 'CREDITO_REDUCIDO' para clientes de 'Chicago'. |
| 7 | **74-NX** | [WHERE + OR + NOT] Productos que NO sean sabor 'Fresa' O que cuesten menos de 5. |
| 8 | **75-NX** | [GROUP BY + AVG + HAVING] Volumen promedio por SEXO, solo si es mayor a 2000. |
| 9 | **76-NX** | [DISTINCT + ORDER BY] Diferentes SABORES de productos, ordenados alfabéticamente. |
| 10 | **77-NX** | [WHERE + IN + AND] Clientes con EDAD en (20, 25, 30) y que sean de sexo 'M'. |
| 11 | **78-NX** | [ALIAS + WHERE] NOMBRE_DEL_PRODUCTO as 'Item' de productos con tamaño '350 ml'. |
| 12 | **79-NX** | [GROUP BY + COUNT + HAVING] Agrupa por ESTADO y muestra los que tienen más de 10 clientes. |
| 13 | **80-NX** | [WHERE + LIKE + ORDER BY] Clientes cuyo nombre tenga una 'a' en la segunda posición (LIKE '_a%'). |
| 14 | **81-NX** | [WHERE + NOT BETWEEN] Productos cuyo precio NO esté entre 10 y 20. |
| 15 | **82-NX** | [DISTINCT + WHERE] Diferentes CIUDADES de clientes con volumen de compra > 3000. |

---

## 👤 Estudiante 8
| # | Ejercicio | Mandato (Descripción) |
| :--- | :--- | :--- |
| 1 | **83-NX** | [ALIAS + WHERE] Muestra SABOR as 'Variedad' de productos con envase 'Tetra Pak'. |
| 2 | **84-NX** | [GROUP BY + SUM + ORDER BY] Suma de crédito por ESTADO, ordenado por la suma de mayor a menor. |
| 3 | **85-NX** | [WHERE + LIKE + AND] Clientes de 'Nueva York' cuyo nombre contenga 'son'. |
| 4 | **86-NX** | [DISTINCT + WHERE] Diferentes TAMAÑOS de productos de sabor 'Manzana'. |
| 5 | **87-NX** | [WHERE + OR + BETWEEN] Productos con precio < 12 O precio entre 25 y 30. |
| 6 | **88-NX** | [ALIAS + MATH] Muestra NOMBRE y (LIMITE_DE_CREDITO * 1.20) as 'CREDITO_AUMENTADO'. |
| 7 | **89-NX** | [GROUP BY + COUNT + HAVING] Cantidad de productos por SABOR, solo sabores con exactamente 1 producto. |
| 8 | **90-NX** | [WHERE + NOT LIKE] Clientes cuyo DNI NO termine en '0'. |
| 9 | **91-NX** | [DISTINCT + ORDER BY] Diferentes BARRIOS ordenados alfabéticamente. |
| 10 | **92-NX** | [WHERE + IN + AND] Productos con envase en ('Lata', 'Botella Vidrio') y precio > 15. |
| 11 | **93-NX** | [ALIAS + WHERE] NOMBRE as 'Usuario' de clientes que viven en 'Seattle' o 'Portland'. |
| 12 | **94-NX** | [GROUP BY + MIN] Precio mínimo por cada tipo de ENVASE. |
| 13 | **95-NX** | [WHERE + BETWEEN + LIMIT] Clientes con edad entre 18 y 21 años. Muestra los primeros 5. |
| 14 | **96-NX** | [WHERE + LIKE + NOT] Productos cuyo nombre contenga 'Naranja' pero NO sea 'Naranja Avena'. |
| 15 | **97-NX** | [GROUP BY + SUM + HAVING] Volumen de compra por CIUDAD, solo si la suma es > 5000. |

---
