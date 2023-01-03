-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-01-2023 a las 11:17:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `foto` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'admin', '123', 'Usuario', 'Administrador', '', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `nyaP` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `documento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorios`
--

CREATE TABLE `consultorios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultorios`
--

INSERT INTO `consultorios` (`id`, `nombre`) VALUES
(1, 'Odontologia'),
(2, 'Cardiologia'),
(4, 'Laboratorio'),
(5, 'Nutricion'),
(6, 'Podologia'),
(8, 'Psicologia'),
(9, 'Reabilitacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `foto` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `sexo` text NOT NULL,
  `horarioE` time NOT NULL DEFAULT '08:00:00',
  `horarioS` time NOT NULL DEFAULT '18:00:00',
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id`, `id_consultorio`, `apellido`, `nombre`, `foto`, `usuario`, `clave`, `sexo`, `horarioE`, `horarioS`, `rol`) VALUES
(1, 1, 'Jacome', 'Alexander', 'Vistas/img/Doctores/Doc-976.jpg', 'doc', 'tor', 'Masculino', '07:00:00', '18:00:00', 'Doctor'),
(2, 9, 'Piolincito', 'El Canario', '', 'piolin', '123', 'Masculino', '08:00:00', '16:00:00', 'Doctor'),
(3, 5, 'Maria', 'Burbano', '', 'mari', '123', 'Femenino', '08:00:00', '12:00:00', 'Doctor'),
(4, 8, 'prueba', 'doctor', '', 'testdoctor', '1234', 'Femenino', '08:00:00', '17:00:00', 'Doctor'),
(5, 2, 'Urbina', 'Andrea', '', 'andi', '123', 'Femenino', '07:00:00', '15:00:00', 'Doctor'),
(6, 1, 'Buendia', 'Francisco', '', '12', '34', 'Masculino', '08:00:00', '18:00:00', 'Doctor'),
(7, 6, 'Jacome', 'Alexander', '', '123', '45', 'Masculino', '09:00:00', '17:00:00', 'Doctor'),
(8, 2, 'Estrella', 'Patricio', '', 'abc', 'def', 'Masculino', '08:00:00', '18:00:00', 'Doctor'),
(10, 8, 'Pito', 'Elsa', '', 'els', 'a', 'Femenino', '08:00:00', '18:00:00', 'Doctor'),
(12, 8, 'Jacome', 'Miguelito', '', 'mi', 'guel', 'Masculino', '10:00:00', '16:00:00', 'Doctor'),
(13, 4, 'Burbano', 'Lucas', '', 'lu', 'cas', 'Masculino', '10:00:00', '15:00:00', 'Doctor'),
(14, 5, 'Salazar', 'Frida', '', 'fri', 'da', 'Femenino', '08:00:00', '18:00:00', 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `intro` text NOT NULL,
  `horaE` time NOT NULL,
  `horaS` time NOT NULL,
  `telefono` text NOT NULL,
  `correo` text NOT NULL,
  `direccion` text NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `intro`, `horaE`, `horaS`, `telefono`, `correo`, `direccion`, `logo`, `favicon`) VALUES
(1, 'Hospital básico de la zona El Oro', '08:30:00', '19:00:00', '0964074245', 'info@hbzel.com', 'El Oro - Av. Quito y 9 de Octubre', 'Vistas/img/logo.png', 'Vistas/img/favicon.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `documento` text NOT NULL,
  `foto` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `apellido`, `nombre`, `documento`, `foto`, `usuario`, `clave`, `rol`) VALUES
(1, 'Davila', 'Lucia', '1718191514', '', 'pacien', 'te', 'Paciente'),
(2, 'Moreno Merizalde', 'Adriana Brigethe', '1715141219', '', 'pacient', 'e', 'Paciente'),
(3, 'prueba', 'paciente de', '1714', '', '12', '34', 'Paciente'),
(5, 'Alexander', 'Jacome', '123456789', '', 'paci', 'ente', 'Paciente'),
(6, 'Burbano', 'Edgar', '21123d123', '', 'pa', 'ciente', 'Paciente'),
(8, 'a', 'a', 'a', '', 'a', 'a', 'Paciente'),
(9, 'b', 'b', 'b', '', 'b', 'b', 'Paciente'),
(10, 'ab', 'ab', 'ab', '', 'ab', 'ab', 'Paciente'),
(11, 'Jacome', 'Alexander', '1212121212', '', 'ale', 'x', 'Paciente'),
(13, 'Jacome', 'Alexander', '123', '', 'alex', 'is', 'Paciente'),
(14, 'Jacome', 'miguel', 'cachorroli', '', 'Migue', 'l', 'Paciente'),
(15, 'Jacome', 'Frida', '123', '', 'al', 'ex', 'Paciente'),
(16, 'c', 'c', 'c', '', 'c', 'c', 'Paciente'),
(17, 'Aprende mucho', 'Pepitó', 'pepitosabe', '', 'pe', 'pe', 'Paciente'),
(18, 'Xalazar', 'Tatiana', '1719348011', '', 'an', 'dy', 'Paciente'),
(19, 'ok', 'm', '1415191325', '', '159', '963', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretarias`
--

CREATE TABLE `secretarias` (
  `ID` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `foto` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secretarias`
--

INSERT INTO `secretarias` (`ID`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'secreta', 'ria', 'Angelita ', 'Cordova Galarza', '', 'Secretaria'),
(2, 'Se', 'cretaria', 'Angie', 'Briones', '', 'Secretaria'),
(3, 'pato', 'lucas', 'Patricia', 'Lucas', '', 'Secretaria'),
(4, 'secret', 'aria', 'Debora', 'Alcazar', '', 'Secretaria'),
(5, 'se', 'cre', 'Nueva', 'Secretaria', '', 'Secretaria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
