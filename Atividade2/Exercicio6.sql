create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50) not null,
ativo boolean not null,
primary key(id)
);

create table tb_curso(
id bigint auto_increment,
nome varchar(50) not null,
preco float not null, 
vagas int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria (descricao, ativo) values ("Administração e Negócios", true);
insert tb_categoria (descricao, ativo) values ("Ciências Exatas", true);
insert tb_categoria (descricao, ativo) values ("Direito", true);
insert tb_categoria (descricao, ativo) values ("Informática e Internet", true);
insert tb_categoria (descricao, ativo) values ("Saúde", true);

select * from tb_categoria;

insert tb_curso (nome, preco, vagas, categoria_id) values ("Empreendedorismo", 24.90, 30, 1);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Engenharia", 90.00, 30, 2);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Direito Penal", 29.90, 30, 3);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Análise de Sistemas", 44.90, 30, 4);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Biomedicina", 99.90, 30, 5);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Química", 34.90, 30, 2);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Direito Civil", 24.90, 30, 3);
insert tb_curso (nome, preco, vagas, categoria_id) values ("Redes", 34.90, 30, 4);

select * from tb_curso;

select * from tb_curso where preco > 50.00;
select * from tb_curso where preco between 3.00 and 60.00;
select * from tb_curso where nome like "%j%";

select nome, preco, vagas, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
    
select nome, preco, vagas, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where descricao = "Informática e Internet";