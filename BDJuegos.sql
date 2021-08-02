CREATE DATABASE BDJuegos
ON
(
NAME = BDJuegos,
FILENAME = 'C:\TIF_LAB\BDJuegos.mdf'-- Cambien el directorio
)
GO

USE BDJuegos
GO

CREATE TABLE Desarrolladores(
Nombre_Des VARCHAR(20) NOT NULL,
Codigo_Des CHAR(10) NOT NULL,
Estado_Des BIT DEFAULT '1' NOT NULL

CONSTRAINT PK_Desarrolladores PRIMARY KEY(Codigo_Des),
CONSTRAINT UQ_Desarrolladores UNIQUE (Nombre_Des)
)
GO

CREATE TABLE Distribuidoras (
Nombre_Dis VARCHAR(20) NOT NULL,
Codigo_Dis CHAR(10) NOT NULL,
Estado_Dis BIT DEFAULT '1' NOT NULL,

CONSTRAINT PK_Distribuidoras PRIMARY KEY (Codigo_Dis),
CONSTRAINT UQ_Distribuidoras UNIQUE (Nombre_Dis)
)
GO

CREATE TABLE Juegos(        ---facu acordate q aca hubo cambios xd
Nombre_J VARCHAR(50) NOT NULL,
Codigo_J CHAR(10) NOT NULL,
PU_J DECIMAL (8,2) NOT NULL,
CodigoDes_J CHAR(10) NOT NULL,
CodigoDis_J CHAR(10) NOT NULL,
Descuento_J INT  DEFAULT '0' NULL,  --*
Descripcion_J VARCHAR(300) NOT NULL,
Fecha_Lanzamiento_J DATE NOT NULL,
Imagen_J VARCHAR(70) NULL,
Estado_J BIT DEFAULT '1' NOT NULL

CONSTRAINT PK_Juegos PRIMARY KEY (Codigo_J),
CONSTRAINT FK_Juegos_Distribuidoras FOREIGN KEY (CodigoDis_J) REFERENCES Distribuidoras(Codigo_Dis),
CONSTRAINT FK_Juegos_Desarrolladores FOREIGN KEY (CodigoDes_J) REFERENCES Desarrolladores(Codigo_Des),
CONSTRAINT UQ_Juegos UNIQUE (Nombre_J)
)
GO

CREATE TABLE Categorias(
Nombre_Cat VARCHAR(20) NOT NULL,
Codigo_Cat CHAR(10) NOT NULL,

CONSTRAINT PK_Categorias PRIMARY KEY(Codigo_Cat)
)
GO

CREATE TABLE CategoriasXJuegos
(
CodigoCat_CxJ CHAR(10) NOT NULL,
CodigoJuego_CxJ CHAR(10) NOT NULL,

CONSTRAINT PK_CategoriasXJuegos PRIMARY KEY(CodigoCat_CxJ, CodigoJuego_CxJ),
CONSTRAINT FK_CategoriasXJuegos_Juegos FOREIGN KEY(CodigoJuego_CxJ) REFERENCES Juegos(Codigo_J),
CONSTRAINT FK_CategoriasXJuegos_Categorias FOREIGN KEY (CodigoCat_CxJ) REFERENCES Categorias(Codigo_Cat)
)
GO

CREATE TABLE Keys
(
CodigoJuego_K CHAR(10) NOT NULL,
Serie_K CHAR(10) NOT NULL,
Estado_K bit DEFAULT '1' NOT NULL

CONSTRAINT PK_Keys PRIMARY KEY(Serie_K),
CONSTRAINT FK_Keys_Juegos FOREIGN KEY(CodigoJuego_K) REFERENCES Juegos(Codigo_J),
)
GO

CREATE TABLE Usuarios
(
ID_U CHAR(10) NOT NULL,
User_U VARCHAR(20) NOT NULL,
Nombres_U VARCHAR(40) NOT NULL,
Apellidos_U VARCHAR(40) NOT NULL,
Email_U VARCHAR(30) NOT NULL,
Password_U VARCHAR(30) NOT NULL,
Telefono_U VARCHAR(30) NULL,
Fecha_Nac_U date NULL,
Administrador_U BIT DEFAULT '0'  NOT NULL,
Estado_U bit DEFAULT '1'  NOT NULL

CONSTRAINT PK_Usuarios PRIMARY KEY(ID_U),
CONSTRAINT UQ_Usuarios UNIQUE (User_U, Email_U)
)
GO

