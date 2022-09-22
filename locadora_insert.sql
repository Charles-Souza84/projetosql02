-- atores

/* INSERT INTO atores (nome) VALUES ('Angelina Jolie');
INSERT INTO atores (nome) VALUES ('Harrison Ford');
INSERT INTO atores (nome) VALUES ('Tom Cruise'); */

-- generos
/* INSERT INTO generos (genero) VALUES ('Comédia');
INSERT INTO generos (genero) VALUES ('Terror');
INSERT INTO generos (genero) VALUES ('Suspense'); */

-- filmes 
/*INSERT INTO filmes(titulo, id_genero,valor) VALUES ('Tomb Raider',3, 8.99);
INSERT INTO filmes(titulo, id_genero,valor) VALUES ('Star Wars',2, 12.99);
INSERT INTO filmes(titulo, id_genero,valor) VALUES ('Loucademia de Policia',1, 5.99);*/

-- clientes
/*INSERT INTO clientes(nome,sobrenome,telefone,endereco) VALUES ('Paula','Santos','12345678','Rua Bonifacio,34');
INSERT INTO clientes(nome,sobrenome,telefone,endereco) VALUES ('Carlos','Almeida','45678912','Rua Pires Barbosa,578');
INSERT INTO clientes(nome,sobrenome,telefone,endereco) VALUES ('Amanda','Chagas','45678903','Rua Francisco Moraes');
*/

-- dvds
/*INSERT INTO dvds(id_filme,quantidade) VALUES (1,1);
INSERT INTO dvds(id_filme,quantidade) VALUES (2,2);
INSERT INTO dvds(id_filme,quantidade) VALUES (3,1);
*/

-- atores filme
/*INSERT INTO atores_filme(id_ator,id_filme,personagem) VALUES (1,1,'Lara Croft');
INSERT INTO atores_filme(id_ator,id_filme,personagem) VALUES (2,2,'Han Solo');
INSERT INTO atores_filme(id_ator,id_filme,personagem) VALUES (3,3,'Capitão Jack');
*/

-- emprestimos
-- INSERT INTO emprestimos(id_cliente,data) VALUES (1, '2022-09-10');
-- INSERT INTO emprestimos(id_cliente,data) VALUES (3, '2022-09-09');
-- INSERT INTO emprestimos(id_cliente,data) VALUES (2, '2022-09-11');

-- filmes_emprestimos
/*INSERT INTO filmes_emprestimo(id_dvd,id_emprestimo) VALUES (1,1);
INSERT INTO filmes_emprestimo(id_dvd,id_emprestimo) VALUES (2,1);
INSERT INTO filmes_emprestimo(id_dvd,id_emprestimo) VALUES (3,3);
INSERT INTO filmes_emprestimo(id_dvd,id_emprestimo) VALUES (2,2);
INSERT INTO filmes_emprestimo(id_dvd,id_emprestimo) VALUES (1,2);
*/

-- devolucoes
/*INSERT INTO devolucoes(id_emprestimo,"data") VALUES (1,'2022-09-15');
INSERT INTO devolucoes(id_emprestimo,"data") VALUES (3,'2022-09-18');
INSERT INTO devolucoes(id_emprestimo,"data") VALUES (2,'2022-09-16');
*/

-- filmes_devolucao
/*INSERT INTO filmes_devolucao(id_devolucao,id_filme_emprestimo) VALUES (1,1);
INSERT INTO filmes_devolucao(id_devolucao,id_filme_emprestimo) VALUES (1,2);
INSERT INTO filmes_devolucao(id_devolucao,id_filme_emprestimo) VALUES (3,3);
INSERT INTO filmes_devolucao(id_devolucao,id_filme_emprestimo) VALUES (2,1);
INSERT INTO filmes_devolucao(id_devolucao,id_filme_emprestimo) VALUES (2,2);
*/
