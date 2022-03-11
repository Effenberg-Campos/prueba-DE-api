-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2022 a las 23:25:34
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directenglish`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `eliminado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `sku`, `nombre`, `cantidad`, `precio`, `descripcion`, `eliminado`) VALUES
(1, 'P2355486225', 'Smart TV 49\'', 100, '899', 'Smart TV de alta calidad, disfruta de tus programas', 0),
(3, 'P2355486244', 'Smart TV 50\'', 100, '1099', 'Smart TV de alta calidad, disfruta de tus programas', 1),
(4, 'P23554862444', 'Smart TV 50\'', 100, '1099', 'Smart TV de alta calidad, disfruta de tus programas', 1),
(5, 'P123654788566', 'Samsung S22 Ultra', 100, '1200', 'Toma las mejores fotos con el s22 ultra', 0),
(6, 'P12345678', 'XIAOMI NOTE 10 PRO', 50, '435', 'Excelente dispositivo 10 de  10 SIUU', 1),
(7, 'P654654654', 'Smart TV', 50, '500', NULL, 1),
(8, 'dasdasd', 'adasd', 5, '5', 'kljlkjlkjl', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `telefono` int(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `fechaNacimiento` varchar(15) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `username`, `fechaNacimiento`, `email`, `password`, `estado`) VALUES
(4, 'Raquel Hernandez', 71857555, 'raquel', '11/09/15', 'raquel@gmail.com', 'raquel123', 'activo'),
(5, 'Derek', 75546369, 'derek', '2022-03-22', 'derek@gmail.com', '123', 'activo'),
(9, 'efenver campos', 76443944, 'Efenver', '2022-03-15', 'efenvercampos@gmail.com', '123', 'Inactivo'),
(10, 'stefany', 78956352, 'teffa', '2022-03-02', 'teffa@gmail.com', '123', 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
