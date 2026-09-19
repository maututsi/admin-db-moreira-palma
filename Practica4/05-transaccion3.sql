USE ecommerce;

START TRANSACTION;

-- 1. Registrar compra
INSERT INTO compra (direccion) VALUES ("Calle 4");

SET @id_compra = LAST_INSERT_ID();

-- 2. Registrar detalles de compra
INSERT INTO detalle_compra (id_compra, id_producto, cantidad) VALUES (@id_compra, 1, 2);

INSERT INTO detalle_compra (id_compra, id_producto, cantidad) VALUES (@id_compra, 2, 3);

-- 3. Restar stocks
UPDATE producto SET stock = stock - 2 WHERE id_producto = 1;

UPDATE producto SET stock = stock - 3 WHERE id_producto = 2;

-- 4. Registrar el pago
SET @precio1 = SELECT precio FROM producto WHERE id_producto = 1;
SET @precio2 = SELECT precio FROM producto WHERE id_producto = 2;

INSERT INTO pago (monto, id_compra) VALUES (
    -1,
    @id_compra
);

ROLLBACK;

-- Se commitearía toda la transacción
-- COMMIT;