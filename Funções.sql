-- AS -> Apelido

-- Operadores Aritiméticos
SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 % 3 AS modulo; -- 10 % 3 = 1

-- Operadores de Compração
SELECT * FROM clientes WHERE idade = 25; -- Todo mundo tem
SELECT * FROM clientes WHERE idade != 25; -- Todo mundo não tem

SELECT * FROM produtos WHERE preco > 100; -- Maior
SELECT * FROM produtos WHERE preco < 50; -- Menor
SELECT * FROM produtos WHERE preco >= 500; -- Maior Igual
SELECT * FROM produtos WHERE preco <= 1000; -- Menor Igual
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 100; -- Esteja entre

SELECT * FROM clientes WHERE nome IN ('vitinho', 'roger'); -- Diversos
SELECT * FROM clientes WHERE nome LIKE ('ro%'); -- oger
SELECT * FROM clientes WHERE nome LIKE ('%o%'); -- vitinho %0 -- r% %ger
SELECT * FROM clientes WHERE nome LIKE ('%ger'); -- ro
SELECT * FROM clientes WHERE nome IS NULL; -- Selecionando quem é nulo

-- Operadores Lógicos
SELECT * FROM clientes WHERE idade > 50 AND idade < 25; -- &&
SELECT * FROM clientes WHERE idade > 50 OR idade < 25; -- ||
SELECT * FROM clientes WHERE NOT idade = 18; -- &&

-- Função de Agrecação
SELECT COUNT(*) FROM cliente; -- Contar as linhas dos banco
SELECT SUM(quantidade) FROM produtos; -- Somar
SELECT AVG(quantidade) FROM produtos; -- Média
SELECT MIN(quantidade) FROM produtos; -- Minimo
SELECT MAX(quantidade) FROM produtos; -- Maximo

-- Funções de String
SELECT CONCAT(nome, idade) FROM cliente; -- Concatenar
SELECT LOWER(nome) FROM cliente; -- Deixar tudo minusculo
SELECT UPPER(nome) FROM cliente; -- Deixar tudo maiusculo
SELECT SUBSTRING(nome, 5, 10) FROM cliente; -- Cortar palavra, inicio e fim

-- Função de Data e Hora
SELECT NOW(); -- Retorna a data e hora atual
SELECT CURDATE(); -- Retorna a data atual
SELECT CURTIME(); -- Retorna hora atual

-- Funções Matematicas
SELECT ABS(-534.25); -- Retorna um valor absoluto
SELECT CEIL(43.65); -- Arrenda para um momento inteiro
SELECT CEILING(43.65); -- Arrendonda para um numero inteiro

-- 43.45 -> 44
SELECT FLOOR(45.97); -- Arredonda para baixo
SELECT ROUND(45.44, 0); -- Arredondar com base nas casas decimais

-- 45.95 -> 46
-- 45.23 -> 45
SELECT SORT(); -- Raiz quadrada
