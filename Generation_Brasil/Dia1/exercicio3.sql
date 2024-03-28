/*
Atividade 3

- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
- Insira nesta tabela no mínimo 8 dados (registros).
- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
- Ao término atualize um registro desta tabela através de uma query de atualização.
- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 
coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database escola_generation;

use escola_generation;

create table estudantes (
	id int auto_increment,
    nome varchar(50),
    peso decimal(3,1),
    turno varchar(10),
    idade int,
    primary key(id)
);

INSERT INTO estudantes (nome, peso, turno, idade) 
VALUES
('Maria', 55.5, 'Manhã', 20),
('João', 68.3, 'Tarde', 22),
('Ana', 62.7, 'Noite', 21),
('Pedro', 70.0, 'Manhã', 23),
('Mariana', 58.9, 'Tarde', 19),
('Carlos', 65.2, 'Noite', 20),
('Julia', 52.4, 'Manhã', 21),
('Rafael', 71.8, 'Tarde', 22);

select * from estudantes where idade > 20;
select * from estudantes where idade < 20;

update estudantes set idade = 18 where id= 4;

select * from estudantes;






