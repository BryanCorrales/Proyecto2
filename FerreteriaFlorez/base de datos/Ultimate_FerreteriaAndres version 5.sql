-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-09-2016 a las 17:56:18
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Ultimate_FerreteriaAndres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_Cliente`
--

CREATE TABLE `table_Cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(45) NOT NULL,
  `Apellido_Cliente` varchar(45) NOT NULL,
  `dni_Cliente` int(10) NOT NULL,
  `razon_s_Cliente` varchar(200) NOT NULL,
  `ruc_Cliente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_Facturas`
--

CREATE TABLE `table_Facturas` (
  `No_Facturas` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `totals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_Productos`
--

CREATE TABLE `table_Productos` (
  `idProductos` int(10) NOT NULL,
  `nombreProductos` varchar(45) NOT NULL,
  `preciosProductos` int(11) NOT NULL,
  `descripcionProductos` varchar(200) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `preciocompraProductos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_Vendedor`
--

CREATE TABLE `table_Vendedor` (
  `idVendedor` int(11) NOT NULL,
  `nombreVendedor` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_Ventas`
--

CREATE TABLE `table_Ventas` (
  `idVentas` int(11) NOT NULL,
  `No_Facturas` int(11) NOT NULL,
  `Productos` int(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_Cliente`
--
ALTER TABLE `table_Cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `idCliente_UNIQUE` (`idCliente`);

--
-- Indices de la tabla `table_Facturas`
--
ALTER TABLE `table_Facturas`
  ADD PRIMARY KEY (`No_Facturas`),
  ADD UNIQUE KEY `No_Facturas_UNIQUE` (`No_Facturas`),
  ADD KEY `llavesForaneas_Cliente_idx` (`cliente`);

--
-- Indices de la tabla `table_Productos`
--
ALTER TABLE `table_Productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD UNIQUE KEY `idtProductos_UNIQUE` (`idProductos`);

--
-- Indices de la tabla `table_Vendedor`
--
ALTER TABLE `table_Vendedor`
  ADD PRIMARY KEY (`idVendedor`),
  ADD UNIQUE KEY `idVendedor_UNIQUE` (`idVendedor`);

--
-- Indices de la tabla `table_Ventas`
--
ALTER TABLE `table_Ventas`
  ADD PRIMARY KEY (`idVentas`),
  ADD UNIQUE KEY `idVentas_UNIQUE` (`idVentas`),
  ADD KEY `llavesForaneas_Facturas_idx` (`No_Facturas`),
  ADD KEY `llavesForaneas_Productos_idx` (`Productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_Cliente`
--
ALTER TABLE `table_Cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `table_Facturas`
--
ALTER TABLE `table_Facturas`
  MODIFY `No_Facturas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `table_Productos`
--
ALTER TABLE `table_Productos`
  MODIFY `idProductos` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `table_Ventas`
--
ALTER TABLE `table_Ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `table_Facturas`
--
ALTER TABLE `table_Facturas`
  ADD CONSTRAINT `table_Facturas_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `table_Cliente` (`idCliente`);

--
-- Filtros para la tabla `table_Ventas`
--
ALTER TABLE `table_Ventas`
  ADD CONSTRAINT `table_Ventas_ibfk_1` FOREIGN KEY (`Productos`) REFERENCES `table_Productos` (`idProductos`),
  ADD CONSTRAINT `table_Ventas_ibfk_2` FOREIGN KEY (`No_Facturas`) REFERENCES `table_Facturas` (`No_Facturas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
