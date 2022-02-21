USE cadastro;
SELECT * FROM gafanhotos;
DESC gafanhotos;
SELECT * FROM cursos;
DESC cursos;

SELECT * FROM cursos
ORDER BY nome DESC;

SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

SELECT * FROM cursos
WHERE ano = 2016
ORDER BY nome; -- Result set == Resultado de uma consulta

SELECT nome, descricao, carga FROM cursos
WHERE ano = 2016
ORDER BY nome; -- Query == Consulta

SELECT nome, descricao, ano FROM cursos
WHERE ano <= 2015 -- <, <=, >, >=, =, != <>
ORDER BY ano, nome;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016
ORDER BY ano DESC, nome ASC;

SELECT nome, descricao, ano FROM cursos
WHERE ano in (2014, 2016, 2020)
ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 OR /* AND */ totaulas < 30;

SELECT * FROM cursos

/* DML - Data Manipulation Language || DQL - Data Query Language <--
SELECT */