-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 00:03:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicalmeeting`
--
CREATE SCHEMA IF NOT EXISTS `medicalmeeting` DEFAULT CHARACTER SET utf8 ;
USE `medicalmeeting` ;
-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mostrar_cita`
--

CREATE TABLE `mostrar_cita` (
  `idCita`  int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Turno` enum('Matutino','Vespertino') NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Hora` varchar(60) NOT NULL,
    `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estructura de tabla para la tabla `registrar_cita`
--

CREATE TABLE `registrar_cita` (
  `idCita` int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Turno` enum('Matutino','Vespertino') NOT NULL,
  `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Hora` varchar(60) NOT NULL,
  `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes_reservados`
--

CREATE TABLE `pacientes_reservados` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(100) NOT NULL,
  `Turno` enum('Matutino','Vespertino') NOT NULL,
 `Dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `Hora` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;