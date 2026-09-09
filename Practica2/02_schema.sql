USE `moreira-palma`;

-- ============================================
-- CLIENTE
-- ============================================

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    doc_id VARCHAR(255) UNIQUE,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(255)
);

-- ============================================
-- MASCOTA
-- ============================================

CREATE TABLE mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    especie VARCHAR(255) NOT NULL,
    raza VARCHAR(255),
    fecha_nacimiento DATETIME NOT NULL,
    id_cliente INT NOT NULL
);

-- ============================================
-- VETERINARIO
-- ============================================

CREATE TABLE veterinario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    doc_id VARCHAR(255) UNIQUE,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    especialidad VARCHAR(255),
    telefono VARCHAR(10) NOT NULL
);

-- ============================================
-- ATENCION
-- ============================================

CREATE TABLE atencion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora DATETIME NOT NULL,
    diagnostico VARCHAR(255) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    id_veterinario INT NOT NULL,
    id_mascota INT NOT NULL
);

-- ============================================
-- MEDICAMENTO
-- ============================================

CREATE TABLE medicamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) UNIQUE,
    nombre_comercial VARCHAR(255) NOT NULL,
    laboratorio VARCHAR(255) NOT NULL,
    precio_unitario_venta DECIMAL(10, 2) NOT NULL
);

-- ============================================
-- PRESCRIPCION
-- ============================================

CREATE TABLE prescripcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    indicaciones VARCHAR(255) NOT NULL,
    id_medicamento INT NOT NULL,
    id_atencion INT NOT NULL
);