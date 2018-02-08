-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2016 a las 05:04:17
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ultimate_ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_guia_remision`
--

CREATE TABLE IF NOT EXISTS `table_guia_remision` (
`id_guia` int(11) NOT NULL,
  `punto_par` varchar(50) NOT NULL,
  `punto_lle` varchar(50) NOT NULL,
  `fecha_traslado` date NOT NULL,
  `costo_min` int(10) NOT NULL,
  `nom_empresa_transportes` varchar(100) NOT NULL,
  `ruc_empresa_transportes` varchar(50) NOT NULL,
  `marca_num_placa` varchar(50) NOT NULL,
  `nro_cons_inscripcion` varchar(50) NOT NULL,
  `nro_lic_conductor` varchar(50) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
 ADD PRIMARY KEY (`id_guia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
MODIFY `id_guia` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
