create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
valor float,
tamanho int,
nome varchar(255),
regiao varchar(255),
primary key(id)
);

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255),
chef varchar(255),
primary key(id)
);

alter table tb_pizzas add categorias_id bigint;

alter table tb_pizzas add constraint fk_pizzas_categorias
foreign key (categorias_id) references tb_categorias(id);


insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (46,2,"peperone","itália",3);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (80,1,"marguerita","alemanhã",4);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (46,2,"4 queijos","itália",4);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (41,1,"atum","frança",3);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (80,2,"chocolate","alemanhã",2);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (20,3,"doce de leite","itália",1);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (20,3,"abacaxi","frança",1);
insert into tb_pizzas(valor,tamanho,nome,regiao,categorias_id) values (48,2,"ninho","itália",2);


insert into tb_categorias(categoria,chef) values ("doce","marcelo");
insert into tb_categorias(categoria,chef) values ("doce","rodrigo");
insert into tb_categorias(categoria,chef) values ("salgada","pedro");
insert into tb_categorias(categoria,chef) values ("salgada","rogério");


select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor >= 50.00 and valor <= 100.00;
select * from tb_pizzas where nome like "%m%";

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id where categoria = "doce";

select * from tb_pizzas;
select * from tb_categorias;







