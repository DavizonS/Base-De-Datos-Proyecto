-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2024 a las 11:05:54
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

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`idIngrediente`, `Descripcion`, `Existencias`) VALUES
('CARNE', 'Carne', 0.0),
('CEBOL', 'Cebolla', 0.0),
('CEREZ', 'Cerezas en almibar', 0.0),
('CHAMP', 'Champinones', 0.0),
('CHORI', 'Chorizo', 0.0),
('DURAZ', 'Duraznos en almibar', 0.0),
('JALAP', 'Jalapenos', 0.0),
('JAMON', 'Jamon', 0.0),
('MADUR', 'Maduro', 0.0),
('MAIZ', 'Maiz', 0.0),
('MANGO', 'Mango', 0.0),
('MASA', 'Masa', 0.0),
('PEPP', 'Pepperoni', 0.0),
('PIMNT', 'Pimiento', 0.0),
('PINA', 'Pina', 0.0),
('POLLO', 'Pollo', 0.0),
('PSTMT', 'Pasta de tomate', 0.0),
('QUESO', 'Queso', 0.0),
('SALCH', 'Salchichas', 0.0),
('SLBBQ', 'Salsa BBQ', 0.0),
('SLSMT', 'Salsa de tomate', 0.0),
('TOCIN', 'Tocineta', 0.0),
('UVPAS', 'Uvas pasas', 0.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `idSabor` varchar(6) NOT NULL,
  `idPedido` smallint(6) NOT NULL,
  `numeroPorciones` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`idSabor`, `idPedido`, `numeroPorciones`) VALUES
