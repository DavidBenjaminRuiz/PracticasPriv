
CREATE USER david@'localhost' IDENTIFIED BY 'david';
FLUSH PRIVILEGES;
CREATE USER david123@'localhost' IDENTIFIED BY 'david123';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS david CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE david;

CREATE TABLE clientes(
    id INT,
    nombre VARCHAR(50),
    fecha DATE
)Engine=InnoDB;

CREATE TABLE empleados(
    id INT,
    nombre VARCHAR(50),
    fecha DATE
)Engine=InnoDB;


GRANT SELECT, UPDATE, DELETE, INSERT ON david.clientes TO david@'localhost';

GRANT ALL PRIVILEGES ON david.* TO david123@'localhost';