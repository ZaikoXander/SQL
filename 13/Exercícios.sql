USE cadastro;

-- EX1: Lista com as profissões dos gafanhotos e seus respectivos quantitavos

SELECT
    profissao AS 'Profissão',
    COUNT(*) AS 'Qtd'
FROM gafanhotos
GROUP BY profissao;


-- EX2: Quantos gafanhotos homens e quantas mulheres nasceram após 01/01/2005?

SELECT sexo AS 'Sexo', COUNT(*) AS 'Qtd' FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;


--EX3: Uma lista com gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade

SELECT nacionalidade AS 'Nacionalidade', COUNT(*) AS 'Qtd de Pessoas' FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(*) > 3;


-- EX4: Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que estão acima da média de altura de todos os cadastrados

SELECT AVG(altura) FROM gafanhotos;
SELECT altura AS 'Altura', COUNT(*) AS 'Qtd de Pessoas' FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);