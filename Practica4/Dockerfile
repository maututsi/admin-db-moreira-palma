FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root

VOLUME ["/var/lib/mysql"]
COPY 01-tablas.sql /docker-entrypoint-initdb.d/
COPY 02-inserts.sql /docker-entrypoint-initdb.d/
COPY 03-transaccion1.sql /docker-entrypoint-initdb.d/
COPY 04-transaccion2.sql /docker-entrypoint-initdb.d/
COPY 05-transaccion3.sql /docker-entrypoint-initdb.d/
EXPOSE 3306