('CBQ', 1, 1),
('CTR', 2, 1),
('HWI', 3, 1),
('MDR', 4, 1),
('MTO', 5, 1),
('MXC', 6, 1),
('PCH', 7, 1),
('PSA', 8, 1),
('RCH', 9, 1),
('TRP', 10, 1),
('CBQ', 11, 1),
('CTR', 12, 1),
('HWI', 13, 1),
('MDR', 14, 1),
('MTO', 15, 1),
('MXC', 16, 1),
('PCH', 17, 1),
('PSA', 18, 1),
('RCH', 19, 1),
('TRP', 20, 1),
('CBQ', 21, 1),
('CTR', 22, 1),
('HWI', 23, 1),
('MDR', 24, 1),
('MTO', 25, 1),
('MXC', 26, 1),
('PCH', 27, 1),
('PSA', 28, 1),
('RCH', 29, 1),
('TRP', 30, 1),
('CBQ', 31, 1),
('CTR', 32, 1),
('HWI', 33, 1),
('MDR', 34, 1),
('MTO', 35, 1),
('MXC', 36, 1),
('PCH', 37, 1),
('PSA', 38, 1),
('RCH', 39, 1),
('TRP', 40, 1),
('CBQ', 41, 1),
('CTR', 42, 1),
('HWI', 43, 1),
('MDR', 44, 1),
('MTO', 45, 1),
('MXC', 46, 1),
('PCH', 47, 1),
('PSA', 48, 1),
('RCH', 49, 1),
('TRP', 50, 1),
('CBQ', 51, 1),
('CTR', 52, 1),
('HWI', 53, 1),
('MDR', 54, 1),
('MTO', 55, 1),
('MXC', 56, 1),
('PCH', 57, 1),
('PSA', 58, 1),
('RCH', 59, 1),
('TRP', 60, 1),
('CBQ', 61, 1),
('CTR', 62, 1),
('HWI', 63, 1),
('MDR', 64, 1),
('MTO', 65, 1),
('MXC', 66, 1),
('PCH', 67, 1),
('PSA', 68, 1),
('RCH', 69, 1),
('TRP', 70, 1),
('CBQ', 71, 1),
('CTR', 72, 1),
('HWI', 73, 1),
('MDR', 74, 1),
('MTO', 75, 1),
('MXC', 76, 1),
('PCH', 77, 1),
('PSA', 78, 1),
('RCH', 79, 1),
('TRP', 80, 1),
('CBQ', 81, 1),
('CTR', 82, 1),
('HWI', 83, 1),
('MDR', 84, 1),
('MTO', 85, 1),
('MXC', 86, 1),
('PCH', 87, 1),
('PSA', 88, 1),
('RCH', 89, 1),
('TRP', 90, 1),
('CBQ', 91, 1),
('CTR', 92, 1),
('HWI', 93, 1),
('MDR', 94, 1),
('MTO', 95, 1),
('MXC', 96, 1),
('PCH', 97, 1),
('PSA', 98, 1),
('RCH', 99, 1),
('TRP', 100, 1),
('CBQ', 101, 1),
('CTR', 102, 1),
('HWI', 103, 1),
('MDR', 104, 1),
('MTO', 105, 1),
('MXC', 106, 1),
('PCH', 107, 1),
('PSA', 108, 1),
('RCH', 109, 1),
('TRP', 110, 1),
('CBQ', 111, 1),
('CTR', 112, 1),
('HWI', 113, 1),
('MDR', 114, 1),
('MTO', 115, 1),
('MXC', 116, 1),
('PCH', 117, 1),
('PSA', 118, 1),
('RCH', 119, 1),
('TRP', 120, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `idOrden` smallint(6) NOT NULL,
  `usuarioTelefono` bigint(1) NOT NULL,
  `fechaPedido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordencompra`
--

INSERT INTO `ordencompra` (`idOrden`, `usuarioTelefono`, `fechaPedido`) VALUES
(1, 3012345678, '2024-08-01 19:00:00'),
(2, 3023456789, '2024-08-01 19:30:00'),
(3, 3034567890, '2024-08-02 19:00:00'),
(4, 3045678901, '2024-08-02 19:30:00'),
(5, 3056789012, '2024-08-03 19:00:00'),
(6, 3067890123, '2024-08-03 19:30:00'),
(7, 3078901234, '2024-08-04 19:00:00'),
(8, 3089012345, '2024-08-04 19:30:00'),
(9, 3090123456, '2024-08-05 19:00:00'),
(10, 3156789012, '2024-08-05 19:30:00'),
(11, 3167890123, '2024-08-06 19:00:00'),
(12, 3178901234, '2024-08-06 19:30:00'),
(13, 3189012345, '2024-08-07 19:00:00'),
(14, 3190123456, '2024-08-07 19:30:00'),
(15, 3201234567, '2024-08-08 19:00:00'),
(16, 3012345678, '2024-08-08 19:30:00'),
(17, 3023456789, '2024-08-09 19:00:00'),
(18, 3034567890, '2024-08-09 19:30:00'),
(19, 3045678901, '2024-08-10 19:00:00'),
(20, 3056789012, '2024-08-10 19:30:00'),
(21, 3067890123, '2024-08-11 19:00:00'),
(22, 3078901234, '2024-08-11 19:30:00'),
(23, 3089012345, '2024-08-12 19:00:00'),
(24, 3090123456, '2024-08-12 19:30:00'),
(25, 3156789012, '2024-08-13 19:00:00'),
(26, 3167890123, '2024-08-13 19:30:00'),
(27, 3178901234, '2024-08-14 19:00:00'),
(28, 3189012345, '2024-08-14 19:30:00'),
(29, 3190123456, '2024-08-15 19:00:00'),
(30, 3201234567, '2024-08-15 19:30:00'),
(31, 3012345678, '2024-08-16 19:00:00'),
(32, 3023456789, '2024-08-16 19:30:00'),
(33, 3034567890, '2024-08-17 19:00:00'),
(34, 3045678901, '2024-08-17 19:30:00'),
(35, 3056789012, '2024-08-18 19:00:00'),
(36, 3067890123, '2024-08-18 19:30:00'),
(37, 3078901234, '2024-08-19 19:00:00'),
(38, 3089012345, '2024-08-19 19:30:00'),
(39, 3090123456, '2024-08-20 19:00:00'),
(40, 3156789012, '2024-08-20 19:30:00'),
(41, 3167890123, '2024-08-21 19:00:00'),
(42, 3178901234, '2024-08-21 19:30:00'),
(43, 3189012345, '2024-08-22 19:00:00'),
(44, 3190123456, '2024-08-22 19:30:00'),
(45, 3201234567, '2024-08-23 19:00:00'),
(46, 3012345678, '2024-08-23 19:30:00'),
(47, 3023456789, '2024-08-24 19:00:00'),
(48, 3034567890, '2024-08-24 19:30:00'),
(49, 3045678901, '2024-08-25 19:00:00'),
(50, 3056789012, '2024-08-25 19:30:00'),
(51, 3067890123, '2024-08-26 19:00:00'),
(52, 3078901234, '2024-08-26 19:30:00'),
(53, 3089012345, '2024-08-27 19:00:00'),
(54, 3090123456, '2024-08-27 19:30:00'),
(55, 3156789012, '2024-08-28 19:00:00'),
(56, 3167890123, '2024-08-28 19:30:00'),
(57, 3178901234, '2024-08-29 19:00:00'),
(58, 3189012345, '2024-08-29 19:30:00'),
(59, 3190123456, '2024-08-30 19:00:00'),
(60, 3201234567, '2024-08-30 19:30:00'),
(61, 3012345678, '2024-08-31 19:00:00'),
(62, 3023456789, '2024-08-31 19:30:00'),
(63, 3034567890, '2024-09-01 19:00:00'),
(64, 3045678901, '2024-09-01 19:30:00'),
(65, 3056789012, '2024-09-02 19:00:00'),
(66, 3067890123, '2024-09-02 19:30:00'),
(67, 3078901234, '2024-09-03 19:00:00'),
(68, 3089012345, '2024-09-03 19:30:00'),
(69, 3090123456, '2024-09-04 19:00:00'),
(70, 3156789012, '2024-09-04 19:30:00'),
(71, 3167890123, '2024-09-05 19:00:00'),
(72, 3178901234, '2024-09-05 19:30:00'),
(73, 3189012345, '2024-09-06 19:00:00'),
(74, 3190123456, '2024-09-06 19:30:00'),
(75, 3201234567, '2024-09-07 19:00:00'),
(76, 3012345678, '2024-09-07 19:30:00'),
(77, 3023456789, '2024-09-08 19:00:00'),
(78, 3034567890, '2024-09-08 19:30:00'),
(79, 3045678901, '2024-09-09 19:00:00'),
(80, 3056789012, '2024-09-09 19:30:00'),
(81, 3067890123, '2024-09-10 19:00:00'),
(82, 3078901234, '2024-09-10 19:30:00'),
(83, 3089012345, '2024-09-11 19:00:00'),
(84, 3090123456, '2024-09-11 19:30:00'),
(85, 3156789012, '2024-09-12 19:00:00'),
(86, 3167890123, '2024-09-12 19:30:00'),
(87, 3178901234, '2024-09-13 19:00:00'),
(88, 3189012345, '2024-09-13 19:30:00'),
(89, 3190123456, '2024-09-14 19:00:00'),
(90, 3201234567, '2024-09-14 19:30:00'),
(91, 3012345678, '2024-09-15 19:00:00'),
(92, 3023456789, '2024-09-15 19:30:00'),
(93, 3034567890, '2024-09-16 19:00:00'),
(94, 3045678901, '2024-09-16 19:30:00'),
(95, 3056789012, '2024-09-17 19:00:00'),
(96, 3067890123, '2024-09-17 19:30:00'),
(97, 3078901234, '2024-09-18 19:00:00'),
(98, 3089012345, '2024-09-18 19:30:00'),
(99, 3090123456, '2024-09-19 19:00:00'),
(100, 3156789012, '2024-09-19 19:30:00'),
(101, 3167890123, '2024-09-20 19:00:00'),
(102, 3178901234, '2024-09-20 19:30:00'),
(103, 3189012345, '2024-09-21 19:00:00'),
(104, 3190123456, '2024-09-21 19:30:00'),
(105, 3201234567, '2024-09-22 19:00:00'),
(106, 3012345678, '2024-09-22 19:30:00'),
(107, 3023456789, '2024-09-23 19:00:00'),
(108, 3034567890, '2024-09-23 19:30:00'),
(109, 3045678901, '2024-09-24 19:00:00'),
(110, 3056789012, '2024-09-24 19:30:00'),
(111, 3067890123, '2024-09-25 19:00:00'),
(112, 3078901234, '2024-09-25 19:30:00'),
(113, 3089012345, '2024-09-26 19:00:00'),
(114, 3090123456, '2024-09-26 19:30:00'),
(115, 3156789012, '2024-09-27 19:00:00'),
(116, 3167890123, '2024-09-27 19:30:00'),
(117, 3178901234, '2024-09-28 19:00:00'),
(118, 3189012345, '2024-09-28 19:30:00'),
(119, 3190123456, '2024-09-29 19:00:00'),
(120, 3201234567, '2024-09-29 19:30:00');

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
  `numeroTelefono` bigint(1) NOT NULL,
  `Direccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombreProveedor`, `apellidoProveedor`, `numeroTelefono`, `Direccion`) VALUES
