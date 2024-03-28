CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE IF NOT EXISTS tb_categoria(
	id_categoria int AUTO_INCREMENT,
    tipo int,
    PRIMARY KEY (id_categoria)
);

ALTER TABLE tb_categoria MODIFY descricao varchar(50);
ALTER TABLE tb_categoria MODIFY tipo enum('doce', 'salgada');

DESCRIBE tb_categoria;

CREATE TABLE IF NOT EXISTS tb_pizzas(
	id_pizzas int AUTO_INCREMENT,
    sabor varchar(50),
    tam int,
    valor decimal(5,2),
    id_categoria int,
    PRIMARY KEY (id_pizzas),
	FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

DESCRIBE tb_pizzas;

INSERT INTO tb_categoria (descricao, tipo) VALUES
('Categoria 1', 'doce'),
('Categoria 2', 'salgada');

SELECT * FROM tb_categoria;

INSERT INTO tb_pizzas (sabor, tam, valor, id_categoria) VALUES
('Margherita', 1, 25.90, 2),
('Calabresa', 2, 30.50, 2), 
('Quatro Queijos', 1, 28.75, 2), 
('Portuguesa', 3, 35.20, 2),
('Chocolate', 2, 30.00, 1),
('Banana com Canela', 2, 28.00, 1),
('Romeu e Julieta', 3, 35.00, 1),
('Doce de Leite', 1, 25.00, 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 35;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 20 AND 35;

SELECT * FROM tb_pizzas WHERE sabor LIKE 'M%';

SELECT p.sabor,c.tipo, p.valor 
FROM tb_categoria as c
JOIN tb_pizzas as p
ON p.id_categoria = c.id_categoria;

SELECT p.sabor, c.tipo
FROM tb_pizzas AS p
JOIN tb_categoria AS c
ON p.id_categoria = c.id_categoria
WHERE c.tipo = 'doce';



