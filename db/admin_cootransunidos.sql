-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-07-2019 a las 17:31:43
-- Versión del servidor: 10.2.25-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_cootransunidos`
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
(12, 'Mon, 15 Jul 2019 13:32:42 +0000', '13:32:42 PM', 11, '818', 'Preoperacional', 'demo', '1', 1, 11, '1', 1, '13:32:42 PM', '1', '1', '1', '1', '1', '1', '1', 'aprobada', '11', 1);

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
(1, 'Demo nombre', 'Demo Apellido', 'demo', 'demoEmail@computrons.com', 'demo', 'firma.jpg', 'activo', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alistamientos`
--
ALTER TABLE `alistamientos`
  ADD PRIMARY KEY (`id_alistamiento`);

--
-- Indices de la tabla `respuestas_tiket_soportes`
--
ALTER TABLE `respuestas_tiket_soportes`
  ADD PRIMARY KEY (`id_respuesta_tiked_soporte`),
  ADD KEY `id_tiket` (`id_tiket`);

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
  MODIFY `id_alistamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `respuestas_tiket_soportes`
--
ALTER TABLE `respuestas_tiket_soportes`
  MODIFY `id_respuesta_tiked_soporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiket_soportes`
--
ALTER TABLE `tiket_soportes`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
