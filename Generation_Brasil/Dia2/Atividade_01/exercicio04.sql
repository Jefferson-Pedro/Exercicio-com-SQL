CREATE DATABASE db_cidade_das_carnes ;

CREATE TABLE IF NOT EXISTS tb_categorias (
	id_categoria int AUTO_INCREMENT PRIMARY KEY,
    tipo enum('vegetal', 'carne', 'enlatados')    
);

DESCRIBE tb_categorias;

CREATE TABLE tb_produtos (
	id_prod int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50),
    valor decimal(5,2),
    validade date,
	id_cat int,
    FOREIGN KEY (id_cat) REFERENCES tb_categorias(id_categoria)
);

DESCRIBE tb_produtos;

INSERT INTO tb_categorias (tipo) VALUES
('vegetal'),
('carne'),
('enlatados');

INSERT INTO tb_produtos (nome, valor, validade, id_cat) VALUES
('Cenoura', 2.50, '2024-04-01', 1),     -- vegetal
('Alface', 1.80, '2024-03-30', 1),       -- vegetal
('Carne de boi', 15.99, '2024-04-03', 2),-- carne
('Peito de frango', 12.50, '2024-04-02', 2),-- carne
('Sardinha enlatada', 4.75, '2025-01-15', 3), -- enlatados
('Milho enlatado', 3.20, '2025-03-20', 3),   -- enlatados
('Feijão enlatado', 5.50, '2025-02-10', 3), -- enlatados
('Atum enlatado', 6.80, '2025-04-30', 3);   -- enlatados

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 10;
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 and 10;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT c.tipo, p.nome, p.valor, p.validade
FROM tb_produtos AS p
JOIN tb_categorias AS c
ON id_cat = id_categoria;

SELECT c.tipo, p.nome, p.valor, p.validade
FROM tb_produtos AS p
JOIN tb_categorias AS c
ON id_cat = id_categoria
WHERE c.tipo = 'vegetal';





