# 🔍 Ejercicios de MySql

---

## 📋 Tabla de Ejercicios

| ID | Desafío / Descripción | Técnicas a Usar |
|:--:|:---|:---|
| **1** | **Clientes por Ciudad y Edad (Top 10)**<br>Muestra DNI y NOMBRE de clientes de 'Ciudad de México' o 'Guadalajara', edad 20-30. Ordena por edad ascendente. | `WHERE` `IN` `BETWEEN` `ORDER BY` `LIMIT` |
| **2** | **Productos: Sabor y Precio Específico**<br>Productos 'Mango' o 'Uva' con precio 16-17. Ordena por precio descendente, luego nombre. | `WHERE` `OR` `BETWEEN` `ORDER BY` |
| **3** | **Envases Distintos con Filtro**<br>Diferentes envases y tamaños para sabor 'Naranja'. Ordena por envase y tamaño. | `DISTINCT` `WHERE` `ORDER BY` |
| **4** | **Patrón "Manzana" y Envase PET**<br>Sabor contiene 'manzana' y envase es 'Botella PET'. Ordena por precio. Muestra solo 8. | `LIKE` `AND` `ORDER BY` `LIMIT` |
| **5** | **Clientes con Alias**<br>DNI as 'IDENTIFICACION', NOMBRE as 'CLIENTE'. Volumen > 2000 y primera compra. Ordena por nombre. | `ALIAS` `WHERE` `AND` `ORDER BY` |
| **6** | **Exclusión de Combinación**<br>NO son (sabor 'mango' Y tamaño '470 ml'). Ordena por sabor. Muestra 12. | `NOT` `AND` `ORDER BY` `LIMIT` |
| **7** | **Clientes CDMX (Exclusión Anidada)**<br>De 'Ciudad de México', mayores de 21, pero NO de primera compra. Ordena por edad desc. | `WHERE` `AND` `NOT` `ORDER BY` |
| **8** | **Múltiples Condiciones y Orden**<br>'Mango' (NO '470 ml'), precio > 16. Ordena por precio desc, luego tamaño. | `WHERE` `AND` `NOT` `ORDER BY` |
| **9** | **Paginación Simple**<br>Muestra 4 productos empezando desde el registro 5 (Offset). Ordena por nombre desc. | `LIMIT` `OFFSET` `ORDER BY` |
| **10** | **Patrón en Nombre (Inicial M)**<br>Nombre empieza con 'M' y volumen 1000-3000. Muestra DNI y NOMBRE. | `LIKE 'M%'` `BETWEEN` `ORDER BY` |
| **11** | **Ordenamiento Multi-Direccional**<br>Todos los productos. Ordena por envase descendente y nombre ascendente. | `ORDER BY DESC/ASC` |
| **12** | **Exclusión Lógica (Ley de Morgan)**<br>NO sabor 'mango' O son tamaño '470 ml'. Ordena sabor asc, precio desc. | `NOT` `OR` `ORDER BY` |
| **13** | **Filtros Múltiples y Top 10**<br>De 'Guadalajara', edad 20-25. Ordena por crédito desc. Muestra 10. | `WHERE` `AND` `BETWEEN` `LIMIT` |
| **14** | **Filtros Específicos**<br>Precio <= 17 y envase 'Botella PET'. Ordena por precio. Muestra 7. | `WHERE` `AND` `ORDER BY` `LIMIT` |
| **15** | **Combinaciones Distintas**<br>Distintos envase, tamaño y sabor, solo para 'Naranja'. Ordena por envase y tamaño. | `DISTINCT` `WHERE` `ORDER BY` |
| **16** | **Patrón "Cítrico" y Rango**<br>Sabor contiene 'naran' o 'limón', precio 10-25. Ordena envase asc, precio desc. | `LIKE` `OR` `BETWEEN` `ORDER BY` |
| **17** | **Alias y Lógica Compleja**<br>Alias IDENTIFICACION/CLIENTE. (Primera compra OR volumen > 2500) AND edad 25-40. | `ALIAS` `OR` `AND` `BETWEEN` |
| **18** | **Exclusión Múltiple**<br>NO 'Mango' ni 'Uva', precio > 15, NO 'Botella PET'. Ordena precio desc. | `NOT` `AND` `OR` `ORDER BY` |
| **19** | **Paginación Compleja**<br>Sabor 'naran' o 'limón'. Orden múltiple. Página 3 (5 por pág, registros 11-15). | `LIKE` `ORDER BY` `LIMIT` `OFFSET` |
| **20** | **Condiciones Anidadas (OR/AND)**<br>(Edad < 25 y Vol > 2000) OR (Edad >= 25 y Vol > 1500). Orden múltiple. | `OR` `AND` `ORDER BY` |
| **21** | **Texto, Precio y Negación**<br>Sabor 'jugo' o 'refresco', precio 12-20, NO 'botella pet'. Orden precio desc. | `LIKE` `NOT` `BETWEEN` `ORDER BY` |
| **22** | **Iniciales Múltiples**<br>Nombre empieza con 'A', 'M' o 'J', crédito > 30000. Muestra DNI y NOMBRE. | `LIKE` `OR` `AND` `ORDER BY` |
| **23** | **Lógica Mixta de Productos**<br>('Mango' y precio > 16) OR ('Uva' y precio <= 17). Orden múltiple. | `OR` `AND` `ORDER BY` |
| **24** | **Excluyentes por Ciudad**<br>NO viven en 'CDMX' AND (crédito > 40000 OR volumen > 2000). | `NOT` `AND` `OR` |
| **25** | **Rango Preciso y Envase**<br>Precio 16-16.02 OR envase 'Botella PET'. Orden precio asc, envase desc. | `OR` `BETWEEN` `ORDER BY` |

