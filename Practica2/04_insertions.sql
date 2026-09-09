USE `moreira-palma`;

-- ============================================
-- CLIENTES
-- ============================================

INSERT INTO cliente
(doc_id, nombres, apellidos, telefono, correo)
VALUES
('1234567890', 'Carlos', 'Ramirez Lopez', '9991112233', 'carlos.ramirez@gmail.com'),
('2345678901', 'Mariana', 'Gonzalez Perez', '9992223344', 'mariana.gonzalez@gmail.com'),
('3456789012', 'Luis', 'Hernandez Torres', '9993334455', 'luis.hernandez@gmail.com'),
('4567890123', 'Sofia', 'Martinez Cruz', '9994445566', 'sofia.martinez@gmail.com');

-- ============================================
-- VETERINARIOS
-- ============================================

INSERT INTO veterinario
(doc_id, nombres, apellidos, especialidad, telefono)
VALUES
('9876543210', 'Ana', 'Martinez Gomez', 'Cirugia', '9995556677'),
('8765432109', 'Pedro', 'Ramirez Sanchez', 'Dermatologia', '9996667788'),
('7654321098', 'Laura', 'Torres Medina', 'Medicina general', '9997778899');

-- ============================================
-- MASCOTAS
-- ============================================

INSERT INTO mascota
(nombre, especie, raza, fecha_nacimiento, id_cliente)
VALUES
('Firulais', 'Perro', 'Labrador', '2021-05-12 00:00:00', 1),
('Michi', 'Gato', 'Siames', '2022-08-20 00:00:00', 2),
('Rocky', 'Perro', 'Chihuahua', '2020-03-15 00:00:00', 3),
('Luna', 'Gato', 'Persa', '2023-01-10 00:00:00', 4),
('Max', 'Perro', 'Golden Retriever', '2019-11-05 00:00:00', 1);

-- ============================================
-- MEDICAMENTOS
-- ============================================

INSERT INTO medicamento
(codigo, nombre_comercial, laboratorio, precio_unitario_venta)
VALUES
('MED001', 'Amoxicilina 500mg', 'Bayer', 120.50),
('MED002', 'Meloxicam 1mg', 'Zoetis', 85.00),
('MED003', 'Prednisona 5mg', 'MSD', 65.75),
('MED004', 'Clorhexidina', 'Virbac', 150.00),
('MED005', 'Omeprazol 20mg', 'Pfizer', 95.25);

-- ============================================
-- ATENCIONES
-- ============================================

INSERT INTO atencion
(fecha_hora, diagnostico, costo, id_veterinario, id_mascota)
VALUES
('2026-09-01 10:30:00', 'Infeccion de oido', 450.00, 2, 1),
('2026-09-02 12:00:00', 'Dermatitis alergica', 380.00, 2, 2),
('2026-09-03 09:15:00', 'Dolor muscular', 300.00, 3, 3),
('2026-09-04 16:45:00', 'Problemas respiratorios', 500.00, 3, 4),
('2026-09-05 11:20:00', 'Lesion en pata', 750.00, 1, 5);

-- ============================================
-- PRESCRIPCIONES
-- ============================================

INSERT INTO prescripcion
(cantidad, indicaciones, id_medicamento, id_atencion)
VALUES
(10, 'Administrar una tableta cada 12 horas durante 5 dias', 1, 1),
(7, 'Administrar una tableta cada 24 horas durante 7 dias', 2, 2),
(5, 'Administrar una tableta cada 24 horas durante 5 dias', 3, 3),
(10, 'Aplicar sobre la zona afectada dos veces al dia', 4, 5),
(7, 'Administrar una capsula cada 24 horas durante 7 dias', 5, 4);