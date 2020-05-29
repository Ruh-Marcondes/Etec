create database DB_loja;

use DB_loja;

CREATE TABLE produto (
    cod_prod INT PRIMARY KEY,
    nome_prod VARCHAR(50) NOT NULL,
    tamanho INT NOT NULL,
    qtd INT NOT NULL,
    preco INT NOT NULL,
    status_prod VARCHAR(50) not null
);

create table pedido(
num int Primary key,
data_ped varchar (15)  not null
);

create table cliente(
cod_cli int primary key,
nome_cli varchar (50) not null,
 endereco_cli varchar (50) not null,
 fone_cli int not null,
 limite double not null
);
 create table categoria(
 cod_cate int primary key,
 nome_cate varchar (50) not null,
 sigla varchar (4) not null
 );
 create table fone_cliente(
 fone_cli int primary key, 
 Foreign Key(fone_cli) References cliente(fone_cli)
 );
  
  create table produto_pedido(
  fone_cli int not null,
  num int primary key ,
  Foreign key ( fone_cli ) references cliente( fone_cli),
  foreign key (num) references cliente (num)
  );
  
  insert into produto(cod_prod, nome_prod, tamanho, qtd, preco, status_prod)
  values (1,'camiseta','p',55, 40, 'ativo'), 
		(2 , 'calça','40', 20, 50,'ativo'),
        (3, 'short','36', 23, 45,'ativo'),
        (4, 'blusa', 'm', 45, 25, 'ativo');
        
         insert into cliente (cod_cli, nome_cli, endereco_cli, fone_cli, limite)
  values (10,'Ruahma','mogi guaçu', 35698758,155), 
		(20, 'Sthéfany','mogi guaçu', 35698565, 155),
        (30, 'Leonardo','mogi mirim', 35258965, 120);
        
        
         insert into categoria (cod_cate, nome_cate, sigla)
  values (100,'camiseta','star'), 
		(200, 'calça','star'),
        (300, 'short','star');
        
         insert into fone_cli (fone_cli)
  values(35956856), 
		(52562356),
        (52635897),
        (19556856),
        (19568745);
        
insert into produto_pedido (fone_cli,num)
  values(359556856,10), 
		(789654122,20),
        (987654332,30),
        (58746932,40),
        (25874169,50),
		(75395136,60),
        (21478569,70),
        (32145789,80);
        
        
        select  nome_cli, cod_cli from cliente;
		select * from pedido;
		select  nome_prod, tamanho _from produto;                         
		select * from categoria;
		select * from produto_pedido;                         

        
        
       