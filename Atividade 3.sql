create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
faltas int,
turma varchar(255),
nota float,
primary key (id)
);

insert into tb_alunos(nome,idade,faltas,turma,nota) values ("marlon",16,4,"A",5.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("andressa",17,0,"B",3.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("camila",18,10,"B",7.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("felipe",18,0,"B",10.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("luana",16,5,"A",5.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("matheus",15,3,"C",7.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("alex",16,2,"A",10.0);
insert into tb_alunos(nome,idade,faltas,turma,nota) values ("flavio",16,1,"A",0.0);

select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set nome = "fernando" where id = 1;

select * from tb_alunos;
