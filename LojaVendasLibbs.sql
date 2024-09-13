CREATE DATABASE lojavendaslibbs;

-- Indicando banco de dados que vamos utilizar
USE lojavendaslibbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE produtos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(30) -- R$17,60
);

CREATE TABLE fornecedores (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(16)
);

CREATE TABLE funcionarios (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    ncarteira VARCHAR(30),
    salario INT
);

-- clientes, produtos, funcionarios, fornecedores
CREATE TABLE pedidos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idCliente INT,
    idProduto INT,
    idFuncionario INT,
    idFornecedor INT,
    
    -- FK (coluna atual) RF tabela (nome coluna)
    FOREIGN KEY (idCliente) REFERENCES clientes(id),
    FOREIGN KEY (idProduto) REFERENCES produtos(id),
	FOREIGN KEY (idFuncionario) REFERENCES funcionarios(id),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedores(id)
);

INSERT INTO clientes (nome, idade) VALUES
('Jorge', 27), ('Jorginho', 10), ('Jorjão', 60);

INSERT INTO produtos (nome, preco) VALUES
('Camiseta da Insider', 'R$120,00'), ('Tenis da Nike', 'R$620,00)'), ('Pulseira da Pandora', 'R$1.200,00');

INSERT INTO fornecedores (nome, cnpj) VALUES
('Bras', '21.323/0001-32'), ('Heisenberg', '43.355/0009-50'), ('Torge', '50.500/0005-55');

-- nome, cpf, ncarteira, salario
INSERT INTO funcionarios (nome, cpf, ncarteira, salario) VALUES
('Arthur Robert', '33333333333', '10001', '10'), ('Jorge Batista', '44444444444', '20032', '300'), ('Jorginho J.J', '45457745784', '64575', 1000);


-- SELECT * FROM, ids
-- INSERT INTO pedidos, 3
INSERT INTO pedidos (idCliente, idProduto, idFuncionario, idFornecedor) VALUES
(3, 2, 2, 1), (2, 1, 3, 2), (1, 3, 1, 3);

