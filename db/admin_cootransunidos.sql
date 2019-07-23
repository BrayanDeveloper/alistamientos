-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2019 a las 23:51:49
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_cootransunidos1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alistamientos`
--

CREATE TABLE `alistamientos` (
  `id_alistamiento` int(11) NOT NULL,
  `fecha_inspeccion` varchar(40) NOT NULL,
  `hora_inspeccion` varchar(30) DEFAULT NULL,
  `n_alistamiento` int(11) DEFAULT NULL,
  `distribuccion` varchar(40) DEFAULT NULL,
  `tipo_alistamiento` varchar(90) DEFAULT NULL,
  `usuario_alistamiento` varchar(90) DEFAULT NULL,
  `placa` varchar(30) DEFAULT NULL,
  `n_interno` int(11) NOT NULL,
  `cantidad_puestos` int(11) DEFAULT NULL,
  `clase_vehiculo` varchar(90) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `hora_despacho` varchar(40) DEFAULT NULL,
  `ruta_operativa` varchar(90) DEFAULT NULL,
  `kilometraje` varchar(30) DEFAULT NULL,
  `empresa_vehiculo` varchar(40) DEFAULT NULL,
  `cedula_propietario` varchar(12) DEFAULT NULL,
  `nombre_propietario` varchar(40) DEFAULT NULL,
  `cedula_conductor` varchar(12) DEFAULT NULL,
  `nombre_conductor` varchar(40) DEFAULT NULL,
  `estado_final` varchar(20) DEFAULT NULL,
  `observacion_general` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alistamientos`
--

INSERT INTO `alistamientos` (`id_alistamiento`, `fecha_inspeccion`, `hora_inspeccion`, `n_alistamiento`, `distribuccion`, `tipo_alistamiento`, `usuario_alistamiento`, `placa`, `n_interno`, `cantidad_puestos`, `clase_vehiculo`, `valor`, `hora_despacho`, `ruta_operativa`, `kilometraje`, `empresa_vehiculo`, `cedula_propietario`, `nombre_propietario`, `cedula_conductor`, `nombre_conductor`, `estado_final`, `observacion_general`, `id_usuario`) VALUES
(1, '2019-07-17', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-07-24', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-07-18', '01:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-07-04', '01:01', 12, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-07-16', '01:00', 1, '1', 'Preoperacional', 'demo', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-07-18', '01:00', 1, '1', 'Preoperacional', 'demo', '212', 1212, 1, '1', 1, '08:07:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2020-10-19', '03:01', 1, '1', 'Preoperacional', 'demo', '212', 1212, 1, '1', 1, '08:07:31', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2020-08-04', '01:00', 22, '1', 'Preoperacional', 'demo', '212', 1212, 2, '1', 1, '08:07:22', '12w', '121w', 'w2w', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-07-03', '01:00', 1, '1', 'Preoperacional', 'demo', '212', 1212, 1, '1', 1, '08:07:35', '12w', '121w', 'w2w', '1', 'Brayan', '1', '1w2w2', NULL, NULL, NULL),
(10, '2019-07-04', '01:00', 4, '1', 'Preoperacional', 'demo', '212', 1212, 1, '1', 1, '08:07:14', '12w', '121w', 'w2w', '1', 'Brayan', '1', '1w2w2', 'aprobada', 'jjjss', 1),
(11, '2019-07-10', '02:00', 1, '1', 'Preoperacional', 'demo', '212', 1212, 1, '1', 1, '08:07:30', '12w', '121w', 'w2w', '1', 'Brayan', '1', '1w2w2', 'aprobada', 'prueba', 1),
(12, 'Mon, 15 Jul 2019 13:32:42 +0000', '13:32:42 PM', 11, '818', 'Preoperacional', 'demo', '1', 1, 11, '1', 1, '13:32:42 PM', '1', '1', '1', '1', '1', '1', '1', 'aprobada', '11', 1),
(13, 'Mon, 22 Jul 2019 23:40:36 +0200', '23:40:36 PM', 12, '818', 'Preoperacional', 'admin', '4', 4, 4, '4', 4, '23:40:36 PM', '4', '4', '4', '4', '4', '4', '4', 'aprobada', '4', 3),
(14, 'Mon, 22 Jul 2019 23:42:58 +0200', '23:42:58 PM', 13, '9', 'Preoperacional', 'demo', '9', 9, 9, '9', 9, '23:42:58 PM', '9', '9', '9', '9', '9', '9', '9', 'aprobada', '9', 1),
(15, 'Tue, 23 Jul 2019 00:21:46 +0200', '00:21:46 AM', 14, '7', 'Preoperacional', 'demo', '7', 7, 7, '7', 7, '00:21:46 AM', '7', '7', '7', '7', '7', '7', '7', 'aprobada', '7', 1),
(16, 'Tue, 23 Jul 2019 00:22:21 +0200', '00:22:21 AM', 15, '6', 'Preoperacional', 'admin', '6', 6, 6, '6', 6, '00:22:21 AM', '6', '6', '666', '6', '6', '6', '6', 'aprobada', '6', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentacion`
--

CREATE TABLE `documentacion` (
  `id_documentacion` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(9999) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `accion` varchar(255) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id_log`, `accion`, `fecha`, `username`, `id_usuario`) VALUES
