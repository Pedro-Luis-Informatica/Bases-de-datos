### Base de Datos UniversidadTipoA
---

## Ejercicios Prácticos sobre Triggers

### Ejercicio 1: Validar sexo

Asegurar que solo se inserten los valores 'H' o 'M' en el campo `sexo` de la tabla `persona`.
Crea un trigger que impida insertar otros valores diferentes de 'H' o 'M'.

### Ejercicio 2: Auditar cambios en asignaturas

Registrar los cambios de créditos en una tabla de auditoría.
Crea una tabla `auditoria_creditos` y un trigger que registre cuando se actualiza el número de créditos de una asignatura.

### Ejercicio 3: Prevenir eliminación de departamentos con profesores

Evitar que se elimine un departamento que tenga profesores asociados.
Crea un trigger que bloquee la eliminación si existen registros en `profesor` relacionados con el departamento.

### Ejercicio 4: Validar límite de asignaturas por alumno

Asegurar que un alumno no se matricule en más de 6 asignaturas por curso escolar.
Crea un trigger que impida una nueva matrícula si ya hay 6 asignaturas para ese alumno en ese curso.

### Ejercicio 5: Registrar fecha de inscripción automáticamente

Insertar la fecha actual como fecha de inscripción en `alumno_se_matricula_asignatura` si no se proporciona.
Modifica la tabla para permitir un campo `fecha_inscripcion` y crea un trigger que lo actualice automáticamente con `CURDATE()` si no se proporciona.

### Ejercicio 6: Auditar altas en `persona`

Registrar todas las inserciones en `persona` en una tabla de auditoría.
Crea una tabla `auditoria_persona` y un trigger `AFTER INSERT` que almacene los datos insertados.

### Ejercicio 7: Notificación de nuevos profesores

Registrar un mensaje en una tabla `notificaciones` cuando se registre un nuevo profesor.
Crea la tabla `notificaciones` y un trigger que inserte un mensaje cuando se agregue un nuevo `profesor`.

### Ejercicio 8: Bloquear cambios de tipo en `persona`

Impedir que se cambie el tipo de una persona (de alumno a profesor o viceversa).
Crea un trigger `BEFORE UPDATE` en `persona` que impida cambiar el campo `tipo`.

### Ejercicio 9: Asegurar que todos los profesores estén asignados a un departamento

Validar en inserciones que cada profesor tenga un `id_departamento` válido.
Crea un trigger `BEFORE INSERT` en `profesor` que verifique la existencia del departamento.

### Ejercicio 10: Validar duración del curso escolar

Asegurar que la diferencia entre `anyo_inicio` y `anyo_fin` sea exactamente 1 año.
Crea un trigger `BEFORE INSERT` en `curso_escolar` que valide esta condición.

---

