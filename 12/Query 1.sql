SELECT * FROM cursos
WHERE nome = 'PHP';

-- * Wildcards *

SELECT * FROM cursos
WHERE nome LIKE /* parecido com */ 'P%'; -- % é caractere coringa, conjunto de caracteres. Mostra qualquer nome começado com 'P'

SELECT * FROM cursos
WHERE nome LIKE '%a'; -- Mostra qualquer nome terminado com 'a'

SELECT * FROM cursos
WHERE nome LIKE '%A%'; -- Mostra qualquer nome com 'a' em qualquer local

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';

UPDATE cursos
SET nome = 'PáOO'
WHERE idcurso = 9;

UPDATE cursos SET nome = "Photoshop" WHERE idcurso = 3;

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_'; -- _ é caractere coringa, exige que aja algo além do último 'p'

UPDATE cursos SET nome = "Photoshop5" WHERE idcurso = 3;

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_';

SELECT * FROM cursos
WHERE nome LIKE 'p__t%';

SELECT * FROM cursos;

UPDATE gafanhotos SET nome = 'Selvana Albuquerque' WHERE id = 61;

SELECT * FROM gafanhotos
WHERE nome LIKE '%silva%';

UPDATE gafanhotos SET nome = 'Silvana Albuquerque' WHERE id = 61;

SELECT * FROM gafanhotos
WHERE nome LIKE '%_silva%';

SELECT * FROM gafanhotos;

-- DISTINCT

SELECT distinct nacionalidade from gafanhotos;

SELECT distinct carga from cursos
ORDER BY carga;

SELECT * FROM gafanhotos;

-- Agregação

SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos
WHERE carga > 40;

SELECT MAX(carga) FROM cursos
ORDER BY carga;

SELECT MAX(totaulas) FROM cursos
WHERE ano = 2016;

SELECT nome, MIN(totaulas) FROM cursos
WHERE ano = 2016;

SELECT SUM(totaulas) FROM cursos
WHERE ano = 2016;

SELECT AVG(totaulas) FROM cursos
WHERE ano = 2016;

SELECT * FROM cursos;
