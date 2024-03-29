CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE IF NOT EXISTS tb_produtos (
	id_prod int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(30),
    valor decimal(5,2),
    qtdEstoque int,
    id_cat int,
    FOREIGN KEY(id_cat) REFERENCES tb_categoria (id_categoria)
);

DESCRIBE tb_produtos;

CREATE TABLE IF NOT EXISTS tb_categoria (
	id_categoria int AUTO_INCREMENT PRIMARY KEY,
    tipo enum("ferramenta", "peça")    
);

DESCRIBE tb_categoria;

INSERT INTO tb_categoria (tipo) VALUES
('ferramenta'),
('peça');

INSERT INTO tb_produtos (nome, valor, qtdEstoque, id_cat) VALUES
('Martelo', 29.99, 10, 1),       -- ferramenta
('Chave de fenda', 12.50, 20, 1),-- ferramenta
('Parafuso', 0.50, 100, 2),      -- peça
('Porca', 0.25, 150, 2),         -- peça
('Alicate', 18.75, 15, 1),       -- ferramenta
('Parafusadeira', 89.99, 5, 1),  -- ferramenta
('Pino', 1.00, 200, 2),          -- peça
('Chave inglesa', 15.50, 8, 1);  -- ferramenta

SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;

SELECT tp.nome, tp.valor FROM tb_produtos AS tp WHERE tp.valor > 10;

SELECT tp.nome, tp.valor FROM tb_produtos AS tp WHERE tp.valor BETWEEN 	5 AND 15.50;

SELECT nome, valor, qtdEstoque FROM tb_produtos WHERE nome LIKE '%C%'; 

SELECT tp.nome, tp.valor, tp.qtdEstoque, tc.tipo 
FROM tb_produtos AS tp
JOIN tb_categoria AS tc
ON id_cat = id_categoria;

SELECT tp.nome, tp.valor, tp.qtdEstoque, tc.tipo 
from tb_produtos AS tp
JOIN tb_categoria AS tc
ON id_cat = id_categoria
WHERE tc.tipo = 'ferramenta';

