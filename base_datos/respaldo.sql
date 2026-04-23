-- Creación de la tabla
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(100),
    salario NUMERIC
);

-- Inserción de datos iniciales
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'TI', 1200),
('Luis', 'Finanzas', 1500),
('Carlos', 'Marketing', 1100),
('Maria', 'TI', 1400);