(1, 'Harinas y Masas SA', NULL, 3135550001, 'Av. Industria 123, Ciudad F'),
(2, 'Juan', 'Perez', 3135550002, 'Calle Uvas 45, Ciudad G'),
(3, 'TomateCorp', NULL, 3135550003, 'Calle Tomate 789, Ciudad H'),
(4, 'Lacteos La Mejor', NULL, 3135550004, 'Calle Lecheria 321, Ciudad I'),
(5, 'Frutas Tropicales SA', NULL, 3135550005, 'Av. Pinas 678, Ciudad J'),
(6, 'AgroFruits', NULL, 3135550007, 'Calle Cerezos 789, Ciudad L'),
(7, 'Carlos', 'Lopez', 3135550008, 'Calle Tocino 123, Ciudad M'),
(8, 'FreshVeggies', NULL, 3135550009, 'Calle Cebollas 456, Ciudad N'),
(9, 'Chorizos del Campo', NULL, 3135550010, 'Av. Chorizos 789, Ciudad O'),
(10, 'Maices del Valle', NULL, 3135550011, 'Calle Maiz 123, Ciudad P'),
(11, 'Frutas Exoticas SA', NULL, 3135550012, 'Calle Mangos 456, Ciudad Q'),
(12, 'Carnes Finas', NULL, 3135550013, 'Av. Carnes 789, Ciudad R'),
(13, 'Luis', 'Gomez', 3135550014, 'Calle Maduros 123, Ciudad S'),
(14, 'Salsas y Mas', NULL, 3135550015, 'Calle Salsas 456, Ciudad T'),
(15, 'Embutidos del Norte', NULL, 3135550016, 'Av. Pepperoni 789, Ciudad U'),
(16, 'BBQ Supplies', NULL, 3135550017, 'Calle BBQ 123, Ciudad V'),
(17, 'Pimientos y Mas', NULL, 3135550018, 'Calle Pimientos 456, Ciudad W'),
(18, 'Pollo Fresco SA', NULL, 3135550019, 'Av. Pollo 789, Ciudad X'),
(19, 'Champinones del Bosque', NULL, 3135550020, 'Calle Champinones 123, Ciudad Y'),
(20, 'Embutidos y Mas', NULL, 3135550021, 'Av. Salchichas 456, Ciudad Z'),
(21, 'Jalapenos SA', NULL, 3135550022, 'Calle Jalapenos 789, Ciudad AA'),
(22, 'Jamones y Embutidos', NULL, 3135550023, 'Av. Jamon 123, Ciudad BB'),
(23, 'Marta', 'Rodriguez', 3135550006, 'Calle Duraznos 456, Ciudad K');

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

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idPedido`, `usuarioTelefono`, `fechaHoraRealizacion`, `Entregado`, `fechaHoraEntrega`, `precioTotal`) VALUES
(1, 3012345678, '2024-08-01 19:00:00', 1, '2024-08-01 20:00:00', 12500.000),
(2, 3023456789, '2024-08-01 19:30:00', 1, '2024-08-01 20:30:00', 14200.000),
(3, 3034567890, '2024-08-02 19:00:00', 1, '2024-08-02 20:00:00', 10800.000),
(4, 3045678901, '2024-08-02 19:30:00', 0, '0000-00-00 00:00:00', 11700.000),
(5, 3056789012, '2024-08-03 19:00:00', 1, '2024-08-03 20:00:00', 15000.000),
(6, 3067890123, '2024-08-03 19:30:00', 1, '2024-08-03 20:30:00', 13200.000),
(7, 3078901234, '2024-08-04 19:00:00', 1, '2024-08-04 20:00:00', 13400.000),
(8, 3089012345, '2024-08-04 19:30:00', 1, '2024-08-04 20:30:00', 12000.000),
(9, 3090123456, '2024-08-05 19:00:00', 0, '0000-00-00 00:00:00', 14900.000),
(10, 3156789012, '2024-08-05 19:30:00', 1, '2024-08-05 20:30:00', 10500.000),
(11, 3167890123, '2024-08-06 19:00:00', 1, '2024-08-06 20:00:00', 11700.000),
(12, 3178901234, '2024-08-06 19:30:00', 1, '2024-08-06 20:30:00', 13200.000),
(13, 3189012345, '2024-08-07 19:00:00', 0, '0000-00-00 00:00:00', 10800.000),
(14, 3190123456, '2024-08-07 19:30:00', 1, '2024-08-07 20:30:00', 12000.000),
(15, 3201234567, '2024-08-08 19:00:00', 1, '2024-08-08 20:00:00', 15000.000),
(16, 3012345678, '2024-08-08 19:30:00', 1, '2024-08-08 20:30:00', 13400.000),
(17, 3023456789, '2024-08-09 19:00:00', 1, '2024-08-09 20:00:00', 13200.000),
(18, 3034567890, '2024-08-09 19:30:00', 0, '0000-00-00 00:00:00', 12000.000),
(19, 3045678901, '2024-08-10 19:00:00', 1, '2024-08-10 20:00:00', 11700.000),
(20, 3056789012, '2024-08-10 19:30:00', 1, '2024-08-10 20:30:00', 10500.000),
(21, 3067890123, '2024-08-11 19:00:00', 1, '2024-08-11 20:00:00', 10800.000),
(22, 3078901234, '2024-08-11 19:30:00', 1, '2024-08-11 20:30:00', 13200.000),
(23, 3089012345, '2024-08-12 19:00:00', 1, '2024-08-12 20:00:00', 10500.000),
(24, 3090123456, '2024-08-12 19:30:00', 1, '2024-08-12 20:30:00', 12000.000),
(25, 3156789012, '2024-08-13 19:00:00', 0, '0000-00-00 00:00:00', 11700.000),
(26, 3167890123, '2024-08-13 19:30:00', 1, '2024-08-13 20:30:00', 10800.000),
(27, 3178901234, '2024-08-14 19:00:00', 1, '2024-08-14 20:00:00', 15000.000),
(28, 3189012345, '2024-08-14 19:30:00', 1, '2024-08-14 20:30:00', 13200.000),
(29, 3190123456, '2024-08-15 19:00:00', 0, '0000-00-00 00:00:00', 10500.000),
(30, 3201234567, '2024-08-15 19:30:00', 1, '2024-08-15 20:30:00', 12000.000),
(31, 3012345678, '2024-08-16 19:00:00', 1, '2024-08-16 20:00:00', 11700.000),
(32, 3023456789, '2024-08-16 19:30:00', 1, '2024-08-16 20:30:00', 13200.000),
(33, 3034567890, '2024-08-17 19:00:00', 1, '2024-08-17 20:00:00', 10800.000),
(34, 3045678901, '2024-08-17 19:30:00', 1, '2024-08-17 20:30:00', 13400.000),
(35, 3056789012, '2024-08-18 19:00:00', 1, '2024-08-18 20:00:00', 12000.000),
(36, 3067890123, '2024-08-18 19:30:00', 0, '0000-00-00 00:00:00', 10500.000),
(37, 3078901234, '2024-08-19 19:00:00', 1, '2024-08-19 20:00:00', 10800.000),
(38, 3089012345, '2024-08-19 19:30:00', 1, '2024-08-19 20:30:00', 15000.000),
(39, 3090123456, '2024-08-20 19:00:00', 1, '2024-08-20 20:00:00', 10500.000),
(40, 3156789012, '2024-08-20 19:30:00', 0, '0000-00-00 00:00:00', 13200.000),
(41, 3167890123, '2024-08-21 19:00:00', 1, '2024-08-21 20:00:00', 11700.000),
(42, 3178901234, '2024-08-21 19:30:00', 1, '2024-08-21 20:30:00', 12000.000),
(43, 3189012345, '2024-08-22 19:00:00', 0, '0000-00-00 00:00:00', 10800.000),
(44, 3190123456, '2024-08-22 19:30:00', 1, '2024-08-22 20:30:00', 13400.000),
(45, 3201234567, '2024-08-23 19:00:00', 1, '2024-08-23 20:00:00', 13200.000),
(46, 3012345678, '2024-08-23 19:30:00', 1, '2024-08-23 20:30:00', 12000.000),
(47, 3023456789, '2024-08-24 19:00:00', 1, '2024-08-24 20:00:00', 15000.000),
(48, 3034567890, '2024-08-24 19:30:00', 0, '0000-00-00 00:00:00', 11700.000),
(49, 3045678901, '2024-08-25 19:00:00', 1, '2024-08-25 20:00:00', 13200.000),
(50, 3056789012, '2024-08-25 19:30:00', 1, '2024-08-25 20:30:00', 10500.000),
(51, 3067890123, '2024-08-26 19:00:00', 1, '2024-08-26 20:00:00', 10800.000),
(52, 3078901234, '2024-08-26 19:30:00', 1, '2024-08-26 20:30:00', 13400.000),
(53, 3089012345, '2024-08-27 19:00:00', 1, '2024-08-27 20:00:00', 12000.000),
(54, 3090123456, '2024-08-27 19:30:00', 0, '0000-00-00 00:00:00', 15000.000),
(55, 3156789012, '2024-08-28 19:00:00', 1, '2024-08-28 20:00:00', 11700.000),
(56, 3167890123, '2024-08-28 19:30:00', 1, '2024-08-28 20:30:00', 13200.000),
(57, 3178901234, '2024-08-29 19:00:00', 1, '2024-08-29 20:00:00', 10800.000),
(58, 3189012345, '2024-08-29 19:30:00', 1, '2024-08-29 20:30:00', 12000.000),
(59, 3190123456, '2024-08-30 19:00:00', 1, '2024-08-30 20:00:00', 10500.000),
(60, 3201234567, '2024-08-30 19:30:00', 0, '0000-00-00 00:00:00', 13200.000),
(61, 3012345678, '2024-08-31 19:00:00', 1, '2024-08-31 20:00:00', 15000.000),
(62, 3023456789, '2024-08-31 19:30:00', 1, '2024-08-31 20:30:00', 10500.000),
(63, 3034567890, '2024-09-01 19:00:00', 1, '2024-09-01 20:00:00', 11700.000),
(64, 3045678901, '2024-09-01 19:30:00', 1, '2024-09-01 20:30:00', 10800.000),
(65, 3056789012, '2024-09-02 19:00:00', 0, '0000-00-00 00:00:00', 12000.000),
(66, 3067890123, '2024-09-02 19:30:00', 1, '2024-09-02 20:30:00', 13400.000),
(67, 3078901234, '2024-09-03 19:00:00', 1, '2024-09-03 20:00:00', 10800.000),
(68, 3089012345, '2024-09-03 19:30:00', 1, '2024-09-03 20:30:00', 12000.000),
(69, 3090123456, '2024-09-04 19:00:00', 1, '2024-09-04 20:00:00', 10500.000),
(70, 3156789012, '2024-09-04 19:30:00', 0, '0000-00-00 00:00:00', 10800.000),
(71, 3167890123, '2024-09-05 19:00:00', 1, '2024-09-05 20:00:00', 12000.000),
(72, 3178901234, '2024-09-05 19:30:00', 1, '2024-09-05 20:30:00', 13200.000),
(73, 3189012345, '2024-09-06 19:00:00', 0, '0000-00-00 00:00:00', 11700.000),
(74, 3190123456, '2024-09-06 19:30:00', 1, '2024-09-06 20:30:00', 10500.000),
(75, 3201234567, '2024-09-07 19:00:00', 1, '2024-09-07 20:00:00', 15000.000),
(76, 3012345678, '2024-09-07 19:30:00', 1, '2024-09-07 20:30:00', 13200.000),
(77, 3023456789, '2024-09-08 19:00:00', 1, '2024-09-08 20:00:00', 10500.000),
(78, 3034567890, '2024-09-08 19:30:00', 1, '2024-09-08 20:30:00', 11700.000),
(79, 3045678901, '2024-09-09 19:00:00', 1, '2024-09-09 20:00:00', 10800.000),
(80, 3056789012, '2024-09-09 19:30:00', 0, '0000-00-00 00:00:00', 12000.000),
(81, 3067890123, '2024-09-10 19:00:00', 1, '2024-09-10 20:00:00', 13400.000),
(82, 3078901234, '2024-09-10 19:30:00', 1, '2024-09-10 20:30:00', 10500.000),
(83, 3089012345, '2024-09-11 19:00:00', 0, '0000-00-00 00:00:00', 12000.000),
(84, 3090123456, '2024-09-11 19:30:00', 1, '2024-09-11 20:30:00', 13200.000),
(85, 3156789012, '2024-09-12 19:00:00', 1, '2024-09-12 20:00:00', 15000.000),
(86, 3167890123, '2024-09-12 19:30:00', 1, '2024-09-12 20:30:00', 11700.000),
(87, 3178901234, '2024-09-13 19:00:00', 1, '2024-09-13 20:00:00', 10800.000),
(88, 3189012345, '2024-09-13 19:30:00', 1, '2024-09-13 20:30:00', 12000.000),
(89, 3190123456, '2024-09-14 19:00:00', 0, '0000-00-00 00:00:00', 10500.000),
(90, 3201234567, '2024-09-14 19:30:00', 1, '2024-09-14 20:30:00', 13200.000),
(91, 3012345678, '2024-09-15 19:00:00', 1, '2024-09-15 20:00:00', 12000.000),
(92, 3023456789, '2024-09-15 19:30:00', 1, '2024-09-15 20:30:00', 10800.000),
(93, 3034567890, '2024-09-16 19:00:00', 1, '2024-09-16 20:00:00', 13400.000),
(94, 3045678901, '2024-09-16 19:30:00', 0, '0000-00-00 00:00:00', 11700.000),
(95, 3056789012, '2024-09-17 19:00:00', 1, '2024-09-17 20:00:00', 10500.000),
(96, 3067890123, '2024-09-17 19:30:00', 1, '2024-09-17 20:30:00', 12000.000),
(97, 3078901234, '2024-09-18 19:00:00', 1, '2024-09-18 20:00:00', 10800.000),
(98, 3089012345, '2024-09-18 19:30:00', 0, '0000-00-00 00:00:00', 13200.000),
(99, 3090123456, '2024-09-19 19:00:00', 1, '2024-09-19 20:00:00', 15000.000),
(100, 3156789012, '2024-09-19 19:30:00', 1, '2024-09-19 20:30:00', 11700.000),
(101, 3167890123, '2024-09-20 19:00:00', 1, '2024-09-20 20:00:00', 10800.000),
(102, 3178901234, '2024-09-20 19:30:00', 1, '2024-09-20 20:30:00', 15000.000),
(103, 3189012345, '2024-09-21 19:00:00', 1, '2024-09-21 20:00:00', 13200.000),
(104, 3190123456, '2024-09-21 19:30:00', 1, '2024-09-21 20:30:00', 10500.000),
(105, 3201234567, '2024-09-22 19:00:00', 1, '2024-09-22 20:00:00', 12000.000),
(106, 3012345678, '2024-09-22 19:30:00', 1, '2024-09-22 20:30:00', 10800.000),
(107, 3023456789, '2024-09-23 19:00:00', 1, '2024-09-23 20:00:00', 13200.000),
(108, 3034567890, '2024-09-23 19:30:00', 1, '2024-09-23 20:30:00', 15000.000),
(109, 3045678901, '2024-09-24 19:00:00', 1, '2024-09-24 20:00:00', 11700.000),
(110, 3056789012, '2024-09-24 19:30:00', 1, '2024-09-24 20:30:00', 12000.000),
(111, 3067890123, '2024-09-25 19:00:00', 1, '2024-09-25 20:00:00', 10500.000),
(112, 3078901234, '2024-09-25 19:30:00', 1, '2024-09-25 20:30:00', 13400.000),
(113, 3089012345, '2024-09-26 19:00:00', 1, '2024-09-26 20:00:00', 10800.000),
(114, 3090123456, '2024-09-26 19:30:00', 1, '2024-09-26 20:30:00', 12000.000),
(115, 3156789012, '2024-09-27 19:00:00', 1, '2024-09-27 20:00:00', 13200.000),
(116, 3167890123, '2024-09-27 19:30:00', 1, '2024-09-27 20:30:00', 10500.000),
(117, 3178901234, '2024-09-28 19:00:00', 1, '2024-09-28 20:00:00', 11700.000),
(118, 3189012345, '2024-09-28 19:30:00', 1, '2024-09-28 20:30:00', 15000.000),
(119, 3190123456, '2024-09-29 19:00:00', 1, '2024-09-29 20:00:00', 10800.000),
(120, 3201234567, '2024-09-29 19:30:00', 1, '2024-09-29 20:30:00', 12000.000);

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
  `Cantidad` decimal(3,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `saboringrediente`
--

INSERT INTO `saboringrediente` (`idSabor`, `idIngrediente`, `Cantidad`) VALUES
('TRP', 'MASA', 0.125),
('TRP', 'UVPAS', 0.025),
('TRP', 'PSTMT', 0.050),
('TRP', 'QUESO', 0.050),
('TRP', 'PINA', 0.038),
('TRP', 'DURAZ', 0.025),
('TRP', 'CEREZ', 0.025),
('PSA', 'MASA', 0.125),
('PSA', 'TOCIN', 0.038),
('PSA', 'PSTMT', 0.050),
('PSA', 'QUESO', 0.050),
('PSA', 'CEBOL', 0.038),
('PSA', 'CHORI', 0.038),
('PSA', 'MAIZ', 0.038),
('MTO', 'MASA', 0.125),
('MTO', 'MANGO', 0.038),
('MTO', 'PSTMT', 0.050),
('MTO', 'QUESO', 0.050),
('MTO', 'TOCIN', 0.038),
('MDR', 'MASA', 0.125),
('MDR', 'CARNE', 0.050),
('MDR', 'MADUR', 0.050),
('MDR', 'SLSMT', 0.050),
('MDR', 'QUESO', 0.050),
('CBQ', 'MASA', 0.125),
('CBQ', 'PEPP', 0.050),
('CBQ', 'CARNE', 0.050),
('CBQ', 'SLSMT', 0.050),
('CBQ', 'QUESO', 0.050),
('CBQ', 'SLBBQ', 0.050),
('CBQ', 'PIMNT', 0.025),
('PCH', 'MASA', 0.125),
('PCH', 'POLLO', 0.050),
('PCH', 'CHAMP', 0.050),
('PCH', 'SLSMT', 0.050),
('PCH', 'QUESO', 0.050),
('CTR', 'MASA', 0.125),
('CTR', 'PEPP', 0.050),
('CTR', 'CARNE', 0.050),
('CTR', 'SLSMT', 0.050),
('CTR', 'QUESO', 0.050),
('CTR', 'SALCH', 0.038),
('MXC', 'MASA', 0.125),
('MXC', 'CARNE', 0.050),
('MXC', 'PSTMT', 0.050),
('MXC', 'QUESO', 0.050),
('MXC', 'JALAP', 0.025),
('MXC', 'PIMNT', 0.013),
('MXC', 'CEBOL', 0.025),
('HWI', 'MASA', 0.125),
('HWI', 'JAMON', 0.038),
('HWI', 'PSTMT', 0.050),
('HWI', 'QUESO', 0.050),
('HWI', 'PINA', 0.038),
('RCH', 'MASA', 0.125),
('RCH', 'CARNE', 0.050),
('RCH', 'PSTMT', 0.050),
('RCH', 'QUESO', 0.050),
('RCH', 'JALAP', 0.025);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministro`
--

