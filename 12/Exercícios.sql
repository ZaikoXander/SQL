USE cadastro;

-- EX1: Lista de Gafanhotas

SELECT nome FROM gafanhotos
WHERE sexo = 'F';


-- EX2: Lista de dados dos gafanhotos que nasceram entre 1/01/2000 e 31/12/2015

SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'
ORDER BY nascimento;


-- EX3: Lista de homens que são programadores

SELECT nome FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador';


-- EX4: Lista de dados de todas as mulheres que nasceram no Brasil e que tem o nome começado com 'J'

SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';


-- EX5: Lista com nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100Kg

SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%_silva%' AND nacionalidade != 'Brasil' AND peso < 100;


-- EX6: Qual é a maior altura entre gafanhotos homens que moram no Brasil?

SELECT MAX(altura) AS 'Maior Altura' FROM gafanhotos
WHERE sexo = 'M';


-- EX7: Qual é a média de peso dos gafanhotos cadastrados?

SELECT AVG(peso) AS 'Média de Peso' FROM gafanhotos;


-- EX8: Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil entre 01/01/1990 e 31/12/2000?

SELECT MIN(peso) AS 'Menor Peso' FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';


-- EX9: Quantas gafanhotos mulheres têm mais de 1.90m de altura?

SELECT COUNT(*) AS 'Qtd com Altura Maior que 1.90' FROM gafanhotos
WHERE sexo = 'F' AND altura > 1.90;