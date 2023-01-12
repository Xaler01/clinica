-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2023 a las 10:37:06
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
(1, 'admin', '123', 'ADMINISTRADOR', 'Test1', '', 'Administrador'),
(2, 'al', 'ex', 'admin2', 'hospital', '', 'Administrador');

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

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `id_doctor`, `id_consultorio`, `id_paciente`, `nyaP`, `documento`, `inicio`, `fin`) VALUES
(1, 8, 2, 18, 'Tatiana Xalazar', '1719348011', '2023-01-05 09:00:00', '2023-01-05 10:00:00'),
(2, 8, 2, 0, 'Tatiana Xalazar', '1719348011', '2023-01-04 10:00:00', '2023-01-04 11:00:00'),
(3, 7, 6, 18, 'Tatiana Xalazar', '1719348011', '2023-01-04 10:00:00', '2023-01-04 11:00:00'),
(4, 1, 1, 18, 'Tatiana Xalazar', '1719348011', '2023-01-05 07:00:00', '2023-01-05 08:00:00'),
(5, 7, 6, 20, 'Alex B', '1548726345', '2023-01-05 13:00:00', '2023-01-05 14:00:00'),
(6, 2, 9, 19, 'Diana Suasnavas', '1415191325', '2023-01-05 10:00:00', '2023-01-05 11:00:00'),
(7, 7, 1, 0, 'Pepitó Aprende mucho', '7258495856', '2023-01-04 14:00:00', '2023-01-04 15:00:00'),
(8, 2, 9, 22, 'Adriana Sanchez', '1754236541', '2023-01-06 12:00:00', '2023-01-06 13:00:00'),
(9, 7, 6, 0, 'Rosa Arteaga', '1254789658', '2023-01-06 14:00:00', '2023-01-06 15:00:00'),
(10, 1, 1, 0, 'Belen Benavides', '1754856321', '2023-01-13 09:00:00', '2023-01-13 10:00:00'),
(11, 6, 1, 22, 'Adriana Sanches', '1754236541', '2023-01-12 09:00:00', '2023-01-12 10:00:00'),
(12, 1, 1, 26, 'PuebaAP PruebaAPCU1', '15874236547', '2023-01-13 12:00:00', '2023-01-13 13:00:00'),
(13, 4, 8, 26, 'PuebaAP PruebaAPCU1', '15874236547', '2023-01-13 12:00:00', '2023-01-13 13:00:00'),
(14, 18, 6, 0, 'Rosa Arteaga', '1254789658', '2023-01-13 09:00:00', '2023-01-13 10:00:00'),
(15, 5, 2, 30, 'sd sd', 'ds', '2023-01-12 08:00:00', '2023-01-12 09:00:00'),
(16, 1, 1, 5, 'Jacome Alexander', '123456789', '2023-01-11 10:00:00', '2023-01-11 11:00:00'),
(17, 12, 11, 5, 'Jacome Alexander', '123456789', '2023-01-11 10:00:00', '2023-01-11 11:00:00'),
(18, 1, 1, 31, 'Paciebte testApelli', '1548732615', '2023-01-11 09:00:00', '2023-01-11 10:00:00'),
(19, 1, 1, 0, 'PuebaAP PruebaAPCU1', '15874236547', '2023-01-12 09:00:00', '2023-01-12 10:00:00'),
(20, 1, 8, 0, 'UsuarioTestNF ApellidNFCAM', '1548753852', '2023-01-13 11:00:00', '2023-01-13 12:00:00');

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
(8, 'Psicologia'),
(9, 'Reabilitacion'),
(11, 'Rehabilitacion'),
(15, 'Triaje');

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
  `documento` text NOT NULL,
  `correo` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `ciudad` text NOT NULL,
  `fnacimiento` date NOT NULL,
  `horarioE` time NOT NULL DEFAULT '09:00:00',
  `horarioS` time NOT NULL DEFAULT '18:00:00',
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id`, `id_consultorio`, `apellido`, `nombre`, `foto`, `usuario`, `clave`, `sexo`, `documento`, `correo`, `telefono`, `direccion`, `ciudad`, `fnacimiento`, `horarioE`, `horarioS`, `rol`) VALUES
(1, 15, 'Test1', 'DOCTOR', 'Vistas/img/Doctores/Doc-976.jpg', 'doc', 'tor', 'Femenino', '1750468909', 'doc@test1.com', '+593 992 542 55', 'La america 326 y Test1', 'Quito', '1987-07-24', '10:00:00', '17:00:00', 'Doctor'),
(2, 9, 'Piolincito', 'El Canario', '', 'piolin', '123', 'Masculino', '', '', '', '', '', '0000-00-00', '08:00:00', '16:00:00', 'Doctor'),
(3, 5, 'Maria', 'Burbano', '', 'mari', '123', 'Femenino', '', '', '', '', '', '0000-00-00', '08:00:00', '12:00:00', 'Doctor'),
(4, 8, 'prueba', 'doctor', '', 'testdoctor', '1234', 'Femenino', '', '', '', '', '', '0000-00-00', '08:00:00', '17:00:00', 'Doctor'),
(5, 2, 'Urbina', 'Andrea', '', 'andi', '123', 'Femenino', '', '', '', '', '', '0000-00-00', '07:00:00', '15:00:00', 'Doctor'),
(6, 1, 'Buendia', 'Francisco', '', '12', '34', 'Masculino', '', '', '', '', '', '0000-00-00', '08:00:00', '18:00:00', 'Doctor'),
(7, 4, 'Saenz', 'Oswaldo', '', '123', '45', 'Masculino', '1752365214', 'saenz@correo.com', '+593 992887532', 'La Tola', 'Tulcan', '1980-06-08', '09:00:00', '16:00:00', 'Doctor'),
(8, 2, 'Estrella', 'Patricio', '', 'abc', 'def', 'Masculino', '', '', '', '', '', '0000-00-00', '08:00:00', '18:00:00', 'Doctor'),
(10, 8, 'Pito', 'Elsa', '', 'els', 'a', 'Femenino', '', '', '', '', '', '0000-00-00', '08:00:00', '18:00:00', 'Doctor'),
(12, 11, 'Jacome', 'Miguelito', '', 'mi', 'guel', 'Masculino', '', '', '', '', '', '0000-00-00', '10:00:00', '16:00:00', 'Doctor'),
(13, 1, 'Burbano', 'Lucas', '', 'lu', 'cas', 'Masculino', '10256348965224', 'lucas@correo.com', '+5952141023 657', 'La america 154 y Rio Frio', 'Quito', '1983-07-02', '09:00:00', '16:00:00', 'Doctor'),
(14, 5, 'Salazar', 'Frida', '', 'fri', 'da', 'Femenino', '', '', '', '', '', '0000-00-00', '08:00:00', '18:00:00', 'Doctor'),
(16, 9, 'PruebaAD', 'PruebaADAct', '', 'testDAD', 'AD', 'Femenino', '', '', '', '', '', '0000-00-00', '08:00:00', '18:00:00', 'Doctor'),
(19, 15, 'ApellidoDOCNF', 'DOCTOR NF', '', 'testNF', 'nf', 'Masculino', '1574236982', 'NuevoFormulario@nuevoF.com', '+539 992821 540', 'Primera Interoceanica y Bueba Aventura', 'El Oro', '1950-04-21', '09:00:00', '18:00:00', 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evoluciones`
--

