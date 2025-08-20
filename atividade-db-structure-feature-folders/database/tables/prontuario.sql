create table prontuario(
id int primary key auto_increment,
banco varchar(255) not null,
clinica int not null, acesso int not null, usuario int not null,
foreign key(clinica) references clinicas(id),
foreign key(acesso) references acessos(id),
foreign key(usuario) references usuarios(id)
);