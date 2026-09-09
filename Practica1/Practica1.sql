CREATE TABLE libros (id INT PRIMARY KEY, titulo VARCHAR(255) NOT NULL, autor VARCHAR(255) NOT NULL);

CREATE TABLE usuarios (id INT PRIMARY KEY, nombre VARCHAR(255) NOT NULL, apellido VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL);

CREATE TABLE prestamos (id INT PRIMARY KEY, fecha_prestamo TIMESTAMP NOT NULL, id_usuario INT NOT NULL, id_libro INT NOT NULL, FOREIGN KEY (id_usuario) REFERENCES usuarios(id), FOREIGN KEY (id_libro) REFERENCES libros(id));

INSERT INTO libros (id, titulo, autor) VALUES (1, 'Cien años de soledad', 'Gabriel García Márquez'), (2, '1984', 'George Orwell'), (3, 'El principito', 'Antoine de Saint-Exupéry'), (4, 'Don Quijote de la Mancha', 'Miguel de Cervantes');

INSERT INTO usuarios (id, nombre, apellido, email) VALUES (1, 'Juan', 'Pérez', 'juan.perez@email.com'), (2, 'María', 'Gómez', 'maria.gomez@email.com'), (3, 'Carlos', 'López', 'carlos.lopez@email.com'), (4, 'Ana', 'Martínez', 'ana.martinez@email.com');

INSERT INTO prestamos (id, fecha_prestamo, id_usuario, id_libro) VALUES (1, '2026-08-20 10:30:00', 1, 2), (2, '2026-08-21 14:15:00', 2, 1), (3, '2026-08-22 09:00:00', 3, 4), (4, '2026-08-23 16:45:00', 1, 3), (5, '2026-08-25 11:20:00', 4, 2);

SELECT * FROM libros;

SELECT * FROM usuarios;

SELECT * FROM prestamos;