create database pneusLtda;

use pneusLtda;

create table clientes(
codCli int null,
nome varchar(50),
endereco varchar(60),
estado char(2),
constraint pk_clientes primary key(codCli)
);

create table notaFiscal(
numero char(9) not null,
serie char(3) not null,
codCli int not null,
data date not null,
cancelada char(1) not null,
constraint pk_notaFiscal primary key(numero),
constraint fk_clientes foreign key(codCli) references clientes(codCli) 
);

create table pneus(
codPneu int not null,
descricao varchar(50),
medidas varchar(15),
preco decimal(10,2) not null,
ativo char(1) not null,
constraint pk_pneus primary key(codPneu)
);

create table itens(
numero char(9) not null, 
serie char(3) not null,
item smallint not null
);