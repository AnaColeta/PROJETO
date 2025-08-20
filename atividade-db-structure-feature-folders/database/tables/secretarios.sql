create table secretarios(
id int primary key auto_increment,
atendimento varchar(255) not null,
usuario int not null,
foreign key(usuario) references usuarios(id)
);