CREATE TABLE Metodos_Pago(
ID_MP CHAR(10) NOT NULL,
Nombre_MP VARCHAR(30) NOT NULL,
Estado_MP bit DEFAULT '1' NOT NULL

CONSTRAINT PK_Metodos_Pago PRIMARY KEY (ID_MP),
CONSTRAINT UQ_Metodos_Pago UNIQUE(Nombre_MP)
)
GO

CREATE TABLE MetodosxUsuarios(
ID_MP_MxU CHAR(10) NOT NULL,
ID_Usuario_MxU CHAR(10) NOT NULL,
Nro_Tarjeta_MxU VARCHAR(16) Not NULL,
Email_MxU VARCHAR(30) NOT NULL,
Clave_Seguridad_MxU VARCHAR(4) NOT NULL,
Fecha_Vencimiento_MxU date NOT NULL,
DNI_MxU VARCHAR(8) NOT NULL,
Nombres_MxU VARCHAR (40) NOT NULL,
Apellidos_MxU VARCHAR (40) NOT NULL,
Telefono_MxU VARCHAR(30) NOT NULL,
Direccion_MxU varchar(40) NOT NULL,
CodigoPostal_MxU varchar(5) NOT NULL,
Estado_MxU BIT DEFAULT '1' NOT NULL

CONSTRAINT PK_MetodosxUsuarios PRIMARY KEY(Nro_Tarjeta_MxU, ID_Usuario_MxU),
CONSTRAINT FK_MetodosxUsuarios_Metodos_Pago FOREIGN KEY(ID_MP_MxU) REFERENCES Metodos_Pago (ID_MP),
CONSTRAINT FK_MetodosxUsuarios_Usuarios FOREIGN KEY(ID_Usuario_MxU) REFERENCES Usuarios (ID_U)
)
GO




CREATE TABLE Ventas
(
ID_V CHAR(10) NOT NULL,
ID_Usuario_V CHAR(10) NOT NULL,
Nro_Tarjeta_V VARCHAR(16) Not NULL,
ID_MetodoPago_V CHAR(10) NOT NULL,
Fecha_V DATE NOT NULL,
PrecioTotal_V DECIMAL (8,2) DEFAULT '0' NOT NULL, 
CONSTRAINT PK_Ventas PRIMARY KEY (ID_V),
CONSTRAINT FK_Ventas_MetodosxUsuarios FOREIGN KEY (Nro_Tarjeta_V ,ID_Usuario_V) REFERENCES MetodosxUsuarios (Nro_Tarjeta_MxU, ID_Usuario_MxU)
)
GO

CREATE TABLE DetalleVentas
(
ID_DV CHAR(10) NOT NULL,
ID_Venta_DV CHAR(10) NOT NULL,
SerieKey_DV CHAR(10) NOT NULL,
CodJuego_DV Char(10) NOT NULL,
Precio_DV DECIMAL(8,2) NOT NULL,

CONSTRAINT PK_DetalleVentas PRIMARY KEY(ID_DV),
CONSTRAINT FK_DetalleVentas_Ventas FOREIGN KEY (ID_Venta_DV) REFERENCES Ventas(ID_V),
CONSTRAINT FK_DetalleVentas_Keys FOREIGN KEY(SerieKey_DV) REFERENCES Keys(Serie_K),
CONSTRAINT FK_DetalleVentas_Juegos FOREIGN KEY(CodJuego_DV) REFERENCES Juegos(Codigo_J)
)
GO

--PROCEDIMIENTOS ALMACENADOS--
CREATE PROCEDURE spAgregar_Desarrolladores
@Nombre VARCHAR(20)
AS
INSERT INTO Desarrolladores (Nombre_Des, Codigo_Des) VALUES (@Nombre, CONCAT('DES-',concat(left('00000', 5-len(((select count(Codigo_Des)FROM Desarrolladores)+1)) ), ((SELECT count(Codigo_Des)FROM Desarrolladores)+1))))
GO

CREATE PROCEDURE spAgregar_Distribuidoras
@Nombre VARCHAR(20)
AS
INSERT INTO Distribuidoras (Nombre_Dis,  Codigo_Dis) VALUES (@Nombre, CONCAT('DIS-',concat(left('00000', 5-len(((SELECT count(Codigo_Dis)FROM Distribuidoras)+1)) ), ((SELECT count(Codigo_Dis)FROM Distribuidoras)+1))))
GO

