-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2020 a las 05:25:00
-- Versión del servidor: 5.6.45-log
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosusuario`
--

CREATE TABLE `datosusuario` (
  `idusuario` varchar(30) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `cedula` int(11) NOT NULL,
  `direccion` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(30) COLLATE utf8_bin NOT NULL,
  `correo` varchar(30) COLLATE utf8_bin NOT NULL,
  `nombremascota` varchar(30) COLLATE utf8_bin NOT NULL,
  `tipomascota` varchar(30) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(30) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `cita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `datosusuario`
--

INSERT INTO `datosusuario` (`idusuario`, `nombre`, `cedula`, `direccion`, `telefono`, `correo`, `nombremascota`, `tipomascota`, `sexo`, `descripcion`, `cita`) VALUES
('piedad', 'piedad Andrea', 7653, 'Blas de lezo', '986457', 'piedad@gmail.com', 'tania', 'perro', 'Femenino', 'tiene un fuerte dolor en su pata izquierda', 3),
('PaolaT', 'Paola Tatiana', 7635239, 'los caracoles M T Lote 4', '309474634', 'Pao@gmail.com', 'Tobias', 'Gato', 'Masculino', 'No quiere comer nada ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `horas` varchar(20) COLLATE utf8_bin NOT NULL,
  `paciente` varchar(30) COLLATE utf8_bin NOT NULL,
  `veterinario` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `horas`, `paciente`, `veterinario`) VALUES
(1, '7:00 A.M-7:20 A.M', '', 'Lucia Canoa'),
(2, '7:20 A.M-7:40 A.M', '', 'Lucia Canoa'),
(3, '7:40 A.M-8:00 A.M', 'piedad', 'Lucia Canoa'),
(4, '8:00 A.M-8:20 A.M', '', 'Lucia Canoa'),
(5, '8:20 A.M-8:40 A.M', '', 'Lucia Canoa'),
(6, '8:40 A.M-9:00 A.M', '', 'Lucia Canoa'),
(7, '9:00 A.M-9:20 A.M', '', 'Lucia Canoa'),
(8, '9:20 A.M-9:40 A.M', '', 'Lumar Andres'),
(9, '9:40 A.M-10:00 A.M', '', 'Lumar Andres'),
(10, '10:00 A.M-10:20 A.M', '', 'Lumar Andres'),
(11, '10:20 A.M-10:40 A.M', '', 'Lumar Andres'),
(12, '10:40 A.M-11:00 A.M', '', 'Lumar Andres'),
(13, '11:00 A.M-11:20 A.M', '', 'Lumar Andres'),
(14, '11:20 A.M-11:40 A.M', '', 'Maria Fuentes'),
(15, '11:40 A.M-12:00 P.M', '', 'Maria Fuentes'),
(16, '12:00 P.M-12:20 P.M', '', 'Maria Fuentes'),
(17, '12:20 P.M-12:40 P.M', '', 'Mauro Paolo'),
(18, '12:40 P.M-1:00 P.M', '', 'Mauro Paolo'),
(19, '1:00 P.M-1:20 P.M', '', 'Mauro Paolo'),
(20, '1:20 P.M-1:40 P.M', '', 'Mauro Paolo'),
(21, '1:40 P.M-2:00 P.M', '', 'Mauro Paolo'),
(22, '2:00 P.M-2:20 P.M', '', 'Mauro Paolo'),
(23, '2:20 P.M-2:40 P.M', '', 'Valentina Toro'),
(24, '2:40 P.M-3:00 P.M', '', 'Valentina Toro'),
(25, '3:00 P.M-3:20 P.M', '', 'Valentina Toro'),
(26, '3:20 P.M-3:40 P.M', '', 'Valentina Toro'),
(27, '3:40 P.M-4:00 P.M', '', 'Valentina Toro'),
(28, '4:20 P.M-4:40 P.M', '', 'Valentina Toro'),
(29, '4:40 P.M-5:00 P.M', '', 'Valentina Toro'),
(30, '5:00 P.M-5:20 P.M', '', 'Ximena Puntilla'),
(31, '5:20 P.M-5:40 P.M', '', 'Ximena Puntilla'),
(32, '5:40 P.M-6:00 P.M', '', 'Ximena Puntilla'),
(33, '6:20 P.M-6:40 P.M', '', 'Ximena Puntilla'),
(34, '6:40 P.M-7:00 P.M', '', 'Ximena Puntilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `password`, `tipo`) VALUES
('Laura Tarou', '123', 'veterinario'),
('Lucia Canoa', '123', 'veterinario'),
('Lumar Andres', '123', 'veterinario'),
('Maria Fuentes', '123', 'veterinario'),
('Mauro Paolo', '123', 'veterinario'),
('PaolaT', '123', 'usuario'),
('Valentina Toro', '123', 'veterinario'),
('Ximena Puntilla', '123', 'veterinario'),
('pedro', '8', 'admin'),
('piedad', '123', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
