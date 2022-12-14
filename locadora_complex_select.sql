-- encontrar todos os filmes que determinado ator atua
SELECT f.titulo, g.genero, af.personagem
	FROM atores_filme AS af, filmes AS f, generos AS g, atores AS a
	WHERE f.id = af.id_filme AND g.id = f.id_genero AND a.id = af.id_ator
	AND a.nome = 'Harrison Ford';


-- encontrar todos os filmes que determinado ator atuou por gênero
SELECT f.titulo, a.nome, af.personagem
	FROM atores_filme AS af, filmes AS f, generos AS g, atores AS a
	WHERE f.id = af.id_filme AND g.id = f.id_genero AND a.id = af.id_ator
	AND g.genero = 'Suspense';
	
-- verificar qual cliente alugou o que 
SELECT e.id, c.nome, c.sobrenome, e.data, f.titulo, g.genero
	FROM emprestimos AS e, clientes AS c, filmes AS f, generos AS g, dvds AS d, filmes_emprestimo AS fe
	WHERE fe.id_emprestimo = e.id AND e.id_cliente = c.id AND f.id = d.id_filme AND fe.id_dvd = d.id
	AND f.id_genero = g.id;
	
-- verificar o que os clientes devolveram
SELECT de.id, c.nome, c.sobrenome, de.data, f.titulo 
	FROM devolucoes AS de, clientes AS c, filmes As f, filmes_devolucao AS fd, dvds AS d, 
	emprestimos AS e, filmes_emprestimo AS fe
	WHERE fd.id_filme_emprestimo = fe.id 
	AND e.id_cliente = c.id 
	AND f.id = d.id_filme 
	AND fe.id_dvd = d.id 
	AND de.id_emprestimo = e.id 
	AND fd.id_devolucao = de.id;
	
-- verificar quanto cada cliente pagou 
SELECT e.id, c.nome, c.sobrenome, SUM(f.valor)
	FROM filmes_devolucao AS fd, 
		clientes AS c, 
		dvds AS d, 
		filmes AS f, 
		devolucoes AS de, 
		emprestimos AS e,
		filmes_emprestimo AS fe
	WHERE fd.id_filme_emprestimo = fe.id
		AND fd.id_devolucao = de.id
		AND f.id = d.id_filme
		AND fe.id_dvd = d.id
		AND c.id = e.id_cliente
		AND fe.id_emprestimo = e.id
		GROUP BY e.id, c.nome, c.sobrenome;

	