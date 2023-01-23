/* Criação de chave primária */

-- Designar chave primária - método 1
CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    ...
    editora TEXT NOT NULL);

-- Designar chave primária - método 2
CREATE TABLE livros (
    id_livro INT NOT NULL UNIQUE,
    ...
    editora TEXT NOT NULL
    PRIMARY KEY (id_livro)
    );

-- Designar chave primária a uma tabela existente
ALTER TABLE livros
    ADD PRIMARY KEY (id_livro, ISBN);

/* Criação de chave estrangeira */

-- Chave estrangeira sem ações paralelas
CREATE TABLE copias (
    id_copia INT NOT NULL,
    id_livro INT NULL,
    ...
    CONSTRAINT fk_livro_copiado FOREIGN KEY (id_livro)
        REFERENCES livros(livro_id)
        ON UPDATE NO ACTION);

-- Chave estrangeira com ações paralelas (cascata)
CREATE TABLE copias (
    id_copia INT NOT NULL,
    id_livro INT NULL,
    ...
    CONSTRAINT fk_livro_copiado FOREIGN KEY (id_livro)
        REFERENCES livros(livro_id)
        ON DELETE CASCADE);

/* Criação de índices */

-- Criação de índices comuns
CREATE INDEX nomes_livros
    ON livros(titulo);

-- Criação de índices exclusivos (sem duplicatas)
CREATE UNIQUE INDEX id_livro_unico
    ON livros(id_livro);
