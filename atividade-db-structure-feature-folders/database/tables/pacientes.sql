create table pacientes(
id int auto_increment primary key,
dataNasc date not null,
nFilhos int not null,
estadoCivil int not null,
usuario int not null,
foreign key(usuario) references usuarios(id)
);