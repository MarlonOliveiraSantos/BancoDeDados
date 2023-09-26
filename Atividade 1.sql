use rh;

create table funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
experiencia int,
salario bigint,
primary key (id)
);

insert into funcionarios(nome,idade,experiencia,salario) values ("marlon",23,2,1900);
insert into funcionarios(nome,idade,experiencia,salario) values ("renan",33,7,3000);
insert into funcionarios(nome,idade,experiencia,salario) values ("romário",19,1,1700);
insert into funcionarios(nome,idade,experiencia,salario) values ("juliana",53,15,9000);
insert into funcionarios(nome,idade,experiencia,salario) values ("martinelli",43,17,5000);

select * from funcionarios where salario > 2000;
select * from funcionarios where salario < 2000;

update funcionarios set nome = "pedro" where id = 1;

select * from funcionarios;