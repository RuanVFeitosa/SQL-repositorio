CREATE DATABASE rosaplane;
USE rosaplane;

DROP DATABASE rosaplane;

CREATE TABLE destinos (
	idDestino INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomeDestino VARCHAR(100),
    pais VARCHAR(100),
    descricao VARCHAR(100)
);

CREATE TABLE pacotes (
	idPacotes INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idDestino INT,
    nomePacote VARCHAR(100),
    preco INT,
    dataInicio DATE,
    dataTermino DATE,
	FOREIGN KEY (idDestino) REFERENCES destinos(idDestino)
);

CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomeCliente VARCHAR(100),
    email VARCHAR(100),
    telefone INT,
    endereco VARCHAR(100)
);

CREATE TABLE reservas (
	idReserva INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	idCliente INT,
    idPacotes INT,
    dataReserva DATE,
    numeroPessoas INT,
    statusReserva VARCHAR(100),
    FOREIGN KEY (idCliente) REFERENCES cLiente(idCliente),
	FOREIGN KEY (idPacotes) REFERENCES pacotes(idPacotes)
);

INSERT INTO destinos (nomeDestino, pais, descricao) VALUES
("Vancouver", "Canada", "Um lugar que chove muito"), 
("Las Vegas", "Nevada", "O que fica em Las Vegas, fica em Las Vegas"), 
("Toquio", "Japão", "Arigatōgozaimasu | ありがとう");

INSERT INTO pacotes (idDestino, nomePacote, preco, dataInicio, dataTermino) VALUES
(1, "A volta no mundo em 80 dias", 3000, '2000-12-22',  '2024-12-22'  ), 
(2, "Raincouver", 1500, '2023-04-13', '2023-05-13'), 
(3, "Aposta Na Viagem", 2000, '2024-05-21', '2024-06-21');

INSERT INTO cliente (nomeCliente, email, telefone, endereco) VALUES
("Jorge", "jorge@jorge.com", 1140028922, "rua casa do jorge, 123"), 
("Fulano", "fulano@fulano.com", 1112345678, "rua fulano, 456"), 
("Seu Zé", "zeze@gmail.com", 1145678912, "rua do zeze, 789");

INSERT INTO reservas (idCliente, idPacotes, dataReserva, numeroPessoas, statusReserva) VALUES
( 2, 3, '2024-12-22', 40, "Confirmada"  ), 
( 2, 1, '2024-09-10', 10, "Cancelada"  ), 
( 3, 2, '2024-05-22', 5, "Pendente"  );

-- CREATE VIEW
CREATE VIEW dados_gerais AS
SELECT 
	cli.nomeCliente AS nomeCliente,
    des.nomeDestino AS nomeDestino,
    pac.nomePacote AS nomePacote,
    pac.preco AS preco,
    pac.dataInicio AS dataInicio,
    pac.dataTermino AS dataTermino,
    statusReserva AS statusReserva
    FROM reservas AS res
		INNER JOIN cliente AS cli ON res.idCliente = res.idCliente
		INNER JOIN pacotes AS pac ON res.idPacotes = res.idPacotes
		INNER JOIN destinos AS des ON pac.idDestino = pac.idDestino;
    
SELECT * FROM dados_gerais

