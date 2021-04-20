create database db_rh;

use db_rh;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    cpf varchar(255) not null,
    cargo varchar(255) not null,
    salario float(10,3) not null,
    primary key (id)
);

insert into tb_funcionarios (nome,idade,cpf,cargo,salario) values ("Ana", 20, "123.456.789-90", "desenvolvedora android", 4.000);
insert into tb_funcionarios (nome,idade,cpf,cargo,salario) values ("Maria", 30, "321.654.987-12", "analista de TI", 1.500);
insert into tb_funcionarios (nome,idade,cpf,cargo,salario) values ("Carlos", 40, "987.654.321-34", "desenvolvedor web pleno", 10.000);
insert into tb_funcionarios (nome,idade,cpf,cargo,salario) values ("Pedro", 19, "102.938.475-60", "desenvolvedor web júnior", 2.000);
insert into tb_funcionarios (nome,idade,cpf,cargo,salario) values ("Larissa", 25, "456.325.578-27", "contadora", 2.500);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2.000;
select * from tb_funcionarios where salario < 2.000;

update tb_funcionarios set idade = 21 where id = 4;
