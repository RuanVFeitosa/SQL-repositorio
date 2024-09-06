-- Comentario em Banco de Dados
-- Criar um novo arquivo -> Ctrl + T
-- Ctrl + Shif + Enter -> Executa o codigo

-- Mostre permissões para root ( usuario ) localhost ( conexao )

SHOW GRANTS FOR 'novousuario'@'localhost';

-- Criar Usuarios
CREATE USER 'novousuario'@'localhost'
IDENTIFIED BY 'senha123';

-- Conceder Permissão
GRANT
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
TO 'novousuario'@'localhost';

-- Remover Permissões
REVOKE
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
FROM 'novousuario'@'localhost';

-- Deletar Usuario
DROP USER 'novousuario'@'localhost';

-- Criar nova DataBase