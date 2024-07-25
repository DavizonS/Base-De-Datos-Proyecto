-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2024 a las 11:06:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizzappaisa_mysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `idIngrediente` varchar(6) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Existencias` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `idSabor` varchar(6) NOT NULL,
  `idPedido` smallint(6) NOT NULL,
  `numeroPorciones` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `idOrden` smallint(6) NOT NULL,
  `usuarioTelefono` bigint(1) NOT NULL,
  `fhechaPedido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordeningrediente`
--

CREATE TABLE `ordeningrediente` (
  `idOrden` smallint(6) NOT NULL,
  `idIngrediente` varchar(6) NOT NULL,
  `CantidadSolicitada` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` tinyint(3) NOT NULL,
  `nombreProveedor` varchar(30) NOT NULL,
  `apellidoProveedor` varchar(40) DEFAULT NULL,
  `numeroTelefono` tinyint(10) NOT NULL,
  `Direccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idPedido` smallint(6) NOT NULL,
  `usuarioTelefono` bigint(1) NOT NULL,
  `fechaHoraRealizacion` datetime NOT NULL,
  `Entregado` tinyint(1) NOT NULL,
  `fechaHoraEntrega` datetime NOT NULL,
  `precioTotal` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sabor`
--

CREATE TABLE `sabor` (
  `idSabor` varchar(6) NOT NULL,
  `nombrePizza` varchar(50) NOT NULL,
  `precioPorcion` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sabor`
--

