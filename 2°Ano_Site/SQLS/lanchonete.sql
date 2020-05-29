CREATE DATABASE DB_LANCHONETE;

SHOW DATABASES;

USE DB_LANCHONETE; 

CREATE TABLE categoria
(
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR(30)
   
);

CREATE TABLE produto(
	id INT NOT NULL auto_increment, 
    nome VARCHAR(30) NOT NULL,
    preco FLOAT NOT NULL,
	quantidade INT,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id) /*chave estrangeira*/
);

INSERT INTO categoria( nome)
VALUES('lanche simples'),
	  ('lanche complexo'),
      ('salgado'),
      ('doce'),
      ('bebida');
      
INSERT INTO produto( nome, preco, quantidade, id_categoria)
VALUES('hamburguer', 25.00, 1000, 03),
	  ('chesseburguer', 29.00, 2000, 01),
      ('x-tudo', 35.00, 3000, 02),
      ('coca cola', 6.00, 4000, 05),
      ('paçocão', 2.50, 5000, 04);
      

/*DROP DATABASE DB_LANCHONETE /* APAGA O BANCO DE DADOS */