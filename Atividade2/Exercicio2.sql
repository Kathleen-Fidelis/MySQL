create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(30) not null, -- salgada, doce, broto, borda recheada
ativo boolean not null,
primary key(id)
);

create table tb_pizza(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal not null,
qtdePizza int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (descricao, ativo) values ("Salgada", true);
insert tb_categoria (descricao, ativo) values ("Doce", true);
insert tb_categoria (descricao, ativo) values ("Broto salgado", true);
insert tb_categoria (descricao, ativo) values ("Broto doce", true);
insert tb_categoria (descricao, ativo) values ("Salgada c/ borda recheada", true);

select * from tb_categoria;

insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Mussarela", 35.00, 30, 1);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Calabresa", 35.00, 30, 1);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Camarão", 70.00, 30, 1);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Romeu e Julieta", 50.00, 30, 2);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Nutella c/ morango", 45.00, 30, 2);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Portuguesa", 24.00, 30, 3);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Chocolate c/ banana", 25.00, 30, 4);
insert tb_pizza (nome, preco, qtdePizza, categoria_id) values ("Frango c/ catupiry e borda c/ cheddar", 40.00, 30, 5);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where nome like "%c%"; 

select nome, preco, qtdePizza, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria 
	from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select nome, preco, qtdePizza, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria 
	from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where descricao = "Salgada";