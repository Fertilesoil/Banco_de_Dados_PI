CREATE TABLE [tb_produto] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Descricao varchar(800) NOT NULL,
	Valor decimal(8,2) NOT NULL,
	Quantidade int,
	Foto varchar(5000) NOT NULL,
	Categoria_Id bigint NOT NULL,
  CONSTRAINT [PK_TB_PRODUTO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_categoria] (
	id bigint NOT NULL,
	Produto varchar(255) NOT NULL,
	Servico varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_CATEGORIA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuario] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(15) NOT NULL,
	Foto varchar(5000),
  CONSTRAINT [PK_TB_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_produto] WITH CHECK ADD CONSTRAINT [tb_produto_fk0] FOREIGN KEY ([Categoria_Id]) REFERENCES [tb_categoria]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_produto] CHECK CONSTRAINT [tb_produto_fk0]
GO