CREATE PROCEDURE spAgregar_Juego
@Nombre VARCHAR(50), @Precio DECIMAL(8,2), @Codigo_Des CHAR(10), @Codigo_Dis CHAR(10), @Descuento DECIMAL(8,2), @Descripcion VARCHAR(500), @Fecha DATE
AS
INSERT INTO Juegos (Nombre_J, Codigo_J, PU_J, CodigoDes_J, CodigoDis_J, Descuento_J, Descripcion_J, Fecha_Lanzamiento_J) VALUES (@Nombre, 
CONCAT('G-',concat(left('00000000', 8-len(((SELECT count(Codigo_J)FROM Juegos)+1)) ), ((SELECT count(Codigo_J)FROM Juegos)+1))),
@Precio, @Codigo_Des, @Codigo_Dis, @Descuento, @Descripcion, @Fecha)
GO

CREATE PROCEDURE spAgregar_Categoria
@Nombre VARCHAR(20), @Codigo CHAR(10)
AS
INSERT INTO Categorias (Nombre_Cat, Codigo_Cat) VALUES (@Nombre, @Codigo)
GO

CREATE PROCEDURE spAgregar_CategoriaxJuego
@CodigoCat CHAR(10), @CodigoJue CHAR(10)
AS
INSERT INTO CategoriasXJuegos(CodigoCat_CxJ, CodigoJuego_CxJ) VALUES(@CodigoCat, @CodigoJue)
GO

CREATE PROCEDURE spAgregar_Keys
@CodJuego CHAR(10), @Serie CHAR(10)
AS
INSERT INTO Keys(CodigoJuego_K, Serie_K) VALUES (@CodJuego, @Serie)
GO

CREATE PROCEDURE spAgregar_Usuarios
@User VARCHAR(20) ,@Nombres VARCHAR(40),@Apellidos VARCHAR(40), @Mail VARCHAR(30), @Password VARCHAR(30), @Telefono VARCHAR(30), @Fecha DATE
AS
INSERT INTO Usuarios(ID_U, User_U, Nombres_U, Apellidos_U, Email_U, Password_U, Telefono_U, Fecha_Nac_U) 
VALUES (CONCAT('U-',concat(left('00000000', 8-len(((SELECT count(ID_U)FROM Usuarios)+1)) ), ((SELECT count(ID_U)FROM Usuarios)+1))), @User, @Nombres, @Apellidos, @Mail, @Password, @Telefono, @Fecha)
GO

CREATE PROCEDURE spAgregar_Administradores
@User VARCHAR(20) ,@Nombres VARCHAR(40),@Apellidos VARCHAR(40), @Mail VARCHAR(30), @Password VARCHAR(30), @Telefono VARCHAR(30), @Fecha DATE
AS
INSERT INTO Usuarios(ID_U, User_U, Nombres_U, Apellidos_U, Email_U, Password_U, Telefono_U, Fecha_Nac_U, Administrador_U) 
VALUES (CONCAT('U-',concat(left('00000000', 8-len(((SELECT count(ID_U)FROM Usuarios)+1)) ), ((SELECT count(ID_U)FROM Usuarios)+1))), @User, @Nombres, @Apellidos, @Mail, @Password, @Telefono, @Fecha, '1')
GO

CREATE PROCEDURE spAgregar_MetodoPago
@Nombre VARCHAR(30)
AS
INSERT INTO Metodos_Pago (ID_MP, Nombre_MP)
VALUES (concat('MET', (select count(ID_MP)FROM Metodos_Pago)+1),@Nombre)
GO

create PROCEDURE sp_Agregar_MetodoXUsuario
@id_mp CHAR(10), @id_usuario CHAR(10), @nro VARCHAR(16), @mail VARCHAR(30), @clave_seg VARCHAR(4), @fecha DATE, @dni VARCHAR(8), @nombres VARCHAR(40), @apellidos VARCHAR(40), @direccion varchar(40), @CodigoPostal varchar(5), @Telefono varchar(30)
AS
INSERT INTO MetodosxUsuarios (ID_MP_MxU, ID_Usuario_MxU, Nro_Tarjeta_MxU, Email_MxU, Clave_Seguridad_MxU, Fecha_Vencimiento_MxU, DNI_MxU, Nombres_MxU, Apellidos_MxU, Direccion_MxU, CodigoPostal_MxU, Telefono_MxU)
VALUES(@id_mp, @id_usuario, @nro, @mail, @clave_seg, @fecha, @dni, @nombres, @apellidos, @direccion, @CodigoPostal, @Telefono)
GO

