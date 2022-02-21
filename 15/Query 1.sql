-- Tudo aquilo que você possa pedir para o banco de dados e ele executar e te dar uma resposta, é uma transação

-- Regras de uma transação:
-- ACID

/* Atomicidade:
Ou toda tarefa é feita ou nada será considerado.

Consistência:
Se antes da transação o banco de dados estava OK, então depois da transação também tem que estar OK.
Sem erros, sem inconsistências.

Isolamento:
Quando haver duas transações ocorrendo ao mesmo tempo, elas devem ser executadas de forma isolada.

Durabilidade:
Uma transação tem que ser durável,  durar o tempo que for necessário.
Os dados podem até ser dinâmicos, mas a última atualização deve permanecer intacta até que seja modificada. */

-- InnoDB tem estas 4 características e suporta chaves estrangeiras


USE cadastro;

DESC gafanhotos;

ALTER Table gafanhotos
add column cursopreferido int;

ALTER Table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos SET cursopreferido = 6 WHERE id = 1;

delete FROM cursos WHERE idcurso = 6;

DELETE FROM cursos WHERE idcurso = 28;