CREATE TABLE `suministro` (
  `idSuministro` tinyint(4) NOT NULL,
  `fechaCompra` date NOT NULL,
  `idProveedor` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suministro`
--

INSERT INTO `suministro` (`idSuministro`, `fechaCompra`, `idProveedor`) VALUES
(1, '2023-01-06', 1),
(2, '2023-01-07', 2),
(3, '2023-01-08', 3),
(4, '2023-01-13', 4),
(5, '2023-01-14', 5),
(6, '2023-01-15', 6),
(7, '2023-01-20', 7),
(8, '2023-01-21', 8),
(9, '2023-01-22', 9),
(10, '2023-01-27', 10),
(11, '2023-01-28', 11),
(12, '2023-01-29', 12),
(13, '2023-02-03', 13),
(14, '2023-02-04', 14),
(15, '2023-02-05', 15),
(16, '2023-02-10', 16),
(17, '2023-02-11', 17),
(18, '2023-02-12', 18),
(19, '2023-02-17', 19),
(20, '2023-02-18', 20),
(21, '2023-02-19', 21),
(22, '2023-02-24', 22),
(23, '2023-02-25', 23),
(24, '2023-02-26', 1),
(25, '2023-03-03', 2),
(26, '2023-03-04', 3),
(27, '2023-03-05', 4),
(28, '2023-03-10', 5),
(29, '2023-03-11', 6),
(30, '2023-03-12', 7),
(31, '2023-03-17', 8),
(32, '2023-03-18', 9),
(33, '2023-03-19', 10),
(34, '2023-03-24', 11),
(35, '2023-03-25', 12),
(36, '2023-03-26', 13),
(37, '2023-03-31', 14),
(38, '2023-04-01', 15),
(39, '2023-04-02', 16),
(40, '2023-04-07', 17),
(41, '2023-04-08', 18),
(42, '2023-04-09', 19),
(43, '2023-04-14', 20),
(44, '2023-04-15', 21),
(45, '2023-04-16', 22),
(46, '2023-04-21', 23),
(47, '2023-04-22', 1),
(48, '2023-04-23', 2),
(49, '2023-04-28', 3),
(50, '2023-04-29', 4),
(51, '2023-04-30', 5),
(52, '2023-05-05', 6),
(53, '2023-05-06', 7),
(54, '2023-05-07', 8),
(55, '2023-05-12', 9),
(56, '2023-05-13', 10),
(57, '2023-05-14', 11),
(58, '2023-05-19', 12),
(59, '2023-05-20', 13),
(60, '2023-05-21', 14),
(61, '2023-05-26', 15),
(62, '2023-05-27', 16),
(63, '2023-05-28', 17),
(64, '2023-06-02', 18),
(65, '2023-06-03', 19),
(66, '2023-06-04', 20),
(67, '2023-06-09', 21),
(68, '2023-06-10', 22),
(69, '2023-06-11', 23),
(70, '2023-06-16', 1),
(71, '2023-06-17', 2),
(72, '2023-06-18', 3),
(73, '2023-06-23', 4),
(74, '2023-06-24', 5),
(75, '2023-06-25', 6),
(76, '2023-06-30', 7),
(77, '2023-07-01', 8),
(78, '2023-07-02', 9),
(79, '2023-07-07', 10),
(80, '2023-07-08', 11),
(81, '2023-07-09', 12),
(82, '2023-07-14', 13),
(83, '2023-07-15', 14),
(84, '2023-07-16', 15),
(85, '2023-07-21', 16),
(86, '2023-07-22', 17),
(87, '2023-07-23', 18),
(88, '2023-07-28', 19),
(89, '2023-07-29', 20),
(90, '2023-07-30', 21),
(91, '2023-08-04', 22),
(92, '2023-08-05', 23),
(93, '2023-08-06', 1),
(94, '2023-08-11', 2),
(95, '2023-08-12', 3),
(96, '2023-08-13', 4),
(97, '2023-08-18', 5),
(98, '2023-08-19', 6),
(99, '2023-08-20', 7),
(100, '2023-08-25', 8),
(101, '2023-08-26', 9),
(102, '2023-08-27', 10),
(103, '2023-09-01', 11),
(104, '2023-09-02', 12),
(105, '2023-09-03', 13),
(106, '2023-09-08', 14),
(107, '2023-09-09', 15),
(108, '2023-09-10', 16),
(109, '2023-09-15', 17),
(110, '2023-09-16', 18),
(111, '2023-09-17', 19),
(112, '2023-09-22', 20),
(113, '2023-09-23', 21),
(114, '2023-09-24', 22),
(115, '2023-09-29', 23),
(116, '2023-09-30', 1),
(117, '2023-10-01', 2),
(118, '2023-10-06', 3),
(119, '2023-10-07', 4),
(120, '2023-10-08', 5),
(121, '2023-10-13', 6),
(122, '2023-10-14', 7),
(123, '2023-10-15', 8),
(124, '2023-10-20', 9),
(125, '2023-10-21', 10),
(126, '2023-10-22', 11),
(127, '2023-10-27', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministroingrediente`
--

CREATE TABLE `suministroingrediente` (
  `idSuministro` tinyint(4) NOT NULL,
  `idIngrediente` varchar(6) NOT NULL,
  `cantidadComprada` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suministroingrediente`
--

INSERT INTO `suministroingrediente` (`idSuministro`, `idIngrediente`, `cantidadComprada`) VALUES
(1, 'MASA', 11.3),
(2, 'CEBOL', 8.5),
(3, 'CEREZ', 15.0),
(4, 'CHAMP', 12.8),
(5, 'CHORI', 9.5),
(6, 'DURAZ', 10.0),
(7, 'JALAP', 7.3),
(8, 'JAMON', 6.8),
(9, 'MADUR', 11.0),
(10, 'MAIZ', 8.5),
(11, 'MANGO', 5.8),
(12, 'MASA', 14.0),
(13, 'PEPP', 13.3),
(14, 'PIMNT', 9.8),
(15, 'PINA', 10.5),
(16, 'POLLO', 12.0),
(17, 'CHAMP', 7.8),
(18, 'SALCH', 11.3),
(19, 'JALAP', 6.5),
(20, 'JAMON', 14.0),
(21, 'MADUR', 10.8),
(22, 'MAIZ', 8.3),
(23, 'MANGO', 7.5),
(24, 'MASA', 12.8),
(25, 'PEPP', 11.0),
(26, 'PIMNT', 9.5),
(27, 'PINA', 8.0),
(28, 'POLLO', 14.0),
(29, 'CHAMP', 6.8),
(30, 'SALCH', 11.5),
(31, 'JALAP', 8.3),
(32, 'JAMON', 7.0),
(33, 'MADUR', 12.5),
(34, 'MAIZ', 10.8),
(35, 'MANGO', 9.0),
(36, 'MASA', 8.5),
(37, 'PEPP', 14.3),
(38, 'PIMNT', 6.8),
(39, 'PINA', 11.5),
(40, 'POLLO', 9.3),
(41, 'CHAMP', 8.0),
(42, 'SALCH', 13.5),
(43, 'JALAP', 7.5),
(44, 'JAMON', 10.8),
(45, 'MADUR', 8.3),
(46, 'MAIZ', 12.0),
(47, 'MANGO', 9.5),
(48, 'MASA', 7.8),
(49, 'PEPP', 14.5),
(50, 'PIMNT', 6.3),
(51, 'PINA', 11.0),
(52, 'POLLO', 9.8),
(53, 'CHAMP', 8.5),
(54, 'SALCH', 12.8),
(55, 'JALAP', 7.0),
(56, 'JAMON', 10.3),
(57, 'MADUR', 8.8),
(58, 'MAIZ', 11.5),
(59, 'MANGO', 9.0),
(60, 'MASA', 8.3),
(61, 'PEPP', 13.8),
(62, 'PIMNT', 7.5),
(63, 'PINA', 10.8),
(64, 'POLLO', 9.3),
(65, 'CHAMP', 8.0),
(66, 'SALCH', 12.5),
(67, 'JALAP', 6.8),
(68, 'JAMON', 11.3),
(69, 'MADUR', 8.5),
(70, 'MAIZ', 10.8),
(71, 'MANGO', 9.3),
(72, 'MASA', 7.5),
(73, 'PEPP', 13.0),
(74, 'PIMNT', 6.8),
(75, 'PINA', 11.0),
(76, 'POLLO', 9.5),
(77, 'CHAMP', 8.3),
(78, 'SALCH', 12.0),
(79, 'JALAP', 7.0),
(80, 'JAMON', 10.5),
(81, 'MADUR', 8.8),
(82, 'MAIZ', 11.3),
(83, 'MANGO', 9.0),
(84, 'MASA', 7.8),
(85, 'PEPP', 13.5),
(86, 'PIMNT', 6.5),
(87, 'PINA', 10.8),
(88, 'POLLO', 9.3),
(89, 'CHAMP', 8.0),
(90, 'SALCH', 12.5),
(91, 'JALAP', 7.0),
(92, 'JAMON', 10.3),
(93, 'MADUR', 8.5),
(94, 'MAIZ', 11.0),
(95, 'MANGO', 9.3),
(96, 'MASA', 7.5),
(97, 'PEPP', 13.0),
(98, 'PIMNT', 6.8),
(99, 'PINA', 10.5),
(100, 'POLLO', 9.3),
(101, 'CHAMP', 8.0),
(102, 'SALCH', 12.5),
(103, 'JALAP', 6.8),
(104, 'JAMON', 11.0),
(105, 'MADUR', 8.5),
(106, 'MAIZ', 10.8),
(107, 'MANGO', 9.0),
(108, 'MASA', 7.5),
(109, 'PEPP', 13.0),
(110, 'PIMNT', 6.8),
(111, 'PINA', 11.5),
(112, 'POLLO', 9.3),
(113, 'CHAMP', 8.0),
(114, 'SALCH', 12.5),
(115, 'JALAP', 7.0),
(116, 'JAMON', 10.5),
(117, 'MADUR', 8.3),
(118, 'MAIZ', 11.0),
(119, 'MANGO', 9.3),
(120, 'MASA', 7.5),
(121, 'PEPP', 13.0),
(122, 'PIMNT', 6.8),
(123, 'PINA', 10.5),
(124, 'POLLO', 9.3),
(125, 'CHAMP', 8.0),
(126, 'SALCH', 12.5),
(127, 'JALAP', 6.8);

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
('Juan', 'Perez', 3012345678, 'juan.perez@example.com', 'pass1234', 'CC', 1023456789, 'CLI'),
('Maria', 'Gomez Lopez', 3023456789, 'maria.gomez@example.com', 'pass2345', 'TI', 2034567890, 'CLI'),
('Luis', 'Rodriguez', 3034567890, 'luis.rodriguez@example.com', 'pass3456', 'CC', 3045678901, 'ENC'),
('Ana', 'Torres', 3045678901, 'ana.torres@example.com', 'pass4567', 'TI', 4056789012, 'CLI'),
('Carlos', 'Fernandez Garcia', 3056789012, 'carlos.fernandez@example.com', 'pass5678', 'CC', 5067890123, 'CLI'),
('Sofia', 'Martinez', 3067890123, 'sofia.martinez@example.com', 'pass6789', 'CE', 6078901234, 'ADM'),
('Diego', 'Morales', 3078901234, 'diego.morales@example.com', 'pass7890', 'PAS', 7089012345, 'CLI'),
('Laura', 'Ramirez', 3089012345, 'laura.ramirez@example.com', 'pass8901', 'CC', 8090123456, 'CLI'),
('Andres', 'Herrera', 3090123456, 'andres.herrera@example.com', 'pass9012', 'TI', 9012345678, 'ENC'),
('Daniel', 'Lopez', 3156789012, 'daniel.lopez@example.com', 'pass5670', 'CE', 5567890123, 'CLI'),
('Natalia', 'Castillo', 3167890123, 'natalia.castillo@example.com', 'pass6780', 'PAS', 6678901234, 'CLI'),
('Sebastian', 'Cardenas', 3178901234, 'sebastian.cardenas@example.com', 'pass7891', 'CC', 7789012345, 'CLI'),
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
  MODIFY `idOrden` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `ordeningrediente`
--
ALTER TABLE `ordeningrediente`
  MODIFY `idOrden` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idPedido` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
