create database db_construindo_vidas;

use db_cidade_das_carnes;

create table tb_produtos_1 (
id bigint auto_increment,
valor float,
quantidade int,
estoque int,
nome varchar(255),
categorias_id bigint,
primary key(id)
);

create table tb_categorias_1(
id bigint auto_increment,
categoria varchar(255),
avaliacao int,
primary key(id)
);

alter table tb_produtos_1 add constraint fk_produtos_categorias_1
foreign key (categorias_id) references tb_categorias_1(id);

insert into tb_categorias_1(categoria,avaliacao) values ("hidráulica",3);
insert into tb_categorias_1(categoria,avaliacao) values ("hidráulica",5);
insert into tb_categorias_1(categoria,avaliacao) values ("hidráulica",1);
insert into tb_categorias_1(categoria,avaliacao) values ("madeira",4);
insert into tb_categorias_1(categoria,avaliacao) values ("madeira",0);


insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (46,2,10,"anel borracha",1);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (51,3,100,"bloqueador",2);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (90,1,500,"cano ponta azul",3);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (100,1,300,"bloqueador",2);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (200,2,100,"compensado medida 3",4);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (149,12,200,"compensado medida 2",4);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (52,32,300,"compensado medida 3",5);
insert into tb_produtos_1(valor,quantidade,estoque,nome,categorias_id) values (34,2,200,"compensado refinado",5);


select * from tb_produtos_1 where valor > 100.00;
select * from tb_produtos_1 where valor >= 70.00 and valor <= 150.00;
select * from tb_produtos_1 where nome like "%c%";

select * from tb_produtos_1
inner join tb_categorias_1 on tb_categorias_1.id = tb_produtos_1.categorias_id;

select * from tb_produtos_1
inner join tb_categorias_1 on tb_categorias_1.id = tb_produtos_1.categorias_id where categoria = "hidráulica";

select * from tb_produtos_1;
select * from tb_categorias_farmacia;







