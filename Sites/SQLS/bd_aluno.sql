create database bd_alunos;

use bd_alunos;

create table alunos(
rm int not null auto_increment,
nome varchar(30),
nota1 double,
nota2 double,
primary key(rm)
);

insert into alunos(nome, nota1, nota2)
values ('hagrid', 9.3, 7.6),
	   ('harry', 8.7, 5.8),
	   ('rony', 9.8, 6.5),
       ('hermione', 10, 10),
       ('luna', 9.5, 8.6);