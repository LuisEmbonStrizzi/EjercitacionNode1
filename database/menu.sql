-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-10-2022 a las 18:23:40
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `menu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `tipo`, `categoria`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'principal', 'minuta', 'Milanesa con papas fritas', 1800, 'Milanesa de carne con papas fritas'),
(2, 'principal', 'minuta', 'Milanesa con pure', 1600, 'Milanesa de carne con pure'),
(3, 'principal', 'minuta', 'hamburguesa con papas fritas', 1500, 'Hamburguesa con papas fritas'),
(4, 'principal', 'pasta', 'Fetuccini a la bolognesa', 1300, 'Fetuccini con salsa de tomate y carne'),
(5, 'principal', 'pasta', 'Fetuccini al pesto', 1400, 'Fetuccini con salsa pesto'),
(6, 'postre', 'helado', '2 bochas de helado', 600, '2 bochas de helado de los siguientes sabores: dulce de leche, chocolate, vainilla, frutilla, menta granizada'),
(7, 'postre', 'torta', 'Tiramisu', 700, 'Porcion de tiramisu'),
(8, 'bebida', 'gaseosa', 'Coca-Cola', 300, 'Coca-Cola 500ml'),
(9, 'bebida', 'gaseosa', 'Sprite', 300, 'Sprite 500ml'),
(10, 'bebida', 'agua', 'Agua mineral sin gas', 200, 'Agua mineral sin gas 500ml');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
