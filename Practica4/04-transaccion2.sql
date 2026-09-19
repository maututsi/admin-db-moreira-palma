USE ecommerce;

START TRANSACTION;

-- 1. Registrar compra
INSERT INTO compra (direccion) VALUES ("Calle 4");

SET @id_compra = LAST_INSERT_ID();

-- 2. Registrar detalles de compra
INSERT INTO detalle_compra (id_compra, id_producto, cantidad) VALUES (@id_compra, 1, 100);

-- 3. Restar stocks
UPDATE producto SET stock = stock - 100 WHERE id_producto = 1;

ROLLBACK;

-- 4. Se registraría el pago
-- SET @precio1 = SELECT precio FROM producto WHERE id_producto = 1;
-- SET @precio2 = SELECT precio FROM producto WHERE id_producto = 2;

-- INSERT INTO pago (monto, id_compra) VALUES (
--     @precio1 * 2 + @precio2 * 3,
--     @id_compra
-- );

-- COMMIT;