INSERT INTO `sabor` (`idSabor`, `nombrePizza`, `precioPorcion`) VALUES
('CBQ', 'Carne BBQ', 12500.000),
('CTR', 'Carne Tradicional', 14200.000),
('HWI', 'Hawaiana', 10800.000),
('MDR', 'Maduro', 11700.000),
('MTO', 'Mango Tocineta', 15000.000),
('MXC', 'Mexicana', 13200.000),
('PCH', 'Pollo Champinon', 13400.000),
('PSA', 'Paisa', 12000.000),
('RCH', 'Ranchera', 14900.000),
('TRP', 'Tropical', 10500.000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saboringrediente`
--

CREATE TABLE `saboringrediente` (
  `idSabor` varchar(6) NOT NULL,
  `idIngrediente` varchar(6) NOT NULL,
  `Cantidad` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministro`
--

CREATE TABLE `suministro` (
  `idSuministro` tinyint(4) NOT NULL,
  `idProveedor` tinyint(3) NOT NULL,
  `fechaCompra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministroingrediente`
--

CREATE TABLE `suministroingrediente` (
  `idSuministro` tinyint(4) NOT NULL,
  `idIngrediente` varchar(6) NOT NULL,
  `cantidadComprada` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idTipoDocumento` varchar(6) NOT NULL,
  `tipoDocumento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idTipoDocumento`, `tipoDocumento`) VALUES
('CC', 'Cedula De Ciudadania'),
('CE', 'Cedula Extranjera'),
('DNI', 'Documento Nacional de Identidad'),
('LS', 'Licencia de Conduccion'),
('PAS', 'Pasaporte'),
('PEP', 'Permiso Especial de Permanencia'),
('RCN', 'Registro Civil de Nacimiento'),
('TI', 'Tarjeta de Identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` varchar(6) NOT NULL,
  `tipoUsuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `tipoUsuario`) VALUES
('ADM', 'Administrador'),
('CLI', 'Cliente'),
('ENC', 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuarioNombre` varchar(30) NOT NULL,
  `UsuarioApellido` varchar(50) DEFAULT NULL,
  `usuarioTelefono` bigint(1) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contrasena` varchar(50) NOT NULL,
  `idTipoDocumento` varchar(6) NOT NULL,
  `numeroDocumento` bigint(1) NOT NULL,
  `idTipoUsuario` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuarioNombre`, `UsuarioApellido`, `usuarioTelefono`, `Correo`, `Contrasena`, `idTipoDocumento`, `numeroDocumento`, `idTipoUsuario`) VALUES
('Juan', 'Pérez', 3012345678, 'juan.perez@example.com', 'pass1234', 'CC', 1023456789, 'CLI'),
('María', 'Gómez López', 3023456789, 'maria.gomez@example.com', 'pass2345', 'TI', 2034567890, 'CLI'),
('Luis', 'Rodríguez', 3034567890, 'luis.rodriguez@example.com', 'pass3456', 'CC', 3045678901, 'ENC'),
('Ana', 'Torres', 3045678901, 'ana.torres@example.com', 'pass4567', 'TI', 4056789012, 'CLI'),
('Carlos', 'Fernández García', 3056789012, 'carlos.fernandez@example.com', 'pass5678', 'CC', 5067890123, 'CLI'),
('Sofía', 'Martínez', 3067890123, 'sofia.martinez@example.com', 'pass6789', 'CE', 6078901234, 'ADM'),
('Diego', 'Morales', 3078901234, 'diego.morales@example.com', 'pass7890', 'PAS', 7089012345, 'CLI'),
('Laura', 'Ramírez', 3089012345, 'laura.ramirez@example.com', 'pass8901', 'CC', 8090123456, 'CLI'),
('Andrés', 'Herrera', 3090123456, 'andres.herrera@example.com', 'pass9012', 'TI', 9012345678, 'ENC'),
('Daniel', 'López', 3156789012, 'daniel.lopez@example.com', 'pass5670', 'CE', 5567890123, 'CLI'),
('Natalia', 'Castillo', 3167890123, 'natalia.castillo@example.com', 'pass6780', 'PAS', 6678901234, 'CLI'),
('Sebastián', 'Cárdenas', 3178901234, 'sebastian.cardenas@example.com', 'pass7891', 'CC', 7789012345, 'CLI'),
('Gabriela', 'Molina', 3189012345, 'gabriela.molina@example.com', 'pass8902', 'TI', 8890123456, 'CLI'),
('Alejandro', 'Navarro', 3190123456, 'alejandro.navarro@example.com', 'pass9013', 'CE', 9901234567, 'CLI'),
('Mariana', 'Ortiz', 3201234567, 'mariana.ortiz@example.com', 'pass0124', 'PAS', 1012345678, 'CLI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`idIngrediente`);

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD KEY `idSabor` (`idSabor`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Indices de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`idOrden`),
  ADD KEY `usuarioTelefono` (`usuarioTelefono`);

--
-- Indices de la tabla `ordeningrediente`
--
ALTER TABLE `ordeningrediente`
  ADD KEY `idOrden` (`idOrden`),
  ADD KEY `idIngrediente` (`idIngrediente`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `usuarioTelefono` (`usuarioTelefono`);

--
-- Indices de la tabla `sabor`
--
ALTER TABLE `sabor`
  ADD PRIMARY KEY (`idSabor`);

--
-- Indices de la tabla `saboringrediente`
--
ALTER TABLE `saboringrediente`
  ADD KEY `idSabor` (`idSabor`),
  ADD KEY `idIngrediente` (`idIngrediente`);

--
-- Indices de la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD PRIMARY KEY (`idSuministro`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `suministroingrediente`
--
ALTER TABLE `suministroingrediente`
  ADD KEY `idSuministro` (`idSuministro`),
  ADD KEY `idIngrediente` (`idIngrediente`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`idTipoDocumento`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuarioTelefono`),
  ADD KEY `idTipoDocumento` (`idTipoDocumento`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  MODIFY `idOrden` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordeningrediente`
--
ALTER TABLE `ordeningrediente`
  MODIFY `idOrden` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` tinyint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idPedido` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `linea`
--
ALTER TABLE `linea`
  ADD CONSTRAINT `linea_ibfk_1` FOREIGN KEY (`idSabor`) REFERENCES `sabor` (`idSabor`),
  ADD CONSTRAINT `linea_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `reserva` (`idPedido`);

--
-- Filtros para la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `ordencompra_ibfk_1` FOREIGN KEY (`usuarioTelefono`) REFERENCES `usuario` (`usuarioTelefono`);

--
-- Filtros para la tabla `ordeningrediente`
--
ALTER TABLE `ordeningrediente`
  ADD CONSTRAINT `ordeningrediente_ibfk_1` FOREIGN KEY (`idOrden`) REFERENCES `ordencompra` (`idOrden`),
  ADD CONSTRAINT `ordeningrediente_ibfk_2` FOREIGN KEY (`idIngrediente`) REFERENCES `ingrediente` (`idIngrediente`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`usuarioTelefono`) REFERENCES `usuario` (`usuarioTelefono`);

--
-- Filtros para la tabla `saboringrediente`
--
ALTER TABLE `saboringrediente`
  ADD CONSTRAINT `saboringrediente_ibfk_1` FOREIGN KEY (`idSabor`) REFERENCES `sabor` (`idSabor`),
  ADD CONSTRAINT `saboringrediente_ibfk_2` FOREIGN KEY (`idIngrediente`) REFERENCES `ingrediente` (`idIngrediente`);

--
-- Filtros para la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD CONSTRAINT `suministro_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

--
-- Filtros para la tabla `suministroingrediente`
--
ALTER TABLE `suministroingrediente`
  ADD CONSTRAINT `suministroingrediente_ibfk_1` FOREIGN KEY (`idSuministro`) REFERENCES `suministro` (`idSuministro`),
  ADD CONSTRAINT `suministroingrediente_ibfk_2` FOREIGN KEY (`idIngrediente`) REFERENCES `ingrediente` (`idIngrediente`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idTipoDocumento`) REFERENCES `tipodocumento` (`idTipoDocumento`),
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
