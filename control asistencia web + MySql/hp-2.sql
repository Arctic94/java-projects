-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2016 a las 10:21:31
-- Versión del servidor: 5.7.9
-- Versión de PHP: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hp`
--
CREATE DATABASE IF NOT EXISTS `hp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
CREATE TABLE IF NOT EXISTS `asistencia` (
  `ID_ASISTENCIA` int(11) NOT NULL AUTO_INCREMENT,
  `RUT` varchar(10) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `TIPOREGISTRO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_ASISTENCIA`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`ID_ASISTENCIA`, `RUT`, `FECHA`, `HORA`, `TIPOREGISTRO`) VALUES(2344, '18344523-5', '2011-06-23', '09:23:03', 'Entrada'),(6569, '1890453-5', '2003-06-11', '14:03:03', 'Entrada'),(654, '1890523-5', '2015-06-11', '09:07:03', 'Entrada'),(5345, '1450523-5', '2015-06-09', '09:15:03', 'Entrada'),(5656, '1890563-5', '2016-06-11', '09:03:03', 'Entrada'),(1343, '1856523-5', '2010-06-11', '23:03:03', 'Salida'),(77, '1890523-5', '2005-06-11', '21:03:03', 'Salida'),
(1, '1890523-5', '2015-06-11', '23:03:03', 'Salida'),
(3, '1890234-3', '2016-06-01', '11:11:11', 'Entrada'),
(5, '18905238-3', '2016-06-20', '07:59:30', 'Entrada'),
(8, '11338598-7', '2015-11-10', '07:04:12', 'Entrada'),
(7, '556677-1', '2001-01-01', '18:19:20', 'Entrada'),
(9, '456123', '2012-02-15', '12:34:02', 'Salida'),
(10, '18905', '2016-06-01', '09:05:23', 'Entrada'),
(11, '18905', '2016-06-01', '19:30:45', 'Salida'),
(12, '18905', '2016-06-02', '08:50:12', 'Entrada'),
(13, '18905', '2016-06-02', '19:15:45', 'Salida'),
(14, '18905', '2016-06-03', '08:43:12', 'Entrada'),
(15, '18905345-8', '2016-06-03', '18:58:42', 'Salida'),
(16, '12895450-5', '2016-06-08', '12:34:05', 'Entrada'),
(17, '18905', '2016-06-08', '23:45:06', 'Salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `RUT` varchar(10) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `CARGO` varchar(20) DEFAULT NULL,
  `SUELDO` double DEFAULT NULL,
  PRIMARY KEY (`RUT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `funcionario`
--

INSERT INTO `funcionario` (`RUT`, `NOMBRE`, `FECHANACIMIENTO`, `CARGO`, `SUELDO`) VALUES('18474743-3', 'Ignacio', '1994-06-06', 'Logistica', 1500000)('18840927-k', 'Edna', '1994-11-23', 'Gerenta', 1000000)('13173456-4', 'Rosario', '1991-11-23', 'Secretaria', 300000)
('18905235-7', 'Maria', '2016-06-06', 'Ventas', 900000),
('11338456-1', 'Francisco', '1996-06-09', 'Vendedor', 250000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
