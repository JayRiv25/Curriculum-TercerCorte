create database curriculum
go

use curriculum
go

create table informacion
(
idnombre varchar (50) primary key,
cedula int,
estado varchar (20),
telefono int,
correo varchar (50),
direccion varchar(500),
idobjetivos varchar,
idexperiencias varchar,
idhabilidades varchar,
idestudios varchar,
);

create table objetivos
(
idobjetivos varchar (350) primary key,
texto1 varchar (350)not null,
texto2 varchar (350)not null,
texto3 varchar (350)not null,
texto4 varchar (350)not null,
texto5 varchar (350)not null,
texto6 varchar (350)not null,
idnombre varchar(50)not null,
foreign key (idnombre) references informacion(idnombre),
);

create table estudios
(
idestudios varchar (100) primary key,
año int,
logro varchar (100) not null,
institucion varchar(100) not null,
ubicacion varchar (50) not null,
fecha int not null,
idnombre varchar(50)not null,
foreign key (idnombre) references informacion(idnombre),
);

create table experiencia
(
idexperiencias varchar (500) primary key,
texto1 varchar (500) not null,
texto2 varchar (500) not null,
texto3 varchar (500) not null,
texto4 varchar (500) not null,
texto5 varchar (500) not null,
texto6 varchar (500) not null,
idnombre varchar(50)not null,
foreign key (idnombre) references informacion(idnombre),
);

create table habilidades
(
idhabilidades varchar(150) primary key,
texto1 varchar(150) not null,
texto2 varchar(150) not null,
texto3 varchar(150) not null,
texto4 varchar(150) not null,
texto5 varchar(150) not null,
texto6 varchar(150) not null,
idnombre varchar(50)not null,
foreign key (idnombre) references informacion(idnombre),
);