/* Profesores - Alumnos en mysql*/
/* Uso de llaves */
/* Para usar este script puedo usar el siguiente comando
        SOURCE C:\Users\FdS2\Desktop\PA.sql

    * Este script fue hecho para probar lo visto en el curso
    de bases de datos acerca de llaves primarias y llaves foraneas
    * El nombre es corto para que no genere fallas en la linea de
    comandos del cliente mysql
    * Es la segunda vez que tomo el curso para practicar lo visto
    tratando de usar la creatividad para crear nuevos casos en los
    cuales me serian utiles las herramientas adquiridas
*/

DROP DATABASE colegio;
CREATE DATABASE IF NOT EXISTS colegio;
USE colegio;

CREATE TABLE IF NOT EXISTS profesores(
    nombre CHAR(50) PRIMARY KEY,
    edad INT UNSIGNED NOT NULL,
    materia CHAR(50) NOT NULL 
);

CREATE TABLE IF NOT EXISTS alumnos(
    matricula INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    profe_favorito CHAR(50) NOT NULL,
    nombre CHAR(50) NOT NULL,
    curso ENUM('1A','1B','1C','2A','2B','2C','3A','3B','3C','4A','4B','5A','5B'),
    edad INT UNSIGNED NOT NULL,
    FOREIGN KEY (profe_favorito) REFERENCES profesores(nombre)    
);

INSERT INTO profesores (nombre,edad,materia) 
VALUES  ('Catarino',49,'Matematica'),
        ('Ruggieri',37,'Matematica'),
        ('Chiola',34,'Catequesis'),
        ('Acosta',53,'Informatica'),
        ('Chiapella',48,'Biologia');

INSERT INTO alumnos (nombre, profe_favorito, curso, edad)
VALUES  ('Fede','Acosta','5b',18),
        ('Pochi','Catarino','5b',18),
        ('Luli','Chiapella','5b',18),
        ('Choi','Chiola','5a',18),
        ('Nico','Chiola','3C',18),
        ('Gabi','Ruggieri','3b',16);


DESC profesores;
SELECT * FROM profesores;

DESC alumnos; 
SELECT * FROM alumnos;
