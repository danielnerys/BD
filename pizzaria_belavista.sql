create table clientes (idcliente int not null auto_increment primary key,
nomecliente varchar(50) not null, email varchar(50) not null unique
,endereco varchar(50) not null, data_cadastro datetime default(current_date));

create table funcionarios (idfuncionario int not null auto_increment primary key, nomefuncionario varchar(50) not null,
 cargo varchar(15) not null, salario decimal(8,2) not null, data_admissao datetime default (current_date));
 
 create table produtos (idproduto int not null auto_increment primary key, categoria varchar(30) not null, preco double(8,2) not null
 , ativo boolean default true);