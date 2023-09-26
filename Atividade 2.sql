create database db_commerce;

use db_commerce;

create table tb_produtos_1(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
valor bigint,
marca varchar(255),
primary key (id)
);

insert into tb_produtos_1(nome,descricao,valor,marca) values ("tesoura","corta",10,"Faber Castell");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("tenis","calçado",1000,"Nike");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("lapís","pinta",5,"Faber Castell");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("celular","usar",4000,"Asus");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("carteira","dinheiro",20,"Boss");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("garrafa","água",2,"Garrafas ltda");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("pente","penteia",1,"Faber Castell");
insert into tb_produtos_1(nome,descricao,valor,marca) values ("alexa","solicita",150,"Amazon");

select * from tb_produtos_1 where valor > 500;
select * from tb_produtos_1 where valor < 500;

update tb_produtos_1 set nome = "cinto" where id = 1;

select * from tb_produtos_1;
