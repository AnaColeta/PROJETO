create table filaCadastro(
id int primary key auto_increment,
usuario int not null,
foreign key(usuario) references usuarios(id)
);