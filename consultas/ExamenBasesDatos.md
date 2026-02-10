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

# 📈 Reporte de Calificaciones: Evaluación de SQL

---

| Pregunta | Promedio Final | ¿Resultado OK? | Observaciones Consolidadas |
| :--- | :---: | :---: | :--- |
| **1** | **60/80** | ❌ No | Falta de paréntesis en `OR` altera la lógica; `GROUP BY` innecesario. |
| **2** | **70/80** | ❌ No | El resultado es casi correcto, pero falta el ordenamiento secundario. |
| **3** | **80/80** | ✅ Sí | **Perfecto.** Uso correcto de `DISTINCT`, filtros y orden. |
| **4** | **80/80** | ✅ Sí | **Perfecto.** Manejo de `LIKE`, `AND` y límites sin errores. |
| **5** | **50/80** | ❌ No | Omisión de la condición `primera_compra`; entrega datos de más. |
| **6** | **80/80** | ✅ Sí | **Perfecto.** Exclusión lógica y límites bien aplicados. |
| **7** | **0/80** | ❌ No | Sin respuesta. |
| **8** | **65/80** | ❌ No | Error en la dirección del ordenamiento (`DESC` ausente en precio). |
| **9** | **55/80** | ❌ No | Al omitir el `OFFSET`, no se cumple la paginación solicitada. |
| **10** | **60/80** | ❌ No | Datos correctos, pero el orden es aleatorio (falta `ORDER BY`). |
| **11** | **0/80** | ❌ No | Sin respuesta. |
| **12** | **0/80** | ❌ No | Sin respuesta. |
| **13** | **45/80** | ❌ No | Selección de campos incorrecta y falta de orden descendente. |
| **14** | **80/80** | ✅ Sí | **Perfecto.** Aplicación exacta de filtros y límites. |
| **15** | **0/80** | ❌ No | Sin respuesta. |
| **16** | **30/80** | ❌ No | Error conceptual: uso de `BETWEEN` numérico en columnas de texto. |
| **17** | **55/80** | ❌ No | Ausencia de `ALIAS` y lógica de compra dudosa. |
| **18** | **40/80** | ❌ No | Sintaxis de negación rota (`OR` mal aplicado) y valores de filtro erróneos. |
| **19** | **60/80** | ❌ No | El uso de `IN` no reemplaza al patrón `LIKE`; falta el `OFFSET`. |
| **20** | **70/80** | ✅ Sí | Funciona por prioridad natural de operadores, pero requiere paréntesis. |
| **21** | **35/80** | ❌ No | Error de mapeo: se buscó en la columna `nombre` en lugar de `sabor`. |
| **22** | **45/80** | ❌ No | Resultado incompleto por falta de iniciales y ordenamiento. |
| **23** | **70/80** | ✅ Sí | Lógica funcional. Se recomienda agrupar condiciones para mayor legibilidad. |
| **24** | **0/80** | ❌ No | Sin respuesta. |
| **25** | **0/80** | ❌ No | Sin respuesta. |

---
