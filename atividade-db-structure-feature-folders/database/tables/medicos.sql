create table medicos(
id int primary key auto_increment,
numConselho varchar(255) not null,
modeloConsulta varchar(255) not null,
horarioAtendimento varchar(255) not null,
usuario int not null,
foreign key(usuario) references usuarios(id)
);