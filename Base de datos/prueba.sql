-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 02:12:00
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `nombre` varchar(200) NOT NULL,
  `rut` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nombre`, `rut`, `fecha`, `descripcion`) VALUES
('Fabian Zera', '20.976.973-5', '27/02/2002', 'Vitamina c y Paracetamol'),
('Rodrigo Aravena', '20976973-5', '05/06/2022', 'Codeina'),
('Rodrigo Perez', '20976973-5', '27/02/2002', 'Paracetamol y hipoglos'),
('Sebastian Castro', '12.312.323-23', '05/06/2022', 'Codeina'),
('Juan Maturana', '32.321.321-5', '27/02/2002', 'Paracetamol'),
('Sofia Lagos', '32.321.321-5', '27/02/2002', 'Vitamina C y Hipoglos '),
('Victor Zuñiga', '12.312.323-23', '05/06/2030', 'Paracetamol , mentolato'),
('Rodrigo Perez', '20.976.973-5', '27/02/2002', 'Paracetomol, Aspirina');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
