CREATE DATABASE OscarWinners
go
USE OscarWinners
go

CREATE TABLE Generos (
ID smallint primary key identity (1,1) not null,
Nombre Varchar (20) not null
)

CREATE TABLE Categorias (
ID smallint primary key identity (1,1) not null,
Nombre varchar (50) not null
)

CREATE TABLE Peliculas(
ID int primary key identity (1,1) not null,
Nombre Varchar (100) not null,
IdGenero smallint not null foreign key references Generos (ID),
IdCategorias smallint not null foreign key references Categorias (ID),
Año Bigint not null,
Sinopsis Text not null,
Imagen varchar (50) null
)

CREATE TABLE Usuario(
ID int primary key identity (1,1) not null,
Dni bigint not null,
Nombre Varchar (50) not null,
Apellido varchar (50) null,
Email Varchar (50) not null,
Usuario Varchar (50) not null,
Contraseña Varchar (50) not null,
)

CREATE TABLE VerDespues (
ID int primary key identity (1,1) not null,
IdUsuario int foreign key references Usuario (ID),
IdPelicula int foreign key references Peliculas (ID)
)

ALTER TABLE Peliculas add constraint CHK_año check (Año > 1928 and año < YEAR (GETDATE()))