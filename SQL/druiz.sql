-- Crear la base de datos
CREATE DATABASE Gente;
use Gente;

-- Crear tablas

CREATE TABLE personas(
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(45) NOT NULL,
 apellido VARCHAR(45),
 genero ENUM('M','F'),
 nacimiento DATE NOT NULL,
 hoy DATETIME DEFAULT NOW(),
 pais VARCHAR(45) DEFAULT 'México',
 estados VARCHAR(45)DEFAULT 'Jalisco',
 ciudad VARCHAR(45) NOT NULL
 );

CREATE TABLE correo(
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 persona_id INT NOT NULL,
 correo VARCHAR(50) NOT NULL,
 tipo ENUM('Personal','Trabajador') NOT NULL,
 UNIQUE unq_correo (correo)
);

CREATE TABLE telefonos(
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 telefono VARCHAR(10) NOT NULL,
 tipo ENUM('Casa','Trabajo','Movil') NOT NULL,
 UNIQUE unq_telefono (telefono)
);

CREATE TABLE persona_con_telefono(
 persona_id INT NOT NULL,
 telefono_id INT NOT NULL,
 CONSTRAINT fk_persona_pct
 FOREIGN KEY(persona_id)
 REFERENCES personas(id)
 ON UPDATE CASCADE
 ON DELETE NO ACTION, 
 CONSTRAINT fk_telefono_pct
 FOREIGN KEY(telefono_id)
 REFERENCES telefonos(id)
 ON UPDATE CASCADE 
 ON DELETE NO ACTION 
);

INSERT INTO personas(nombre,apellido,genero,nacimiento,ciudad)
VALUES('David','Ruiz','M','2000-04-22','Tepatitlan'),
      ('Carolina','Ruiz','F','2003-10.18','Tepatitlan'),  
      ('Sergio','Carrillo','M','1999-04-19','Tepatitlan'),
      ('Juan','Perez','M','1990-05.22','Tepatitlan'),
      ('John','Cena','M','1989-02-11','Timboctu');

INSERT IGNORE INTO correo(persona_id, correo, tipo)
VALUES(1,'david1@udg.mx','Trabajador'),
        (1,'david2@udg.mx','Trabajador'),
        (1,'david3@hola.com','Personal'),
        (2,'caro1@udg.mx','Trabajador'),
        (2,'carol2@udg.mx','Trabajador'),
        (3,'sergio1@naruto.com','Personal'),
        (3,'sergio2@udg.mx','Trabajador'),
        (4,'juan1@udg.mx','Trabajador'),
        (4,'juan2@hola.com','Personal'),
        (5,'john1@udg.mx','Trabajador'),
        (5,'johncenacereal@hot.com','Personal');

INSERT IGNORE INTO telefonos(telefono,tipo)
VALUES('378-112-5454','Movil'),
        ('378-111-2322','Trabajo'),
        ('378-908-0900','Casa'),
        ('378-554-6676','Movil'),
        ('378-555-1234','Trabajo');

INSERT INTO persona_con_telefono
VALUES(1,2),
(1,3),
(2,1),
(3,2),
(4,5),
(5,1),
(2,2),
(3,4),
(4,1),
(5,5);


SELECT * FROM personas;
SELECT * FROM correo;
SELECT * FROM telefonos;
SELECT * FROM persona_con_telefono;


