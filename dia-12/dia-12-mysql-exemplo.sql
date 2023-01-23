/* Criar um banco de dados do zero */

CREATE DATABASE empregados;

USE empregados;

CREATE TABLE detalhes_empregados (nome VARCHAR(20), sobrenome VARCHAR(20), data_contratacao DATE, salario DECIMAL);

LOAD DATA INFILE 'dados_empregados.csv' INTO TABLE detalhes_empregados


/* Exemplo prático usando Sakila */

-- Baixar o arquivo sakila database na página abaixo:
-- https://dev.mysql.com/doc/index-other.html

-- Seguir as instruções do link abaixo:
-- https://dev.mysql.com/doc/sakila/en/

-- Escolher o banco de dados no qual queremos trabalhar
USE sakila;

-- Mostrar todas as tabelas:
SHOW FULL TABLES;

-- Mostrar só as tabelas base:
SHOW FULL TABLES WHERE table_type = 'BASE TABLE';

-- Apresentar a estrutura de uma tabela:
DESCRIBE staff;

-- Conferir quem são os funcionários:
SELECT * FROM staff;

-- Sair da linha de comando do MySQL e retornar ao bash ou zsh
\q