---

## 📝 Reporte de Resultados

| # | Puntaje | ¿Logra el resultado? | Observaciones Técnicas | Respuesta Correcta (SQL) |
| :--- | :---: | :--- | :--- | :--- |
| **1** | 70/80 | ❌ No | Paréntesis faltantes en condiciones `OR` alteran la lógica. | `SELECT DNI, NOMBRE FROM tabla_de_clientes WHERE CIUDAD IN ('Ciudad de México', 'Guadalajara') AND EDAD BETWEEN 20 AND 30 ORDER BY EDAD ASC LIMIT 10;` |
| **2** | 70/80 | ❌ No | Falta ordenamiento completo (`precio DESC`, `nombre`). | `SELECT nombre_del_producto, sabor, precio_de_lista FROM tabla_de_productos WHERE (sabor = 'Mango' OR sabor = 'Uva') AND precio_de_lista BETWEEN 16 AND 17 ORDER BY precio_de_lista DESC, nombre_del_producto;` |
| **3** | 80/80 | ✅ Sí | Uso correcto de `DISTINCT` y filtros. | `SELECT DISTINCT Envase, Tamano FROM tabla_de_productos WHERE sabor = 'Naranja' ORDER BY envase, tamano;` |
| **4** | 80/80 | ✅ Sí | Aplicación precisa de `LIKE` y `LIMIT`. | `SELECT nombre_del_producto, sabor, envase, precio_de_lista FROM tabla_de_productos WHERE sabor LIKE '%manzana%' AND envase = 'Botella PET' ORDER BY precio_de_lista LIMIT 8;` |
| **5** | 40/80 | ❌ No | Falta condición de `primera_compra`. | `SELECT dni AS identificacion, nombre AS cliente FROM tabla_de_clientes WHERE volumen_de_compra > 2000 AND primera_compra = 1 ORDER BY nombre;` |
| **6** | 80/80 | ✅ Sí | Exclusión lógica y límites bien aplicados. | `SELECT nombre_del_producto, sabor, tamano FROM tabla_de_productos WHERE NOT (sabor = 'Mango' AND tamano = '470 ml') ORDER BY sabor LIMIT 12;` |
| **7** | 0/80 | ❌ No | No respondida. | `SELECT * FROM tabla_de_clientes WHERE ciudad = 'Ciudad de México' AND edad > 21 AND primera_compra = 0 ORDER BY edad DESC;` |
| **8** | 70/80 | ❌ No | Falta `DESC` en el criterio de precio. | `SELECT nombre_del_producto, sabor, tamano, precio_de_lista FROM tabla_de_productos WHERE sabor = 'Mango' AND tamano != '470 ml' AND precio_de_lista > 16 ORDER BY precio_de_lista DESC, tamano;` |
| **9** | 80/80 | ✅ Sí | Sin `ORDER BY DESC` completo y preciso. | `SELECT * FROM tabla_de_productos ORDER BY nombre_del_producto DESC LIMIT 4 OFFSET 4;` |
| **10** | 70/80 | ❌ No | Sin `ORDER BY`, el resultado es inconsistente. | `SELECT DNI, NOMBRE FROM tabla_de_clientes WHERE NOMBRE LIKE 'M%' AND VOLUMEN_DE_COMPRA BETWEEN 1000 AND 3000 ORDER BY NOMBRE;` |
| **11** | 70/80 | ✅ Sí | No respondida. | `SELECT * FROM tabla_de_productos ORDER BY envase DESC, nombre_del_producto ASC;` |
| **12** | 0/80 | ❌ No | No respondida. | `SELECT * FROM tabla_de_productos WHERE NOT (sabor = 'Mango') OR tamano = '470 ml' ORDER BY sabor ASC, precio_de_lista DESC;` |
| **13** | 40/80 | ❌ No | Campos seleccionados no coinciden con la solicitud. | `SELECT DNI, NOMBRE FROM tabla_de_clientes WHERE ciudad = 'Guadalajara' AND edad BETWEEN 20 AND 25 ORDER BY limite_de_credito DESC LIMIT 10;` |
| **14** | 80/80 | ✅ Sí | Filtros de precio y envase correctos. | `SELECT nombre_del_producto, precio_de_lista, envase FROM tabla_de_productos WHERE precio_de_lista <= 17 AND envase = 'Botella PET' ORDER BY precio_de_lista LIMIT 7;` |
| **15** | 0/80 | ❌ No | No respondida. | `SELECT DISTINCT envase, tamano, sabor FROM tabla_de_productos WHERE sabor = 'Naranja' ORDER BY envase, tamano;` |
| **16** | 20/80 | ❌ No | Error de tipos: `BETWEEN` con texto. | `SELECT * FROM tabla_de_productos WHERE (sabor LIKE '%naran%' OR sabor LIKE '%limón%') AND precio_de_lista BETWEEN 10 AND 25 ORDER BY envase ASC, precio_de_lista DESC;` |
| **17** | 50/80 | ❌ No | Falta alias y lógica de compra incorrecta. | `SELECT dni AS identificacion, nombre AS cliente FROM tabla_de_clientes WHERE (primera_compra = 1 OR volumen_de_compra > 2500) AND edad BETWEEN 25 AND 40 ORDER BY nombre;` |
| **18** | 30/80 | ❌ No | Sintaxis `OR` rota y valores de filtro erróneos. | `SELECT * FROM tabla_de_productos WHERE sabor NOT IN ('Mango', 'Uva') AND precio_de_lista > 15 AND envase != 'Botella PET' ORDER BY precio_de_lista DESC;` |
| **19** | 50/80 | ❌ No | `IN` no detecta patrones como `LIKE`. | `SELECT * FROM tabla_de_productos WHERE sabor LIKE '%naran%' OR sabor LIKE '%limón%' ORDER BY envase, precio_de_lista DESC LIMIT 5 OFFSET 10;` |
| **20** | 80/80 | ✅ Sí | Lógica funcional (aunque requiere paréntesis). | `SELECT nombre, edad, volumen_de_compra FROM tabla_de_clientes WHERE (edad < 25 AND volumen_de_compra > 2000) OR (edad >= 25 AND volumen_de_compra > 1500) ORDER BY edad, volumen_de_compra;` |
| **21** | 30/80 | ❌ No | Columna de búsqueda incorrecta (nombre vs sabor). | `SELECT * FROM tabla_de_productos WHERE (sabor LIKE '%jugo%' OR sabor LIKE '%refresco%') AND precio_de_lista BETWEEN 12 AND 20 AND envase != 'Botella PET' ORDER BY precio_de_lista DESC;` |
| **22** | 40/80 | ❌ No | Filtro de iniciales incompleto (solo 'A'). | `SELECT DNI, NOMBRE FROM tabla_de_clientes WHERE (NOMBRE LIKE 'A%' OR NOMBRE LIKE 'M%' OR NOMBRE LIKE 'J%') AND LIMITE_DE_CREDITO > 30000 ORDER BY NOMBRE;` |
| **23** | 80/80 | ✅ Sí | Lógica funcional bajo prioridad natural. | `SELECT * FROM tabla_de_productos WHERE (sabor = 'Mango' AND precio_de_lista > 16) OR (sabor = 'Uva' AND precio_de_lista <= 17) ORDER BY sabor, precio_de_lista;` |
| **24** | 0/80 | ❌ No | No respondida. | `SELECT * FROM tabla_de_clientes WHERE ciudad != 'Ciudad de México' AND (limite_de_credito > 40000 OR volumen_de_compra > 2000);` |
| **25** | 0/80 | ❌ No | No respondida. | `SELECT * FROM tabla_de_productos WHERE precio_de_lista BETWEEN 16 AND 16.02 OR envase = 'Botella PET' ORDER BY precio_de_lista ASC, envase DESC;` |

---
