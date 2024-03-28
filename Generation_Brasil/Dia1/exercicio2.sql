/*
Atividade 2
- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.
- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
- Insira nesta tabela no mínimo 8 dados (registros).
- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
- Ao término atualize um registro desta tabela através de uma query de atualização.
- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 
coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database ecommerce_generation;

create table produtos (
	id int auto_increment,
    nome varchar(30),
    preco decimal(3,2),
    estoque int,
    cor varchar (15),
    primary key (id)
);

describe produtos;
ALTER TABLE produtos MODIFY COLUMN preco DECIMAL(10,2);

INSERT INTO produtos (nome, preco, estoque, cor) VALUES 
('Camiseta', 29.99, 100, 'Azul'),
('Calça Jeans', 59.90, 50, 'Preto'),
('Tênis', 79.99, 30, 'Branco'),
('Boné', 19.50, 80, 'Vermelho'),
('Shorts', 39.95, 60, 'Verde'),
('Jaqueta', 99.75, 20, 'Cinza'),
('Meia', 9.99, 120, 'Azul Marinho'),
('Mochila', 89.50, 40, 'Rosa');

select * from produtos where preco > 50;
select * from produtos where preco < 50;

update produtos set estoque= 25 where id=2;

select * from produtos;



