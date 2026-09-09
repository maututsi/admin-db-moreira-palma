FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=moreira-palma

VOLUME ["/var/lib/mysql"]
COPY 01_database.sql /docker-entrypoint-initdb.d/
COPY 02_schema.sql /docker-entrypoint-initdb.d/
COPY 03_relations.sql /docker-entrypoint-initdb.d/
COPY 04_insertions.sql /docker-entrypoint-initdb.d/
EXPOSE 3306