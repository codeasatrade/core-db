## License
This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).

# core-db
Contains Challenges Data

## Overview
The `core-db` module is responsible for managing the database that stores challenge data. It includes the necessary SQL scripts to initialize the database schema and populate it with sample data.

## Structure
- `init.sql`: SQL script to create the database schema and insert initial data.
- `Dockerfile.txt`: Dockerfile to build a PostgreSQL image with the initialized database.
- `docker-compose.yml`: Docker Compose file to set up the PostgreSQL container.

## Usage
To start the database container, run the following command in the `core-db` directory:
```sh
docker-compose up
