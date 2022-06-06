-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 02:57:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'Nike'),
(2, 'Saucony'),
(3, 'ASICS'),
(4, 'New Balance'),
(5, 'Adidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `marca` int(11) NOT NULL,
  `modelo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `precio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `modelo`, `precio`, `img`) VALUES
(1, 'Atmos Duck Hunter Camo', 1, 'Air Max 90', '3400', 'https://images.stockx.com/images/Nike-Air-Max-90-Atmos-Duck-Hunter-Camo-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1608514818&q=80'),
(2, 'AFEW Time & Space', 2, 'Shadow 5000', '3500', 'https://images.stockx.com/images/Saucony-Shadow-5000-Afew-Time-Space-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607010747&q=80'),
(3, 'Avocado Toast', 2, 'Shadow 6000', '3500', 'https://images.stockx.com/images/Saucony-Shadow-6000-Avocado-Toast.png?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1627415227&q=80'),
(4, 'Atmos Elephant', 1, 'Air Max 1', '4000', 'https://images.stockx.com/images/Nike-Air-Max-1-Atmos-x-Air-Jordan.png?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607061585&q=80'),
(5, 'Atmos Safari', 1, 'Air Max 1', '3400', 'https://images.stockx.com/images/Nike-Air-Max-1-Atmos-Safari-2002.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1617712817&q=80'),
(6, 'Ronnie Fieg Salmon Toe', 3, 'Gel-Lyte III', '4000', 'https://images.stockx.com/images/Asics-Gel-Lyte-III-Ronnie-Fieg-Salmon-Toes-2011.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606318883&q=80'),
(7, 'AFEW Koi', 3, 'Gel-Lyte III', '3600', 'https://images.stockx.com/images/Asics-Gel-Lyte-III-Afew-Koi-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606317216&q=80'),
(8, 'Bodega Ever Ready', 2, 'Grid Azura 2000', '3600', 'https://images.stockx.com/images/Saucony-Grid-Azura-2000-Bodega-Ever-Ready.png?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1627415529&q=80'),
(9, 'Parra Amsterdam', 1, 'Air Max 1', '3400', 'https://images.stockx.com/images/Nike-Air-Max-1-AMS-Parra-Amsterdam-2005-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1642764335&q=80'),
(10, 'Warhawk', 1, 'Air Max 90', '3600', 'https://images.stockx.com/images/Nike-Air-Max-90-Warhawk-2007-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606316345&q=80'),
(11, 'Supreme Red Cement', 1, 'Dunk SB Low', '2300', 'https://images.stockx.com/images/Nike-Dunk-SB-Low-Supreme-Red-Cement-2012-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606324834&q=80'),
(12, 'Animal Pack', 1, 'Air Max 1', '3400', 'https://images.stockx.com/images/Nike-Air-Max-1-Animal-Pack-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606317191&q=80'),
(13, 'Sean Wotherspoon ', 1, 'Nike Air Max 1/97', '3600', 'https://images.stockx.com/images/Nike-Air-Max-1-97-Sean-Wotherspoon-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1612283442&q=80'),
(14, 'Joe Freshgoods No Emotions Are', 4, '992', '5000', 'https://images.stockx.com/images/New-Balance-992-Dont-Be-Mad-No-Emotions-Are-Emotions-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607668378&q=80'),
(15, 'JJJJound', 4, '990v3', '4800', 'https://images.stockx.com/images/New-Balance-990v4-jjjjound-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607654099&q=80'),
(18, 'Salehe Bembury Peace Be The Jo', 4, '2002R', '4000', 'https://images.stockx.com/images/New-Balance-2002R-Salehe-Bembury-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606765383&q=80'),
(19, 'Stray Rats Reprise Joker Grey', 4, '990v3', '5000', 'https://images.stockx.com/images/New-Balance-990-v3-Stray-Rats-Reprise-Joker-Grey.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607657635&q=80'),
(23, 'Aqua', 5, 'ZX 8000 OG', '3600', 'https://images.stockx.com/images/adidas-ZX-8000-OG-Aqua-2020-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1611191015&q=80'),
(24, 'Turquoise Red', 5, 'ZX 9000', '3300', 'https://images.stockx.com/images/adidas-ZX-9000-Turquoise-Red.png?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1625189015&q=80'),
(25, 'Freddy Krueger', 1, 'Dunk SB Low', '2500', 'https://images.stockx.com/images/Nike-Dunk-SB-Low-Freddy-Krueger.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1607045341&q=80'),
(26, 'What the Dunk', 1, 'Dunk SB Low', '2600', 'https://images.stockx.com/images/Nike-Dunk-SB-Low-What-The-Dunk-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606323549&q=80'),
(27, 'Paris', 1, 'Dunk SB Low', '2200', 'https://images.stockx.com/images/Nike-Dunk-SB-Low-Paris.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606325852&q=80'),
(28, 'Parra Patta Cherrywood', 1, 'Air Max 1', '3500', 'https://images.stockx.com/images/Nike-Air-Max-1-Parra-Patta-Cherrywood.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606316976&q=80'),
(29, 'Powerwall BRS', 1, 'Air Max 1', '3400', 'https://images.stockx.com/images/Nike-Air-Max-1-Powerwall-BRS.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1617712068&q=80'),
(30, 'Silver Bullet', 1, 'Air Max 97', '3900', 'https://images.stockx.com/images/Nike-Air-Max-97-Silver-Bullet-2016-Product.jpg?fit=fill&bg=FFFFFF&w=140&h=75&fm=webp&auto=compress&trim=color&dpr=1&updated_at=1606323905&q=80');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productos_marca` (`marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_marca` FOREIGN KEY (`marca`) REFERENCES `marcas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
