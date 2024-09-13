CREATE DATABASE operadores_libbs;

USE operadores_libbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT
);

CREATE TABLE empregados (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    salario VARCHAR(30)
);

CREATE TABLE produtos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    preco INT,
    quantidade INT
);

INSERT INTO clientes (nome,idade)
VALUES ('Jorge', 18), ('vitinho', 25), ('ana bia', 40);

INSERT empregados (nome, idade, salario)
VALUES ('viviane', 21, 'R$10.000,00'),
	   ('joão rosa', 41, 'R$2,00'),
       ('igor nakagima', 96, 'R$500,00');
       
INSERT produtos (nome, preco, quantidade)
VALUES ('torradeira', 4000, '5'),
	   ('celular', 7000, '3'),
       ('oculos de sol (lupa)', 90, '20')
       
       