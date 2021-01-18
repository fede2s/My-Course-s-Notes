DROP DATABASE libreria_de_fede;
CREATE DATABASE libreria_de_fede;

USE libreria_de_fede;

CREATE TABLE libritos (
    codigo INT,
    titulo CHAR(50),
    autor CHAR(25),
    precio INT
);

INSERT INTO libritos (codigo, titulo, autor, precio)
VALUES  (1,"1984", "George Orwell", 200),
        (2,"Revelion en la Granja", "George Orwell", 150),
        (3,"Teoria de las revoluciones cientificas", "Thomas Kuhn",500),
        (4,"Sistemas y Organizaciones", "Florencia Pollo", 350),
        (5,"Arq del computador", "Patricia Quiroga", 3000);

SELECT * FROM libritos ORDER BY codigo;
SELECT * FROM libritos ORDER BY precio;