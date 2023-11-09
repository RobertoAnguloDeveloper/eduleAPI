-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-11-2023 a las 19:08:40
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `edule-2`
--
CREATE DATABASE IF NOT EXISTS `edule-2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edule-2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
CREATE TABLE IF NOT EXISTS `classrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classroom_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `classrooms`
--

INSERT INTO `classrooms` (`id`, `classroom_name`) VALUES
(1, '1A'),
(2, '1B'),
(3, '2A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `score` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cycles`
--

DROP TABLE IF EXISTS `cycles`;
CREATE TABLE IF NOT EXISTS `cycles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cycle_number` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_day_schedule` (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cycles`
--

INSERT INTO `cycles` (`id`, `cycle_number`, `day_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(10, 2, 4),
(11, 3, 5),
(12, 3, 6),
(13, 3, 1),
(14, 3, 2),
(15, 3, 3),
(16, 4, 4),
(17, 4, 5),
(18, 4, 6),
(19, 4, 1),
(20, 4, 2),
(21, 5, 3),
(22, 5, 4),
(23, 5, 5),
(24, 5, 6),
(25, 5, 1),
(26, 6, 2),
(27, 6, 3),
(28, 6, 4),
(29, 6, 5),
(30, 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `days`
--

DROP TABLE IF EXISTS `days`;
CREATE TABLE IF NOT EXISTS `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `days`
--

INSERT INTO `days` (`id`, `day_number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours`
--

DROP TABLE IF EXISTS `hours`;
CREATE TABLE IF NOT EXISTS `hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hours`
--

INSERT INTO `hours` (`id`, `hour`) VALUES
(1, '07:00:00'),
(2, '08:00:00'),
(3, '09:00:00'),
(4, '10:00:00'),
(5, '11:00:00'),
(6, '12:00:00'),
(7, '13:00:00'),
(8, '14:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours_days`
--

DROP TABLE IF EXISTS `hours_days`;
CREATE TABLE IF NOT EXISTS `hours_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `day_id` (`day_id`),
  KEY `hour_id` (`hour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hours_days`
--

INSERT INTO `hours_days` (`id`, `hour_id`, `day_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 1, 2),
(10, 2, 2),
(11, 3, 2),
(12, 4, 2),
(13, 5, 2),
(14, 6, 2),
(15, 7, 2),
(16, 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `cc` varchar(30) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parents`
--

INSERT INTO `parents` (`id`, `first_name`, `last_name`, `cc`, `phone_number`, `address`, `username`, `password`) VALUES
(1, 'Eduardo', 'Doe', '123456789', '555-123-4567', '123 Main St', 'johne', 'passd1'),
(2, 'Jane', 'Smith', '987654321', '555-987-6543', '456 Elm St', 'janeith', 'paswor'),
(3, 'Maria', 'Gomez', '11112', '1234', '123 Main St', 'mariag', 'pass1'),
(4, 'Pedro', 'Rodriguez', '111113', '98760', '456 Elm St', 'pedror', 'pasor2'),
(5, 'Laura', 'Martinez', '111114', '55555', '789 Oak St', 'lauram', 'pao13'),
(6, 'Juan', 'Lopez', '11115', '666666', '567 Pine St', 'juanl', 'pasr4'),
(7, 'Isabel', 'Perez', '11116', '777777', '890 Cedar St', 'isabelp', 'pawo5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_description`) VALUES
(1, 'Administrator', NULL),
(2, 'Teacher', NULL),
(3, 'Academic coordinator', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour_day_id` int(11) NOT NULL,
  `subject_classroom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hday` (`hour_day_id`),
  KEY `fk_suclassroom` (`subject_classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schedules`
--

INSERT INTO `schedules` (`id`, `hour_day_id`, `subject_classroom_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 8),
(4, 4, 5),
(5, 5, 3),
(6, 6, 9),
(7, 7, 4),
(8, 8, 7),
(9, 1, 12),
(10, 2, 11),
(11, 3, 18),
(12, 4, 13),
(13, 5, 15),
(14, 6, 19),
(15, 7, 17),
(16, 8, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `identification` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type_id` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classroom_id` (`classroom_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `identification`, `email`, `username`, `password`, `classroom_id`, `parent_id`, `type_id`) VALUES
(1, 'John', 'Doe', '12345678', 'je@e.com', 'johndoe', 'passd1', 1, 1, '3'),
(2, 'Jane', 'Smith', '98765432', 'janesmith@ee.com', 'janeith', 'pord2', 1, 2, '3'),
(3, 'Michael', 'Johnson', '55555555', 'michael@example.com', 'micelj', 'pword3', 1, 3, '3'),
(4, 'Emily', 'Williams', '66666666', 'emily@example.com', 'emilwill', 'paword4', 2, 4, '3'),
(5, 'David', 'Brown', '77777777', 'david@example.com', 'davbro', 'passd5', 2, 5, '3'),
(6, 'Sarah', 'Jones', '88888888', 'sarah@example.com', 'shjon', 'passd6', 2, 6, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `description`) VALUES
(1, 'MUSIC1', 'Music Class for 1st grade'),
(2, 'MATH1', 'Math Class for 1st grade'),
(3, 'ENGLISH1', 'English Class for 1st grade'),
(4, 'SPORTS1', 'Sports Class for 1st grade'),
(5, 'SOCIAL STUDIES1', 'Social Studies Class for 1st grade'),
(6, 'RELIGION1', 'Religión Class for 1st grade'),
(7, 'ESPAÑOL', 'Spanish Class for 1st grade'),
(8, 'BREAK', 'Time to take a break'),
(9, 'LUNCH', 'Time to take lunch'),
(10, 'ETICA1', 'Etica Class for 1st grade');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects_classrooms`
--

DROP TABLE IF EXISTS `subjects_classrooms`;
CREATE TABLE IF NOT EXISTS `subjects_classrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `classroom_id` (`classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subjects_classrooms`
--

INSERT INTO `subjects_classrooms` (`id`, `subject_id`, `classroom_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 1, 2),
(12, 2, 2),
(13, 3, 2),
(14, 4, 2),
(15, 5, 2),
(16, 6, 2),
(17, 7, 2),
(18, 8, 2),
(19, 9, 2),
(20, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(100) DEFAULT NULL,
  `description` text,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topic_contents`
--

DROP TABLE IF EXISTS `topic_contents`;
CREATE TABLE IF NOT EXISTS `topic_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(100) NOT NULL,
  `activity` text,
  `pending_homework` text,
  `resources` text,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(2) NOT NULL,
  `identification` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identification` (`identification`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `type_id`, `identification`, `first_name`, `last_name`, `email`, `role_id`, `username`, `password`) VALUES
(1, 'CC', '73202647', 'Roberto', 'Angulo', 'rangulot@edule.com', 1, 'rangulot', '73202647'),
(2, 'CC', '1111', 'Vincent', 'Rolong', 'vrolongm@unicartagena.edu.co', 2, 'vrolong', '123'),
(3, 'CC', '2222', 'Carlos', 'Cáceres', 'ccaceres@unicartagena.edu.co', 2, 'ccaceres', '123'),
(4, 'CC', '3333', 'Atilano', 'Arrieta', 'aarrieta@unicartagena.edu.co', 2, 'aarrieta', '123'),
(5, 'CC', '4444', 'John', 'Arrieta', 'jarrieta@unicartagena.edu.co', 2, 'jarrieta', '123'),
(6, 'CC', '5555', 'Luis', 'Calvo', 'lcalvo@unicartagena.edu.co', 2, 'lcalvo', '123'),
(7, 'CC', '6666', 'Rafael', 'Marrero', 'rmarrero@unicartagena.edu.co', 2, 'rmarrero', '123'),
(8, 'CC', '7777', 'Carolina', 'Acosta', 'cacosta@unicartagena.edu.co', 2, 'cacosta', '123'),
(9, 'CC', '8888', 'Javier', 'Roncallo', 'jroncallo@unicartagena.edu.co', 2, 'jroncallo', '123'),
(10, 'CC', '2323', 'Alberto', 'Banda', 'abanda@unicartagena.edu.co', 2, 'abanda', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_subjects`
--

DROP TABLE IF EXISTS `users_subjects`;
CREATE TABLE IF NOT EXISTS `users_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_subjects`
--

INSERT INTO `users_subjects` (`id`, `subject_id`, `user_id`) VALUES
(17, 1, 2),
(18, 2, 3),
(19, 3, 4),
(20, 4, 5),
(21, 5, 6),
(22, 6, 7),
(23, 7, 8),
(24, 10, 10);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cycles`
--
ALTER TABLE `cycles`
  ADD CONSTRAINT `fk_day_schedule` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hours_days`
--
ALTER TABLE `hours_days`
  ADD CONSTRAINT `hours_days_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `hours_days_ibfk_2` FOREIGN KEY (`hour_id`) REFERENCES `hours` (`id`);

--
-- Filtros para la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `fk_hday` FOREIGN KEY (`hour_day_id`) REFERENCES `hours_days` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_suclassroom` FOREIGN KEY (`subject_classroom_id`) REFERENCES `subjects_classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`);

--
-- Filtros para la tabla `subjects_classrooms`
--
ALTER TABLE `subjects_classrooms`
  ADD CONSTRAINT `subjects_classrooms_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subjects_classrooms_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`);

--
-- Filtros para la tabla `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Filtros para la tabla `topic_contents`
--
ALTER TABLE `topic_contents`
  ADD CONSTRAINT `topic_contents_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `users_subjects`
--
ALTER TABLE `users_subjects`
  ADD CONSTRAINT `users_subjects_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `users_subjects_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
