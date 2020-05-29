create database escola;/* criar base de dados*/

use escola;/*selecionar base de dados*/

show databases;/*exibir base de dados*/

drop database escola;/*excluir base de dados*/

/*QUANDO EXCLUIR, TEM QUE CRIAR DE NOVO, POR FAVOR NÉ?*/ 

create database escola;/* criar base de dados*/

use escola;/*selecionar base de dados*/

create table alunos(
  RM int Primary Key, /* chave primaria faz junção de not null e unique*/
  nome varchar(50) not null,/* varchar,conjunto de char, = caracteres; (números)= quntidade máxima de caracteres
  not null = não nulo ou seja obrigatório ser preenchido;*/
  idade int not null,
  RG int unique /*valor único*/
  );/*cria tabela*/

show tables;