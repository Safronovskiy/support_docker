CREATE USER db_admin WITH PASSWORD 'db_admin_password';

CREATE DATABASE postgres_db;

GRANT ALL PRIVILEGES ON DATABASE postgres_db TO db_admin;