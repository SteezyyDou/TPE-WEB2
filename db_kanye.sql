-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2026 a las 00:56:24
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
-- Base de datos: `db_kanye`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `album_id` int(36) NOT NULL,
  `album_name` text NOT NULL,
  `rating` decimal(3,1) DEFAULT 0.0,
  `album_photo` text DEFAULT NULL,
  `songs_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `rating`, `album_photo`, `songs_count`) VALUES
(1, 'The College Dropout', '0.0', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(36) NOT NULL,
  `artist_name` text NOT NULL,
  `artist_description` text NOT NULL,
  `artist_photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_description`, `artist_photo`) VALUES
(1, 'Kanye West, YE', 'Kanye Omari West es un rapero, cantante y empresario estadounidense.​Nacido en Atlanta y criado en Chicago, West ganó popularidad a principios de los años 2000 como productor para la discográfica Roc-A-Fella Records, produciendo varios sencillos exitosos para artistas populares de esa época.', NULL),
(4, 'J. Ivy', 'James Ivy Richardson II es un poeta, artista de palabra hablada, compositor y autor estadounidense. Ganó su primer premio Grammy en 2023 con su sexto álbum, The Poet Who Sat by the Door.', NULL),
(5, 'Jay Z', 'Shawn Corey Carter, más conocido por su nombre artístico Jay-Z, es un rapero, productor, empresario y actor estadounidense. Es uno de los artistas de hip-hop más exitosos económicamente en Estados Unidos y mundialmente, y posee un patrimonio neto de más de US$2.500 millones en 2024.​', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `song_id` int(36) NOT NULL,
  `album_id` int(36) NOT NULL,
  `song_name` text NOT NULL,
  `duration` time NOT NULL,
  `song_photo` text DEFAULT NULL,
  `features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`song_id`, `album_id`, `song_name`, `duration`, `song_photo`, `features`) VALUES
(1, 1, 'Never Let Me Down', '00:05:25', NULL, 'J. Ivy, Jay Z');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indices de la tabla `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indices de la tabla `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `fk_songs_albums` (`album_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(36) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(36) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(36) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `fk_songs_albums` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
