-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2024 a las 01:34:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administrativo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `IDarea` int(50) NOT NULL,
  `Nombre_area` varchar(50) NOT NULL,
  `Jefe_area` varchar(30) NOT NULL,
  `Numero_de_empleados` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`IDarea`, `Nombre_area`, `Jefe_area`, `Numero_de_empleados`) VALUES
(1, 'Recursos_humanos', 'Lic.Martha sanchez', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas_class`
--

CREATE TABLE `aulas_class` (
  `IDaulas` int(11) NOT NULL,
  `Numero_de_aula` int(50) NOT NULL,
  `Capacidad` int(50) NOT NULL,
  `Ubicacion` varchar(30) NOT NULL,
  `Equipamiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aulas_class`
--

INSERT INTO `aulas_class` (`IDaulas`, `Numero_de_aula`, `Capacidad`, `Ubicacion`, `Equipamiento`) VALUES
(1, 101, 30, 'Piso 4', 'Sala de computacion'),
(2, 201, 30, 'Piso 7', 'Pizarra digital'),
(3, 106, 45, 'Piso 9', 'Pizarra digital proyector'),
(4, 235, 60, 'Piso 9', 'Pizarra digital proyector'),
(5, 202, 45, 'Piso 6', 'Pizarra digital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_ibm`
--

CREATE TABLE `carreras_ibm` (
  `IDcarrera` int(50) NOT NULL,
  `Nombre_carrera` varchar(30) NOT NULL,
  `Duración` varchar(20) NOT NULL,
  `Nùmeros_materias` int(80) NOT NULL,
  `Coordinador_de_carrera` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras_ibm`
--

INSERT INTO `carreras_ibm` (`IDcarrera`, `Nombre_carrera`, `Duración`, `Nùmeros_materias`, `Coordinador_de_carrera`) VALUES
(1, 'Sistemas Informaticos', '3', 35, 'Dr. Carlos Rivera'),
(2, 'Administracion De Empresas', '3', 40, 'Dr. Maria perrez'),
(3, 'Fisioterapia', '3', 45, 'Dr. Maria Rivera'),
(5, 'Contaduria General', '2', 35, 'Dr. Carlos Rivera'),
(6, 'Aduanas', '3', 40, 'Dr. Carlos Rivera'),
(7, 'Contabilidad', '3', 45, 'Dr. Maria Rivera'),
(8, 'Enfermeria', '3', 50, 'Dr. Maria perrez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `IDdocente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_paterno` varchar(30) NOT NULL,
  `Apellido_Materno` varchar(25) NOT NULL,
  `Asignatura` varchar(50) NOT NULL,
  `Correo_electronico` varchar(25) NOT NULL,
  `Telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`IDdocente`, `Nombre`, `Apellido_paterno`, `Apellido_Materno`, `Asignatura`, `Correo_electronico`, `Telefono`) VALUES
(1, 'Maria', 'Padilla', 'Rodrigues', 'Contabilidad ', 'Maria1234@mail.com', 78569456),
(2, 'Sol', 'Torrez', 'Miranda', 'Computacion', 'sol46766@gmail.com', 78944653),
(3, 'Carmen', 'Zalinas', 'Rodrigues', 'Matematicas', 'zalinas88976@gmail.com', 72345055),
(4, 'Mayra', 'Campos', 'Torrez', 'Ingles', 'mayra9976@gmail.com', 78500656),
(5, 'Rosa', 'Torrez', 'Mamani', 'Computacion', 'rosi46@gmail.com', 787674653);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `IDalumno` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido_paterno` varchar(30) NOT NULL,
  `Apellido_Materno` varchar(30) NOT NULL,
  `Carrera` varchar(30) NOT NULL,
  `Correo_electronico` varchar(25) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`IDalumno`, `Nombre`, `Apellido_paterno`, `Apellido_Materno`, `Carrera`, `Correo_electronico`, `Fecha_de_nacimiento`) VALUES
(1, 'Maria', 'Lopez', 'Paredes', 'Contabilidad', 'Maria9874@mail.com', '0000-00-00'),
(2, 'Sol', 'Torrez', 'Miranda', 'Contabilidad', 'sol46766@gmail.com', '0000-00-00'),
(3, 'Ana', 'Lopez', 'Gomes', 'Sistemas Informaticos', 'Ana6786@gmail.com', '0000-00-00'),
(4, 'Soledad', 'Torrez', 'Miranda', 'Enfermeria', 'sol576@gmail.com', '2020-10-01'),
(5, 'Carmen', 'Padilla', 'Rodrigues', 'Fisioterapia', 'carmenpadilla3466@gmail.c', '2000-02-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_administrativo`
--

CREATE TABLE `personal_administrativo` (
  `IDempleado` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido_paterno` varchar(20) NOT NULL,
  `Apellido_Materno` varchar(20) NOT NULL,
  `Cargo` varchar(20) NOT NULL,
  `Correo_electronico` varchar(20) NOT NULL,
  `Telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal_administrativo`
--

INSERT INTO `personal_administrativo` (`IDempleado`, `Nombre`, `Apellido_paterno`, `Apellido_Materno`, `Cargo`, `Correo_electronico`, `Telefono`) VALUES
(1, 'Carmen', 'Padilla', 'Rodrigues', 'Gerente', 'carmenpadilla3466@gm', 723345654),
(2, 'Maria', 'Padilla', 'Gimenes', 'Directora', 'Maria1234@mail.com', 78569456),
(3, 'Fani', 'Torrez', 'Mamani', 'Subdirectora', 'fani46@gmail.com', 78944653),
(4, 'Maria', 'Lopez', 'Rodrigues', 'Jefe de personal', 'marialopez78976@gmai', 72345455),
(5, 'Ana', 'soza', 'Gomes', 'Coordinadora', 'Ana6786@gmail.com', 766458384);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`IDarea`);

--
-- Indices de la tabla `aulas_class`
--
ALTER TABLE `aulas_class`
  ADD PRIMARY KEY (`IDaulas`);

--
-- Indices de la tabla `carreras_ibm`
--
ALTER TABLE `carreras_ibm`
  ADD PRIMARY KEY (`IDcarrera`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`IDdocente`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`IDalumno`);

--
-- Indices de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  ADD PRIMARY KEY (`IDempleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `IDarea` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `aulas_class`
--
ALTER TABLE `aulas_class`
  MODIFY `IDaulas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `carreras_ibm`
--
ALTER TABLE `carreras_ibm`
  MODIFY `IDcarrera` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `IDdocente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `IDalumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  MODIFY `IDempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
