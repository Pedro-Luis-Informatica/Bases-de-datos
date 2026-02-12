# 🚀 Banco de Ejercicios SQL: De Básico a Avanzado

| Ejercicio | Mandato (Descripción y Requerimientos) |
| :--- | :--- |
| **1** | **[WHERE + IN + BETWEEN + ORDER BY + LIMIT]** Muestra DNI, NOMBRE, CIUDAD y EDAD de clientes que viven en 'Nueva York', 'Miami' o 'Orlando', con edades entre 20 y 28 años. Ordena por edad ascendente y muestra solo los primeros 8. |
| **2** | **[WHERE + LIKE + AND + ORDER BY + LIMIT]** Muestra CODIGO, NOMBRE, SABOR y PRECIO de productos cuyo sabor contenga 'naranja' Y 'fresa', con precio mayor a 15. Ordena por precio descendente y muestra los 5 más caros. |
| **3** | **[ALIAS + WHERE + AND + ORDER BY]** Muestra DNI as 'IDENTIFICACION', NOMBRE as 'CLIENTE', LIMITE_DE_CREDITO as 'CREDITO' de clientes en 'Nueva York' con crédito > 40000. Ordena por crédito descendente. |
| **4** | **[WHERE + OR + AND + ORDER BY]** Muestra productos de sabor 'Naranja Avena' O 'Mango Maracuyá', con precio entre 15 y 25. Ordena por sabor (ASC) y precio (DESC). |
| **5** | **[GROUP BY + HAVING + ORDER BY]** Agrupa productos por SABOR, muestra cantidad y precio promedio. Solo para sabores con más de 2 productos. Ordena por cantidad descendente. |
| **6** | **[DISTINCT + WHERE + ORDER BY + LIMIT]** Muestra los diferentes BARRIOS de clientes en 'Nueva York'. Ordena alfabéticamente y muestra los primeros 6. |
| **7** | **[WHERE + NOT IN + BETWEEN + ORDER BY]** Muestra productos cuyo envase NO sea 'Botella PET' ni 'Lata', con precio entre 12 y 20. Ordena por precio (DESC) y nombre (ASC). |
| **8** | **[ALIAS + WHERE + LIKE + OR + ORDER BY]** Muestra CODIGO_DEL_PRODUCTO as 'CODIGO', NOMBRE_DEL_PRODUCTO as 'PRODUCTO' de sabores que contengan 'jugo' O 'refresco'. Ordena por precio descendente. |
| **9** | **[GROUP BY + HAVING + AVG + ORDER BY]** Agrupa clientes por CIUDAD, muestra cantidad y crédito promedio. Solo ciudades con > 3 clientes y crédito promedio > 35000. Ordena por promedio DESC. |
| **10** | **[WHERE + BETWEEN + AND + OR + ORDER BY + LIMIT]** Clientes de 'Florida' (22-28 años) O 'Nueva York' (25-30 años). Ordena por edad descendente y muestra los primeros 12. |
| **11** | **[WHERE + LIKE + NOT + ORDER BY]** Productos con sabor 'naranja' pero NO 'fresa' (naranja pura). Ordena por precio descendente. |
| **12** | **[DISTINCT + WHERE + IN + ORDER BY]** Diferentes SABORES disponibles en 'Botella Vidrio' O 'Tetra Pak'. Ordena alfabéticamente. |
| **13** | **[GROUP BY + HAVING + MIN + MAX + ORDER BY]** Agrupa por ENVASE, muestra precio mín, máx y diferencia. Solo si la diferencia es > 5. Ordena por diferencia descendente. |
| **14** | **[ALIAS + WHERE + AND + NOT + ORDER BY + LIMIT]** NOMBRE as 'CLIENTE' de quienes NO viven en 'CDMX' y tienen edad > 25. Ordena por edad (ASC) y muestra 10. |
| **15** | **[WHERE + LIKE + AND + BETWEEN + ORDER BY]** Productos cuyo NOMBRE contenga 'Jugo' y precio entre 12 y 18. Ordena por precio ascendente. |
| **16** | **[GROUP BY + HAVING + COUNT + SUM + ORDER BY]** Agrupa por ESTADO, muestra cantidad de clientes y suma de crédito. Solo estados con > 3 clientes. Ordena por suma DESC. |
| **17** | **[WHERE + OR + AND + NOT + ORDER BY + LIMIT]** Sabor 'Mango' O 'Maracuyá', precio > 15 y NO sean 'Lata'. Ordena por precio DESC y muestra 6. |
| **18** | **[DISTINCT + WHERE + BETWEEN + ORDER BY]** Diferentes CIUDADES de clientes con crédito entre 40000 y 60000. Ordena alfabéticamente. |
| **19** | **[GROUP BY + HAVING + AVG + COUNT + ORDER BY + LIMIT]** Agrupa por SABOR, muestra precio promedio y cantidad. Solo sabores con > 1 producto. Ordena por promedio DESC y muestra 5. |
| **20** | **[ALIAS + WHERE + IN + LIKE + AND + ORDER BY]** ID, PRODUCTO, SABOR y PRECIO de sabores ('Naranja Fresa', 'Mango Maracuyá', 'Piña Coco') y nombre contenga 'Jugo'. Ordena por precio DESC. |
| **B1** | **[GROUP BY + CASE]** Agrupa clientes por rango (Joven <25, Adulto 25-35, Mayor >35). Muestra cantidad y límite promedio. Solo grupos con > 2 clientes. Ordena por promedio DESC. |
| **B2** | **[ GROUP BY + AVG]** Por ciudad: cantidad, edad promedio, límite y volumen promedio. Solo ciudades con > 2 clientes y edad promedio > 25. Ordena por cantidad DESC. |
| **B3** | ** ** Productos que cumplen: Sabor (naranja o mango), Precio (15-30), Envase (NO PET ni Lata) y Tamaño (1L o 470ml). Ordena por sabor (ASC) y precio (DESC). |


