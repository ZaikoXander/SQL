/* Banco de Dados contém tabelas,
tabelas contém registros,
registros contém campos. */

create database cadastro;

use cadastro;

create table pessoas(
    nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

show databases;

show tables;

describe pessoas;