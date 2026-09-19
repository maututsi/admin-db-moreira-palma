CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(100)
);

CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
    CONSTRAINT check_stock_positivo CHECK (stock >= 0)
);

CREATE TABLE pago (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    monto DECIMAL(12, 2) NOT NULL,
    id_compra INT NOT NULL UNIQUE,

    CONSTRAINT fk_pago_compra
        FOREIGN KEY (id_compra)
        REFERENCES compra(id_compra)
);

CREATE TABLE detalle_compra (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,

    CONSTRAINT fk_detalle_compra
        FOREIGN KEY (id_compra)
        REFERENCES compra(id_compra),

    CONSTRAINT fk_detalle_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
);