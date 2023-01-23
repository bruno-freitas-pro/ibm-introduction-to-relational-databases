/* Criar tabelas */

CREATE TABLE estados_br
    (
    id char (2) PRIMARY KEY NOT NULL,
    nome varchar(30)
    );

CREATE TABLE clientes (
    id_cliente CHAR (6) PRIMARY KEY NOT NULL,
    nome VARCHAR (25) NOT NULL,
    sobrenome VARCHAR (25) NOT NULL,
    email VARCHAR (40),
    cidade VARCHAR (30),
    pais CHAR (2)
    );

/* Editar estruturas */

-- Adicionar uma coluna
ALTER TABLE clientes
    ADD COLUMN telefone_fixo BIGINT;

-- Alterar o tipo de dados
ALTER TABLE clientes
    ALTER COLUMN telefone_fixo SET DATA TYPE CHAR (13);

-- Alterar o nome de uma coluna
ALTER TABLE nome_da_tabela
    RENAME COLUMN nome_antigo TO nome_novo;

-- Alterar várias informações de uma coluna - opção 1
ALTER TABLE nome_da_tabela
    CHANGE COLUMN nome_antigo nome_novo tipo_de_dado_novo;

-- Alterar várias informações de uma coluna - opção 2
ALTER TABLE nome_da_tabela
    MODIFY nome_da_coluna tipo_de_dado_novo;

-- Alterar várias informações de uma coluna - opção 3 (MSSQL)
ALTER TABLE nome_da_tabela
    ALTER COLUMN nome_da_coluna tipo_de_dado_novo;

/* Apagar estruturas e conteúdos */

-- Apagar uma coluna
ALTER TABLE clientes
    DROP COLUMN telefone_fixo;

-- Apagar uma tabela
DROP TABLE clientes;

-- Apagar o conteúdo de uma tabela (truncar)
TRUNCATE TABLE clientes
    IMMEDIATE;
