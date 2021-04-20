-- Criar um banco de dados
create database db_quitanda;

-- Acessa o banco de dados
use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco float not null,
primary key(id)
-- foreing key (marca_id) references tb_marcas (id) (exemplo do vídeo)
);

insert into tb_produtos (nome, preco) values ("mamao",2.50);
insert into tb_produtos (nome, preco) values ("laranja",1.50);

-- buscar um produto
select * from tb_produtos;
-- select * from tb_produtos where preco > 3;
-- select nome, preco from tb_produtos; (escolho as colunas que eu quero que mostre)
-- select * from tb_produtos where nome like "%ma%"; (nao preciso escrever o nome inteiro pra ele procurar e me trazer)

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao; -- apagar

delete from tb_produtos where id = 2;

update tb_produtos set preco = 10 where id = 3; -- editar

update tb_produtos set nome = "uva" where id = 3;