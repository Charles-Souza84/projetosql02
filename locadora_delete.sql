-- excluindo dados
SELECT * FROM generos;
-- DELETE FROM generos WHERE id = 3;
-- não permite por que temos o valor de uma fk sendo usado na tabela filmes
-- quando isso acontece, temos que deletar do fim para o início (em termos de
-- refrência de tabelas por meio das fk)

-- a sequência de tabelas a serem excluídos registros até chegar ao id = 3 da tabela generos é :
-- filmes_emprestimo
-- dvds
-- atores_filme
-- filmes
-- generos