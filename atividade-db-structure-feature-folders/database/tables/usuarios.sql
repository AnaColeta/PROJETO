create table usuarios(
id int primary key auto_increment,
nome varchar(255) not null,
cpf varchar(14) not null,
sexo enum('m','f') not null,
endereco varchar(255) not null,
status varchar(255) not null,
observacao varchar(255) not null,
telefone varchar(100) not null
);