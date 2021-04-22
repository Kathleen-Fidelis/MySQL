create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, -- guerreiro, arqueiro, mago, ladrao, sacerdote
ativo boolean not null,
primary key (id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
ataque bigint not null,
defesa bigint not null,
armamento varchar(30) not null,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert tb_classe (descricao, ativo) values ("Guerreiro", true);
insert tb_classe (descricao, ativo) values ("Arqueiro", true);
insert tb_classe (descricao, ativo) values ("Mago", true);
insert tb_classe (descricao, ativo) values ("Ladrao", true);
insert tb_classe (descricao, ativo) values ("Sacerdote", true);

select * from tb_classe;

insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Arrow", 4000, 3000, "Espadas", 1);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Ártemis", 3000, 2000, "Arco e flecha", 2);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Clay", 4000, 2000, "Fogo, Gelo, Terra, Raios", 3);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Athenas", 5000, 2000, "Punhais", 4);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Derick", 1000, 4000, "Magias de luz", 5);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Gaia", 4000, 3000, "Espadas", 1);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Denver", 3000, 2000, "Arco e flecha", 2);
insert tb_personagens (nome, ataque, defesa, armamento, classe_id) values ("Clare", 4000, 2000, "Fogo, Gelo, Terra, Raios", 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where ataque between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

select nome, ataque, defesa, armamento, tb_classe.descricao as descricao_da_classe, tb_classe.ativo as estado_da_classe 
	from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select nome, ataque, defesa, armamento, tb_classe.descricao as descricao_da_classe, tb_classe.ativo as estado_da_classe 
	from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where descricao = "Arqueiro";
