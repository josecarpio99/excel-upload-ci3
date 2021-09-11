

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zf2xzpil_TG__admin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(60) NOT NULL,
  `estado` enum('Activo','Inactivo','Pendiente') DEFAULT 'Pendiente',
  `perfil` int(11) DEFAULT '0',
  `idIdioma` int(11) NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaBaja` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idEmpresa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `email`, `password`, `estado`, `perfil`, `idIdioma`, `fechaAlta`, `fechaBaja`, `idEmpresa`) VALUES
(1, 'maxi', 'maximilianovanzetti@gmail.com', '1234512', 'Activo', 2, 0, '2017-09-20 03:00:00', '2019-07-31 05:00:00', 0),
(1523, 'JohnnieScott', 'JohnnieScott@testw.com', '4444', 'Activo', 0, 1, '2020-09-29 12:42:22', '2020-09-29 12:42:22', 113),
(1322, 'cdk1', 'cdk1@bmw.com', 'cdk20', 'Activo', 2, 1, '2020-03-14 19:15:53', '2020-03-14 19:15:53', 105),
(4, 'diego', 'diegobada@gmail.com', '123453', 'Activo', 2, 0, '2017-11-16 03:00:00', '0000-00-00 00:00:00', 0),
(5, 'Carlos', 'micorreo@hotmail.com', '12345', 'Activo', 0, 0, '2017-11-08 03:00:00', '0000-00-00 00:00:00', 0);


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
