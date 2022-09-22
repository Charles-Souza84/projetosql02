CREATE TABLE [generos] (
  [id] int PRIMARY KEY,
  [genero] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [filmes] (
  [id] int PRIMARY KEY,
  [titulo] nvarchar(255) NOT NULL,
  [id_genero] int NOT NULL,
  [valor] decimal(8,2) NOT NULL
)
GO

CREATE TABLE [dvds] (
  [id] int PRIMARY KEY,
  [id_filme] int NOT NULL,
  [quantidade] int NOT NULL
)
GO

CREATE TABLE [atores] (
  [id] int PRIMARY KEY,
  [nome] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [atores_filme] (
  [id] int PRIMARY KEY,
  [id_filme] int NOT NULL,
  [id_ator] int NOT NULL,
  [personagem] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [clientes] (
  [id] int PRIMARY KEY,
  [nome] nvarchar(255) NOT NULL,
  [sobrenome] nvarchar(255) NOT NULL,
  [telefone] nvarchar(255) NOT NULL,
  [endereco] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [emprestimos] (
  [id] int PRIMARY KEY,
  [data] date NOT NULL,
  [id_cliente] int NOT NULL
)
GO

CREATE TABLE [filmes_emprestimo] (
  [id] int PRIMARY KEY,
  [id_emprestimo] int NOT NULL,
  [id_filme] int NOT NULL
)
GO

CREATE TABLE [devolucoes] (
  [id] int PRIMARY KEY,
  [id_emprestimo] int NOT NULL,
  [data] datetime NOT NULL
)
GO

CREATE TABLE [filmes_devolucao] (
  [id] int PRIMARY KEY,
  [id_devolucao] int NOT NULL,
  [id_filme_emprestimo] int NOT NULL
)
GO

ALTER TABLE [filmes] ADD FOREIGN KEY ([id_genero]) REFERENCES [generos] ([id])
GO

ALTER TABLE [dvds] ADD FOREIGN KEY ([id_filme]) REFERENCES [filmes] ([id])
GO

ALTER TABLE [atores_filme] ADD FOREIGN KEY ([id_filme]) REFERENCES [filmes] ([id])
GO

ALTER TABLE [atores_filme] ADD FOREIGN KEY ([id_ator]) REFERENCES [atores] ([id])
GO

ALTER TABLE [emprestimos] ADD FOREIGN KEY ([id_cliente]) REFERENCES [clientes] ([id])
GO

ALTER TABLE [filmes_emprestimo] ADD FOREIGN KEY ([id_emprestimo]) REFERENCES [emprestimos] ([id])
GO

ALTER TABLE [filmes_emprestimo] ADD FOREIGN KEY ([id_filme]) REFERENCES [filmes] ([id])
GO

ALTER TABLE [devolucoes] ADD FOREIGN KEY ([id_emprestimo]) REFERENCES [emprestimos] ([id])
GO

ALTER TABLE [filmes_devolucao] ADD FOREIGN KEY ([id_devolucao]) REFERENCES [devolucoes] ([id])
GO

ALTER TABLE [filmes_devolucao] ADD FOREIGN KEY ([id_filme_emprestimo]) REFERENCES [filmes_emprestimo] ([id])
GO
