-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2016 a las 22:20:02
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gerkosport`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerta`
--

CREATE TABLE IF NOT EXISTS `alerta` (
  `ale_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ped_codigo` int(11) NOT NULL,
  `map_codigo` int(11) NOT NULL,
  `ale_falta` int(11) NOT NULL,
  `ale_existe` int(11) NOT NULL,
  `ale_total` int(11) NOT NULL,
  PRIMARY KEY (`ale_codigo`),
  KEY `ped_codigo` (`ped_codigo`),
  KEY `map_codigo` (`map_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `alerta`
--

INSERT INTO `alerta` (`ale_codigo`, `ped_codigo`, `map_codigo`, `ale_falta`, `ale_existe`, `ale_total`) VALUES
(1, 3, 32, 580, 420, 1000),
(2, 3, 28, 465, 35, 500),
(3, 4, 32, 100, 0, 100),
(4, 4, 28, 50, 0, 50),
(5, 5, 44, 4500, 500, 5000),
(6, 5, 34, 2000, 1000, 3000),
(7, 5, 26, 1700, 300, 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen_materia`
--

CREATE TABLE IF NOT EXISTS `almacen_materia` (
  `almm_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `almm_cantidad` int(11) NOT NULL,
  `map_codigo` int(11) NOT NULL,
  PRIMARY KEY (`almm_codigo`),
  KEY `map_codigo` (`map_codigo`),
  KEY `map_codigo_2` (`map_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `almacen_materia`
--

INSERT INTO `almacen_materia` (`almm_codigo`, `almm_cantidad`, `map_codigo`) VALUES
(26, 300, 26),
(27, 300, 27),
(28, 15, 28),
(29, 0, 29),
(30, 0, 30),
(31, 0, 31),
(32, 900, 32),
(33, 0, 33),
(34, 1000, 34),
(35, 0, 35),
(36, 2000, 36),
(37, 1000, 37),
(38, 1500, 38),
(39, 300, 39),
(40, 200, 40),
(41, 360, 41),
(42, 450, 42),
(43, 450, 43),
(44, 2500, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `cat_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nombre` varchar(100) NOT NULL,
  `cat_descripcion` varchar(300) NOT NULL,
  PRIMARY KEY (`cat_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`cat_codigo`, `cat_nombre`, `cat_descripcion`) VALUES
(11, 'Tela Kaki', 'Material  que es utilizado para mochilas y morrales'),
(12, 'Tela cuadriculado menudo', 'Material  que es utilizado para mochilas y morrales'),
(13, 'Tela cuadriculado grande', 'Material utilizado para mochilas, maletines y morrales'),
(14, 'Tela lona floreada', 'material utilizado para mochilas '),
(15, 'Regulador', 'Accesorio para maletines y morrales'),
(16, 'Cierre', 'Accesorio para todos los productos'),
(17, 'Llave', 'Accesorio para todos los productos'),
(18, 'Forro', 'accesorio para todos los productos'),
(19, 'Correa', 'Accesorio para todos los productos'),
(20, 'Lengueta', 'Accesorio para mochilas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cli_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(100) NOT NULL,
  `cli_nit` int(11) NOT NULL,
  `cli_telefono` int(11) NOT NULL,
  PRIMARY KEY (`cli_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cli_codigo`, `cli_nombre`, `cli_nit`, `cli_telefono`) VALUES
(1, 'maria aguilar', 4536477, 4654345),
(2, 'Abran Ballejos', 234567, 23456789);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `detp_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ped_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `detp_cantidad` int(11) NOT NULL,
  PRIMARY KEY (`detp_codigo`),
  KEY `pro_codigo` (`pro_codigo`),
  KEY `ped_codigo` (`ped_codigo`),
  KEY `ped_codigo_2` (`ped_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`detp_codigo`, `ped_codigo`, `pro_codigo`, `detp_cantidad`) VALUES
(1, 1, 1, 50),
(2, 2, 1, 240),
(3, 3, 1, 500),
(4, 4, 1, 50),
(5, 5, 2, 1000),
(6, 6, 1, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_salida_mp`
--

CREATE TABLE IF NOT EXISTS `detalle_salida_mp` (
  `dsmp_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `dsmp_cantidad` int(11) NOT NULL,
  `smp-codigo` int(11) NOT NULL,
  `map_codigo` int(11) NOT NULL,
  PRIMARY KEY (`dsmp_codigo`),
  KEY `smp-codigo` (`smp-codigo`),
  KEY `map_codigo` (`map_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `detalle_salida_mp`
--

INSERT INTO `detalle_salida_mp` (`dsmp_codigo`, `dsmp_cantidad`, `smp-codigo`, `map_codigo`) VALUES
(1, 100, 1, 32),
(2, 50, 1, 28),
(3, 480, 2, 32),
(4, 240, 2, 28),
(5, 420, 3, 32),
(6, 35, 3, 28),
(7, 0, 4, 32),
(8, 0, 4, 28),
(9, 100, 5, 32),
(10, 50, 5, 28),
(11, 500, 6, 44),
(12, 1000, 6, 34),
(13, 300, 6, 26),
(14, 4500, 7, 44),
(15, 2000, 7, 34),
(16, 1700, 7, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_materia_prima`
--

CREATE TABLE IF NOT EXISTS `ingreso_materia_prima` (
  `imap_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `map_codigo` int(11) NOT NULL,
  `imap_cantidad` int(11) NOT NULL,
  `imap_cant_bolsa` int(11) NOT NULL,
  `imap_fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`imap_codigo`),
  KEY `map_codigo` (`map_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `ingreso_materia_prima`
--

INSERT INTO `ingreso_materia_prima` (`imap_codigo`, `map_codigo`, `imap_cantidad`, `imap_cant_bolsa`, `imap_fecha_ingreso`) VALUES
(1, 26, 2, 150, '2016-04-13'),
(2, 44, 1, 500, '2016-04-13'),
(3, 43, 5, 90, '2016-04-13'),
(4, 42, 5, 90, '2016-04-13'),
(5, 41, 4, 90, '2016-04-13'),
(6, 40, 2, 100, '2016-04-13'),
(7, 39, 3, 100, '2016-04-13'),
(8, 38, 3, 500, '2016-04-13'),
(9, 37, 1, 1000, '2016-04-13'),
(10, 27, 2, 150, '2016-04-13'),
(11, 28, 5, 65, '2016-04-13'),
(12, 32, 2, 500, '2016-04-13'),
(13, 34, 1, 1000, '2016-04-13'),
(14, 36, 2, 1000, '2016-04-13'),
(15, 32, 2, 500, '2016-04-13'),
(16, 28, 1, 65, '2016-04-13'),
(17, 44, 2, 1000, '2016-04-26'),
(18, 26, 2, 1000, '2016-05-10'),
(19, 34, 3, 1000, '2016-05-10'),
(20, 44, 5, 1000, '2016-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_prima`
--

CREATE TABLE IF NOT EXISTS `materia_prima` (
  `map_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cat_codigo` int(11) NOT NULL,
  `prov_codigo` int(11) NOT NULL,
  `map_nombre` varchar(100) NOT NULL,
  `map_precio` float NOT NULL,
  `map_un_medida` varchar(20) NOT NULL,
  PRIMARY KEY (`map_codigo`),
  KEY `cat_codigo` (`cat_codigo`),
  KEY `prov_codigo` (`prov_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `materia_prima`
--

INSERT INTO `materia_prima` (`map_codigo`, `cat_codigo`, `prov_codigo`, `map_nombre`, `map_precio`, `map_un_medida`) VALUES
(26, 11, 14, 'Kaki negro', 1500, 'Metros'),
(27, 11, 14, 'Kaki plomo', 1500, 'Metros'),
(28, 12, 13, 'Cuadriculado M negro', 780, 'Metros'),
(29, 13, 13, 'Cuadriculado G negro', 840, 'Metros'),
(30, 14, 16, 'floreado fuxia', 840, 'Metros'),
(31, 14, 16, 'floreado lila', 840, 'Metros'),
(32, 15, 15, 'regulador n4', 70, 'Unidades'),
(33, 16, 14, 'cierre n5', 75, 'Metros'),
(34, 16, 14, 'cierre n8', 55, 'Metros'),
(35, 16, 14, 'cierre n10', 85, 'Metros'),
(36, 17, 14, 'llave n5', 150, 'Unidades'),
(37, 17, 14, 'llave n8', 185, 'Unidades'),
(38, 17, 14, 'llave n10', 190, 'Unidades'),
(39, 18, 13, 'forro antonio', 450, 'Metros'),
(40, 18, 15, 'forro meishua', 450, 'Metros'),
(41, 19, 15, 'corre n2 negro', 45, 'Metros'),
(42, 11, 15, 'corre n4 negro', 65, 'Metros'),
(43, 19, 15, 'corre n2 plomo', 55, 'Metros'),
(44, 20, 15, 'lengueta n2', 70, 'Unidades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `ped_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cli_codigo` int(11) NOT NULL,
  `ped_prec_total` float NOT NULL,
  `ped_cant_total` int(11) NOT NULL,
  `ped_fecha` varchar(20) NOT NULL,
  `ped_estado` varchar(20) NOT NULL,
  `ped_fecha_entrega` varchar(20) NOT NULL,
  PRIMARY KEY (`ped_codigo`),
  KEY `cli_codigo` (`cli_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`ped_codigo`, `cli_codigo`, `ped_prec_total`, `ped_cant_total`, `ped_fecha`, `ped_estado`, `ped_fecha_entrega`) VALUES
(1, 1, 2500, 50, '2016-04-13', 'PRODUCCION', '2016-04-20'),
(2, 1, 12000, 240, '2016-04-13', 'PRODUCCION', '2016-05-11'),
(3, 1, 25000, 500, '2016-04-13', 'FALTA MATERIAL', '2016-04-27'),
(4, 1, 2500, 50, '2016-04-13', 'PRODUCCION', '2016-04-21'),
(5, 1, 60000, 1000, '2016-04-13', 'PRODUCCION', '2016-04-27'),
(6, 2, 3000, 60, '2016-04-20', 'PENDIENTE', '2016-05-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `pro_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nombre` varchar(200) NOT NULL,
  `pro_precio` int(11) NOT NULL,
  `pro_descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`pro_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`pro_codigo`, `pro_nombre`, `pro_precio`, `pro_descripcion`) VALUES
(1, 'morral nike', 50, 'morral nike juvenil'),
(2, 'mochila nike', 60, 'mochila juvenil nike');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_materia`
--

CREATE TABLE IF NOT EXISTS `producto_materia` (
  `prm_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pro_codigo` int(11) NOT NULL,
  `map_codigo` int(11) NOT NULL,
  `prm_cantidad` int(11) NOT NULL,
  PRIMARY KEY (`prm_codigo`),
  KEY `pro-codigo` (`pro_codigo`),
  KEY `map_codigo` (`map_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `producto_materia`
--

INSERT INTO `producto_materia` (`prm_codigo`, `pro_codigo`, `map_codigo`, `prm_cantidad`) VALUES
(1, 1, 28, 1),
(2, 1, 32, 2),
(3, 2, 26, 2),
(4, 2, 34, 3),
(5, 2, 44, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `prov_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `prov_nombre` varchar(100) NOT NULL,
  `prov_pais` varchar(50) NOT NULL,
  `prov_descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`prov_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`prov_codigo`, `prov_nombre`, `prov_pais`, `prov_descripcion`) VALUES
(13, 'Elva', 'China', 'Material de baja calidad, menor precio'),
(14, 'Ninatex', 'Peru', 'Material de buena calidad, mayor costo '),
(15, 'Rex', 'Perú, china ', 'Material de ambas calidades, diferentes precios '),
(16, 'Faninatex', 'Perú, china ', 'Material de ambas calidades, diferentes precios ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_materia_prima`
--

CREATE TABLE IF NOT EXISTS `salida_materia_prima` (
  `smp_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `smp_fecha_salida` date NOT NULL,
  `ped_codigo` int(11) NOT NULL,
  PRIMARY KEY (`smp_codigo`),
  KEY `detp_codigo` (`ped_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `salida_materia_prima`
--

INSERT INTO `salida_materia_prima` (`smp_codigo`, `smp_fecha_salida`, `ped_codigo`) VALUES
(1, '2016-04-13', 1),
(2, '2016-04-13', 2),
(3, '2016-04-13', 3),
(4, '2016-04-13', 4),
(5, '2016-04-13', 4),
(6, '2016-04-13', 5),
(7, '2016-05-10', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usu_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(100) NOT NULL,
  `usu_apellido` varchar(100) NOT NULL,
  `usu_telefono` int(11) NOT NULL,
  `usu_direccion` varchar(100) NOT NULL,
  `usu_login` varchar(20) NOT NULL,
  `usu_password` varchar(20) NOT NULL,
  `usu_cargo` varchar(30) NOT NULL,
  PRIMARY KEY (`usu_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_codigo`, `usu_nombre`, `usu_apellido`, `usu_telefono`, `usu_direccion`, `usu_login`, `usu_password`, `usu_cargo`) VALUES
(1, 'Vladimir ', 'Copa Barreto', 4577889, 'Av. Petrolera', 'admin', 'admin', 'Administrador'),
(5, 'pro', 'pro', 213123, 'pro', 'pro', 'pro', 'Encargado de Produccion'),
(6, 'alm', 'alm', 1231, 'alm', 'alm', 'alm', 'Encargado de Almacen');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alerta`
--
ALTER TABLE `alerta`
  ADD CONSTRAINT `alerta_ibfk_1` FOREIGN KEY (`ped_codigo`) REFERENCES `pedido` (`ped_codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alerta_ibfk_2` FOREIGN KEY (`map_codigo`) REFERENCES `materia_prima` (`map_codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `almacen_materia`
--
ALTER TABLE `almacen_materia`
  ADD CONSTRAINT `almacen_materia_ibfk_1` FOREIGN KEY (`map_codigo`) REFERENCES `materia_prima` (`map_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pro_codigo`) REFERENCES `producto` (`pro_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ped_codigo`) REFERENCES `pedido` (`ped_codigo`);

--
-- Filtros para la tabla `detalle_salida_mp`
--
ALTER TABLE `detalle_salida_mp`
  ADD CONSTRAINT `detalle_salida_mp_ibfk_1` FOREIGN KEY (`smp-codigo`) REFERENCES `salida_materia_prima` (`smp_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_salida_mp_ibfk_2` FOREIGN KEY (`map_codigo`) REFERENCES `materia_prima` (`map_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingreso_materia_prima`
--
ALTER TABLE `ingreso_materia_prima`
  ADD CONSTRAINT `ingreso_materia_prima_ibfk_1` FOREIGN KEY (`map_codigo`) REFERENCES `materia_prima` (`map_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia_prima`
--
ALTER TABLE `materia_prima`
  ADD CONSTRAINT `materia_prima_ibfk_1` FOREIGN KEY (`cat_codigo`) REFERENCES `categoria` (`cat_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_prima_ibfk_2` FOREIGN KEY (`prov_codigo`) REFERENCES `proveedor` (`prov_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cli_codigo`) REFERENCES `cliente` (`cli_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_materia`
--
ALTER TABLE `producto_materia`
  ADD CONSTRAINT `producto_materia_ibfk_2` FOREIGN KEY (`map_codigo`) REFERENCES `materia_prima` (`map_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_materia_ibfk_3` FOREIGN KEY (`pro_codigo`) REFERENCES `producto` (`pro_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `salida_materia_prima`
--
ALTER TABLE `salida_materia_prima`
  ADD CONSTRAINT `salida_materia_prima_ibfk_1` FOREIGN KEY (`ped_codigo`) REFERENCES `pedido` (`ped_codigo`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
