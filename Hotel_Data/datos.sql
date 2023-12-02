-- Inserciones para la tabla Cargos
INSERT INTO Cargos (id_cargo, cargo) VALUES
(1, 'Gerente'),
(2, 'Recepcionista'),
(3, 'Limpieza');

-- Inserciones para la tabla Met_Pago
INSERT INTO Met_Pago (idmet_pago, tipo) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de crédito'),
(3, 'Transferencia bancaria');

-- Inserciones para la tabla Categoria
INSERT INTO Categoria (idcategoria, nombre, descripcion) VALUES
(1, 'Lujo', 'Habitaciones de lujo con servicios exclusivos'),
(2, 'Estándar', 'Habitaciones con comodidades básicas');

-- Inserciones para la tabla Extras
INSERT INTO Extras (idextras, nombre, descripcion) VALUES
(1, 'Desayuno', 'Desayuno buffet incluido'),
(2, 'Wi-Fi', 'Conexión Wi-Fi gratuita'),
(3, 'Jacuzzi', 'Acceso a jacuzzi privado');

-- Inserciones para la tabla Habitacion
INSERT INTO Habitacion (idhabitacion, idcategoria, num, piso, costo, detalle) VALUES
(1, 1, 101, 1, 150.00, 'Suite de lujo con vista al mar'),
(2, 2, 201, 2, 80.00, 'Habitación estándar con dos camas');

-- Inserciones para la tabla Cliente
INSERT INTO Cliente (idcliente, nombre, apellido, identificacion, telefono) VALUES
(1, 'Juan', 'Perez', '123456789', '555-1234'),
(2, 'Ana', 'Gomez', '987654321', '555-5678');

-- Inserciones para la tabla Recepcionista
INSERT INTO Recepcionista (id_recepcionista, nombre_recepcionista, apellido, identificacion, posicion, id_empleado, id_cargo) VALUES
(1, 'Carlos', 'Lopez', '456789012', 'Recepcionista', 1, 2),
(2, 'Maria', 'Rodriguez', '012345678', 'Recepcionista', 2, 2);

------
INSERT INTO Paquetes (idpaquetes, nombre_paquete, idhabitacion, idextras, costo_paquetes, tiempo_dias, descripcion) VALUES
(1, 'Paquete de lujo', 1, 1, 200.00, 3, 'Incluye desayuno y acceso al spa'),
(3, 'Paquete estándar', 2, 2, 100.00, 2, 'Incluye Wi-Fi y desayuno continental');


-- Inserciones para la tabla Reserva
INSERT INTO Reserva (idreserva, idcliente, idrecepcionista, idpaquete, fecha) VALUES
(1, 1, 1, 1, '2023-01-01'),
(2, 2, 2, 2, '2023-02-01');

-- Inserciones para la tabla Transaccion
INSERT INTO Transaccion (idtransaccion, idreserva, idmet_pago, costo_total, info_pago) VALUES
(1, 1, 1, 200.00, 'Pago en efectivo'),
(2, 2, 2, 100.00, 'Tarjeta de crédito');

-- Inserciones para la tabla Huesped
INSERT INTO Huesped (idhuesped, idcliente, idhabitacion) VALUES
(1, 1, 1),
(2, 2, 2);

-- Inserciones para la tabla Empleado
INSERT INTO Empleado (id_empleado, nombres, apellidos, DUI, ISSS_Empleado, telefono, cargo, direccion, id_cargo) VALUES
(1, 'Elena', 'Gutierrez', '789012345', 'ISSS123', '555-9876', 'Limpieza', 'Calle Principal 123', 3),
(2, 'Alberto', 'Martinez', '234567890', 'ISSS456', '555-5432', 'Recepcionista', 'Avenida Central 456', 2);

-- Inserciones para la tabla Roles
INSERT INTO Roles (id_rol, nombre_rol) VALUES
(1, 'Admin'),
(2, 'Usuario');

-- Inserciones para la tabla Usuarios
INSERT INTO Usuarios (id_usuario, id_empleado, id_rol, usuario, clave) VALUES
(1, 1, 1, 'admin', 'admin123'),
(2, 2, 2, 'usuario1', 'pass123');

-- Inserciones para la tabla Opciones
INSERT INTO Opciones (id_opcion, NombreOpcion) VALUES
(1, 'Ver Reportes'),
(2, 'Editar Configuración');

-- Inserciones para la tabla AsignacionRolesOpciones
INSERT INTO AsignacionRolesOpciones (id_asignacionRol, id_rol, id_opcion) VALUES
(1, 1, 1),
(2, 2, 2);

SELECT * FROM Empleado WHERE id_empleado = 1;
