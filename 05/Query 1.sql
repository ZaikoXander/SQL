/* DDL - Data Definition Language
CREATE DATABASE
CREATE TABLE */

use cadastro;

INSERT INTO pessoas/* (id, nome, nascimento, sexo, peso, altura, nacionalidade) */ VALUES
    (DEFAULT, 'Cláudio', '1975-04-22', 'M', 99.0, 2.15, DEFAULT),
    (DEFAULT, 'Pedro', '1999-12-3', 'M', 87, 2, DEFAULT),
    (DEFAULT, 'Janaína', '1987-11-12', 'F', 75.4, 1.66, 'EUA');

SELECT * FROM pessoas;

/* DML - Data Manipulation Language
INSERT INTO */