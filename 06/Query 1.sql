use cadastro;

DESC gafanhotos;

ALTER Table pessoas
add column profissao VARCHAR(10);

ALTER Table pessoas
add column profissao VARCHAR(10) after nome;

ALTER Table pessoas
add column codigo INT first;

UPDATE pessoas
SET profissao = '';

ALTER Table pessoas
modify column profissao VARCHAR(20) not null DEFAULT '';

ALTER Table pessoas
change column profissao prof VARCHAR(20) not null default '';

ALTER Table pessoas
drop column profissao;

ALTER Table pessoas
rename to gafanhotos;

SELECT * FROM pessoas;