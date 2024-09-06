CREATE DATABASE walmartsenai;
USE walmartsenai;

CREATE TABLE produto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    quantidade INT
);

CREATE TABLE cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE fornecedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedido (
	id INT PRIMARY KEY AUTO_INCREMENT,
	idProduto INT,
    idCliente INT,
    idFornecedor INT, 
    
    FOREIGN KEY (idProduto) REFERENCES produto(id),
    FOREIGN KEY (idCliente) REFERENCES cliente(id),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedor(id)
);

-- 5 clientes
INSERT INTO cliente (nome, idade) VALUES
('Ruan', 19), ('João', 19), ('Vivianne', 19), ('Raphael', 18), ('Samuel', 18);

-- 5 Produtos
INSERT INTO produto (nome, quantidade) VALUES
('Raphael', 1), ('Celular', 20), ('PC', 19), ('Perefericos', 50), ('Peças', 18);

-- 5 fornecedores
INSERT INTO fornecedor (nome) VALUES
('Jorge'), ('Jorginho'), ('Jorjão'), ('Torge'), ('Porge');

-- Inumeros pedidos
INSERT INTO pedido (idProduto, idCliente, idFornecedor) VALUES
(1, 2, 5), (2, 5, 1), (3, 2, 4), (4, 1, 2), (5, 3, 2);

-- Clientes -> Pedidos
SELECT cl.nome, cl.idade, pedido.idCliente
FROM cliente AS cl
INNER JOIN pedido ON pedido.idCliente = cl.id;

-- INNER JOIN
-- Produto -> Pedido -> Fornecedor - Cliente
SELECT pr.nome, pr.quantidade, fornecedor.nome
FROM produto AS pr
INNER JOIN pedido ON pedido.idProduto = pr.id
INNER JOIN fornecedor ON fornecedor.idPedido = fornecedor.id
INNER JOIN cliente ON fornecedor.idPedido = cl.id;
