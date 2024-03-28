/*ATIVIDADE 01
 - Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa.
 - Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
 - Insira nesta tabela no mínimo 5 dados (registros).
 - Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
 - Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
 - Ao término atualize um registro desta tabela através de uma query de atualização.
 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
 no repositório que você criou sobre Banco de dados.*/
 
create table colaboradores(
	id int auto_increment,
    nome varchar(30) not null,
    email varchar (50),
    primary key (id)
);

alter table colaboradores add salario decimal(8,2);
describe colaboradores;

insert into colaboradores(nome, email, salario) values ("Jefferson", "jefferson@exemple.com", 2500.75);
insert into colaboradores(nome, email, salario) values ("Anna", "anna@exemple.com", 4000.00);
insert into colaboradores(nome, email, salario) values ("Nathalia", "nathalia@exemple.com", 3500.86);
insert into colaboradores(nome, email, salario) values ("Yuri", "yuri@exemple.com", 5000.32);
insert into colaboradores(nome, email, salario) values ("Kelly", "kelly@exemple.com", 4600.16);

ALTER TABLE colaboradores MODIFY COLUMN salario DECIMAL(10,2);

select * from colaboradores;

select * from colaboradores where salario > 2000.00;
select * from colaboradores where salario < 2000.00;

update colaboradores set nome="Jefferson Pedro" where id=1;
select * from colaboradores;