CREATE PROCEDURE sp_Agregar_Ventas
@id_usuario CHAR(10), 
@nro_tarjeta VARCHAR(16), 
@fecha DATE
AS
INSERT INTO Ventas (ID_V, ID_Usuario_V, Nro_Tarjeta_V, ID_MetodoPago_V, Fecha_V)
VALUES (
CONCAT('V-',concat(left('00000000', 8-len(((SELECT count(ID_V)FROM Ventas)+1)) ), 
((SELECT count(ID_V)FROM Ventas)+1))), 
@id_usuario,
@nro_tarjeta, 
(SELECT Metodos_Pago.ID_MP FROM Metodos_Pago INNER JOIN MetodosxUsuarios ON MetodosxUsuarios.ID_MP_MxU = Metodos_Pago.ID_MP WHERE Nro_Tarjeta_MxU = @nro_tarjeta),
@fecha)
GO

create PROCEDURE sp_Agregar_DetalleVentas
@codjuego CHAR(10)
AS
INSERT INTO DetalleVentas(ID_DV, ID_Venta_DV,  CodJuego_DV, SerieKey_DV, Precio_DV)
VALUES ((SELECT count(ID_Venta_DV) FROM DetalleVentas)+1, (SELECT TOP 1 ID_V FROM Ventas ORDER BY ID_V DESC), @codjuego, (SELECT TOP 1 Serie_K FROM Keys WHERE CodigoJuego_K=@codjuego AND Estado_K = 1), 
    (select case
            when Descuento_J=0
            then PU_J
            else PU_J*(Descuento_J/100)
            end
from juegos WHERE Codigo_J=@codjuego))
GO

CREATE PROCEDURE spModificar_Juego @Nombre 
varchar(50), @Codigo char(10), @Precio decimal(8,2), @Codigo_Des char(10), @Codigo_Dis char(10), @Descuento int, @Fecha date, @Estado bit, @Descripcion varchar(300)   
AS   
UPDATE Juegos set Nombre_J = @Nombre, PU_J = @Precio, CodigoDes_J = @Codigo_Des, CodigoDis_J = @Codigo_Dis, Descuento_J = @Descuento, Fecha_Lanzamiento_J= @Fecha, Estado_J = @Estado, Descripcion_J = @Descripcion   
WHERE @Codigo = Juegos.Codigo_J 
GO 

CREATE PROCEDURE spModificar_Usuario
@ID char(10), @User VARCHAR(20) , @Nombres VARCHAR(40), @Apellidos VARCHAR(40), @Mail VARCHAR(30), @Password VARCHAR(30), @Telefono VARCHAR(30), @Fecha DATE
as
update Usuarios set User_U=@User, Nombres_U=@Nombres, Apellidos_U=@Apellidos, Email_U=@Mail, Password_U=@Password, Telefono_U=@Telefono, Fecha_Nac_U=@Fecha
where ID_U=@ID
go

CREATE PROCEDURE spModificar_Contraseña
@ID char(10), @Contraseña varchar(30)
AS
UPDATE Usuarios SET Password_U=@Contraseña
WHERE ID_U=@ID
GO
--Juego mas vendido
create PROCEDURE sp_Top_Seller
AS
SELECT TOP(1) J.Nombre_J, count(DV.ID_DV) as CuantosVendimos FROM Juegos as J
INNER JOIN DetalleVentas as DV on DV.CodJuego_DV = J.Codigo_J
GROUP BY J.Nombre_J
ORDER BY CuantosVendimos DESC
GO

--Edad promedio usuarios normales
CREATE PROCEDURE sp_Edad_Promedio
AS
SELECT AVG((year(getdate()) - year(U.Fecha_Nac_U))) as EDAD_PROMEDIO FROM Usuarios as U
WHERE U.Estado_U = 1 AND U.Administrador_U = 0
GO

--Precio promedio de los juegos
CREATE PROCEDURE sp_Precio_Promedio
AS
SELECT AVG(PU_J) as Precio_Promedio FROM Juegos as J
GO

--Cantidad de usuarios activos
CREATE PROCEDURE sp_Usuarios_Activos
AS
SELECT count(u.ID_U) as UsuariosActivos FROM Usuarios as U WHERE u.Estado_U = 1
GO 

--------TRIGGERS-------------
CREATE TRIGGER tr_Bajakeys --triger que cuando se agregue un detalle venta ponga la key en false
ON DetalleVentas AFTER INSERT 
AS BEGIN
SET NOCOUNT ON;
UPDATE Keys SET Estado_K = 'False'
WHERE Serie_K = (SELECT SerieKey_DV FROM inserted)
END
GO

CREATE TRIGGER tr_InsertarMontoTotal  --trigger que calcula el monto total de una venta
ON DetalleVentas AFTER INSERT
AS 
BEGIN
UPDATE Ventas SET PrecioTotal_V=PrecioTotal_V+(SELECT Precio_DV FROM INSERTED)
WHERE ID_V = (SELECT ID_Venta_DV FROM INSERTED)
END
GO

select * from MetodosxUsuarios