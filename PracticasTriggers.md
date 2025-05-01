**Guía de Ejercicios Prácticos: Triggers en la Base de Datos `jugos_ventas`**

---

**Objetivo:** Comprender el uso de los triggers en MySQL mediante la resolución de ejercicios prácticos sobre una base de datos real.

**Base de datos:** `jugos_ventas`

### Ejercicio 1: Verificación de Límite de Crédito

**Trigger Relacionado:** `verificar_limite_credito`

**Instrucciones:**
1. Intenta insertar un cliente con un límite de crédito menor a 1000.
2. Observa el mensaje de error.
3. Luego, inserta un cliente con límite mayor o igual a 1000.

**Consulta sugerida:**
```sql
INSERT INTO tabla_de_clientes (DNI, NOMBRE, LIMITE_DE_CREDITO)
VALUES ('99999999999', 'Cliente Test', 800);
```

### Ejercicio 2: Registro de Auditoría

**Trigger Relacionado:** `auditar_clientes`

**Instrucciones:**
1. Actualiza el nombre de un cliente existente.
2. Verifica que se haya registrado un cambio en la tabla `auditoria_clientes`.

**Consulta sugerida:**
```sql
UPDATE tabla_de_clientes
SET NOMBRE = 'Nuevo Nombre'
WHERE DNI = '12345678900';

SELECT * FROM auditoria_clientes;
```

### Ejercicio 3: Cálculo Automático del Total

**Trigger Relacionado:** `calcular_total_factura`

**Instrucciones:**
1. Inserta una nueva factura.
2. Añade productos con cantidades y precios.
3. Verifica que la tabla `facturas_totales` tenga el total actualizado correctamente.

**Consulta sugerida:**
```sql
INSERT INTO facturas (NUMERO, DNI, MATRICULA, FECHA_VENTA, IMPUESTO)
VALUES (1001, '12345678900', 'A001', CURDATE(), 0.12);

INSERT INTO items_facturas (NUMERO, CODIGO_DEL_PRODUCTO, CANTIDAD, PRECIO)
VALUES (1001, 'P001', 2, 5.00);

SELECT * FROM facturas_totales WHERE NUMERO = 1001;
```

### Ejercicio 4: Validación de Edad del Cliente

**Trigger Relacionado:** `validar_edad_cliente`

**Instrucciones:**
1. Intenta insertar un cliente con edad < 18.
2. Observa que la operación se cancela.
3. Inserta otro cliente con edad válida.

**Consulta sugerida:**
```sql
INSERT INTO tabla_de_clientes (DNI, NOMBRE, EDAD)
VALUES ('88888888888', 'Menor de edad', 16);
```

### Ejercicio 5: Prevención de Precios Negativos

**Trigger Relacionado:** `verificar_precio_producto`

**Instrucciones:**
1. Intenta insertar un producto con precio negativo.
2. Verifica que se cancela la operación.

**Consulta sugerida:**
```sql
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA)
VALUES ('P999', 'Producto Inválido', -5);
```

### Ejercicio 6: Bitácora de Vendedores

**Trigger Relacionado:** `auditar_vendedores`

**Instrucciones:**
1. Modifica el porcentaje de comisión de un vendedor.
2. Consulta la tabla `auditoria_vendedores` para ver el cambio registrado.

**Consulta sugerida:**
```sql
UPDATE tabla_de_vendedores
SET PORCENTAJE_COMISION = 0.20
WHERE MATRICULA = 'A001';

SELECT * FROM auditoria_vendedores;
```

