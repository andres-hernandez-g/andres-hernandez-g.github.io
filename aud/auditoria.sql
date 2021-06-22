-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2021 a las 05:45:07
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `auditoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `celular_admin` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email_admin` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `nombre_admin`, `celular_admin`, `email_admin`, `password`) VALUES
(4, 'David', '3105846232', 'david@gmail.com', '$2y$10$fvcU5ZOHkapIyZhMoV92xeC5KyFP4jk2DqrixuGOoNwwXf2/IsPw6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `id_aplicacion` int(11) NOT NULL,
  `nombre_aplicacion` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`id_aplicacion`, `nombre_aplicacion`) VALUES
(5, 'MECI Modelo Estándar de Control Interno'),
(2, 'OEA - Operador Económico Autorizado'),
(7, 'SGA Sistema de Gestión Ambiental'),
(1, 'SGC Cadena de Suministro'),
(3, 'SGC Sistema de Gestión de Calidad'),
(4, 'SGCGP Sistema de Gestión de Calidad en Gestión Pública'),
(6, 'SGSI Sistema de Gestión de Seguridad de Información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos_gralco`
--

CREATE TABLE `capitulos_gralco` (
  `cap` int(11) NOT NULL,
  `cons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `capitulos_gralco`
--

INSERT INTO `capitulos_gralco` (`cap`, `cons_id`) VALUES
(1, 18),
(2, 18),
(3, 18),
(6, 18),
(8, 18),
(10, 18),
(4, 19),
(5, 19),
(7, 19),
(9, 19),
(11, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultor`
--

CREATE TABLE `consultor` (
  `id_cons` int(11) NOT NULL,
  `nombre_cons` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `celular_cons` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email_cons` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `consultor`
--

INSERT INTO `consultor` (`id_cons`, `nombre_cons`, `celular_cons`, `email_cons`, `password`) VALUES
(18, 'Carlos Hernandez', '3104873628', 'carlos@gmail.com', '$2y$10$X15l4mmhZxz0tPFosSVMKem35RxcsBvePRfnvATj/F6Dueewl4V4C'),
(19, 'Andres Hernandez', '3157020016', 'andres@gmail.com', '$2y$10$jeSmNWAsPpymLX9tvII/SOFjWwZW9gzu2odxyc4Ovuj4lOPxRnTVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cons_cliente`
--

CREATE TABLE `cons_cliente` (
  `id_cons_cl` int(11) NOT NULL,
  `id_cons` int(11) NOT NULL,
  `cliente` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cons_cliente`
--

INSERT INTO `cons_cliente` (`id_cons_cl`, `id_cons`, `cliente`) VALUES
(60, 18, 'Gralco'),
(61, 19, 'Gralco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id_reg` int(11) NOT NULL,
  `cl_nombre` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cl_contacto` varchar(60) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cl_email` varchar(60) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cl_celular` varchar(40) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `srvc_id` int(11) NOT NULL,
  `apl_nombre` int(11) NOT NULL,
  `enf_nombre` int(11) NOT NULL,
  `orden_servicio` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fch_inicio` date NOT NULL,
  `fch_fin` date NOT NULL,
  `t_estimado` int(11) NOT NULL,
  `cons_nombre` int(11) NOT NULL,
  `eq_1_nombre` int(11) DEFAULT NULL,
  `eq_2_nombre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id_reg`, `cl_nombre`, `cl_contacto`, `cl_email`, `cl_celular`, `srvc_id`, `apl_nombre`, `enf_nombre`, `orden_servicio`, `fch_inicio`, `fch_fin`, `t_estimado`, `cons_nombre`, `eq_1_nombre`, `eq_2_nombre`) VALUES
(65, 'Gralco', '', '', '', 2, 2, 2, '', '2021-01-20', '2021-07-20', 6, 18, 19, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfoque`
--

CREATE TABLE `enfoque` (
  `id_enfoque` int(11) NOT NULL,
  `nombre_enfoque` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `enfoque`
--

INSERT INTO `enfoque` (`id_enfoque`, `nombre_enfoque`) VALUES
(3, 'Consultoría'),
(2, 'Diagnóstico'),
(1, 'Implementación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numerales_gralco`
--

CREATE TABLE `numerales_gralco` (
  `numeral` varchar(40) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `descripcion` varchar(4000) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `area_responsable` varchar(1000) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `avance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `numerales_gralco`
--

INSERT INTO `numerales_gralco` (`numeral`, `descripcion`, `area_responsable`, `avance`) VALUES
('1_1', '', '', 0),
('1_2', '', '', 0),
('1_3Impo', '', '', 0),
('1_3Expo', '', '', 0),
('1_4Impo', '', '', 0),
('1_4Expo', '', '', 0),
('1_5', '', '', 0),
('1_6', '', '', 0),
('1_7', '', '', 0),
('1_8', '', '', 0),
('1_9', '', '', 0),
('1_10', '', '', 0),
('1_11', '', '', 0),
('1_12', '', '', 0),
('2_1Impo', NULL, NULL, 0),
('2_1Expo', NULL, NULL, 0),
('2_2Impo', NULL, NULL, 0),
('2_2Expo', NULL, NULL, 0),
('2_3Impo', NULL, NULL, 0),
('3_1Impo', NULL, NULL, 0),
('3_1Expo', NULL, NULL, 0),
('3_2Impo', NULL, NULL, 0),
('3_2Expo', NULL, NULL, 0),
('3_3Impo', NULL, NULL, 0),
('3_3Expo', NULL, NULL, 0),
('3_4Impo', NULL, NULL, 0),
('3_4Expo', NULL, NULL, 0),
('3_5Impo', NULL, NULL, 0),
('3_5Expo', NULL, NULL, 0),
('3_6Impo', NULL, NULL, 0),
('3_6Expo', NULL, NULL, 0),
('3_7Impo', NULL, NULL, 0),
('3_7Expo', NULL, NULL, 0),
('3_8Expo', NULL, NULL, 0),
('3_9Expo', NULL, NULL, 0),
('4_1', NULL, NULL, 0),
('4_2', NULL, NULL, 0),
('4_3', NULL, NULL, 0),
('4_4', NULL, NULL, 0),
('4_5', NULL, NULL, 0),
('4_6', NULL, NULL, 0),
('4_7', NULL, NULL, 0),
('5_1', NULL, NULL, 0),
('5_2', NULL, NULL, 0),
('5_3', NULL, NULL, 0),
('5_4', NULL, NULL, 0),
('5_5', NULL, NULL, 0),
('5_6', NULL, NULL, 0),
('5_7', NULL, NULL, 0),
('6_1', NULL, NULL, 0),
('6_2', NULL, NULL, 0),
('6_3Impo', NULL, NULL, 0),
('6_3Expo', NULL, NULL, 0),
('6_4Impo', NULL, NULL, 0),
('6_4Expo', NULL, NULL, 0),
('6_5Impo', NULL, NULL, 0),
('6_5Expo', NULL, NULL, 0),
('6_6Impo', NULL, NULL, 0),
('6_6Expo', NULL, NULL, 0),
('6_7Impo', NULL, NULL, 0),
('6_7Expo', NULL, NULL, 0),
('6_8Impo', NULL, NULL, 0),
('6_8Expo', NULL, NULL, 0),
('6_9Impo', NULL, NULL, 0),
('6_9Expo', NULL, NULL, 0),
('6_10Impo', NULL, NULL, 0),
('6_10Expo', NULL, NULL, 0),
('6_11Impo', NULL, NULL, 0),
('6_11Expo', NULL, NULL, 0),
('6_12Impo', NULL, NULL, 0),
('6_12Expo', NULL, NULL, 0),
('6_13Impo', NULL, NULL, 0),
('6_13Expo', NULL, NULL, 0),
('6_14Impo', NULL, NULL, 0),
('7_1', '', '', 0),
('7_2', '', '', 0),
('7_3', '', '', 0),
('7_4', '', '', 0),
('7_5', '', '', 0),
('7_6', '', '', 0),
('7_7', '', '', 0),
('8_1', NULL, NULL, 0),
('8_2', NULL, NULL, 0),
('8_3', NULL, NULL, 0),
('8_4', NULL, NULL, 0),
('8_5', NULL, NULL, 0),
('8_6', NULL, NULL, 0),
('8_7', NULL, NULL, 0),
('9_1', NULL, NULL, 0),
('9_2', NULL, NULL, 0),
('9_3', NULL, NULL, 0),
('9_4', NULL, NULL, 0),
('10_1Impo', NULL, NULL, 0),
('10_1Expo', NULL, NULL, 0),
('10_2Impo', NULL, NULL, 0),
('10_2Expo', NULL, NULL, 0),
('10_3Impo', NULL, NULL, 0),
('10_3Expo', NULL, NULL, 0),
('10_4Impo', NULL, NULL, 0),
('10_4Expo', NULL, NULL, 0),
('10_5Impo', NULL, NULL, 0),
('10_5Expo', NULL, NULL, 0),
('10_6Impo', NULL, NULL, 0),
('10_6Expo', NULL, NULL, 0),
('10_7Impo', NULL, NULL, 0),
('10_7Expo', NULL, NULL, 0),
('10_8Impo', NULL, NULL, 0),
('10_8Expo', NULL, NULL, 0),
('10_9Impo', NULL, NULL, 0),
('10_9Expo', NULL, NULL, 0),
('10_10Impo', NULL, NULL, 0),
('10_10Expo', NULL, NULL, 0),
('10_11Expo', NULL, NULL, 0),
('10_12Expo', NULL, NULL, 0),
('10_13Expo', NULL, NULL, 0),
('10_14Expo', NULL, NULL, 0),
('10_15Expo', NULL, NULL, 0),
('10_16Expo', NULL, NULL, 0),
('10_17Expo', NULL, NULL, 0),
('10_18Expo', NULL, NULL, 0),
('10_19Expo', NULL, NULL, 0),
('11_1Expo', NULL, NULL, 0),
('11_2Expo', NULL, NULL, 0),
('11_3Expo', NULL, NULL, 0),
('11_4Expo', NULL, NULL, 0),
('11_5Expo', NULL, NULL, 0),
('11_6Expo', NULL, NULL, 0),
('11_7Expo', NULL, NULL, 0),
('11_8Expo', NULL, NULL, 0),
('11_9Expo', NULL, NULL, 0),
('11_10Expo', NULL, NULL, 0),
('11_11Expo', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre_servicio`) VALUES
(3, 'Auditoría'),
(2, 'Consultoría'),
(1, 'Formación'),
(4, 'Otro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`id_aplicacion`),
  ADD KEY `nombre_aplicacion` (`nombre_aplicacion`);

--
-- Indices de la tabla `capitulos_gralco`
--
ALTER TABLE `capitulos_gralco`
  ADD PRIMARY KEY (`cap`),
  ADD KEY `cons_id` (`cons_id`);

--
-- Indices de la tabla `consultor`
--
ALTER TABLE `consultor`
  ADD PRIMARY KEY (`id_cons`),
  ADD KEY `nombre_cons` (`nombre_cons`),
  ADD KEY `celular_cons` (`celular_cons`),
  ADD KEY `email_cons` (`email_cons`);

--
-- Indices de la tabla `cons_cliente`
--
ALTER TABLE `cons_cliente`
  ADD PRIMARY KEY (`id_cons_cl`),
  ADD KEY `id_cons` (`id_cons`),
  ADD KEY `cliente` (`cliente`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id_reg`),
  ADD KEY `srvc_nombre` (`srvc_id`),
  ADD KEY `apl_nombre` (`apl_nombre`),
  ADD KEY `enf_nombre` (`enf_nombre`),
  ADD KEY `cl_nombre` (`cl_nombre`),
  ADD KEY `cons_nombre` (`cons_nombre`),
  ADD KEY `eq_1_nombre` (`eq_1_nombre`),
  ADD KEY `eq_2_nombre` (`eq_2_nombre`);

--
-- Indices de la tabla `enfoque`
--
ALTER TABLE `enfoque`
  ADD PRIMARY KEY (`id_enfoque`),
  ADD KEY `nombre_enfoque` (`nombre_enfoque`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `nombre_servicio` (`nombre_servicio`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `id_aplicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `capitulos_gralco`
--
ALTER TABLE `capitulos_gralco`
  MODIFY `cap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `consultor`
--
ALTER TABLE `consultor`
  MODIFY `id_cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `cons_cliente`
--
ALTER TABLE `cons_cliente`
  MODIFY `id_cons_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `enfoque`
--
ALTER TABLE `enfoque`
  MODIFY `id_enfoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulos_gralco`
--
ALTER TABLE `capitulos_gralco`
  ADD CONSTRAINT `capitulos_gralco_ibfk_1` FOREIGN KEY (`cons_id`) REFERENCES `consultor` (`id_cons`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cons_cliente`
--
ALTER TABLE `cons_cliente`
  ADD CONSTRAINT `cons_cliente_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `datos` (`cl_nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cons_cliente_ibfk_2` FOREIGN KEY (`id_cons`) REFERENCES `consultor` (`id_cons`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`enf_nombre`) REFERENCES `enfoque` (`id_enfoque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `datos_ibfk_2` FOREIGN KEY (`srvc_id`) REFERENCES `servicio` (`id_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `datos_ibfk_3` FOREIGN KEY (`apl_nombre`) REFERENCES `aplicacion` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
