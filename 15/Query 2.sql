-- CARDINALIDADE um-para-muitos

USE cadastro;

SELECT nome, cursopreferido FROM gafanhotos;
SELECT * FROM gafanhotos;
DESC gafanhotos;
SELECT gafanhotos.nome FROM cursos;

SELECT * FROM gafanhotos;

SELECT
    g.nome AS 'Nome da Pessoa',
    c.nome AS 'Curso Preferido',
    c.ano AS 'Ano'
FROM gafanhotos AS g
RIGHT JOIN cursos AS c ON g.cursopreferido = c.idcurso;