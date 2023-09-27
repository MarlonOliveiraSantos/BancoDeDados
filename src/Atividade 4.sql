create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_produtos (
id bigint auto_increment,
valor float,
quantidade int,
estoque int,
nome varchar(255),
categorias_id bigint,
primary key(id)
);

create table tb_categorias(
id bigint auto_increment,
animal varchar(255),
avaliacao int,
primary key(id)
);

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (categorias_id) references tb_categorias(id);

insert into tb_categorias(animal,avaliacao) values ("aves",3);
insert into tb_categorias(animal,avaliacao) values ("aves",5);
insert into tb_categorias(animal,avaliacao) values ("aves",1);
insert into tb_categorias(animal,avaliacao) values ("vaca",4);
insert into tb_categorias(animal,avaliacao) values ("vaca",0);


insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (46,2,10,"frango",1);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (51,3,100,"frango",2);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (90,1,50,"frango",3);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (100,1,30,"frango",2);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (13,2,1,"picanha",4);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (14,12,200,"maminha",4);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (52,32,300,"acem",5);
insert into tb_produtos(valor,quantidade,estoque,nome,categorias_id) values (34,2,200,"lagarto",5);


select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor >= 50.00 and valor <= 150.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where animal = "aves";

select * from tb_produtos;
select * from tb_categorias_farmacia;







