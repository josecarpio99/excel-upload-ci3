

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TG_eES_TOSn2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `dni` int(10) NOT NULL,
  `email` varchar(65) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `password` varchar(60) NOT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  `tipo` int(11) DEFAULT '0',
  `fechaAlta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaBaja` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imagen` text,
  `idIdioma` int(11) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `idUsuarioAdmin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `apellido`, `nombre`, `dni`, `email`, `celular`, `idSucursal`, `password`, `estado`, `tipo`, `fechaAlta`, `fechaBaja`, `imagen`, `idIdioma`, `idEmpresa`, `idUsuarioAdmin`) VALUES
(6, 'Brian', 'Brian', 'Brian', 0, 'brian@testw.com', '', 1, '235', 'Activo', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 118, 461),
(4, 'admin', 'Admin', 'Mercedes', 0, 'admin@testw.com', '0', 1, '214', 'Activo', 2, '2018-01-31 06:00:00', '2018-01-31 06:00:00', '-', 1, 118, 416),
(3, 'Woody', 'Lincoln', 'Woody', 0, 'woody@testw.com', '0', 1, '478', 'Activo', 2, '2018-01-31 06:00:00', '2018-01-31 06:00:00', '-', 1, 118, 415),
(2, 'Matt', 'English', 'Matt', 0, 'matt@testw.com', '0', 1, '568', 'Activo', 2, '2018-01-31 06:00:00', '2018-01-31 06:00:00', '-', 1, 118, 414),
(5, '_Share', '_Share', '_Share', 0, 'share1@testw.com', '0', 1, '2019', 'Activo', 1, '2018-01-31 06:00:00', '2018-01-31 06:00:00', '-', 1, 118, 417);

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
