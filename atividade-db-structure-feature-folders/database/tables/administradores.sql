create table administradores(
id int primary key auto_increment,
setor varchar(255) not null,
usuario int not null,
foreign key(usuario) references usuarios(id)
);