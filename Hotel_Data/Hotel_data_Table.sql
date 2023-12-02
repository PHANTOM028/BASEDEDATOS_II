create database Hotel_Data;

go

use  Hotel_Data;

-- Creación de la tabla Cargos
CREATE TABLE Cargos (
    id_cargo INT PRIMARY KEY,
    cargo NVARCHAR(50)
);

-- Creación de la tabla Met_Pago
CREATE TABLE Met_Pago (
    idmet_pago INT PRIMARY KEY,
    tipo NVARCHAR(50)
);

-- Creación de la tabla Categoria
CREATE TABLE Categoria (
    idcategoria INT PRIMARY KEY,
    nombre NVARCHAR(50),
    descripcion NVARCHAR(100)
);

-- Creación de la tabla Extras
CREATE TABLE Extras (
    idextras INT PRIMARY KEY,
    nombre NVARCHAR(50),
    descripcion NVARCHAR(100)
);

-- Creación de la tabla Habitacion
CREATE TABLE Habitacion (
    idhabitacion INT PRIMARY KEY,
    idcategoria INT,
    num INT,
    piso INT,
    costo DECIMAL(10, 2),
    detalle NVARCHAR(100),
    FOREIGN KEY (idcategoria) REFERENCES Categoria(idcategoria)
);

-- Creación de la tabla Cliente
CREATE TABLE Cliente (
    idcliente INT PRIMARY KEY,
    nombre NVARCHAR(50),
    apellido NVARCHAR(50),
    identificacion NVARCHAR(20),
    telefono NVARCHAR(20)
);

-- Creación de la tabla Recepcionista
CREATE TABLE Recepcionista (
    id_recepcionista INT PRIMARY KEY,
    nombre_recepcionista NVARCHAR(50),
    apellido NVARCHAR(50),
    identificacion NVARCHAR(20),
    posicion NVARCHAR(50),
    id_empleado INT,
    id_cargo INT,
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)
);

-- Creación de la tabla Paquetes
CREATE TABLE Paquetes (
    idpaquetes INT PRIMARY KEY,
    nombre_paquete NVARCHAR(50),
    idhabitacion INT,
    idextras INT,
    costo_paquetes DECIMAL(10, 2),
    tiempo_dias INT,
    descripcion NVARCHAR(100),
    FOREIGN KEY (idhabitacion) REFERENCES Habitacion(idhabitacion),
    FOREIGN KEY (idextras) REFERENCES Extras(idextras)
);

-- Creación de la tabla Reserva
CREATE TABLE Reserva (
    idreserva INT PRIMARY KEY,
    idcliente INT,
    idrecepcionista INT,
    idpaquete INT,
    fecha DATE,
    FOREIGN KEY (idcliente) REFERENCES Cliente(idcliente),
    FOREIGN KEY (idrecepcionista) REFERENCES Recepcionista(id_recepcionista),
    FOREIGN KEY (idpaquete) REFERENCES Paquetes(idpaquetes)
);

-- Creación de la tabla Transaccion
CREATE TABLE Transaccion (
    idtransaccion INT PRIMARY KEY,
    idreserva INT,
    idmet_pago INT,
    costo_total DECIMAL(10, 2),
    info_pago NVARCHAR(100),
    FOREIGN KEY (idreserva) REFERENCES Reserva(idreserva),
    FOREIGN KEY (idmet_pago) REFERENCES Met_Pago(idmet_pago)
);

-- Creación de la tabla Huesped
CREATE TABLE Huesped (
    idhuesped INT PRIMARY KEY,
    idcliente INT,
    idhabitacion INT,
    FOREIGN KEY (idcliente) REFERENCES Cliente(idcliente),
    FOREIGN KEY (idhabitacion) REFERENCES Habitacion(idhabitacion)
);

-- Creación de la tabla Empleado
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombres NVARCHAR(50),
    apellidos NVARCHAR(50),
    DUI NVARCHAR(20),
    ISSS_Empleado NVARCHAR(20), 
    telefono NVARCHAR(20),
    cargo NVARCHAR(50),
    direccion NVARCHAR(100),
    id_cargo INT,
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)
);

-- Creación de la tabla Roles
CREATE TABLE Roles (
    id_rol INT PRIMARY KEY,
    nombre_rol NVARCHAR(50)
);

-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    id_empleado INT,
    id_rol INT,
    usuario NVARCHAR(50),
    clave NVARCHAR(50),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol)
);

-- Creación de la tabla Opciones
CREATE TABLE Opciones (
    id_opcion INT PRIMARY KEY,
    NombreOpcion NVARCHAR(50)
);

-- Creación de la tabla AsignacionRolesOpciones
CREATE TABLE AsignacionRolesOpciones (
    id_asignacionRol INT PRIMARY KEY,
    id_rol INT,
    id_opcion INT,
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    FOREIGN KEY (id_opcion) REFERENCES Opciones(id_opcion)
);
