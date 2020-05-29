create database bd_emp;

use bd_emp;

create table EMPR
(matr int not null auto_increment,
nome varchar(12) not null,
sobrenome varchar(15) not null,
dept int,
fone varchar(14),
dinadim date,
cargo varchar(10),
niveled decimal,
sexo char(1),
datanas date,
salario decimal(9,2),
bonus decimal(9,2),
comis decimal(9,2),
primary key (matr),
foreign key (DEPT) references DEPT(dCodigo)
);

create table DEPT
(dCodigo int not null auto_increment,
dNome varchar(36) not null,
constraint dCodigo primary key (dCodigo)
);

create table PROJETO
(pCodigo int not null auto_increment,
pNome varchar(24) not null,
dCodigo int not null,
resp int not null,
equipe int,
dataini date,
datafim date,
pSuper varchar(6),
primary key (pCodigo), 
foreign key (dCodigo) references DEPT(dCodigo)
);

insert into EMPR( nome, sobrenome, fone, dinadim, cargo, niveled, sexo, datanas, salario, bonus, comis) 
values('isa', 'lalla', '55-19-95842925', '17-09-1980', 'ngfkingidn', 5, 'f', '25-05-1936', 52004, 2658, 46),
	  ('lais', 'ieiei', '55-19-95265989', '04-07-2006', 'djhishfdis', 8, 'f', '22-10-1989', 62203, 568, 693),
      ('mari', 'hduish', '55-19-95255025', '25-08-1981', 'hhisawunnn', 9, 'f', '20-06-1958', 15478, 1568, 73);
      
insert into DEPT(dNome) 
values('hdsaifg'),
	  ('fksahkf'),
      ('hgfkjdhg');
      
INSERT INTO PROJETO (pNome, resp, equipe, dataini, datafim, pSuper,dCodigo) 
VALUES ('fkdhlkfhds', 74, 5, '12-05-1980', '02-07-2000', 'hskahs',1),
	   ('hdjsahdfkj', 265, 4, '25-06-1999', '09-07-2013', 'lkvcoe',2),
	   ('hfsaujgfk', 452, 8, '14-02-1950', '05-06-1999', 'lumjce',3);
      
SELECT e.sobrenome, e.nome, d.dnome, e.datanas, e.dinadim, e.salario
FROM dept d, empr e
WHERE d.dcodigo = e.dept AND e.salario >30000 ;   
      
      
SELECT d.dcodigo, d.dnome 'departamento', e.nome 'gerente'
FROM dept d, empr e
WHERE d.dcodigo = e.dept AND e.cargo = 'gerente';


SELECT e.sobrenome, e.nome, d.dnome, e.datanas, e.dinadim, e.salario
FROM dept d, empr e
WHERE d.dcodigo = e.dept AND e.salario < 40000 ORDER BY e.sobrenome ASC, e.nome ASC;

SELECT * FROM DEPT where dCodigo like 'A00';

SELECT dCodigo, dNome FROM DEPT where dNome like 'serviço';

SELECT matr, sobrenome, dept, fone FROM EMPR; -- where dCodigo 

-- ex7

SELECT sobrenome, salario, dept FROM EMPR where salario > 2000 order by sobrenome;

SELECT * FROM EMPR, DEPT where dNome like 'A' order by matr, nome, sobrenome;

SELECT * FROM EMPR where sexo like 'm' and salario < 1600 order by matr, sobrenome, salario;
