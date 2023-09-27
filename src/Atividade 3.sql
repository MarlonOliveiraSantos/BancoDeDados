create database db_farmacia_bem_estar;

use db_pizzaria_legal;

create table tb_produtos (
id bigint auto_increment,
valor float,
quantidade int,
nome varchar(255),
empresa varchar(255),
categorias_id bigint,
primary key(id)
);

create table tb_categorias_farmacia(
id bigint auto_increment,
categoria varchar(255),
avaliacao int,
primary key(id)
);

alter table tb_produtos add constraint fk_produtos_categorias_farmacia
foreign key (categorias_id) references tb_categorias_farmacia(id);

insert into tb_categorias_farmacia(categoria,avaliacao) values ("cosméticos",3);
insert into tb_categorias_farmacia(categoria,avaliacao) values ("cosméticos",5);
insert into tb_categorias_farmacia(categoria,avaliacao) values ("cosméticos",1);
insert into tb_categorias_farmacia(categoria,avaliacao) values ("remédio",4);
insert into tb_categorias_farmacia(categoria,avaliacao) values ("remédio",0);


insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (46,2,"perfume","amazon",1);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (51,3,"creme","amazon",2);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (90,1,"sabão","amazon",3);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (100,1,"shampoo","amazon",2);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (13,2,"Antralina","amazon",4);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (14,12,"Acetazolamida","amazon",4);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (52,32,"Alfuzosina","amazon",5);
insert into tb_produtos(valor,quantidade,nome,empresa,categorias_id) values (34,2,"Antralina","amazon",5);


select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor >= 5.00 and valor <= 60.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos
inner join tb_categorias_farmacia on tb_categorias_farmacia.id = tb_produtos.categorias_id;

select * from tb_produtos
inner join tb_categorias_farmacia on tb_categorias_farmacia.id = tb_produtos.categorias_id where categoria = "cosméticos";

select * from tb_produtos;
select * from tb_categorias_farmacia;







