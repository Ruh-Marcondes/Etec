create database pedido;

use pedido;

create table cliente
(cod_cli int primary key,
nome_cli varchar(50) not null,
endereco varchar(100),
cidade varchar(50),
cep int,
uf varchar(3) not null);
/*pode usar : primary key(cod_cli), depois do fim da tabela*/

create table vendedor
(cod_vend int primary key,
nome_vend varchar(50),
sal_fixo double,
faixa_comissao varchar(2));

create table produto
(cod_prod int primary key,
unid_prod varchar(3) not null,
desc_prod varchar(50) not null,
val_unit double not null);

insert into cliente(cod_cli, nome_cli, endereco, cidade, cep, uf)
values (1000, 'Supermercado Carrefour', 'Av. das americas', 'Rio de Janeiro', 20000001, 'RJ'),
	   (2000, 'Supermercado Baratão', 'Rua Rolando Lero', 'Rio de Janeiro', 20000002, 'RJ'),
       (3000, 'Supermercado Arariboia', 'Rua Itaoca', 'Niteroi', 21000000, 'RJ');
       
insert into vendedor(cod_vend, nome_vend, sal_fixo, faixa_comissao)
values(11, 'Paulo Alberto', 1500, 'B'),
	  (13, 'Ana Cristina', 2100, 'a'),
      (15, 'Cassia Andrade', 900, 'c');
    
insert into produto(cod_prod, unid_prod, desc_prod, val_unit)
values(100, 'kg', 'chapa de aço', 2.5),
      (200, 'kg', 'cimento', 4.5),
      (300, 'kg', 'parafuso 3.0X10.5mm', 2),
      (400, 'm', 'fio plástico', 1);
      
desc produto;
desc vendedor;
desc cliente;

/* Alter table-- Alterar tabela -- nome table  Modify atributo tipo change uf estado varchar (10)*/

/* aula dia 23/10*/
create table pedido(
num_ped  int not null,
prazo_enter int not null,
cod_cli int not null,
cod_vend int not null,
Primary Key(num_ped),
Foreign Key(cod_cli) References cliente(cod_cli),
Foreign Key(cod_vend) References vendedor (cod_vend)
);                     

create table item_pedido(
num_ped int not null,
cod_prod int not null,
qtd_ped int not null,
Primary Key(num_ped),
Foreign Key(num_ped) References pedido(num_ped),
Foreign Key(cod_prod) References produto(cod_prod)
);

/* aula dia 30/10 */

/* Exercicio 1*/
select * from cliente;
select * from  vendedor;
select * from produto;                         

/*exercicio 2*/
select desc_prod, unid_prod, val_unit from produto;

/* ex3*/
 select  cidade, uf from cliente;
 
 /*ex 4 */
 
 select num_ped from pedido;
 /**/
 select 
show tables;
