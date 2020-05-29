create database bd_info;

use bd_info;

create table produtos(
cod int not null auto_increment,
nome_Prod varchar(15),
descricao varchar(20),
categoria int,
status_p varchar(10),
qtd int,
primary key(cod)
);

create table fornecedores(
cod int not null auto_increment,
cnpj int,
status_c varchar(10),
endereco varchar(50),
nome varchar(20),
primary key(cod)
);

create table clientes(
cod_cliente int not null,
nome varchar(20),
cpf int,
status_cli varchar(45),
endereco varchar(20),
primary key(cod_cliente)
);

create table vendedores(
cod_vend int not null,
nome varchar(20),
salario double,
comis double,
status_vend varchar(20),
primary key(cod_vend)
);

create table pedidos(
num int not null,
cod_vend int,
cod_cliente int,
dtE date,
primary key(num),
foreign key(cod_vend) references vendedores(cod_vend),
foreign key(cod_cliente) references clientes(cod_cliente)
);

create table fone_f(
fone_f int not null,
cod_fornecedor int,
primary key(fone_f),
foreign key(cod_fornecedor) references fornecedores (cod)
);

create table fone_c(
fone_c int not null,
cod_cliente int,
primary key(fone_c),
foreign key(cod_cliente) references clientes (cod_cliente)
);

insert into produtos(nome_prod, descricao, categoria, status_p, qtd) 
values('sjfdlksjf', 'fdsgfdgs', 90, 'ativo', 100),
	  ('khfkdsx', 'hfksjhsalkf', 13, 'desativado', 90),
      ('lksahfcikw', 'onskfdbs', 87, 'yo nao ligo', 80),
      ('jckfjksa', 'dhbfikwbvf', 57, 'i dont care', 70),
      ('hdsjfhijdshgf', 'jdksahfkz', 215, 'smurf', 60);
      
insert into fornecedores(cnpj, status_c, endereco, nome)
values(98777, 'ativado', 'rua haushaus num 7', 'shfolisah'),
	  (98778, 'desativado', 'rua shfsbv num 9', 'zlfjadslkgj'),
      (98779, 'inicializado', 'rua hdisahfdka num 19', 'safglkdjgk'),
      (98780, 'desligado', 'rua djzshdjashf num 89', 'hflkdshgli'),
      (98781, 'iadhlksa', 'rua dhsifh num 78','hfdjhf');
      
insert into clientes(cod_cliente, nome, cpf, status_cli, endereco)
values(0938, 'dikfhwlkg', 51468456201, 'bom', 'rua boa num 34'),
	  (0939, 'isadora', 09876543212, 'ruimmmm', 'rua dos mano num 49'),
      (0940,'ruahma', 45103698725, 'nao faco ideia', 'rua dos bolos num 5675'),
      (0941, 'lucia', 78065940312, 'djgksn', 'rua dos smurfs num 542'),
      (0942, 'julia', 465128714020, 'nhe', 'rua dos smurfados num 1546');
      
insert into vendedores(cod_vend, nome, salario, comis, status_vend)
values(5247, 'bdhsu', 2587.33, 4.99, 'chato'),
	  (5248, 'haushsai', 6398.44, 8.00, 'legal'),
      (5249, 'nboewaaa', 8476.20, 1.50,'smurfatico'),
      (5250, 'oamskd', 6437.90, 8.9, 'um smurf qualquer'),
      (5251, 'usloew', 9870.00, 4.9, 'awesome');
      
insert into pedidos(num, cod_vend, cod_cliente,dtE)
values(123, 5247, 0938, '30-09-1948'),
	  (124, 5248, 0939, '05-05-1979'),
      (125, 5249, 0940, '02-08-1500'),
      (126, 5250, 0941, '18-10-1879'),
      (127, 5251, 0942, '19-08-1969');
      
insert into fone_f(fone_f, cod_fornecedor)
values(52419685, 98777),
	  (45870251, 98778),
      (98572635, 98779),
      (97845021, 98780),
      (94521602, 98781);
      
insert into fone_c(fone_c, cod_cliente)
values(79807655, 0938),
	  (54983019, 0939),
      (95132499, 0940),
      (20165844, 0941),
      (45421468, 0942);
      
      
select * from pedidos;

select * from produtos;

select nome_Prod, categoria from produtos;

select nome_Prod, descricao, nome from produtos, fornecedores;

select nome_Prod, descricao, categoria, nome from produtos, fornecedores;

select v.nome, c.nome from vendedores v, clientes c;

select nome, fone_c from clientes, fone_c;

select nome from produtos order by preco;

select nome_Prod from produtos where status_p like 'desativado';

select * from produtos;

select * from fornecedores;

select * from clientes;

select * from vendedores;

select * from pedidos;

select * from fone_c;

select * from fone_f;

select * from vendedores where comis > 5;

select nome from fornecedores where status_c like 'desativado' order by nome asc;