CREATE TABLE `evoluciones` (
  `id` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `nyaP` text NOT NULL,
  `atendido` text NOT NULL,
  `alergias` text NOT NULL,
  `enfermedadesImportantes` text NOT NULL,
  `diagnostico` text NOT NULL,
  `receta` text NOT NULL,
  `tratamiento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evoluciones`
--

INSERT INTO `evoluciones` (`id`, `id_doctor`, `id_consultorio`, `id_paciente`, `nyaP`, `atendido`, `alergias`, `enfermedadesImportantes`, `diagnostico`, `receta`, `tratamiento`) VALUES
(1, 1, 1, 31, 'Paciebte testApelli', 'Si', 'Al frio', 'Varicela', 'El paciente presenta sintomas de diarrea y vomito frecuente, mareos constantes y algo de congestión nasal.', '3 Ibuprofeno de 1mg\r\n2 Protectores gástricos por 3 días.', 'Tomar 1 ibuprofeno diario por 3 días en la mañana\r\nTomar el protector gástrico por 2 noches');

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
  `anuncios` text NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `intro`, `horaE`, `horaS`, `telefono`, `correo`, `direccion`, `anuncios`, `logo`, `favicon`) VALUES
(1, 'Hospital básico de la zona El Oro', '09:00:00', '18:00:00', '0964074245', 'info@hbzel.com', 'El Oro - Av. Quito y 9 de Octubre', 'Feliz 2023. Este Sistema de citas, se lanzara al publico desde el lunes 30 de Enero del 2023...', 'Vistas/img/logo.png', 'Vistas/img/favicon.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `documento` text NOT NULL,
  `correo` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `ciudad` text NOT NULL,
  `fnacimiento` date NOT NULL,
  `sexo` text NOT NULL,
  `foto` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `apellido`, `nombre`, `documento`, `correo`, `telefono`, `direccion`, `ciudad`, `fnacimiento`, `sexo`, `foto`, `usuario`, `clave`, `rol`) VALUES
