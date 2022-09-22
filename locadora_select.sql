-- Select simples
-- atores
--SELECT * FROM atores;

-- clientes
-- SELECT * FROM clientes;

-- filmes
-- SELECT * FROM filmes;

-- generos
-- SELECT * FROM generos;

-- filmes e generos
-- SELECT f.id,f.titulo,g.genero,f.valor FROM filmes AS f, generos AS g WHERE f.id_genero = g.id;

-- atores e filmes
/*SELECT atf.id, f.titulo,a.nome, atf.personagem  
	FROM atores_filme AS atf, atores AS a, filmes AS f 
	WHERE atf.id_ator = a.id AND atf.id_filme = f.id;
*/

-- utilizando filtros
-- SELECT * FROM generos WHERE id = 2;

-- funções agregadas
SELECT SUM(valor) FROM filmes;