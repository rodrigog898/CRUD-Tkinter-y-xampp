-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 02:12:06
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cesfam`
--
CREATE DATABASE IF NOT EXISTS `cesfam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cesfam`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE IF NOT EXISTS `medicamentos` (
  `id` text NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `fabricante` varchar(500) NOT NULL,
  `gramaje` text NOT NULL,
  `cantidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `descripción`, `fabricante`, `gramaje`, `cantidad`) VALUES
('1', 'paracetamol', 'chile spa', '50MG', '1500'),
('2', 'Vitamina', 'Chile', '500mg', '1600'),
('3', 'mentolato', 'chile Spa', '50Mg', '6589'),
('4', 'Crema Lubridem', 'China', '100G', '5000'),
('5', 'Hipoglos', 'Peru Spa', '400G', '2193'),
('6', 'Mentolatum liquido', 'U.S.A', '100G', '3456'),
('7', 'Paracetamol', 'China', '1000MG', '5620');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescripciones`
--

CREATE TABLE IF NOT EXISTS `prescripciones` (
  `medico` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `run` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `mensaje` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `prescripciones`
--

INSERT INTO `prescripciones` (`medico`, `run`, `fecha`, `mensaje`) VALUES
('rodrigo', 'sfsdfdsffdsf', '', 'deedfe'),
('rodirgo', '2097697395', '', 'dlsfusdbfudsf'),
('rodrigo', 'aravena', '', 'dsfndsfndsp'),
('rodrigo', '1233133123131', '', 'fdsfdsfds'),
('rodrigo', '209769735', '', 'Paracetamol'),
('rodrigo', '209769735', '', 'Paracetamol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar`
--

CREATE TABLE IF NOT EXISTS `registrar` (
  `id` text NOT NULL,
  `nombre` text NOT NULL,
  `rut` text NOT NULL,
  `fecha_retiro` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registrar`
--

INSERT INTO `registrar` (`id`, `nombre`, `rut`, `fecha_retiro`, `descripcion`) VALUES
('1', 'Lorenzo Zuñiga', '20.975.976-5', '06/05/2022', '5 cajas de vitamina C'),
('2', 'Miguel Aravena', '20.832.453-6', '05/06/2022', '1 Mentolatum y 2 Vitamina'),
('3', 'Isabel Aravena', '20.435.656-6', '05/06/2022', '5 Cajas Codeina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE IF NOT EXISTS `reserva` (
  `id` text NOT NULL,
  `nombre` varchar(2000) NOT NULL,
  `rut` varchar(2000) NOT NULL,
  `fecha_retiro` varchar(500) NOT NULL,
  `medicamentos` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `nombre`, `rut`, `fecha_retiro`, `medicamentos`) VALUES
('1', 'Miguel Aravena', '10.425.123-5', '04/06/2022', 'Codeina'),
('2', 'Lorenzo Zuñiga', '20.435.354-5', '04/06/2002', 'Aspirina');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