(1, 'ingreso al sistema', 'Sun, 21 Jul 2019 23:28:14 +0200', '', 1),
(2, 'salida del sistema', 'Sun, 21 Jul 2019 23:58:59 +0200', '', 1),
(3, 'ingreso al sistema', 'Sun, 21 Jul 2019 23:59:06 +0200', '', 1),
(4, 'salida del sistema', 'Mon, 22 Jul 2019 00:00:02 +0200', '', 1),
(5, 'ingreso al sistema', 'Mon, 22 Jul 2019 00:00:06 +0200', '', 1),
(6, 'salida del sistema', 'Mon, 22 Jul 2019 00:10:09 +0200', '', 1),
(7, 'ingreso al sistema', 'Mon, 22 Jul 2019 00:36:44 +0200', 'demo', 1),
(8, 'ingreso al sistema', 'Mon, 22 Jul 2019 00:39:22 +0200', 'demo', 1),
(9, 'ingreso al sistema', 'Mon, 22 Jul 2019 00:39:48 +0200', 'demo', 1),
(10, 'ingreso al sistema', 'Mon, 22 Jul 2019 00:40:28 +0200', 'demo', 1),
(11, 'salida del sistema', 'Mon, 22 Jul 2019 00:40:31 +0200', 'demo', 1),
(12, 'ingreso al sistema', 'Mon, 22 Jul 2019 02:26:06 +0200', 'demo', 1),
(13, 'salida del sistema', 'Mon, 22 Jul 2019 02:32:41 +0200', 'demo', 1),
(14, 'salida del sistema', 'Mon, 22 Jul 2019 23:41:59 +0200', 'admin', 3),
(15, 'ingreso al sistema', 'Mon, 22 Jul 2019 23:42:02 +0200', 'demo', 1),
(16, 'ingreso al sistema', 'Tue, 23 Jul 2019 00:21:19 +0200', 'demo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_tiket_soportes`
--

CREATE TABLE `respuestas_tiket_soportes` (
  `id_respuesta_tiked_soporte` int(11) NOT NULL,
  `respuesta` varchar(9999) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `id_tiket` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuestas_tiket_soportes`
--

INSERT INTO `respuestas_tiket_soportes` (`id_respuesta_tiked_soporte`, `respuesta`, `usuario`, `fecha`, `id_tiket`) VALUES
(1, '1', 'brayan', '1', 1),
(2, 'prueba de respuestas', 'demo', '2019-07-21', 1),
(3, 'no entiendo\r\n', 'demo', '2019-07-21', 1),
(4, 'prueba con fecha', 'demo', 'Sun, 21 Jul 2019 01:26:47 +0200', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiket_soportes`
--

CREATE TABLE `tiket_soportes` (
  `id_tiket` int(11) NOT NULL,
  `codigo` varchar(9999) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `mensaje` varchar(9999) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `prioridad` varchar(20) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiket_soportes`
--

INSERT INTO `tiket_soportes` (`id_tiket`, `codigo`, `usuario`, `mensaje`, `estado`, `fecha`, `prioridad`, `tipo`, `id_usuario`) VALUES
(1, '4793', 'demo', 'prueba de tiket', 'activo', '2019-07-21', 'ALTA', 'Preoperacional', 1),
(2, '1595', 'admin', 'admin-tiket', 'activo', '2019-07-22', 'ALTA', 'Preoperacional', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firma` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `username`, `email`, `password`, `firma`, `estado`, `rol`) VALUES
(1, 'Demo nombre', 'Demo Apellido', 'demo', 'demoEmail@computrons.com', 'demo', 'firma.jpg', 'suspendido', 'usuario'),
(4, 'prueba', 'prueba', 'prueba', 'prueba@gmail.com', 'prueba', '', 'activo', 'admin'),
(3, 'admin', 'admin', 'admin', 'admin@hotmail.com', 'admin', 'Isopoly_01.gif', 'activo', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alistamientos`
--
ALTER TABLE `alistamientos`
  ADD PRIMARY KEY (`id_alistamiento`);

--
-- Indices de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  ADD PRIMARY KEY (`id_documentacion`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `respuestas_tiket_soportes`
--
ALTER TABLE `respuestas_tiket_soportes`
  ADD PRIMARY KEY (`id_respuesta_tiked_soporte`);

--
-- Indices de la tabla `tiket_soportes`
--
ALTER TABLE `tiket_soportes`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alistamientos`
--
ALTER TABLE `alistamientos`
  MODIFY `id_alistamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  MODIFY `id_documentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `respuestas_tiket_soportes`
--
ALTER TABLE `respuestas_tiket_soportes`
  MODIFY `id_respuesta_tiked_soporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tiket_soportes`
--
ALTER TABLE `tiket_soportes`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
