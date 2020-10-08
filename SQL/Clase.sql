/Ingresar a MySQL/

-u Usuario
-p Contraseña
--password = pide la contraseña sin encriptar

mysql -u root -p
Enter password: *****

mysql -u root --password="Contraseña"


/MOSTRAR BASES DE DATOS EXISTENTES/

SHOW DATABASES;  

SHOW CHARSET;

CREATE DATABASE;

CREATE DATABSE IF NOT EXIST;

SELECT default_character_set_name FROM information_schema.SCHEMATA WHERE schema_name = “cualtos"

SELECT DEFAULT_CHARACTER_SET_NAME, DEFAULT_COLLATION_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'db_name'

DROP DATABASE;

CREATE DATABASE cualtos CHARACTER SET utf8_general_ci;

SHOW WARNINGS

CREATE USER David IDENTIFIED BY "David";

FLUSH PRIVILEGES;

USE mysql;

SELECT user, host, authentication_string FROM user;

GRANT SELECT, INSERT, UPDATE, DELETE ON cualtos.* TO cualtos@localhost;