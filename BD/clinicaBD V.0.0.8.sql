-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2023 a las 06:08:36
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
  `fin` datetime NOT NULL,
  `alergias` text NOT NULL,
  `enfermedadesprevias` text NOT NULL,
  `diagnostico` text NOT NULL,
  `receta` text NOT NULL,
  `indicaciones` text NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `id_doctor`, `id_consultorio`, `id_paciente`, `nyaP`, `documento`, `inicio`, `fin`, `alergias`, `enfermedadesprevias`, `diagnostico`, `receta`, `indicaciones`, `estado`) VALUES
(1, 1, 15, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-16 10:00:00', '2023-01-16 11:00:00', '', '', '', '', '', 'Atendida'),
(2, 1, 15, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-19 12:00:00', '2023-01-19 13:00:00', '', '', '', '', '', 'Atendida'),
(3, 1, 15, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-17 13:00:00', '2023-01-17 14:00:00', '', '', '', '', '', 'Atendida'),
(4, 6, 1, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-09 09:00:00', '2023-01-09 10:00:00', '', '', '', '', '', 'Atendida'),
(5, 6, 1, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-12 10:00:00', '2023-01-12 11:00:00', '', '', '', '', '', 'Atendida'),
(6, 13, 1, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-12 11:00:00', '2023-01-12 12:00:00', '', '', '', '', '', 'No Atendida'),
(7, 13, 1, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-17 12:00:00', '2023-01-17 13:00:00', '', '', '', '', '', 'Atendida'),
(8, 13, 1, 33, 'UsuarioTestNF Test1', '1548753852', '2023-01-13 12:00:00', '2023-01-13 13:00:00', '', '', '', '', '', 'Paciente no acude'),
(9, 1, 15, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-16 12:00:00', '2023-01-16 13:00:00', '', '', '', '', '', 'No Atendida'),
(10, 1, 15, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-13 11:00:00', '2023-01-13 12:00:00', '', '', '', '', '', 'No Atendida'),
(11, 5, 2, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-09 07:00:00', '2023-01-09 08:00:00', '', '', '', '', '', 'Atendida'),
(12, 5, 2, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-20 07:00:00', '2023-01-20 08:00:00', '', '', '', '', '', 'Atendida'),
(13, 12, 11, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-20 10:00:00', '2023-01-20 11:00:00', '', '', '', '', '', 'Atendida'),
(14, 12, 11, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-27 10:00:00', '2023-01-27 11:00:00', '', '', '', '', '', 'Atendida'),
(15, 12, 11, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-13 10:00:00', '2023-01-13 11:00:00', '', '', '', '', '', 'Atendida'),
(16, 4, 8, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-20 10:00:00', '2023-01-20 11:00:00', '', '', '', '', '', 'Atendida'),
(17, 4, 8, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-16 10:00:00', '2023-01-16 11:00:00', '', '', '', '', '', 'No Atendida'),
(18, 3, 5, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-16 09:00:00', '2023-01-16 10:00:00', '', '', '', '', '', 'Atendida'),
(19, 3, 5, 26, 'PuebaAP PruebaAPCU1', '1587252145', '2023-01-20 09:00:00', '2023-01-20 10:00:00', '', '', '', '', '', 'Atendida'),
(20, 1, 15, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-13 13:00:00', '2023-01-13 14:00:00', '', '', '', '', '', 'Paciente no acude'),
(21, 5, 2, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-20 08:00:00', '2023-01-20 09:00:00', '', '', '', '', '', 'Atendida'),
(22, 4, 8, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-13 10:00:00', '2023-01-13 11:00:00', '', '', '', '', '', 'Paciente no acude'),
(23, 1, 15, 24, 'prueba Prueba', '1575369823', '2023-01-13 12:00:00', '2023-01-13 13:00:00', '', '', '', '', '', 'Paciente no acude'),
(24, 2, 9, 24, 'prueba Prueba', '1575369823', '2023-01-16 10:00:00', '2023-01-16 11:00:00', '', '', '', '', '', 'Atendida'),
(25, 2, 9, 24, 'prueba Prueba', '1575369823', '2023-01-19 12:00:00', '2023-01-19 13:00:00', '', '', '', '', '', 'No Atendida'),
(26, 1, 15, 31, 'Paciebte testApelli', '1548732615', '2023-01-13 14:00:00', '2023-01-13 15:00:00', '', '', '', '', '', 'Atendida'),
(27, 2, 9, 31, 'Paciebte testApelli', '1548732615', '2023-01-16 09:00:00', '2023-01-16 10:00:00', '', '', '', '', '', 'Paciente no acude'),
(28, 2, 9, 31, 'Paciebte testApelli', '1548732615', '2023-01-19 11:00:00', '2023-01-19 12:00:00', '', '', '', '', '', 'Atendida'),
(29, 13, 1, 31, 'Paciebte testApelli', '1548732615', '2023-01-17 10:00:00', '2023-01-17 11:00:00', '', '', '', '', '', 'Atendida'),
(30, 20, 4, 3, 'paciente de prueba', '1714524863', '2023-01-16 10:00:00', '2023-01-16 11:00:00', '', '', '', '', '', 'No Atendida'),
(31, 20, 4, 3, 'paciente de prueba', '1714524863', '2023-01-18 10:00:00', '2023-01-18 11:00:00', '', '', '', '', '', 'Atendida'),
(32, 20, 4, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-12 12:00:00', '2023-01-12 13:00:00', '', '', '', '', '', 'Paciente no acude'),
(33, 20, 4, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-16 11:00:00', '2023-01-16 12:00:00', '', '', '', '', '', 'Atendida'),
(34, 1, 15, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-16 14:00:00', '2023-01-16 15:00:00', '', '', '', '', '', 'Paciente no acude'),
(35, 1, 15, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-16 14:00:00', '2023-01-16 15:00:00', '', '', '', '', '', 'Atendida'),
(36, 1, 15, 32, 'Paciente 32 Prueba', '17201689093215', '2023-01-16 14:00:00', '2023-01-16 15:00:00', '', '', '', '', '', 'Atendida'),
(37, 19, 15, 24, 'prueba Prueba', '1575369823', '2023-01-09 09:00:00', '2023-01-09 10:00:00', '', '', '', '', '', 'Atendida'),
(38, 13, 1, 24, 'prueba Prueba', '1575369823', '2023-01-10 09:00:00', '2023-01-10 10:00:00', '', '', '', '', '', 'Atendida'),
(39, 5, 2, 24, 'prueba Prueba', '1575369823', '2023-01-10 09:00:00', '2023-01-10 10:00:00', '', '', '', '', '', 'Atendida'),
(40, 7, 4, 24, 'prueba Prueba', '1575369823', '2023-01-09 09:00:00', '2023-01-09 10:00:00', '', '', '', '', '', 'Atendida'),
(41, 3, 5, 24, 'prueba Prueba', '1575369823', '2023-01-09 11:00:00', '2023-01-09 12:00:00', '', '', '', '', '', 'Atendida'),
(42, 4, 8, 24, 'prueba Prueba', '1575369823', '2023-01-10 10:00:00', '2023-01-10 11:00:00', '', '', '', '', '', 'Paciente no acude'),
(43, 12, 11, 24, 'prueba Prueba', '1575369823', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(44, 8, 2, 31, 'Paciebte testApelli', '1548732615', '2023-01-09 09:00:00', '2023-01-09 10:00:00', '', '', '', '', '', 'Atendida'),
(45, 20, 4, 31, 'Paciebte testApelli', '1548732615', '2023-01-09 11:00:00', '2023-01-09 12:00:00', '', '', '', '', '', 'Atendida'),
(46, 14, 5, 31, 'Paciebte testApelli', '1548732615', '2023-01-09 12:00:00', '2023-01-09 13:00:00', '', '', '', '', '', 'Atendida'),
(47, 10, 8, 31, 'Paciebte testApelli', '1548732615', '2023-01-10 11:00:00', '2023-01-10 12:00:00', '', '', '', '', '', 'Atendida'),
(48, 16, 9, 31, 'Paciebte testApelli', '1548732615', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(49, 21, 11, 31, 'Paciebte testApelli', '1548732615', '2023-01-10 09:00:00', '2023-01-10 10:00:00', '', '', '', '', '', 'Atendida'),
(50, 1, 15, 9, 'Belen Benavides', '1754856321', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(51, 19, 15, 9, 'Belen Benavides', '1754856321', '2023-01-13 09:00:00', '2023-01-13 10:00:00', '', '', '', '', '', 'Atendida'),
(52, 6, 1, 9, 'Belen Benavides', '1754856321', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(53, 8, 2, 9, 'Belen Benavides', '1754856321', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(54, 7, 4, 9, 'Belen Benavides', '1754856321', '2023-01-10 10:00:00', '2023-01-10 11:00:00', '', '', '', '', '', 'Atendida'),
(55, 14, 5, 9, 'Belen Benavides', '1754856321', '2023-01-10 09:00:00', '2023-01-10 10:00:00', '', '', '', '', '', 'Reservada'),
(56, 4, 8, 9, 'Belen Benavides', '1754856321', '2023-01-09 08:00:00', '2023-01-09 09:00:00', '', '', '', '', '', 'Atendida'),
(57, 16, 9, 9, 'Belen Benavides', '1754856321', '2023-01-09 11:00:00', '2023-01-09 12:00:00', '', '', '', '', '', 'Atendida'),
(58, 21, 11, 9, 'Belen Benavides', '1754856321', '2023-01-11 10:00:00', '2023-01-11 11:00:00', '', '', '', '', '', 'Paciente no acude'),
(59, 6, 1, 3, 'paciente de prueba', '1714524863', '2023-01-10 10:00:00', '2023-01-10 11:00:00', '', '', '', '', '', 'Atendida'),
(60, 8, 2, 3, 'paciente de prueba', '1714524863', '2023-01-11 11:00:00', '2023-01-11 12:00:00', '', '', '', '', '', 'Atendida'),
(61, 7, 4, 3, 'paciente de prueba', '1714524863', '2023-01-12 09:00:00', '2023-01-12 10:00:00', '', '', '', '', '', 'Atendida'),
(62, 14, 5, 3, 'paciente de prueba', '1714524863', '2023-01-11 09:00:00', '2023-01-11 10:00:00', '', '', '', '', '', 'Reservada'),
(63, 10, 8, 3, 'paciente de prueba', '1714524863', '2023-01-09 08:00:00', '2023-01-09 09:00:00', '', '', '', '', '', 'Atendida'),
(64, 16, 9, 3, 'paciente de prueba', '1714524863', '2023-01-11 08:00:00', '2023-01-11 09:00:00', '', '', '', '', '', 'Atendida'),
(65, 12, 11, 3, 'paciente de prueba', '1714524863', '2023-01-11 15:00:00', '2023-01-11 16:00:00', '', '', '', '', '', 'Atendida'),
(66, 1, 15, 3, 'paciente de prueba', '1714524863', '2023-01-12 14:00:00', '2023-01-12 15:00:00', '', '', '', '', '', 'Atendida'),
(67, 13, 1, 8, 'Paciente N Arteaga', '1254789658', '2023-01-10 11:00:00', '2023-01-10 12:00:00', '', '', '', '', '', 'Atendida'),
(68, 5, 2, 8, 'Paciente N Arteaga', '1254789658', '2023-01-11 08:00:00', '2023-01-11 09:00:00', '', '', '', '', '', 'Atendida'),
(69, 7, 4, 8, 'Paciente N Arteaga', '1254789658', '2023-01-11 10:00:00', '2023-01-11 11:00:00', '', '', '', '', '', 'Atendida'),
(70, 14, 5, 8, 'Paciente N Arteaga', '1254789658', '2023-02-14 09:00:00', '2023-02-14 10:00:00', '', '', '', '', '', 'Reservada'),
(71, 4, 8, 8, 'Paciente N Arteaga', '1254789658', '2023-02-09 08:00:00', '2023-02-09 09:00:00', '', '', '', '', '', 'No Atendida'),
(72, 4, 8, 8, 'Paciente N Arteaga', '1254789658', '2023-04-12 08:00:00', '2023-04-12 09:00:00', '', '', '', '', '', 'Paciente no acude'),
(73, 4, 8, 8, 'Paciente N Arteaga', '1254789658', '2023-03-07 11:00:00', '2023-03-07 12:00:00', '', '', '', '', '', 'Atendida'),
(74, 2, 9, 8, 'Paciente N Arteaga', '1254789658', '2023-01-09 10:00:00', '2023-01-09 11:00:00', '', '', '', '', '', 'Atendida'),
(75, 2, 9, 8, 'Paciente N Arteaga', '1254789658', '2023-02-06 08:00:00', '2023-02-06 09:00:00', '', '', '', '', '', 'No Atendida'),
(76, 2, 9, 8, 'Paciente N Arteaga', '1254789658', '2023-02-07 08:00:00', '2023-02-07 09:00:00', '', '', '', '', '', 'No Atendida'),
(77, 2, 9, 8, 'Paciente N Arteaga', '1254789658', '2023-04-04 08:00:00', '2023-04-04 09:00:00', '', '', '', '', '', 'Atendida'),
(78, 12, 11, 8, 'Paciente N Arteaga', '1254789658', '2023-01-10 12:00:00', '2023-01-10 13:00:00', '', '', '', '', '', 'Atendida'),
(79, 12, 11, 8, 'Paciente N Arteaga', '1254789658', '2023-01-24 11:00:00', '2023-01-24 12:00:00', '', '', '', '', '', 'Atendida'),
(80, 12, 11, 8, 'Paciente N Arteaga', '1254789658', '2023-02-21 10:00:00', '2023-02-21 11:00:00', '', '', '', '', '', 'Atendida'),
(81, 12, 11, 8, 'Paciente N Arteaga', '1254789658', '2023-03-07 12:00:00', '2023-03-07 13:00:00', '', '', '', '', '', 'Atendida'),
(82, 1, 15, 8, 'Paciente N Arteaga', '1254789658', '2023-01-11 12:00:00', '2023-01-11 13:00:00', '', '', '', '', '', 'Reservada'),
(83, 6, 1, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-24 09:00:00', '2023-01-24 10:00:00', '', '', '', '', '', 'Reservada'),
(84, 6, 1, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-28 08:00:00', '2023-02-28 09:00:00', '', '', '', '', '', 'Reservada'),
(85, 6, 1, 6, 'Edgar Paciente Burbano', '1475236504', '2023-04-11 10:00:00', '2023-04-11 11:00:00', '', '', '', '', '', 'Reservada'),
(86, 8, 2, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-08 09:00:00', '2023-02-08 10:00:00', '', '', '', '', '', 'Atendida'),
(87, 8, 2, 6, 'Edgar Paciente Burbano', '1475236504', '2023-04-11 10:00:00', '2023-04-11 11:00:00', '', '', '', '', '', 'Atendida'),
(88, 20, 4, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-08 09:00:00', '2023-02-08 10:00:00', '', '', '', '', '', 'Paciente no acude'),
(89, 20, 4, 6, 'Edgar Paciente Burbano', '1475236504', '2023-03-15 09:00:00', '2023-03-15 10:00:00', '', '', '', '', '', 'No Atendida'),
(90, 14, 5, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-12 08:00:00', '2023-01-12 09:00:00', '', '', '', '', '', 'Reservada'),
(91, 14, 5, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-02 09:00:00', '2023-02-02 10:00:00', '', '', '', '', '', 'Reservada'),
(92, 14, 5, 6, 'Edgar Paciente Burbano', '1475236504', '2023-03-02 08:00:00', '2023-03-02 09:00:00', '', '', '', '', '', 'Reservada'),
(93, 10, 8, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-01 10:00:00', '2023-02-01 11:00:00', '', '', '', '', '', 'Atendida'),
(94, 10, 8, 6, 'Edgar Paciente Burbano', '1475236504', '2023-03-13 08:00:00', '2023-03-13 09:00:00', '', '', '', '', '', 'Atendida'),
(95, 10, 8, 6, 'Edgar Paciente Burbano', '1475236504', '2023-04-20 08:00:00', '2023-04-20 09:00:00', '', '', '', '', '', 'Atendida'),
(96, 2, 9, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-02 08:00:00', '2023-02-02 09:00:00', '', '', '', '', '', 'Atendida'),
(97, 2, 9, 6, 'Edgar Paciente Burbano', '1475236504', '2023-03-15 09:00:00', '2023-03-15 10:00:00', '', '', '', '', '', 'Paciente no acude'),
(98, 2, 9, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-12 09:00:00', '2023-01-12 10:00:00', '', '', '', '', '', 'Atendida'),
(99, 12, 11, 6, 'Edgar Paciente Burbano', '1475236504', '2023-02-16 10:00:00', '2023-02-16 11:00:00', '', '', '', '', '', 'Atendida'),
(100, 12, 11, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-31 11:00:00', '2023-01-31 12:00:00', '', '', '', '', '', 'Atendida'),
(101, 1, 15, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-09 14:00:00', '2023-01-09 15:00:00', '', '', '', '', '', 'Reservada'),
(102, 1, 15, 6, 'Edgar Paciente Burbano', '1475236504', '2023-01-12 13:00:00', '2023-01-12 14:00:00', '', '', '', '', '', 'Reservada'),
(103, 19, 15, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-25 09:00:00', '2023-01-25 10:00:00', '', '', '', '', '', 'Atendida'),
(104, 19, 15, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-03-01 12:00:00', '2023-03-01 13:00:00', '', '', '', '', '', 'Reservada'),
(105, 19, 15, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-02 14:00:00', '2023-02-02 15:00:00', '', '', '', '', '', 'Reservada'),
(106, 12, 11, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-09 13:00:00', '2023-02-09 14:00:00', '', '', '', '', '', 'Atendida'),
(107, 12, 11, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-13 13:00:00', '2023-02-13 14:00:00', '', '', '', '', '', 'Atendida'),
(108, 16, 9, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-01 09:00:00', '2023-02-01 10:00:00', '', '', '', '', '', 'Atendida'),
(109, 16, 9, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-11 09:00:00', '2023-01-11 10:00:00', '', '', '', '', '', 'Atendida'),
(110, 16, 9, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-03-01 08:00:00', '2023-03-01 09:00:00', '', '', '', '', '', 'Atendida'),
(111, 10, 8, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-16 08:00:00', '2023-01-16 09:00:00', '', '', '', '', '', 'Atendida'),
(112, 10, 8, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-30 10:00:00', '2023-01-30 11:00:00', '', '', '', '', '', 'Atendida'),
(113, 10, 8, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-04-11 11:00:00', '2023-04-11 12:00:00', '', '', '', '', '', 'Atendida'),
(114, 3, 5, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-10 10:00:00', '2023-01-10 11:00:00', '', '', '', '', '', 'Atendida'),
(115, 3, 5, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-17 10:00:00', '2023-01-17 11:00:00', '', '', '', '', '', 'Atendida'),
(116, 3, 5, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-31 11:00:00', '2023-01-31 12:00:00', '', '', '', '', '', 'Atendida'),
(117, 3, 5, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-03-15 08:00:00', '2023-03-15 09:00:00', '', '', '', '', '', 'Atendida'),
(118, 20, 4, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-19 10:00:00', '2023-01-19 11:00:00', '', '', '', '', '', 'Atendida'),
(119, 20, 4, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-23 09:00:00', '2023-01-23 10:00:00', '', '', '', '', '', 'Atendida'),
(120, 20, 4, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-30 10:00:00', '2023-01-30 11:00:00', '', '', '', '', '', 'Atendida'),
(121, 20, 4, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-28 09:00:00', '2023-02-28 10:00:00', '', '', '', '', '', 'Reservada'),
(122, 5, 2, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-12 07:00:00', '2023-01-12 08:00:00', '', '', '', '', '', 'Atendida'),
(123, 5, 2, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-01 07:00:00', '2023-02-01 08:00:00', '', '', '', '', '', 'Atendida'),
(124, 5, 2, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-03-08 07:00:00', '2023-03-08 08:00:00', '', '', '', '', '', 'Atendida'),
(125, 13, 1, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-01-12 09:00:00', '2023-01-12 10:00:00', '', '', '', '', '', 'No Atendida'),
(126, 13, 1, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-02-01 10:00:00', '2023-02-01 11:00:00', '', '', '', '', '', 'Atendida'),
(127, 13, 1, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-03-01 09:00:00', '2023-03-01 10:00:00', '', '', '', '', '', 'Atendida'),
(128, 13, 1, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-04-03 09:00:00', '2023-04-03 10:00:00', '', '', '', '', '', 'Atendida'),
(129, 13, 1, 23, 'NomPaciente ApellidoPaciente', '1785823658', '2023-05-08 09:00:00', '2023-05-08 10:00:00', '', '', '', '', '', 'Atendida'),
(130, 13, 1, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-10 10:00:00', '2023-01-10 11:00:00', '', '', '', '', '', 'Atendida'),
(131, 13, 1, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-31 11:00:00', '2023-01-31 12:00:00', '', '', '', '', '', 'Atendida'),
(132, 13, 1, 17, 'Pepitó Aprende mucho', '7258495856', '2023-02-14 12:00:00', '2023-02-14 13:00:00', '', '', '', '', '', 'Atendida'),
(133, 13, 1, 17, 'Pepitó Aprende mucho', '7258495856', '2023-04-11 11:00:00', '2023-04-11 12:00:00', '', '', '', '', '', 'Atendida'),
(134, 8, 2, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-10 09:00:00', '2023-01-10 10:00:00', '', '', '', '', '', 'Atendida'),
(135, 8, 2, 17, 'Pepitó Aprende mucho', '7258495856', '2023-02-07 08:00:00', '2023-02-07 09:00:00', '', '', '', '', '', 'Atendida'),
(136, 8, 2, 17, 'Pepitó Aprende mucho', '7258495856', '2023-03-21 11:00:00', '2023-03-21 12:00:00', '', '', '', '', '', 'Atendida'),
(137, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-17 09:00:00', '2023-01-17 10:00:00', '', '', '', '', '', 'Paciente no acude'),
(138, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-06-06 09:00:00', '2023-06-06 10:00:00', '', '', '', '', '', 'No Atendida'),
(139, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-07-19 09:00:00', '2023-07-19 10:00:00', '', '', '', '', '', 'Atendida'),
(140, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-09-27 09:00:00', '2023-09-27 10:00:00', '', '', '', '', '', 'Atendida'),
(141, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-10-06 09:00:00', '2023-10-06 10:00:00', '', '', '', '', '', 'Atendida'),
(142, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-11-07 09:00:00', '2023-11-07 10:00:00', '', '', '', '', '', 'Atendida'),
(143, 7, 4, 17, 'Pepitó Aprende mucho', '7258495856', '2023-12-20 09:00:00', '2023-12-20 10:00:00', '', '', '', '', '', 'Paciente no acude'),
(144, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-26 08:00:00', '2023-01-26 09:00:00', '', '', '', '', '', 'Reservada'),
(145, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-02-22 08:00:00', '2023-02-22 09:00:00', '', '', '', '', '', 'Reservada'),
(146, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-02-28 08:00:00', '2023-02-28 09:00:00', '', '', '', '', '', 'Reservada'),
(147, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-04-11 09:00:00', '2023-04-11 10:00:00', '', '', '', '', '', 'Reservada'),
(148, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-05-01 08:00:00', '2023-05-01 09:00:00', '', '', '', '', '', 'Reservada'),
(149, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-05-29 08:00:00', '2023-05-29 09:00:00', '', '', '', '', '', 'Reservada'),
(150, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-07-10 08:00:00', '2023-07-10 09:00:00', '', '', '', '', '', 'Reservada'),
(151, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-08-07 08:00:00', '2023-08-07 09:00:00', '', '', '', '', '', 'Reservada'),
(152, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-08-31 08:00:00', '2023-08-31 09:00:00', '', '', '', '', '', 'Reservada'),
(153, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-10-16 08:00:00', '2023-10-16 09:00:00', '', '', '', '', '', 'Reservada'),
(154, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-11-14 08:00:00', '2023-11-14 09:00:00', '', '', '', '', '', 'Reservada'),
(155, 14, 5, 17, 'Pepitó Aprende mucho', '7258495856', '2023-12-18 08:00:00', '2023-12-18 09:00:00', '', '', '', '', '', 'Reservada'),
(156, 4, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-01-12 10:00:00', '2023-01-12 11:00:00', '', '', '', '', '', 'Atendida'),
(157, 10, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-02-08 10:00:00', '2023-02-08 11:00:00', '', '', '', '', '', 'Atendida'),
(158, 4, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-03-14 09:00:00', '2023-03-14 10:00:00', '', '', '', '', '', 'Atendida'),
(159, 10, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-04-18 10:00:00', '2023-04-18 11:00:00', '', '', '', '', '', 'Atendida'),
(160, 4, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-05-15 09:00:00', '2023-05-15 10:00:00', '', '', '', '', '', 'No Atendida'),
(161, 10, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-06-26 09:00:00', '2023-06-26 10:00:00', '', '', '', '', '', 'Reservada'),
(162, 4, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-07-04 09:00:00', '2023-07-04 10:00:00', '', '', '', '', '', 'No Atendida'),
(163, 10, 8, 17, 'Pepitó Aprende mucho', '7258495856', '2023-08-08 08:00:00', '2023-08-08 09:00:00', '', '', '', '', '', 'Reservada'),
(164, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-01-17 09:00:00', '2023-01-17 10:00:00', '', '', '', '', '', 'Reservada'),
(165, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-03-01 10:00:00', '2023-03-01 11:00:00', '', '', '', '', '', 'Reservada'),
(166, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-06-14 09:00:00', '2023-06-14 10:00:00', '', '', '', '', '', 'Atendida'),
(167, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-07-05 09:00:00', '2023-07-05 10:00:00', '', '', '', '', '', 'Atendida'),
(168, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-08-23 09:00:00', '2023-08-23 10:00:00', '', '', '', '', '', 'Reservada'),
(169, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-08-30 09:00:00', '2023-08-30 10:00:00', '', '', '', '', '', 'Reservada'),
(170, 19, 15, 20, 'Alex Usuario B', '1548726345', '2023-12-19 09:00:00', '2023-12-19 10:00:00', '', '', '', '', '', 'Atendida'),
(171, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-02-09 10:00:00', '2023-02-09 11:00:00', '', '', '', '', '', 'Atendida'),
(172, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-03-09 13:00:00', '2023-03-09 14:00:00', '', '', '', '', '', 'Atendida'),
(173, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-04-12 11:00:00', '2023-04-12 12:00:00', '', '', '', '', '', 'Atendida'),
(174, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-05-04 10:00:00', '2023-05-04 11:00:00', '', '', '', '', '', 'Atendida'),
(175, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-06-01 10:00:00', '2023-06-01 11:00:00', '', '', '', '', '', 'Atendida'),
(176, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-07-06 10:00:00', '2023-07-06 11:00:00', '', '', '', '', '', 'No Atendida'),
(177, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-08-15 10:00:00', '2023-08-15 11:00:00', '', '', '', '', '', 'Paciente no acude'),
(178, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-11-09 10:00:00', '2023-11-09 11:00:00', '', '', '', '', '', 'Atendida'),
(179, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-12-01 10:00:00', '2023-12-01 11:00:00', '', '', '', '', '', 'Atendida'),
(180, 2, 9, 20, 'Alex Usuario B', '1548726345', '2023-02-09 08:00:00', '2023-02-09 09:00:00', '', '', '', '', '', 'Paciente no acude'),
(181, 2, 9, 20, 'Alex Usuario B', '1548726345', '2023-01-10 08:00:00', '2023-01-10 09:00:00', '', '', '', '', '', 'No Atendida'),
(182, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-01-12 13:00:00', '2023-01-12 14:00:00', '', '', '', '', '', 'Atendida'),
(183, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-02-16 08:00:00', '2023-02-16 09:00:00', '', '', '', '', '', 'Paciente no acude'),
(184, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-03-16 08:00:00', '2023-03-16 09:00:00', '', '', '', '', '', 'No Atendida'),
(185, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-04-14 08:00:00', '2023-04-14 09:00:00', '', '', '', '', '', 'Atendida'),
(186, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-05-25 08:00:00', '2023-05-25 09:00:00', '', '', '', '', '', 'Paciente no acude'),
(187, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-02-02 08:00:00', '2023-02-02 09:00:00', '', '', '', '', '', 'Atendida'),
(188, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-02-21 08:00:00', '2023-02-21 09:00:00', '', '', '', '', '', 'Atendida'),
(189, 4, 8, 20, 'Alex Usuario B', '1548726345', '2023-04-19 09:00:00', '2023-04-19 10:00:00', '', '', '', '', '', 'Atendida'),
(190, 16, 9, 20, 'Alex Usuario B', '1548726345', '2023-02-09 08:00:00', '2023-02-09 09:00:00', '', '', '', '', '', 'Atendida'),
(191, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-02-17 10:00:00', '2023-02-17 11:00:00', '', '', '', '', '', 'Atendida'),
(192, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-02-08 10:00:00', '2023-02-08 11:00:00', '', '', '', '', '', 'Atendida'),
(193, 12, 11, 20, 'Alex Usuario B', '1548726345', '2023-05-02 12:00:00', '2023-05-02 13:00:00', '', '', '', '', '', 'Atendida'),
(194, 1, 15, 20, 'Alex Usuario B', '1548726345', '2023-01-24 11:00:00', '2023-01-24 12:00:00', '', '', '', '', '', 'Reservada'),
(195, 1, 15, 20, 'Alex Usuario B', '1548726345', '2023-10-25 10:00:00', '2023-10-25 11:00:00', '', '', '', '', '', 'Reservada'),
(196, 8, 2, 20, 'Alex Usuario B', '1548726345', '2023-12-13 08:00:00', '2023-12-13 09:00:00', '', '', '', '', '', 'Atendida'),
(197, 8, 2, 20, 'Alex Usuario B', '1548726345', '2023-09-29 08:00:00', '2023-09-29 09:00:00', '', '', '', '', '', 'Atendida'),
(198, 8, 2, 20, 'Alex Usuario B', '1548726345', '2023-08-28 08:00:00', '2023-08-28 09:00:00', '', '', '', '', '', 'Reservada'),
(199, 3, 5, 24, 'prueba Prueba', '1575369823', '2023-09-06 08:00:00', '2023-09-06 09:00:00', '', '', '', '', '', 'Atendida'),
(200, 3, 5, 24, 'prueba Prueba', '1575369823', '2023-10-12 08:00:00', '2023-10-12 09:00:00', '', '', '', '', '', 'Paciente no acude');

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
(9, 'Acupuntura'),
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
(1, 15, 'Estrada', 'DOCTOR', 'Vistas/img/Doctores/Doc-976.jpg', 'doc', 'tor', 'Masculino', '1750468909', 'doc@test1.com', '+593 992 542 55', 'La america 326 y Test1', 'Quito', '1987-07-24', '10:00:00', '17:00:00', 'Doctor'),
(2, 9, 'Piolincito', 'El Canario', '', 'test4', '4', 'Masculino', '1752365423', 'canario@correo.com', '+593995485321', 'La Florida media', 'Seleccionar...', '1970-10-14', '08:00:00', '16:00:00', 'Doctor'),
(3, 5, 'Maria', 'Burbano', '', 'test10', '10', 'Femenino', '1566256489', 'mari@correo.com', '5934587521360', 'El condado', 'Quito', '1990-07-09', '08:00:00', '12:00:00', 'Doctor'),
(4, 8, 'prueba', 'doctor', '', 'test2', '2', 'Masculino', '1752423652', 'doctorcito@correo.com', '+593992528554', 'Praderas', 'Quito', '1983-07-30', '08:00:00', '17:00:00', 'Doctor'),
(5, 2, 'Urbina', 'Andrea', '', 'test11', '11', 'Femenino', '1719348011', 'urbi@correo.com', '+593664852165', 'La Vieja Escuela y Nuevos Horizontes', 'Tulcan', '1987-09-17', '07:00:00', '15:00:00', 'Doctor'),
(6, 1, 'Buendia', 'Francisco', '', 'test14', '14', 'Masculino', '1587423654', 'pancho@doc.com', '5935461231564', 'doc@mail.com', 'El Oro', '1990-03-16', '08:00:00', '18:00:00', 'Doctor'),
(7, 4, 'Saenz', 'Oswaldo', '', 'test5', '5', 'Masculino', '1752365214', 'saenz@correo.com', '+593 992887532', 'La Tola', 'Seleccionar...', '1980-06-08', '09:00:00', '16:00:00', 'Doctor'),
(8, 2, 'Estrella', 'Patricio', '', 'test8', '8', 'Masculino', '1754236699', 'pato@mail.com', '5932552698039', 'Neicochea Ruiz y Placido', 'El Oro', '1995-04-17', '08:00:00', '18:00:00', 'Doctor'),
(10, 8, 'Pito', 'Elsa', '', 'test9', '9', 'Femenino', '1752488906', 'elsita@mail.com', '5936996696923', 'Sector centro historico', 'Quito', '2001-03-17', '08:00:00', '18:00:00', 'Doctor'),
(12, 11, 'Jacome', 'Miguelito', '', 'test7', '7', 'Masculino', '1752136522', 'email@doc.com', '593 9652 1452', 'La mariscal de medio oriente', 'El Oro', '1956-07-15', '10:00:00', '16:00:00', 'Doctor'),
(13, 1, 'Burbano', 'Lucas', '', 'test6', '6', 'Masculino', '10256348965224', 'lucas@correo.com', '+5952141023 657', 'La america 154 y Rio Frio', 'Quito', '1983-07-02', '09:00:00', '16:00:00', 'Doctor'),
(14, 5, 'Salazar', 'Frida', '', 'test15', '15', 'Masculino', '1745156323', 'frida@loca.com', '593542335921', 'Yanacocha y Guayaquil', 'Quito', '1975-12-23', '08:00:00', '18:00:00', 'Doctor'),
(16, 9, 'PruebaAD', 'PruebaADAct', '', 'test12', '12', 'Masculino', '1752145233', 'prueba@acupuntura.com', '09985475632', 'El Paraiso y Aguja Septima', 'El Oro', '1994-09-27', '08:00:00', '18:00:00', 'Doctor'),
(19, 15, 'ApellidoDOCNF', 'DOCTOR NF', '', 'test13', '13', 'Masculino', '1574236982', 'NuevoFormulario@nuevoF.com', '+539 992821 540', 'Primera Interoceanica y Bueba Aventura', 'El Oro', '1950-04-21', '09:00:00', '18:00:00', 'Doctor'),
(20, 4, 'Salazar', 'Cristina', '', 'test1', '1', 'Femenino', '1752365419', 'correo@doc.com', '+59399252152', 'El morlan', 'Quito', '1986-01-22', '09:00:00', '18:00:00', 'Doctor'),
(21, 11, 'Reinoso Rehabilita', 'Doctor', '', 'test3', '3', 'Masculino', '1752369852', 'doc@correo.com', '09852145365', 'N58 y Nuevo amanecer', 'El Oro', '1972-06-17', '09:00:00', '18:00:00', 'Doctor');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `especialidad_atendidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `especialidad_atendidos` (
`ESPECIALIDAD` text
,`ATENDIDOS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `especialidad_noatendidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `especialidad_noatendidos` (
`ESPECIALIDAD` text
,`NO ATENDIDOS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `especialidad_numerodecitas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `especialidad_numerodecitas` (
`ESPECIALIDAD` text
,`NUMERO DE CITAS` bigint(21)
);

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
-- Estructura Stand-in para la vista `medico_atenciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `medico_atenciones` (
`nombre` text
,`apellido` text
,`atenciones` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `medico_especialidad_atenciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `medico_especialidad_atenciones` (
`nombre` text
,`apellido` text
,`especialidad` text
,`atenciones` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mes_atendidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mes_atendidos` (
`id_mes` int(2)
,`mes` varchar(9)
,`atendidos` bigint(21)
);

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
(1, 'Davila', 'Lucia', '1718191514', 'licia@lucia.COM', '0998521453', 'Avenida 1 y cuarta transversal', 'Quito', '2002-06-30', 'Femenino', '', 'pacien', 'te', 'Paciente'),
(2, 'Moreno Merizalde', 'Adriana Brigethe', '1715141219', '', '', '', '', '0000-00-00', '', '', 'pacient', 'e', 'Paciente'),
(3, 'prueba', 'paciente de', '1714524863', 'prueba@correo.com', '+59352142256315', 'Av 1 y Av trentaicinco', 'Loja', '2020-10-22', 'Masculino', '', 'test6', '6', 'Paciente'),
(5, 'AAlexander', 'Paciente', '1720604807', 'nuevo@correo.com', '+593652541570', 'Obelisco', 'Quito', '1980-07-29', 'Masculino', '', 'paci', 'ente', 'Paciente'),
(6, 'Burbano', 'Edgar Paciente', '1475236504', 'correo@dss.com', '+5938855441236', 'Lomas altas', 'Quito', '1950-11-28', 'Masculino', '', 'test8', '8', 'Paciente'),
(8, 'Arteaga', 'Paciente N', '1254789658', 'correo@nuevo.com', '+59374125412563', 'Guamani', 'Loja', '2010-12-14', 'Femenino', '', 'test7', '7', 'Paciente'),
(9, 'Benavides', 'Belen', '1754856321', 'correo@vorreo.com', '+553215428963', 'Barrio bajo ', 'Seleccionar...', '1956-10-29', 'Seleccionar...', '', 'test5', '5', 'Paciente'),
(10, 'Abdon', 'paciente Juan', 'XYZ5248AbC2', 'Nuevo@a.com', '+58745212547822', 'Tumbaco', 'Loja', '1986-04-28', 'Masculino', '', 'ab', 'ab', 'Paciente'),
(11, 'Jacome', 'Alexander', '1212121212', 'alexander@pm.me', '+5935215412', 'America 352 y Jiron', 'Quito', '1997-01-13', 'Masculino', '', 'ale', 'x', 'Paciente'),
(13, 'Jacome', 'Alexander', '1234125784', '', '', '', '', '0000-00-00', '', '', 'alex', 'is', 'Paciente'),
(14, 'Jacome', 'miguel', 'cachorroli', '', '', '', '', '0000-00-00', '', '', 'Migue', 'l', 'Paciente'),
(15, 'Jacome', 'Frida', '1752486354', '', '', '', '', '0000-00-00', '', '', 'fri', 'da', 'Paciente'),
(17, 'Aprende mucho', 'Pepitó', '7258495856', 'algo@correo.com', '+59350327469821', 'La Armenia y Calderon', 'El Oro', '1985-01-14', 'Masculino', '', 'test10', '10', 'Paciente'),
(18, 'Xalazar', 'Tatiana', '1719348011', '', '', '', '', '0000-00-00', '', '', 'an', 'dy', 'Paciente'),
(19, 'Suasnavas', 'Diana', '1415191325', '', '', '', '', '0000-00-00', '', '', 'Dia', 'na', 'Paciente'),
(20, 'B', 'Alex Usuario', '1548726345', 'Nuevo@B.com', '+593992521540', 'Mexico y Valladolit', 'El Oro', '1982-02-24', 'Masculino', '', 'test11', '11', 'Paciente'),
(21, 'Sandoval', 'Jazmin', '1234567895', '', '', '', '', '0000-00-00', '', '', 'usu', 'ario', 'Paciente'),
(22, 'Sanches', 'Adriana', '1754236541', 'adri.sanches@utpl.edu.ec', '', '', '', '0000-00-00', '', '', 'adri', 'san', 'Paciente'),
(23, 'ApellidoPaciente', 'NomPaciente', '1785823658', 'nom-paciente@hbzel.com', '+5934587452163', 'Santo Domingo y New York', 'Quito', '1960-04-10', 'Masculino', '', 'test9', '9', 'Paciente'),
(24, 'Prueba', 'prueba', '1575369823', 'prueba.test@prueba.com', '3880526542323', 'Santa Prisca', 'Quito', '2006-05-30', 'Masculino', '', 'test3', '3', 'Paciente'),
(25, 'PruebaSP', 'PruebaSP', '1514171819', 'pruebaSC@hbzel.com', '+59366521542', 'Santa Prisca', 'Quito', '1959-11-09', 'Femenino', '', 'testsp', 'sp', 'Paciente'),
(26, 'PruebaAPCU1', 'PuebaAP', '1587252145', 'pruebaAP@hbzel.com', '09953265487', 'Los Laureles', 'Quito', '1950-06-15', 'Masculino', '', 'test1', '1', 'Paciente'),
(27, 'pruebargl', 'pruebargl1', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(28, 'pruebargl', 'pruebargl', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(29, 'pruebargl', 'pruebargl', '1514121412', 'pruebarl@hbzel.com', '', '', '', '0000-00-00', '', '', 'tesrgl', 'rgl', 'Paciente'),
(30, 'sd', 'ABC', '15214dsf', 'sd@ssdd.com', '', '', '', '0000-00-00', '', '', 'sd', 'sd', 'Paciente'),
(31, 'testApelli', 'Paciebte', '1548732615', 'paciente@hbzel.com', '+593662153254', 'Santa rita', 'Quito', '2003-01-09', 'Masculino', '', 'test4', '4', 'Paciente'),
(32, 'Prueba', 'Paciente 32', '17201689093215', 'Nuevo@a.com', '+593582145368', 'La america 326', 'El Oro', '1999-05-21', 'Femenino', '', 'test2', '2', 'Paciente'),
(33, 'Test1', 'UsuarioTestNF', '1548753852', 'UsuarioNf@Nf.com', ' +593951475', ' El Oro y Av. Quito 3er Solar Ciudad Loja', 'Quito', '1998-08-30', 'Femenino', '', 'testnf', 'nf', 'Paciente');

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

-- --------------------------------------------------------

--
-- Estructura para la vista `especialidad_atendidos`
--
DROP TABLE IF EXISTS `especialidad_atendidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `especialidad_atendidos`  AS SELECT `consultorios`.`nombre` AS `ESPECIALIDAD`, count(`citas`.`estado`) AS `ATENDIDOS` FROM (`consultorios` join `citas`) WHERE `consultorios`.`id` = `citas`.`id_consultorio` AND `citas`.`estado` = 'Atendida' GROUP BY `citas`.`id_consultorio``id_consultorio`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `especialidad_noatendidos`
--
DROP TABLE IF EXISTS `especialidad_noatendidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `especialidad_noatendidos`  AS SELECT `consultorios`.`nombre` AS `ESPECIALIDAD`, count(`citas`.`estado`) AS `NO ATENDIDOS` FROM (`consultorios` join `citas`) WHERE `consultorios`.`id` = `citas`.`id_consultorio` AND `citas`.`estado` = 'No Atendida' GROUP BY `citas`.`id_consultorio``id_consultorio`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `especialidad_numerodecitas`
--
DROP TABLE IF EXISTS `especialidad_numerodecitas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `especialidad_numerodecitas`  AS SELECT `consultorios`.`nombre` AS `ESPECIALIDAD`, count(`citas`.`estado`) AS `NUMERO DE CITAS` FROM (`consultorios` join `citas`) WHERE `consultorios`.`id` = `citas`.`id_consultorio` GROUP BY `citas`.`id_consultorio``id_consultorio`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `medico_atenciones`
--
DROP TABLE IF EXISTS `medico_atenciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `medico_atenciones`  AS SELECT `doctores`.`nombre` AS `nombre`, `doctores`.`apellido` AS `apellido`, count(`citas`.`estado`) AS `atenciones` FROM (`doctores` join `citas`) WHERE `doctores`.`id` = `citas`.`id_doctor` AND `citas`.`estado` = 'Atendida' GROUP BY `citas`.`id_doctor``id_doctor`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `medico_especialidad_atenciones`
--
DROP TABLE IF EXISTS `medico_especialidad_atenciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `medico_especialidad_atenciones`  AS SELECT `doctores`.`nombre` AS `nombre`, `doctores`.`apellido` AS `apellido`, `consultorios`.`nombre` AS `especialidad`, count(`citas`.`estado`) AS `atenciones` FROM ((`doctores` join `citas`) join `consultorios`) WHERE `doctores`.`id` = `citas`.`id_doctor` AND `doctores`.`id_consultorio` = `consultorios`.`id` AND `citas`.`estado` = 'Atendida' GROUP BY `doctores`.`id``id`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `mes_atendidos`
--
DROP TABLE IF EXISTS `mes_atendidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mes_atendidos`  AS SELECT month(`citas`.`inicio`) AS `id_mes`, monthname(`citas`.`inicio`) AS `mes`, count(`citas`.`estado`) AS `atendidos` FROM `citas` WHERE `citas`.`estado` = 'Atendida' GROUP BY month(`citas`.`inicio`)  ;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
