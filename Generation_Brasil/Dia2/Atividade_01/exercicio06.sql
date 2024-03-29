CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE IF NOT EXISTS tb_categorias(
	id_categoria int AUTO_INCREMENT PRIMARY KEY,
    categoria enum('frontend', 'backend', 'fullstack')
);

DESCRIBE tb_categorias;

CREATE TABLE IF NOT EXISTS tb_cursos(
	id_curso int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50),
    valor decimal(5,2),
    carga_horaria varchar(5),
    id_cat int,
    FOREIGN KEY(id_cat) REFERENCES tb_categorias (id_categoria)
);

DESCRIBE tb_cursos;

INSERT INTO tb_categorias (categoria) VALUES
('frontend'),
('backend'),
('fullstack');

INSERT INTO tb_cursos (nome, valor, carga_horaria, id_cat) VALUES
('Curso de HTML e CSS', 99.99, '40h', 1),        -- frontend
('Curso de JavaScript', 129.99, '60h', 1),      -- frontend
('Curso de Node.js', 149.99, '80h', 2),         -- backend
('Curso de Python', 159.99, '100h', 2),         -- backend
('Curso de React', 179.99, '120h', 1),          -- frontend
('Curso de PHP', 139.99, '80h', 2),             -- backend
('Curso de Angular', 199.99, '100h', 1),        -- frontend
('Curso de Fullstack', 299.99, '160h', 3);      -- fullstack

SELECT * FROM tb_cursos WHERE valor > 120;

SELECT * FROM tb_cursos WHERE valor BETWEEN 100 AND 150;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT tc.nome, tc.valor, tc.carga_horaria, tcat.categoria
FROM tb_cursos AS tc
JOIN tb_categorias AS tcat
ON id_cat = id_categoria;

SELECT tc.nome, tc.valor, tc.carga_horaria, tcat.categoria
FROM tb_cursos AS tc
JOIN tb_categorias AS tcat
ON id_cat = id_categoria
WHERE tcat.categoria = 'backend';

