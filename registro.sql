-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-08-2018 a las 05:01:57
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `Nombres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`Id`, `DNI`, `Nombres`) VALUES
(2, '132324', 'Petuel'),
(3, '45653543', 'Joel Perez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




create table productos(
	id_producto int primary key auto_increment,
	nombre varchar(255) not null,
	img_producto varchar(255) not null,
	id_categoria int not null,
	precio float not null,
	stock int not null
);

DELIMITER //
	CREATE PROCEDURE selectProductos()
	BEGIN
		SELECT * FROM productos;
	END	
//

DELIMITER //
	CREATE PROCEDURE selectProducto(
		IN _id_producto int
	)
	BEGIN
		SELECT * FROM productos WHERE id_producto = _id_producto;
	END	
//

insert into productos(nombre, img_producto, id_categoria, precio, stock) values('Camisa Manga Larga', 'images/home/gallery2.jpg', 2, 39.99, 10); 
insert into productos(nombre, img_producto, id_categoria, precio, stock) values('Vestido negro', 'images/home/product3.jpg', 2, 19.99, 20);
insert into productos(nombre, img_producto, id_categoria, precio, stock) values('Sueter azul', 'images/home/product5.jpg', 2, 29.99, 20);
insert into productos(nombre, img_producto, id_categoria, precio, stock) values('Camiseta blanca', 'images/home/product6.jpg', 2, 13.99, 15);
