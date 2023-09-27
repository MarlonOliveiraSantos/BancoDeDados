create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_cursos_2 (
id bigint auto_increment,
valor float,
quantidade int,
estoque int,
nome varchar(255),
categorias_id bigint,
primary key(id)
);

create table tb_categorias_2(
id bigint auto_increment,
categoria varchar(255),
avaliacao int,
primary key(id)
);

alter table tb_cursos_2 add constraint fk_produtos_categorias_2
foreign key (categorias_id) references tb_categorias_2(id);

insert into tb_categorias_2(categoria,avaliacao) values ("java",3);
insert into tb_categorias_2(categoria,avaliacao) values ("java",5);
insert into tb_categorias_2(categoria,avaliacao) values ("java",1);
insert into tb_categorias_2(categoria,avaliacao) values ("comunicação",4);
insert into tb_categorias_2(categoria,avaliacao) values ("comunicação",0);


insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (500,2,10,"curso de collections",1);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (300,3,100,"curso de stream",2);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (500,1,500,"curso de vetores",3);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (200,1,300,"curso de arrays",2);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (2000,2,100,"curso de comunicação",4);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (149,12,200,"curso de comunicação não violenta",4);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (670,32,300,"curso de oratória",5);
insert into tb_cursos_2(valor,quantidade,estoque,nome,categorias_id) values (345,2,200,"curso de reunião em scrum",5);


select * from tb_cursos_2 where valor > 500.00;
select * from tb_cursos_2 where valor >= 600.00 and valor <= 1000.00;
select * from tb_cursos_2 where nome like "%j%";

select * from tb_cursos_2
inner join tb_categorias_2 on tb_categorias_2.id = tb_cursos_2.categorias_id;

select * from tb_cursos_2
inner join tb_categorias_2 on tb_categorias_2.id = tb_cursos_2.categorias_id where categoria = "Java";