(1, 'Davila', 'Lucia', '1718191514', '', '', '', '', '0000-00-00', '', '', 'pacien', 'te', 'Paciente'),
(2, 'Moreno Merizalde', 'Adriana Brigethe', '1715141219', '', '', '', '', '0000-00-00', '', '', 'pacient', 'e', 'Paciente'),
(3, 'prueba', 'paciente de', '1714524863', '', '', '', '', '0000-00-00', '', '', '12', '34', 'Paciente'),
(5, 'Alexander', 'Jacome', '123456789', '', '', '', '', '0000-00-00', '', '', 'paci', 'ente', 'Paciente'),
(6, 'Burbano', 'Edgar', '21123d123', '', '', '', '', '0000-00-00', '', '', 'pa', 'ciente', 'Paciente'),
(8, 'Arteaga', 'Rosa', '1254789658', '', '', '', '', '0000-00-00', '', '', 'a', 'a', 'Paciente'),
(9, 'Benavides', 'Belen', '1754856321', '', '', '', '', '0000-00-00', '', '', 'b', 'b', 'Paciente'),
(10, 'Abdon', 'Juan', 'XYZ5248AbC2', '', '', '', '', '0000-00-00', '', '', 'ab', 'ab', 'Paciente'),
(11, 'Jacome', 'Alexander', '1212121212', '', '', '', '', '0000-00-00', '', '', 'ale', 'x', 'Paciente'),
(13, 'Jacome', 'Alexander', '1234125784', '', '', '', '', '0000-00-00', '', '', 'alex', 'is', 'Paciente'),
(14, 'Jacome', 'miguel', 'cachorroli', '', '', '', '', '0000-00-00', '', '', 'Migue', 'l', 'Paciente'),
(15, 'Jacome', 'Frida', '1752486354', '', '', '', '', '0000-00-00', '', '', 'fri', 'da', 'Paciente'),
(17, 'Aprende mucho', 'Pepitó', '7258495856', '', '', '', '', '0000-00-00', '', '', 'pe', 'pe', 'Paciente'),
(18, 'Xalazar', 'Tatiana', '1719348011', '', '', '', '', '0000-00-00', '', '', 'an', 'dy', 'Paciente'),
(19, 'Suasnavas', 'Diana', '1415191325', '', '', '', '', '0000-00-00', '', '', 'Dia', 'na', 'Paciente'),
(20, 'B', 'Alex', '1548726345', '', '', '', '', '0000-00-00', '', '', 'usua', 'rio', 'Paciente'),
(21, 'Sandoval', 'Jazmin', '1234567895', '', '', '', '', '0000-00-00', '', '', 'usu', 'ario', 'Paciente'),
(22, 'Sanches', 'Adriana', '1754236541', 'adri.sanches@utpl.edu.ec', '', '', '', '0000-00-00', '', '', 'adri', 'san', 'Paciente'),
(23, 'ApellidoPaciente', 'NomPaciente', '1785823658', 'nom-paciente@hbzel.com', '', '', '', '0000-00-00', '', '', 'nom', 'bre', 'Paciente'),
(24, 'Prueba', 'prueba', '1575369823', 'prueba.test@prueba.com', '3880526542323', 'Santa Prisca', 'Quito', '0000-00-00', '', '', 'test2', '123', 'Paciente'),
(25, 'PruebaSP', 'PruebaSP', '1514171819', 'pruebaSC@hbzel.com', '', '', '', '0000-00-00', '', '', 'testsp', 'sp', 'Paciente'),
(26, 'PruebaAPCU1', 'PuebaAP', '1587252145', 'pruebaAP@hbzel.com', '09953265487', 'Los Laureles', 'Tulcan', '0000-00-00', '', '', 'test', 'ap', 'Paciente'),
(27, 'pruebargl', 'pruebargl1', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(28, 'pruebargl', 'pruebargl', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(29, 'pruebargl', 'pruebargl', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(30, 'sd', 'ABC', '15214dsf', 'sd@ssdd.com', '', '', '', '0000-00-00', '', '', 'sd', 'sd', 'Paciente'),
(31, 'testApelli', 'Paciebte', '1548732615', 'paciente@hbzel.com', '', '', '', '0000-00-00', '', '', 'testP', 'p', 'Paciente'),
(32, 'a', 'a', 'a', 'Nuevo@a.com', '+587452125478220', 'La america 326', 'Loja', '1999-05-21', 'Masculino', '', 'test2', 'a', 'Paciente'),
(33, 'Test1', 'UsuarioTestNF', '1548753852', 'UsuarioNf@Nf.com', ' +593951475', ' El Oro y Av. Quito 3er Solar Ciudad Loja', 'Loja', '1998-08-30', 'Masculino', '', 'testap', 'nfc', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretarias`
--

CREATE TABLE `secretarias` (
  `id` int(11) NOT NULL,
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

INSERT INTO `secretarias` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'secreta', 'ria', 'SECRETARIA', 'Test1', '', 'Secretaria'),
(2, 'Se', 'cretaria', 'Angie', 'Briones', '', 'Secretaria'),
(3, 'pato', 'lucas', 'Patricia', 'Lucas', '', 'Secretaria'),
(8, 'secre', 'ta', 'taria', 'secre', '', 'Secretaria');

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
-- Indices de la tabla `evoluciones`
--
ALTER TABLE `evoluciones`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `evoluciones`
--
ALTER TABLE `evoluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
