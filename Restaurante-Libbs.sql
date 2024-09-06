CREATE DATABASE restaurantelibbs;
USE restaurantelibbs;

CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

INSERT INTO categorias (nome) VALUES
('Massas'), ('Carne');

CREATE TABLE produtos (
	id_produtos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(20),
    categoriaId INT,
    FOREIGN KEY (categoriaId) REFERENCES categorias (id_categoria)
);

INSERT INTO produtos (nome, preco) VALUES
('Macarrão', '20'), ('Costela', '50');

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO clientes (nome, email, telefone) VALUES
('Jorge', 'jjjorge@jorginho.com', '11940028922'), ('Torge', 'tjtorge@jorginho.com', '112345678901');

CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    clienteId INT,
    FOREIGN KEY (clienteId) REFERENCES clientes (id_cliente)
);

INSERT INTO pedidos (data_pedido, clienteId) VALUES
('2024-09-03', 2), ('1950-11-03', 1);

CREATE TABLE pagamentos (
	id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento VARCHAR(100),
    valor_pago INT,
    data_pagamento DATE,
	pedidoId INT,
    FOREIGN KEY (pedidoId) REFERENCES pedidos (id_pedido)
);

INSERT INTO pagamentos (metodo_pagamento, valor_pago, data_pagamento, pedidoId) VALUES
('Cartão', 500, '2005-05-23', 1), ('Dinheiro', 200, '2030-02-02', 2);

CREATE TABLE itensPedidos (
	id_itensPedido INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT,
    preco_unitario INT,
	pedidoId INT,
    produtoId INT,
    FOREIGN KEY (pedidoId) REFERENCES pedidos (id_pedido),
    FOREIGN KEY (produtoId) REFERENCES produtos (id_produtos)
);

INSERT INTO itensPedidos(quantidade, preco_unitario, pedidoId, produtoId) VALUES
(1,20,2,1), (3,50,1,2);

-- INNER JOIN
SELECT prod.nome, prod.preco, categorias.nome FROM produtos AS prod
INNER JOIN categorias ON prod.categoriaId = categorias.id_categoria;

-- Clientes -> Pedidos || Pedidos -> Clientes
SELECT cl.nome, cl.email, cl.telefone, pedidos.id_pedido, pedidos.data_pedido FROM clientes AS cl
INNER JOIN pedidos ON pedidos.clienteId = pedidos.clienteId;

-- Categorias -> Produtos -> ItensPedidos -> Pedidos
SELECT
	 categorias.nome,
     produtos.nome AS nomeProduto,
     itensPedidos.quantidade,
	 pedidos.data_pedido
FROM itensPedidos 
INNER JOIN produtos ON itensPedidos.produtoId = produtos.id_produtos
INNER JOIN categorias ON produtos.categoriaId = categorias.id_categoria
INNER JOIN pedidos ON itensPedidos.pedidoId = pedidos.id_pedido;


