CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id_classe int auto_increment,
    tipo varchar (30),
    classificacao int,
    primary key(id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT,
    nome VARCHAR(30),
    sexo enum('M', 'F'),
    pontos INT,
    id_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

describe tb_classes;
describe tb_personagens;

INSERT INTO tb_classes (tipo, classificacao) VALUES
('Guerreiro', 1),
('Mago', 2),
('Arqueiro', 3),
('Ladrão', 4),
('Clerigo', 5);

INSERT INTO tb_personagens (nome, sexo, pontos, id_classe) VALUES
('Aragorn', 'M', 100, 1),
('Gandalf', 'M', 150, 2),
('Legolas', 'M', 120, 3),
('Bilbo', 'M', 80, 4),
('Frodo', 'M', 90, 5),
('Gimli', 'M', 110, 1),
('Sam', 'M', 95, 2),
('Pippin', 'M', 85, 3);

select * from tb_personagens;
select * from tb_classes;

select * from tb_personagens where pontos > 100;
select * from tb_personagens where pontos between 80 and 110;

select * from tb_personagens where nome like 'g%' or nome like'G%';

select tb_personagens.nome, tb_personagens.pontos, tb_classes.tipo 
from tb_personagens 
join tb_classes
on tb_classes.id_classe = tb_personagens.id_classe;

select p.nome, c.tipo  
from tb_personagens as p
join tb_classes as c
on c.id_classe = p.id_classe
where c.tipo = 'Arqueiro';






