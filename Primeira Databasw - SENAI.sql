CREATE DATABASE senai; -- Criar um databse

USE senai; -- Selecionando database que vamos utilizar

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- INT inteiro
    -- Primary Key -> Indica Chave Primaria
    -- Not Null -> Nunca vai ser vazio
    -- Auto_Increment -> Auto adicionar novo numero
    nome VARCHAR(60),
    materia VARCHAR(30)
);

INSERT INTO professores (nome, materia) VALUES
('Arthur Rosa', 'Banco de Dados'), ('Samuel Bruce', 'Flutter'), ('Giovanni Vickng', 'React Native');

-- * -> Indica que estou buscando todas as colunas
SELECT * FROM professores;

-- Atualizar dados
-- Atualize a tabela professores, ajuste materia = back-end, onde o Id seja igual a 1

UPDATE professores SET materia = 'Back-end' WHERE id = 1;

-- WHERE -> if
DELETE FROM professores WHERE id = 1;

-- Criar tabela Aluno
-- (id, nome, idade)
-- Inserir 3 alunos

CREATE TABLE alunos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    idade INT
);

INSERT INTO alunos (nome, idade) VALUES
('Raphael', '18'), ('João', '18'), ('Vivianne', '19');
SELECT * FROM alunos;  

-- Deletar todos os dados
TRUNCATE TABLE alunos;

-- Deletar tabela
DROP TABLE alunos;

-- Deletar mais um ID
DELETE FROM alunos WHERE id IN (1,2,3);

-- Atualizar mais de uma ID
UPDATE alunos SET nome = 'Arthur', idade = 22 WHERE id IN (1,2,3);

-- Colunas - Modificar o tipo da coluna 
ALTER TABLE alunos
MODIFY COLUMN nome VARCHAR(40);

-- Adicionar nova coluna
ALTER TABLE alunos
ADD COLUMN matricula VARCHAR(10);

-- Deletar uma nova coluna
ALTER TABLE alunos
DROP COLUMN matricula;

-- Trocar o nome
ALTER TABLE alunos
CHANGE COLUMN novoNome nome VARCHAR(30);

-- Alterar o nome da tabela
ALTER TABLE alunos
RENAME TO estudantes;