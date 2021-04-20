create database db_escola;
use db_escola;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    matricula bigint not null,
    tipo varchar(30) not null,
    turno varchar(20) not null,
    nota float not null,
    primary key (id)
);

insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Ana Beatriz", 123, "Presencial", "Manhã", 9);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Marina", 456, "EAD", "Tarde", 7);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Carlos", 789, "Semi-Presencial", "Noite", 8);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("João", 098, "Presencial", "Manhã", 10);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Maria", 765, "EAD", "Noite", 4);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Gabriella", 432, "Semi-Presencial", "Manhã", 6);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Pedro", 210, "EAD", "Noite", 5);
insert into tb_alunos (nome,matricula,tipo,turno,nota) values ("Brenda", 109, "Presencial", "Tarde", 9);

select * from tb_alunos;

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 8 where id = 5;