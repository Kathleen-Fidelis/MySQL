create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco float not null,
    marca varchar(255) not null,
    cor varchar(255),
    qtdeEstoque bigint not null,
    primary key (id)
);

insert into tb_produtos (nome,preco,marca,qtdeEstoque) values ("Computador", 2400.00, "Samsung", 30);
insert into tb_produtos (nome,preco,marca,cor,qtdeEstoque) values ("iPhone XR", 3830.00, "Apple", "Branco", 30);
insert into tb_produtos (nome,preco,marca,qtdeEstoque) values ("PC Gamer", 3300.00, "HYDRAGAMER", 30);
insert into tb_produtos (nome,preco,marca,qtdeEstoque) values ("TV 32''", 1479.00, "LG", 30);
insert into tb_produtos (nome,preco,marca,cor,qtdeEstoque) values ("Fone de ouvido sem fio", 189.00, "Philco", "Preto", 30);
insert into tb_produtos (nome,preco,marca,cor,qtdeEstoque) values ("Caixa de som", 349.00, "JBL", "Azul", 30);
insert into tb_produtos (nome,preco,marca,cor,qtdeEstoque) values ("Galaxy S10", 3099.00, "Samsung", "Preto", 30);
insert into tb_produtos (nome,preco,marca,cor,qtdeEstoque) values ("AirPods", 1195.00, "Apple", "Branco", 30);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set cor = "Preto" where id = 6;
