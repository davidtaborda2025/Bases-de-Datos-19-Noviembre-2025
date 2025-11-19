FROM postgres:15

ENV POSTGRES_DB=prestamos
ENV POSTGRES_USER=prestamos_user
ENV POSTGRES_PASSWORD=prestamos_pass

COPY ./*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432