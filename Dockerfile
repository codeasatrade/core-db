# Use the official PostgreSQL image from the Docker Hub
FROM postgres:alpine3.21
LABEL authors="Raj"

# Set the environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=core_db

# Copy the SQL script into the Docker container
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL default port
EXPOSE 5432