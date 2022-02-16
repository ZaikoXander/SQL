use cadastro;

CREATE Table if not exists cursos (
    nome VARCHAR(30) not null UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT '2016'
) DEFAULT charset=utf8mb4;

ALTER Table cursos
add column idcurso int first; 

ALTER Table cursos
add primary key(idcurso);

ALTER Table cursos
modify idcurso int not null auto_increment;

ALTER Table cursos
drop column idcurso;

CREATE Table if not exists test(
    id int,
    nome VARCHAR(10),
    idade INT
);

insert INTO test
VALUES
    (1, 'Pedro', 22),
    (2, 'Maria', 12),
    (3, 'Maricota', 77);

SELECT * FROM test;

DROP Table if exists test;

DESC cursos;

/* DDL - Data Definition Language
ALTER TABLE
DROP TABLE */