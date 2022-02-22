-- CARDINALIDADE muitos-para-muitos

USE cadastro;

CREATE Table gafanhoto_assiste_curso (
    id int not null AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT charset = utf8mb4;

DESC gafanhoto_assiste_curso;

INSERT INTO gafanhoto_assiste_curso
VALUES
    (default, '2014-03-01', 1, 2);

SELECT * FROM gafanhoto_assiste_curso;

-- Junções

SELECT * FROM gafanhotos;

SELECT
    g.nome AS 'Aluno',
    c.nome AS 'Curso'
FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a ON g.id = a.idgafanhoto
JOIN cursos AS c ON c.idcurso = a.idcurso
ORDER BY g.nome;