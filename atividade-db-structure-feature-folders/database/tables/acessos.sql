create table acessos(
id int primary key auto_increment,
fazerLogin varchar(255) not null,
fazerLogout varchar(255) not null,
triagem int not null,
foreign key(triagem) references triagens(id)
);