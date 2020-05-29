create database biblioteca;

use biblioteca;

create table livros
(id_livro int not null,
nome varchar(50) not null,
autor varchar(50),
preco double,
primary key(id)/*outa forma de declarar como chave primaria*/
);


create table cliente
(id_cliente int Primary Key,
nome varchar(50) not null,
telefone int
);

alter table livros/*Altera ou exclui colunas */
 drop column autor;/* exclui colunas*/
 
 Alter table livros 
 add column id_autor int not null;/* altera a tabela */
 
desc livros;

desc cliente;  /*exibe a estrutura da tabela*/

insert into clientes(id, nome, telefone) /* inserir dados na tabela*/
values (1,'Jorge',286869255),
	   (2,'Maria',559362475);


/* selecionar todos os regidtros*/                                                
 Select * from clientes;
 
 Delete from clientes where id = 2;
 
 create table livros_cliente(
 id_livro int not null,
 id_clientte int not null,
 data_dev varchar(20),
 primary Key (id_livro,id_cliente,data_dev),
 Foreign Key(id_livro) references livros(id_livro), /* foreign key = chave estrangeira*/
 Foreign Key(id_cliente) references cliente(id_cliente)
 );


drop table livros;/*excluir tabela*/

drop table clientes;



show tables;

