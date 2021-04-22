create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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

insert tb_categoria (descricao, ativo) values ("Pisos e Revestimentos", true);
insert tb_categoria (descricao, ativo) values ("Eletrodomésticos", true);
insert tb_categoria (descricao, ativo) values ("Material de Construção", true);
insert tb_categoria (descricao, ativo) values ("Material Hidráulico", true);
insert tb_categoria (descricao, ativo) values ("Metais e Acessórios", true);

select * from tb_categoria;

insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Piso de Porcelanato", 74.89, 30, 1);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Fogão Cooktop", 200.00, 30, 2);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Bloco", 1.00, 30, 3);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Chuveiro Elétrico", 112.00, 30, 4);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Torneira c/ Purificador ", 171.99, 30, 5);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Geladeira", 4364.00, 30, 2);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Cimento", 30.00, 30, 3);
insert tb_produto (nome, preco, qtdeEstoque, categoria_id) values ("Areia", 4.00, 30, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";

select nome, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select nome, preco, qtdeEstoque, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao = "Material de Construção";