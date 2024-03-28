CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE IF NOT EXISTS tb_categoria (
	id_categoria int AUTO_INCREMENT,
	tipo enum('controlado', 'naoControlado'),
    tarja enum('preta', 'vermelha', 'livre'),
    PRIMARY KEY (id_categoria)
);

DESCRIBE tb_categoria;

CREATE TABLE IF NOT EXISTS tb_produto (
	id_prod int AUTO_INCREMENT,
    nome varchar(30),
    preco decimal (5,2),
    id_cat int,
    PRIMARY KEY (id_prod),
    FOREIGN KEY (id_cat) REFERENCES tb_categoria (id_categoria)
);

DESCRIBE tb_produto;

-- Inserir registros na tabela tb_categoria
INSERT INTO tb_categoria (tipo, tarja) VALUES
('controlado', 'preta'),
('naoControlado', 'vermelha'),
('naoControlado', 'livre');

-- Inserir registros na tabela tb_produto
INSERT INTO tb_produto (nome, preco, id_cat) VALUES
('Produto A', 10.50, 1), -- controlado, preta
('Produto B', 20.75, 2), -- naoControlado, vermelha
('Produto C', 15.20, 1), -- controlado, livre
('Produto D', 30.00, 2), -- naoControlado, vermelha
('Produto E', 25.90, 2), -- naoControlado, livre
('Produto F', 18.50, 1), -- controlado, preta
('Produto G', 22.30, 3), -- controlado, livre
('Produto H', 27.80, 3); -- naoControlado, vermelha

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 20.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 5 AND 20;

SELECT * FROM tb_produto WHERE nome LIKE '%C%';

SELECT p.nome, p.preco, c.tipo
FROM tb_produto AS p
JOIN tb_categoria AS c
ON id_cat = id_categoria;

SELECT p.nome, c.tipo
FROM tb_produto AS p
JOIN tb_categoria AS c
ON id_cat = id_categoria
WHERE c.tipo = 'controlado';
 



