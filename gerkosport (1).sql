-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2016 a las 07:41:55
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `alerta`
--

INSERT INTO `alerta` (`ale_codigo`, `ped_codigo`, `map_codigo`, `ale_falta`, `ale_existe`, `ale_total`) VALUES
(8, 13, 48, 40, 200, 240),
(9, 11, 62, 60, 300, 360),
(10, 11, 58, 200, 160, 360),
(11, 11, 49, 230, 130, 360),
(12, 10, 58, 120, 0, 120),
(13, 12, 62, 180, 0, 180),
(14, 12, 58, 220, 80, 300),
(15, 12, 54, 180, 0, 180),
(16, 12, 49, 180, 0, 180),
(17, 12, 61, 120, 0, 120),
(18, 12, 53, 120, 0, 120),
(19, 12, 48, 85, 35, 120);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `almacen_materia`
--

INSERT INTO `almacen_materia` (`almm_codigo`, `almm_cantidad`, `map_codigo`) VALUES
(45, 155, 45),
(46, 310, 46),
(47, 130, 47),
(48, 0, 48),
(49, 0, 49),
(50, 0, 50),
(51, 980, 51),
(52, 4000, 52),
(53, 0, 53),
(54, 0, 54),
(55, 6000, 55),
(56, 2280, 56),
(57, 1780, 57),
(58, 0, 58),
(59, 600, 59),
(60, 400, 60),
(61, 0, 61),
(62, 0, 62),
(63, 2000, 63);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cli_codigo`, `cli_nombre`, `cli_nit`, `cli_telefono`) VALUES
(1, 'LOCAL', 0, 0),
(4, 'Abran Ballejos', 98767876, 4565434),
(5, 'Maria Aguilar', 43234543, 4898765),
(6, 'Omar Rojas', 56432567, 79865434),
(7, 'Jose Luis Ovando ', 54367890, 79865456);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`detp_codigo`, `ped_codigo`, `pro_codigo`, `detp_cantidad`) VALUES
(9, 10, 4, 60),
(10, 10, 5, 60),
(11, 11, 6, 120),
(12, 11, 4, 60),
(13, 12, 6, 60),
(14, 12, 5, 60),
(15, 13, 5, 120),
(16, 14, 5, 120),
(17, 14, 4, 60);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `detalle_salida_mp`
--

INSERT INTO `detalle_salida_mp` (`dsmp_codigo`, `dsmp_cantidad`, `smp-codigo`, `map_codigo`) VALUES
(17, 240, 8, 61),
(18, 240, 8, 58),
(19, 360, 8, 56),
(20, 240, 8, 53),
(21, 240, 8, 51),
(22, 200, 8, 48),
(23, 40, 9, 48),
(24, 300, 10, 62),
(25, 160, 10, 58),
(26, 480, 10, 57),
(27, 360, 10, 54),
(28, 360, 10, 51),
(29, 130, 10, 49),
(30, 120, 11, 61),
(31, 0, 11, 58),
(32, 180, 11, 56),
(33, 120, 11, 53),
(34, 120, 11, 51),
(35, 120, 11, 48),
(36, 120, 12, 58),
(37, 0, 13, 62),
(38, 80, 13, 58),
(39, 240, 13, 57),
(40, 0, 13, 54),
(41, 300, 13, 51),
(42, 0, 13, 49),
(43, 0, 13, 61),
(44, 180, 13, 56),
(45, 0, 13, 53),
(46, 35, 13, 48);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `ingreso_materia_prima`
--

INSERT INTO `ingreso_materia_prima` (`imap_codigo`, `map_codigo`, `imap_cantidad`, `imap_cant_bolsa`, `imap_fecha_ingreso`) VALUES
(21, 63, 2, 1000, '2016-06-14'),
(22, 62, 3, 100, '2016-06-14'),
(23, 61, 3, 120, '2016-06-14'),
(24, 60, 4, 100, '2016-06-14'),
(25, 59, 4, 150, '2016-06-14'),
(26, 58, 2, 200, '2016-06-14'),
(27, 57, 5, 500, '2016-06-14'),
(28, 56, 3, 1000, '2016-06-14'),
(29, 55, 3, 2000, '2016-06-14'),
(30, 54, 4, 90, '2016-06-14'),
(31, 53, 4, 90, '2016-06-14'),
(32, 52, 2, 2000, '2016-06-14'),
(33, 51, 2, 1000, '2016-06-14'),
(34, 49, 2, 65, '2016-06-14'),
(35, 48, 2, 100, '2016-06-14'),
(36, 47, 2, 65, '2016-06-14'),
(37, 46, 2, 155, '2016-06-14'),
(38, 45, 1, 155, '2016-06-14'),
(39, 48, 3, 65, '2016-06-14'),
(40, 58, 2, 100, '2016-06-14');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `materia_prima`
--

INSERT INTO `materia_prima` (`map_codigo`, `cat_codigo`, `prov_codigo`, `map_nombre`, `map_precio`, `map_un_medida`) VALUES
(45, 11, 16, 'Kaki negro', 1500, 'Metros'),
(46, 11, 16, 'Kaki plomo', 1500, 'Metros'),
(47, 13, 13, 'Cuadriculado G negro', 780, 'Metros'),
(48, 12, 13, 'Cuadriculado M negro', 650, 'Metros'),
(49, 14, 15, 'floreado fuxia', 850, 'Metros'),
(50, 14, 15, 'floreado lila', 850, 'Metros'),
(51, 15, 14, 'regulador n4', 75, 'Unidades'),
(52, 16, 14, 'cierre n5', 90, 'Metros'),
(53, 16, 14, 'cierre n8', 85, 'Metros'),
(54, 16, 14, 'cierre n10', 95, 'Metros'),
(55, 17, 14, 'llave n5', 180, 'Unidades'),
(56, 17, 14, 'llave n8', 175, 'Unidades'),
(57, 17, 14, 'llave n10', 190, 'Unidades'),
(58, 18, 15, 'forro antonio', 470, 'Metros'),
(59, 19, 15, 'corre n2 negro', 55, 'Metros'),
(60, 19, 15, 'corre n2 plomo', 65, 'Metros'),
(61, 19, 15, 'corre n4 negro', 75, 'Metros'),
(62, 19, 13, 'corre n4 plomo', 85, 'Metros'),
(63, 20, 16, 'lengueta n2', 75, 'Unidades');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`ped_codigo`, `cli_codigo`, `ped_prec_total`, `ped_cant_total`, `ped_fecha`, `ped_estado`, `ped_fecha_entrega`) VALUES
(10, 6, 6300, 120, '2016-06-14', 'PRODUCCION', '2016-07-04'),
(11, 5, 13200, 180, '2016-06-14', 'FALTA MATERIAL', '2016-07-11'),
(12, 5, 7500, 120, '2016-06-14', 'FALTA MATERIAL', '2016-06-27'),
(13, 1, 5400, 120, '2016-06-14', 'PRODUCCION', '2016-07-11'),
(14, 7, 9000, 180, '2016-06-14', 'PENDIENTE', '2016-07-01');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`pro_codigo`, `pro_nombre`, `pro_precio`, `pro_descripcion`) VALUES
(4, 'MHN1', 60, 'mochila juvenil nike con estampado grande '),
(5, 'MRN1', 45, 'morral nike juvenil con varios detalles en la tapa, doble bolsillo'),
(6, 'MTTO1', 80, 'maletin totto de buena calidad bien reforzado');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `producto_materia`
--

INSERT INTO `producto_materia` (`prm_codigo`, `pro_codigo`, `map_codigo`, `prm_cantidad`) VALUES
(6, 5, 48, 2),
(7, 5, 51, 2),
(8, 5, 53, 2),
(9, 5, 56, 3),
(10, 5, 58, 2),
(11, 5, 61, 2),
(12, 6, 49, 3),
(13, 6, 51, 3),
(14, 6, 54, 3),
(15, 6, 57, 4),
(16, 6, 58, 3),
(17, 6, 62, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `salida_materia_prima`
--

INSERT INTO `salida_materia_prima` (`smp_codigo`, `smp_fecha_salida`, `ped_codigo`) VALUES
(8, '2016-02-10', 13),
(9, '2016-04-13', 13),
(10, '2016-06-14', 11),
(11, '2016-06-14', 10),
(12, '2016-06-14', 10),
(13, '2016-06-14', 12);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_codigo`, `usu_nombre`, `usu_apellido`, `usu_telefono`, `usu_direccion`, `usu_login`, `usu_password`, `usu_cargo`) VALUES
(1, 'Vladimir ', 'Copa Barreto', 4577889, 'Av. Petrolera', 'admin', 'admin', 'Administrador'),
(5, 'pro', 'pro', 213123, 'pro', 'pro', 'pro', 'Encargado de Produccion'),
(6, 'alm', 'alm', 1231, 'alm', 'alm', 'alm', 'Encargado de Almacen'),
(7, 'Vladimir', 'Copa Barreto', 0, 'Avenida Suecia', 'superadmin', 'superadmin', 'SUPERADMIN');

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
