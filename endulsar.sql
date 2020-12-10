-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2020 a las 05:04:01
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `endulsar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupcake`
--

CREATE TABLE `cupcake` (
  `nombre` varchar(50) NOT NULL,
  `masa` varchar(10) NOT NULL,
  `relleno` varchar(10) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(20) NOT NULL,
  `idcupcake` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cupcake`
--

INSERT INTO `cupcake` (`nombre`, `masa`, `relleno`, `descripcion`, `precio`, `idcupcake`, `foto`) VALUES
('Kiss', 'naranja', 'arequipe', 'cupcake de banda de rock kiss', 6000, 2, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/3.PNG?raw=true'),
('Feliz dia', 'naranja', 'nutella', 'cupcake de feliz dia para toda ocacion.', 6000, 3, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/1.PNG?raw=true'),
('Feliz cumpleaños.', 'mixto_vain', 'nutella', 'cupcake de feliz cumpleaños para amigas.', 6000, 4, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/4.PNG?raw=true'),
('grados de medicina', 'chocolate', 'nutella', 'cupcake de grados de medicina.', 6000, 5, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/5.PNG?raw=true'),
('feliz cumpleaños con mascota', 'naranja', 'buttercrea', 'cupcake de feliz cumpleaños con diseño de mascota.', 6000, 6, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/6.PNG?raw=true'),
('sound park', 'chocolate', 'nutella', 'cupcake con diseño de sound park', 6000, 7, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/7.PNG?raw=true'),
('breaking bad', 'vainilla', 'arequipe', 'cupcake con diseño de breaking bad', 9000, 8, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/8.PNG?raw=true'),
('escudos de equipos', 'chocolate', 'nutella', 'cupcake de escudos de equipos a gusto del cliente', 10000, 9, 'https://github.com/Alejo0508/endulsar/blob/main/img/cupcakes/2.PNG?raw=true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tortica`
--

CREATE TABLE `tortica` (
  `nombre` varchar(20) NOT NULL,
  `masa` varchar(10) NOT NULL,
  `relleno` varchar(10) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(20) NOT NULL,
  `idtortica` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tortica`
--

INSERT INTO `tortica` (`nombre`, `masa`, `relleno`, `descripcion`, `precio`, `idtortica`, `foto`) VALUES
('tortica de mario bro', 'chocolate', 'nutella', 'torta de mario bros con diseño a peticion del cliente.', 45000, 2, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/9.PNG?raw=true'),
('Tambores', 'chocolate', 'buttercrea', 'Torta de estilo de tambores.', 35000, 3, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/8.PNG?raw=true'),
('Torta de monsters IN', 'manzana', 'arequipe', 'torta con sideño de personajes de mosters inc. a peticion del cliente', 40000, 4, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/7.PNG?raw=true'),
('Torta de abuelo', 'mixto_vain', 'nutella', 'Torta con diseño de abuelo para ocaciones especiales como dias del padre o cumpleaños.', 38000, 5, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/6.PNG?raw=true'),
('Spiderman', 'naranja', 'buttercrea', 'Torta con diseño de Spiderman y la ciudad de new york', 40000, 6, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/5.PNG?raw=true'),
('Chavo del 8', 'manzana', 'nutella', 'Torta del chavo del 8, esta torta fue diseño del cliente, diseño ahora disponible al publico.', 38000, 7, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/4.PNG?raw=true'),
('Torta de los vengado', 'chocolate', 'nutella', 'Torta de los vengadores, este diseño esta disponible en varios colores.', 40000, 8, 'https://github.com/Alejo0508/endulsar/blob/main/img/torticas/3.PNG?raw=true');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cupcake`
--
ALTER TABLE `cupcake`
  ADD PRIMARY KEY (`idcupcake`);

--
-- Indices de la tabla `tortica`
--
ALTER TABLE `tortica`
  ADD PRIMARY KEY (`idtortica`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cupcake`
--
ALTER TABLE `cupcake`
  MODIFY `idcupcake` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tortica`
--
ALTER TABLE `tortica`
  MODIFY `idtortica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
