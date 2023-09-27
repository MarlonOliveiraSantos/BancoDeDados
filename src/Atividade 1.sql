create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens(
id bigint auto_increment,
poder int,
defesa int,
nome varchar(255),
idade varchar(255),
classes_id bigint,
primary key(id)
);

create table tb_classes(
id bigint auto_increment,
classe varchar(255),
habilidade varchar(255),
primary key(id)
);

insert into tb_classes(classe,habilidade) values ("arqueiro","atirar");
insert into tb_classes(classe,habilidade) values ("cavaleiro","golpe duplo");
insert into tb_classes(classe,habilidade) values ("mago","rajada");
insert into tb_classes(classe,habilidade) values ("necromante","invocar");
insert into tb_classes(classe,habilidade) values ("tanque","resistencia");

insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (2006,3,"marcos","20",1);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (2006,4,"renan","30",2);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (3000,1,"natan","21",3);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (2006,4,"rodrigo","32",4);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (4000,6,"natanael","14",5);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (100,6,"emerson","17",1);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (10000,1001,"marlon","23",4);
insert into tb_personagens(poder,defesa,nome,idade,classes_id) values (30,0,"ronaldo","56",3);

alter table tb_personagens add classes_id bigint;

alter table tb_personagens add constraint fk_personagens_classes
foreign key (classes_id) references tb_classes(id);

select * from tb_personagens where poder > 2000;
select * from tb_personagens where defesa >= 1000 and defesa <= 2000;
select * from tb_personagens where nome like "%C%";

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classes_id where classe = "arqueiro";

select * from tb_personagens;
select * from tb_classes;



