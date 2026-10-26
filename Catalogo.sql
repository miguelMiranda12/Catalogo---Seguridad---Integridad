

-- Pregunta 1) ¿Cuáles tablas contienen la columna LOCALIDAD?
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'LOCALIDAD';

-- Pregunta 2) ¿Cuántas columnas tiene la tabla PRODUCTOS?
SELECT COUNT(*) AS CANTIDAD_COLUMNAS
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'PRODUCTOS';

-- Pregunta 3) Obtener una lista de todos los usuarios dueños de por lo menos una tabla, junto con el número de tablas que le pertenecen a cada uno.
SELECT TABLE_SCHEMA AS USUARIO, COUNT(*) AS CANTIDAD_TABLAS
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
GROUP BY TABLE_SCHEMA;

-- Pregunta 4) Obtener una lista de los nombres de todas las tablas que tienen por lo menos un índice.
SELECT DISTINCT TABLE_NAME
FROM INFORMATION_SCHEMA.STATISTICS;