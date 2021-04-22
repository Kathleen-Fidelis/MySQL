create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50) not null,
ativo boolean not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
tipo varchar(50),
preco float not null,
qtdeEstoque varchar(50) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria (descricao, ativo) values ("Medicamentos", true);
insert tb_categoria (descricao, ativo) values ("Saúde", true);
insert tb_categoria (descricao, ativo) values ("Cosméticos", true);
insert tb_categoria (descricao, ativo) values ("Higiene", true);
insert tb_categoria (descricao, ativo) values ("Infantil", true);

select * from tb_categoria;

insert tb_produto (nome, tipo, preco, qtdeEstoque, categoria_id) values ("Loratadina", "Comprimido", 11.95, 40, 1);
insert tb_produto (nome, tipo, preco, qtdeEstoque, categoria_id) values ("Suplemento Nutricional", "Comprimido", 60.00, 40, 2);
insert tb_produto (nome, tipo, preco, qtdeEstoque, categoria_id) values ("Shampoo", "Líquido", 26.53, 40, 3);
insert tb_produto (nome, tipo, preco, qtdeEstoque, categoria_id) values ("Sabonete", "Barra", 3.00, 40, 4);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Fralda", 50.00, 40, 5);
insert tb_produto (nome, tipo, preco, qtdeEstoque, categoria_id) values ("Vick", "Xarope", 20.50, 40, 1);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Mamadeira", 20.50, 40, 5);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Hidratante Labial", 15.79, 40, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%b%";

select nome, tipo, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, tipo, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao = "Medicamentos";