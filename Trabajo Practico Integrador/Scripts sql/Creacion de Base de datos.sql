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
Usuario Varchar (50) not null unique,
Contraseña Varchar (50) not null,
administrador bit not null default (0)
)


CREATE TABLE VerDespues (
ID int primary key identity (1,1) not null,
IdUsuario int foreign key references Usuario (ID),
IdPelicula int foreign key references Peliculas (ID)
)

ALTER TABLE Peliculas add constraint CHK_año check (Año > 1928 and año < YEAR (GETDATE()))








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


	 INSERT INTO Usuario (Nombre, Apellido, Email,Usuario,Contraseña,administrador) VALUES ('Agustin', 'Robles', 'agus123@gmail.com', 'Agustin', '1234', 1)

	 --STORED PROCESS--

	 CREATE PROCEDURE spAgregarPelicula (
@NOMBREPELICULA varchar,
@SINOPSIS text,
@AÑO bigint,
@IDGENERO int,
@IDCATEGORIA int,
@IDIMAGEN varchar
)

AS 
BEGIN 
     INSERT INTO Peliculas (Nombre, Sinopsis,Año,IdGenero,IdCategorias,Imagen) VALUES (@NOMBREPELICULA, @SINOPSIS, @AÑO, @IDGENERO,@IDCATEGORIA,@IDIMAGEN)
	 END



	 CREATE PROCEDURE spEliminarPelicula (
	 @IDPELICULA INT
	 )
	 AS
	 BEGIN 
	 DELETE FROM Peliculas where ID = @IDPELICULA
	 END




CREATE PROCEDURE sp_AgregarUsuario (
@NOMBREUSUARIO varchar (50),
@APELLIDOUSUARIO varchar (50),
@EMAILUSUARIO varchar (50),
@USERNAME varchar (50),
@CONTRASEÑAUSUARIO varchar (50),
@ADMINUSUARIO bit
)

as
begin
INSERT INTO Usuario (Nombre, Apellido, Email,Usuario,Contraseña,administrador) values (@NOMBREUSUARIO, @APELLIDOUSUARIO,@EMAILUSUARIO,@USERNAME,@CONTRASEÑAUSUARIO,@ADMINUSUARIO)
END


CREATE PROCEDURE sp_BuscarPeliculaPorNombre(
@NOMBREPELICULA varchar (100)
)
AS
BEGIN
select P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis, P.Imagen from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero
where P.Nombre = @NOMBREPELICULA
End

CREATE PROCEDURE sp_BuscarPeliculaPorCategoria(
@CATEGORIA varchar (100)
)
AS
BEGIN
select P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero
where C.Nombre = @CATEGORIA
End




CREATE PROCEDURE sp_BuscarPeliculaPorGenero(
@GENERO varchar (100)
)
AS
BEGIN
select P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis,P.Imagen from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero
where G.Nombre= @GENERO
End


CREATE PROCEDURE sp_BuscarPeliculaPorAño(
@AÑO bigint
)
AS
BEGIN
select P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis,P.Imagen from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero
where P.Año= @AÑO
End

CREATE PROCEDURE sp_AgregarVerDespues(
@IDUSUARIO int,
@IDPELICULA int
)
as 
begin 
begin try
insert into VerDespues(IdUsuario,IdPelicula) VALUES (@IDUSUARIO,@IDPELICULA)
end try
begin catch
RAISERROR ('La pelicula ya fue agregada', 16,1)
end catch
end



CREATE PROCEDURE sp_EliminarVerDespues(
@IDUSUARIO int,
@IDPELICULA int
)
as 
begin
delete from VerDespues where IdUsuario= @IDUSUARIO and IdPelicula = @IDPELICULA
end


CREATE PROCEDURE sp_MostrarVerDespues(
@IDUSUARIO INT
)
as
begin
select P.ID,P.Nombre,P.Año,G.Nombre as 'Genero'  from VerDespues V
inner join Peliculas P on P.ID= V.IdPelicula
inner join Generos G on G.ID = P.IdGenero
inner join Usuario U on U.ID=V.IdUsuario
where V.IdUsuario = @IDUSUARIO
end