| Ejercicio | Mandato (Descripción y Requerimientos) |
| :--- | :--- |
| **1** | **[WHERE + IN + NOT + ORDER BY + LIMIT]** Muestra NOMBRE, CIUDAD y ESTADO de clientes que NO viven en 'Ciudad de México', 'Guadalajara' ni 'Monterrey'. Ordena alfabéticamente y muestra 15. |
| **2** | **[WHERE + LIKE + OR + BETWEEN + ORDER BY]** Productos con sabor que inicie con 'M' O termine con 'a', precio entre 10 y 25. Ordena por sabor (ASC) y precio (DESC). |
| **3** | **[GROUP BY + COUNT + MAX + HAVING + ORDER BY]** Agrupa por ENVASE, muestra cantidad y precio máximo. Solo envases con > 3 productos. Ordena por precio máximo DESC. |
| **4** | **[ALIAS + WHERE + NOT + IN + ORDER BY]** PRODUCTO y PRECIO de productos cuyo sabor NO esté en ('Mango', 'Uva', 'Naranja'). Ordena por precio descendente. |
| **5** | **[DISTINCT + WHERE + LIKE + ORDER BY + LIMIT]** Diferentes ENVASES de productos cuyo nombre contenga 'Jugo' O 'Refresco'. Ordena alfabéticamente y muestra los primeros 8. |
| **6** | **[WHERE + AND + OR + NOT + ORDER BY]** Clientes de ('Nueva York' y edad > 25) O ('Miami' y crédito > 50000). Ordena por límite de crédito descendente. |
| **7** | **[GROUP BY + SUM + AVG + HAVING + ORDER BY]** Agrupa por SEXO, muestra suma de crédito y promedio de volumen. Solo grupos con > 5 clientes. Ordena por suma DESC. |
| **8** | **[WHERE + BETWEEN + AND + NOT + ORDER BY + LIMIT]** Precio entre 18 y 30, NO 'Botella Vidrio' NI 'Botella PET'. Ordena por precio ASC y muestra los 10 más baratos. |
| **9** | **[ALIAS + WHERE + LIKE + AND + ORDER BY]** CLIENTE, AÑOS y CREDITO de quienes se llamen 'Maria' o 'Jose' y tengan edad > 25. Ordena por crédito descendente. |
| **10** | **[DISTINCT + WHERE + IN + ORDER BY + LIMIT]** Diferentes CIUDADES con crédito en (30000, 40000, 50000, 60000). Ordena por ciudad y muestra 12. |
| **11** | **[WHERE + LIKE + NOT LIKE + BETWEEN + ORDER BY]** Sabor contenga 'manzana' pero NO 'pera', precio entre 12 y 22. Ordena por precio descendente. |
| **12** | **[GROUP BY + MIN + MAX + COUNT + HAVING + ORDER BY]** Agrupa por TAMANO, muestra precio mín, máx y cantidad. Solo si hay > 2 productos. Ordena por diferencia (MAX-MIN) DESC. |
| **13** | **[ALIAS + WHERE + AND + NOT + IN + ORDER BY + LIMIT]** COD y NOMBRE de productos con envase NO en ('Lata', 'Tetra Pak') y precio > 16. Ordena por nombre y muestra 7. |
| **14** | **[WHERE + OR + AND + BETWEEN + ORDER BY]** Clientes (22-35 años) Y (crédito > 40000 O volumen > 2500). Ordena por edad descendente. |
| **15** | **[GROUP BY + AVG + SUM + HAVING + ORDER BY + LIMIT]** Agrupa por SABOR, muestra promedio y suma de precios. Solo si promedio > 15. Ordena por suma DESC y muestra 5. |
| **16** | **[WHERE + IN + LIKE + AND + ORDER BY + LIMIT]** Sabores ('Naranja Fresa', 'Mango Maracuyá', 'Piña Coco') y envase contenga 'Vidrio' O 'PET'. Ordena por precio DESC y muestra 8. |
| **17** | **[DISTINCT + WHERE + NOT + BETWEEN + ORDER BY]** Diferentes ESTADOS de clientes cuyo crédito NO esté entre 20000 y 50000. Ordena alfabéticamente. |
| **18** | **[GROUP BY + CASE + COUNT + HAVING + ORDER BY]** Agrupa por categoría ('Económico' <15, 'Medio' 15-25, 'Premium' >25). Solo categorías con > 3 productos. Ordena por cantidad DESC. |
| **19** | **[ALIAS + WHERE + LIKE + OR + NOT + ORDER BY]** ID y CLIENTE cuyo nombre contenga 'a' O 'e', pero NO contenga 'i'. Ordena alfabéticamente. |
| **20** | **[WHERE + AND + OR + IN + ORDER BY + LIMIT]** Sabor 'Naranja' o 'Manzana', envase en PET/Vidrio y precio > 14. Ordena por precio ASC y muestra 10. |
| **21** | **[GROUP BY + COUNT + AVG + HAVING + ORDER BY + LIMIT]** Agrupa por BARRIO, muestra cantidad y edad promedio. Solo barrios con > 2 clientes y edad > 25. Ordena por cantidad DESC y muestra 8. |
| **22** | **[WHERE + NOT + IN + BETWEEN + LIKE + ORDER BY]** Envase NO en ('Lata', 'Tetra Pak'), precio 10-20 y nombre contenga 'Jugo'. Ordena por precio DESC. |
| **23** | **[DISTINCT + WHERE + AND + OR + ORDER BY + LIMIT]** Combinaciones CIUDAD/ESTADO de clientes de NYC o Miami con edad > 23. Ordena por ciudad y muestra 10. |
| **24** | **[GROUP BY + SUM + MAX + MIN + HAVING + ORDER BY]** Agrupa por CIUDAD, muestra suma de crédito, máx y mín. Solo ciudades con > 2 clientes y suma > 100000. Ordena por suma DESC. |
| **25** | **[ALIAS + WHERE + NOT + BETWEEN + AND + ORDER BY]** PRODUCTO y PRECIO de productos con precio NO entre 13-17 y sabor 'Naranja Avena' o 'Mango Maracuyá'. Ordena por precio ASC. |
| **26** | **[WHERE + LIKE + AND + OR + NOT + ORDER BY + LIMIT]** Sabor con 'naranja' Y ('fresa' O 'manzana'), pero NO 'limón'. Ordena por precio DESC y muestra 6. |
| **27** | **[GROUP BY + COUNT + SUM + AVG + HAVING + ORDER BY]** Agrupa por PRIMERA_COMPRA, muestra cantidad, suma de crédito y edad promedio. Solo grupos con > 3 clientes. Ordena por suma DESC. |
| **28** | **[DISTINCT + WHERE + LIKE + IN + ORDER BY]** Diferentes TAMANOS de productos con sabor que contenga 'jugo' y esté en ('naranja', 'manzana', 'uva'). Ordena alfabéticamente. |
| **29** | **[WHERE + AND + OR + BETWEEN + NOT + ORDER BY]** Clientes 20-40 años Y (crédito > 30000 O volumen > 2000), pero NO de 'CDMX'. Ordena por edad ASC. |
| **30** | **[GROUP BY + CASE + COUNT + AVG + HAVING + ORDER BY + LIMIT]** Agrupa por Tipo (Cítrico, Tropical, Otro). Muestra cantidad y precio promedio. Solo grupos con > 2 productos. Ordena por promedio DESC y muestra 3. |

---
