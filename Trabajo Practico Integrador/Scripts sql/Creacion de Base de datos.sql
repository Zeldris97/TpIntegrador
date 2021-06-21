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

ALTER TABLE Peliculas
add unique (Nombre)

CREATE TABLE VerDespues (
ID int primary key identity (1,1) not null,
IdUsuario int foreign key references Usuario (ID),
IdPelicula int foreign key references Peliculas (ID)
)

ALTER TABLE Peliculas add constraint CHK_año check (Año > 1928 and año < YEAR (GETDATE()))

ALTER TABLE Usuario 
ADD administrador bit not null default (0)


--El procedimiento esta escrito pero todavia no lo cree. Primero quiero ver si puedo agregar imagenes con el control FILEUPLOAD

CREATE PROCEDURE spAgregarPelicula (
@NOMBREPELICULA varchar,
@SINOPSIS text,
@AÑO bigint,
@IDGENERO int,
@IDCATEGORIA int
--agregar imagen antes de ejecutar
)

AS 
BEGIN 
     INSERT INTO Peliculas (Nombre, Sinopsis,Año,IdGenero,IdCategorias) VALUES (@NOMBREPELICULA, @SINOPSIS, @AÑO, @IDGENERO,@IDCATEGORIA)
	 END



	 CREATE PROCEDURE spEliminarPelicula (
	 @IDPELICULA INT
	 )
	 AS
	 BEGIN 
	 DELETE FROM Peliculas where ID = @IDPELICULA
	 END

	 INSERT INTO Categorias (Nombre) VALUES ('Mejor pelicula')
	 INSERT INTO Categorias (Nombre) VALUES ('Mejor director')
	 INSERT INTO Categorias (Nombre) VALUES ('Mejor actor')
	 INSERT INTO Categorias (Nombre) VALUES ('Mejor actriz')
	 INSERT INTO Categorias (Nombre) VALUES ('Mejor guion original')

	 INSERT INTO Generos(Nombre) VALUES ('Accion')
	 INSERT INTO Generos(Nombre) VALUES ('Aventura')
	 INSERT INTO Generos(Nombre) VALUES ('Comedia')
	 INSERT INTO Generos(Nombre) VALUES ('Drama')
	 INSERT INTO Generos(Nombre) VALUES ('Terror')
	 INSERT INTO Generos(Nombre) VALUES ('Musical')
	 INSERT INTO Generos(Nombre) VALUES ('Suspenso')
	 INSERT INTO Generos(Nombre) VALUES ('Ciencia ficción')
	 INSERT INTO Generos(Nombre) VALUES ('Bélica')
	 INSERT INTO Generos(Nombre) VALUES ('Western')
