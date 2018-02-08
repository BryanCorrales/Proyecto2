-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-09-2016 a las 19:17:23
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Ultimate_Ferreteria`
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
  `preciosProductos` float NOT NULL,
  `descripcionProductos` varchar(200) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `preciocompraProductos` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_Productos`
--

INSERT INTO `table_Productos` (`idProductos`, `nombreProductos`, `preciosProductos`, `descripcionProductos`, `cantidadProductos`, `preciocompraProductos`) VALUES
(1, 'tubo de abasto inodoro Metuza', 18, '1/2x7/8x35cm', 5, 18),
(2, 'tubo de abasto inodoro trebol', 18, '1/2x7/8x35cm', 5, 19),
(3, 'tubo de abasto labatorio Metuza', 18, '1/2x7/8x40cm	', 5, 10),
(4, 'tubo de abasto labatorio Trebol', 18, '1/2x7/8x40cm', 5, 10),
(5, 'valvula de base Concyssa', 15, '1/2 pulgada	', 5, 8),
(6, 'plancha de batir Stanley', 20, '7 pulgadas	', 5, 12),
(7, 'plancha de batir Camasa', 15, '7 pulgadas', 5, 8),
(8, 'plancha empastar Stanley', 25, '280x130mn', 5, 15),
(9, 'plancha de empastar FyG', 20, '11px5	', 5, 12),
(10, 'plancha de canto dentado FyG', 20, '11px5', 5, 12),
(11, 'plancha de batir (vadilejo) Wins', 10, '7 pulgadas', 5, 4),
(12, 'gruna de canto nacional', 10, '6x2.5cm', 5, 3.5),
(13, 'gruna de centro nacional', 10, '6x2.5p', 5, 3.5),
(14, 'gruna de centro Truper', 25, '5/2x4p', 5, 14),
(15, 'Cable UTP cat. 5', 350, '350m', 5, 80),
(16, 'Ocre importado Bayer color rojo', 12, '1k	', 5, 6),
(17, 'Ocre importado Bayer color verde', 12, '1k', 5, 6),
(18, 'Ocre importado Bayer color amarillo', 12, '1k', 5, 6),
(19, 'Cal nieve Vilubdsa', 5, '1k', 5, 1.5),
(20, 'Masilla de madera Vilubdsa', 4, '1k', 5, 1.5),
(21, 'Masilla de pared Vilubdsa', 4, '1k', 5, 1.5),
(22, 'Soda caustica Vilubdsa', 10, '1k', 5, 4),
(23, 'Cemento blanco Huascaran', 4, '1k', 5, 2),
(24, 'Borax americano', 15, '1k', 5, 7),
(25, 'Fragua para mayolica Gris', 6, '1k', 5, 3),
(26, 'Fragua para mayolica Celeste', 6, '1k', 5, 3),
(27, 'Fragua para mayolica Blanco', 6, '1k', 5, 3),
(28, 'Fragua para mayolica Negro', 6, '1k	', 5, 3),
(29, 'Tornillo de fijacion', 5, 'tarugo, tornillo y tapa	', 5, 4),
(30, 'Unia para Labatorio', 5, 'Nacional	', 5, 2),
(31, 'Pegamento PBC Ultrapec', 5, '96ml', 5, 2),
(32, 'Pegamento PBC Ultrapec', 1, '30ml', 5, 0.5),
(33, 'Codo FG', 2, '45gradosx1/2', 5, 1),
(34, 'Codo FG', 2, '90gradosx1/2', 5, 1),
(35, 'Fierro FG T', 2.5, '1/2p', 5, 1),
(36, 'Union FG', 2.5, '1/2p', 5, 1),
(37, 'Tapon FG Macho', 2.5, '1/2p', 5, 1),
(38, 'Tapon FG Hembra', 2.5, '1/2p', 5, 1),
(39, 'Codo FG', 4, '3/4p', 5, 1.5),
(40, 'T FG Codo', 4, '3/4p', 5, 1.5),
(41, 'T FG', 5, '3/4	', 5, 2),
(42, 'Tapon Macho', 5, '3/4p', 5, 2),
(43, 'Codo FG ', 7, '1/2p', 5, 3),
(44, 'T FG', 7, '1/2p', 5, 3),
(45, 'Union FG', 5, '1p', 5, 2),
(46, 'Tapon', 5, '1p', 5, 2),
(47, 'Bushing FG', 5, '', 5, 2.5),
(48, 'Bushing FG', 5, '1/2p', 5, 2.5),
(49, 'Extension FG', 3, '1/2x2p', 5, 1),
(50, 'Extension FG', 3, '1/2x3p', 5, 1),
(51, 'Extension FG', 4, '1/2x4p', 5, 1.5),
(52, 'Curvo PBC Sel', 5, '3/4p', 5, 2.4),
(53, 'Duchas Nacionales ', 23, 'Cromado', 5, 13),
(54, 'Duchas Nacionales', 7, 'Plastico', 5, 2.5),
(55, 'Duchas de mano importado', 25, 'Garbanisado ', 5, 14),
(56, 'Canio Nacional', 12, 'Bronce con repuesto', 5, 6),
(57, 'Canio Nacional Jardinero', 15, 'Bronce con repuesto', 5, 7),
(58, 'Canio de Palanta Importado', 14, 'Niquelado', 5, 7),
(59, 'Canio PBC Jardinero', 5, 'Importado', 5, 2.5),
(60, 'Canio PBC ', 5, 'Importado', 5, 5),
(61, 'Canio de Palanca Quitaly', 28, 'Importado', 5, 15),
(62, 'Canio de Palanca Cim Val', 30, 'Niquelado', 5, 30),
(63, 'Canio de Lavadero ', 15, 'Importado', 5, 8),
(64, 'Canio de lavadero Nacional', 23, 'Niquelado', 5, 13),
(65, 'Canio de lavadero de Cocina', 15, 'Importado', 5, 7),
(66, 'Canio de lavadero de Cocina', 28, 'Nacional', 5, 16),
(67, 'Canio PBC PCP', 20, 'PBC', 5, 8),
(68, 'Valvula de media PBC', 5, '1/2p Importado', 5, 1.5),
(69, 'Valvula de media Metal', 12, 'Importado', 5, 6),
(70, 'Valvula de Metal Cim Val', 28, 'Cim Val', 5, 28),
(71, 'Valvula de Metal Itali', 20, 'Niquelado', 5, 12),
(72, 'Valvula de Metal con puerta', 15, 'Bronce', 5, 7),
(73, 'Valvula de Media PCP', 20, '1/2 con union universal', 5, 12),
(74, 'Valvula PCP de soldar', 15, 'PBC', 5, 8),
(75, 'Valvula PBC', 12, '3/4p', 5, 4),
(76, 'Valvula Palanca', 25, '3/4p Metal, Bronce', 5, 10),
(77, 'Valvula con Puerta', 25, '3/4x4p Bronce', 5, 13),
(78, 'Valvula PBC', 15, '1p Importado', 5, 5),
(79, 'Valvula de Metal', 65, '1p Cim Val', 5, 35),
(80, 'Valvula con puerta', 40, '1p Bronce Cim Val', 5, 25),
(81, 'Valvula PBC', 30, '1/2 Importado', 5, 12),
(82, 'Valvula con puerta', 60, '1/2 Bronce', 5, 30),
(83, 'Valvula PBC', 25, '2p', 5, 12),
(84, 'Valvula', 80, '2p Bronce Importado', 5, 55),
(85, 'Valvula con puerta', 60, '2p Bronce', 5, 35),
(86, 'Valvula PBC', 65, '3p Importado', 5, 35),
(87, 'Valvula con puerta', 140, '3p Bronce', 5, 80),
(88, 'Valvula PBC', 120, '4p Importado', 5, 60),
(89, 'Valvula con puerta', 180, '4p Bronce', 5, 100),
(90, 'Interruptor King RN', 15, 'Baquelita caja x 12u', 5, 10),
(91, 'Interruptor King RN', 15, 'caja x 12u', 5, 10),
(92, 'Tomacorriente Rema Triple', 4, 'Puesta a tierra Gris', 5, 1),
(93, 'Socket King Rema', 20, 'Caja x 24u', 5, 10),
(94, 'Interruptor Termo-magnetico CBB', 10, '20A', 5, 4),
(95, 'Interruptor Termo-magnetico CBB', 10, '30A', 5, 4),
(96, 'Interruptor Termo-magnetico CBB', 10, '60A', 5, 4),
(97, 'Interruptor Termo-magnetico BTCINO', 28, '2x25A', 5, 16),
(98, 'Interruptor Termo-magnetico BTCINO', 28, '2x32A', 5, 16),
(99, 'Interruptor Termo-magnetico BTCINO', 28, '2x40A', 5, 16),
(100, 'Interruptor Termo-magnetico BTCINO', 28, '2x63A', 5, 16),
(101, 'Interruptor Termo-magnetico Stronger', 20, '2x25A', 5, 10),
(102, 'Extension 3 salidas x 3m Rema', 5, 'Importado	', 5, 2.5),
(103, 'Triple Epem', 3.5, '250v 6A', 5, 1.6),
(104, 'Aceite 5 en 1', 3, '30ml', 5, 1),
(105, 'Aceite 5 en 1', 5, '100ml', 5, 2),
(106, 'Brazo Destellante', 4, 'Limpia Metal', 5, 1.5),
(107, 'Foco Belix', 6, '18W', 5, 3),
(108, 'Foco Belix', 7, '27W', 5, 3),
(109, 'Foco Belix', 8, '36W', 5, 4),
(110, 'Foco Belix', 15, '85W', 5, 8),
(111, 'Foco Belix', 50, '105W', 5, 25),
(112, 'Foco Phillips', 15, '18W', 5, 10),
(113, 'Foco Phillips', 20, '36W', 5, 12),
(114, 'Foco Led Belix', 20, '7W', 5, 7),
(115, 'Foco Led Belix', 20, '12W', 5, 9),
(116, 'Reflector ', 45, '500W Importado	', 5, 25),
(117, 'Foco de Colores', 25, 'Led', 5, 7),
(118, 'Cinta Teflon', 5, '10u', 5, 4);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `pasword`, `tipo`, `nombres`, `apellidos`, `dni`, `telefono`) VALUES
(1, 'admin', 'admin', 'Administrador', 'Richard', 'q', 43121223, 321132),
(2, 'root', 'root', 'Empleado', 'ryenaldo', 'cespedes', 0, 932341223),
(3, 'yaco', 'yaco', 'Administrador', 'melenes', '123456', 22334455, 920122332);

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
-- Indices de la tabla `table_Ventas`
--
ALTER TABLE `table_Ventas`
  ADD PRIMARY KEY (`idVentas`),
  ADD UNIQUE KEY `idVentas_UNIQUE` (`idVentas`),
  ADD KEY `llavesForaneas_Facturas_idx` (`No_Facturas`),
  ADD KEY `llavesForaneas_Productos_idx` (`Productos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `idProductos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT de la tabla `table_Ventas`
--
ALTER TABLE `table_Ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  ADD CONSTRAINT `table_Ventas_ibfk_1` FOREIGN KEY (`Productos`) REFERENCES `table_Productos` (`idProductos`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
