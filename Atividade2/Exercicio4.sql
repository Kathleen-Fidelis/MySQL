create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50) not null,
ativo boolean not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco float not null,
qtdeEstoque int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria (descricao, ativo) values ("Bovino", true);
insert tb_categoria (descricao, ativo) values ("Suíno", true);
insert tb_categoria (descricao, ativo) values ("Aves", true);
insert tb_categoria (descricao, ativo) values ("Peixes", true);

select * from tb_categoria;

insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Alcatra", 51.00, 30, 1);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Bisteca", 25.00, 30, 2);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Filé de Frango", 17.00, 30, 3);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Filé de Merluza", 35.00, 30, 4);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Filé de Tilápia ", 39.99, 30, 4);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Cupim", 30.00, 30, 1);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Filé Mignon", 96.35, 30, 2);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Coxa de Frango", 14.99, 30, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";

select nome, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao = "Suíno";