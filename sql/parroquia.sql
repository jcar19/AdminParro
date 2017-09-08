-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2017 a las 17:13:54
-- Versión del servidor: 5.7.17
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parroquia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `c_admin` int(11) NOT NULL,
  `Nombre` varchar(28) NOT NULL,
  `usuario` varchar(22) NOT NULL,
  `passw` varchar(22) NOT NULL,
  `c_lugar` int(11) NOT NULL,
  `Descrip` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`c_admin`, `Nombre`, `usuario`, `passw`, `c_lugar`, `Descrip`) VALUES
(1, 'Primer nombre del parroco', 'userA23', 'pass23t', 1, 'Administrador del sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bautizo`
--

CREATE TABLE `bautizo` (
  `c_bau` int(8) NOT NULL,
  `ap_p` varchar(28) NOT NULL,
  `ap_m` varchar(28) NOT NULL,
  `nombre` varchar(28) NOT NULL,
  `sexo` varchar(4) NOT NULL,
  `fecha_b` varchar(18) NOT NULL,
  `fecha_n` varchar(18) NOT NULL,
  `lugar` varchar(42) NOT NULL,
  `nom_p` varchar(42) NOT NULL,
  `nom_m` varchar(42) NOT NULL,
  `nom_pno` varchar(42) NOT NULL,
  `nom_mna` varchar(42) NOT NULL,
  `bautizante` varchar(44) NOT NULL,
  `libro` varchar(6) NOT NULL,
  `foja` varchar(8) NOT NULL,
  `acta` varchar(18) DEFAULT NULL,
  `fecha_r` varchar(18) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bautizo`
--

INSERT INTO `bautizo` (`c_bau`, `ap_p`, `ap_m`, `nombre`, `sexo`, `fecha_b`, `fecha_n`, `lugar`, `nom_p`, `nom_m`, `nom_pno`, `nom_mna`, `bautizante`, `libro`, `foja`, `acta`, `fecha_r`) VALUES
(1, 'JULIO', 'ARRIETA', 'ALFREDO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'DIAZ IZQUIERDO  MARTIN', 'RODELO  RODRIGUEZ JESSSICA', 'HOYOS LOPEZ ENRIQUE', 'VARGAS MORALES MANUELA', 'Parroco de Tehuixtla', 'I', '23', '1', '24/06/2013'),
(2, 'GIRALDO', 'GIRALDO', 'MARCOS', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CARDALES MAYOS  RODOLFO', 'FERNANDEZ  BELEÑO LORENA', 'SARMIENTO BLANCO RITO', 'MUÑOZ SIMARRA MARGARA', 'Parroco de Tehuixtla', 'V', '24', '2', '24/06/2013'),
(3, 'TORRES', 'ESCORCIA', 'CARLOS MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ARTEAGA RAMOS  ENRIQUE', 'PEREIRA  NUÑEZ FERNANDA', 'RECUERO NADRID JOSE', 'BOLAÑO ALCAZAR JESSICA', 'Parroco de Tehuixtla', 'I', '25', '3', '24/06/2013'),
(4, 'BERMUDEZ', 'ALCALA', 'ALFONSO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CARABALLO MATOS  RAFAEL', 'MACHACON  GAMARRA MARGARA', 'TORREGLOSA LARA RAMON', 'MORALES MARQUEZ LORENA', 'Parroco de Tehuixtla', 'V', '26', '4', '24/06/2013'),
(5, 'FRANCO', 'PEDROZA', 'FELIPE', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ESQUIVEL PEREZ  FELIX', 'JULIO  SALAS JUDITH', 'HERRERA UTRIA JULIO', 'ALCALA MUÑOZ ELENA', 'Parroco de Tehuixtla', 'I', '27', '5', '24/06/2013'),
(6, 'BARRERAS', 'TAPIAS', 'VICTOR', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PAEZ ARZUZA  RAMON', 'ARZUZA  GOMEZ ELENA ANA', 'BELTRAN JELEZ JOSE', 'LOPEZ FUENTES MARIA', 'Parroco de Tehuixtla', 'I', '28', '6', '24/06/2013'),
(7, 'BALLESTAS', 'ACOSTA', 'ARMANDO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'JIMENEZ GONZALEZ  GUILLERMO', 'NUÑEZ  NORIEGA MARIA', 'ROJAS TAPIAS RIGOBERTO', 'PEREZ ATENCIO MARIA', 'Parroco de Tehuixtla', 'X', '29', '7', '24/06/2013'),
(8, 'ANILLO', 'AGAMEZ', 'IGNACIO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MARTINEZ GARCIA  ANGEL', 'DE LA CRUZ  ORTEGA MANUELA', 'RIVERA RAMOS LUIS', 'UTRIA GOMEZ ISABEL', 'Parroco de Tehuixtla', 'I', '30', '8', '24/06/2013'),
(9, 'CABARCAS', 'OROZCO', 'EMILIANO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MESA BERRIO  JULIO', 'IRIARTE  ALCAZAR ISABEL', 'ROSADO RUIZ JOSE', 'BLANCO ESCALA ISELA', 'Parroco de Tehuixtla', 'V', '31', '9', '24/06/2013'),
(10, 'ANGULO', 'GOMEZ', 'LORENZO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'SUAREZ LUNA  LEOPOLDO', 'NUÑEZ  ZUÑIGA LIANA', 'CARRILLO JIMENEZ MANUEL', 'PADILLA BAUTISTA DANIELA', 'Parroco de Tehuixtla', 'I', '32', '10', '24/06/2013'),
(11, 'CASERES', 'PEREZ', 'EFRAIN', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PAUTT SCHORBORGH  RAFAEL', 'PACHECO  ESPITIA LILIBETH', 'LARA CHAVEZ FRANCISCO', 'CASTILLO RINCON FERNANDA', 'Parroco de Tehuixtla', 'VII', '33', '11', '24/06/2013'),
(12, 'MENECES', 'APOLINARIO', 'GILBERTO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MEDRANO DIAZ  JOSE', 'SALAS  SUAREZ MARTHA', 'RUIZ GOMEZ RICARDO', 'BARCASNEGRA ORTEGA JAZMIN', 'Parroco de Tehuixtla', 'I', '34', '12', '24/06/2013'),
(13, 'FUENTES', 'MARTINEZ', 'RODOLFO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CASTRO BARRIOS  LUIS', 'BENAVIDES  DIAZ MARIA ISELA', 'BLANCO CASTRO OCTAVIO', 'GUTIERREZ RUIZ DANIELA', 'Parroco de Tehuixtla', 'I', '35', '13', '24/06/2013'),
(14, 'IBAÑEZ', 'SIERRA', 'JOSE MIGUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'VILLA LARA  ALFREDO', 'CASTILLO  GOMEZ PETRA', 'GOMEZ MORALES FRANCISCO', 'MUÑOZ ROCHA REYNA', 'Parroco de Tehuixtla', 'II', '36', '14', '24/06/2013'),
(15, 'MONTALVO', 'CARO', 'JOSE', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MARTINEZ MADRID  JOSE', 'CASSIANI  HERRERA IVANA', 'SIMANCAS MUÑOZ OSCAR', 'ROMERO ELAGUILA MARTHA', 'Parroco de Tehuixtla', 'II', '37', '15', '24/06/2013'),
(16, 'RAMOS', 'BATISTA', 'MARCOS MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'FERNANDEZ BARRETO  CESAR', 'AYALA  MARIMON CARLA', 'GRACIA DIAZ ANDRES', 'CABRERA ARROYO JUDITH', 'Parroco de Tehuixtla', 'II', '38', '16', '24/06/2013'),
(17, 'AURELA', 'HERRERA', 'RAMON', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'HERRERA LOSSIN  MIGUEL', 'RUIZ  MELENDEZ JAZMIN', 'CANTILLO PRAT LUIS', 'RODRIGUEZ QUIROZ PETRA', 'Parroco de Tehuixtla', 'III', '39', '17', '24/06/2013'),
(18, 'VARGAS', 'MORALES', 'CARMELO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MARTINEZ ALCALA  ALVARO', 'MENDEZ  JARABA JULIANA', 'URANGO OLMOS JULIO', 'VIDES PEREZ PRISCILA', 'Parroco de Tehuixtla', 'III', '40', '18', '24/06/2013'),
(19, 'MUÑOZ', 'SIMARRA', 'JOSE', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'SEREN GIRADO  ISACC', 'RODRIGUEZ  PADILLA MARIA DANIELA', 'DIAZ GRACIA DANIEL', 'PEREZ HERNANDEZ JESSICA', 'Parroco de Tehuixtla', 'III', '41', '19', '24/06/2013'),
(20, 'BOLAÑO', 'ALCAZAR', 'GASPAR', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ZAMBRANO CASTRO  JOAQUIN', 'GONZALEZ  LORA MARTHA', 'BARCO AHUMEDO ANTONIO', 'OJEDA SOLIS JUANA', 'Parroco de Tehuixtla', 'III', '42', '20', '24/06/2013'),
(21, 'MORALES', 'MARQUEZ', 'FRANCISCO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CATALAN CASTELLAR FERNANDO', 'MARTINEZ GARCIA REYNA', 'JULIO PEREZ JOSE', 'SALGADO PALOMINO BRITANEY', 'Parroco de Tehuixtla', 'III', '43', '21', '24/06/2013'),
(22, 'ALCALA', 'MUÑOZ', 'DIONISIO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'SIERRA MORALES RAFAEL', 'MESA BERRIO MARGARA', 'VEGA CARREAZO MIGUEL', 'FONTALVO MARTINEZ VIANNEY', 'Parroco de Tehuixtla', 'III', '44', '22', '24/06/2013'),
(23, 'LOPEZ', 'FUENTES', 'SANTO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'TORRES VILLAREAL FRANCISCO', 'SUAREZ LUNA PRISCA', 'SABALZA BAENA LUIS', 'CABRERA GUERRERO JUANA', 'Parroco de Tehuixtla', 'I', '45', '23', '24/06/2013'),
(24, 'PEREZ', 'ATENCIO', 'ANGEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PEDROZA ZUÑIGA GERONIMO', 'PAUTT SCHORBORGH PRISCILA', 'RODRIGUEZ VILLADIEGO MANUEL', 'VILLADIEGO MARTINEZ LIZETH', 'Parroco de Tehuixtla', 'IV', '46', '24', '24/06/2013'),
(25, 'UTRIA', 'GOMEZ', 'MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PALACIO PUERTAS JUAN', 'MEDRANO DIAZ VIANNEY', 'HOYOS YEPEZ EMIGDIO', 'MENDOZA BARRIOS ISELA', 'Parroco de Tehuixtla', 'IV', '47', '25', '24/06/2013'),
(26, 'BLANCO', 'ESCALA', 'JULIO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'VELASCO BERMUDEZ GREGORIO', 'CASTRO BARRIOS BRITANEY', 'CASTILLO MANRIQUE PEDRO', 'CASTELLAR MENDOZA CLARA', 'Parroco de Tehuixtla', 'IV', '48', '26', '24/06/2013'),
(27, 'PADILLA', 'BAUTISTA', 'NAPOLEON', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'FRANCO MENDEZ FERMIN', 'VILLA LARA ISABEL', 'ANAYA GONZALEZ JAIME', 'MEDINA SUAREZ KAREN', 'Parroco de Tehuixtla', 'IV', '49', '27', '24/06/2013'),
(28, 'CASTILLO', 'RINCON', 'MIGUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'VASQUEZ RAMIREZ DIEGO', 'MARTINEZ MADRID KAREN', 'HERRERA NORIEGA RIGOBERTO', 'CARDENAS JULIO MONICA', 'Parroco de Tehuixtla', 'IV', '50', '28', '24/06/2013'),
(29, 'BARCASNEGRA', 'ORTEGA', 'DANIEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MONTES PACHECO ABEL', 'FERNANDEZ BARRETO KORINA', 'PUELLO MATTA MIGUEL', 'ZABALETA GUERRERO MIRIAM', 'Parroco de Tehuixtla', 'IV', '51', '29', '24/06/2013'),
(30, 'GUTIERREZ', 'RUIZ', 'JOSE', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'BAYONA NAVARRO RAMON', 'HERRERA LOSSIN LIZETH', 'CERVANTES LEON ERNESTO', 'BARRIOS SANDON GUADALUPE', 'Parroco de Tehuixtla', 'IV', '52', '30', '24/06/2013'),
(31, 'MUÑOZ', 'ROCHA', 'GUALBERTO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CARRANZA MIRANDA ANTONIO', 'MARTINEZ ALCALA MICHEL', 'LARA CHAVEZ FRANCISCO', 'BENAVIDES MARQUEZ LUZ', 'Parroco de Tehuixtla', 'IV', '53', '31', '24/06/2013'),
(32, 'ROMERO', 'ELAGUILA', 'JOSE', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'SANTANA TORRE VIDELIO', 'SEREN GIRADO MONICA', 'RUIZ GOMEZ RICARDO', 'NARCES BRUN FRANCISCA', 'Parroco de Tehuixtla', 'I', '54', '32', '24/06/2013'),
(33, 'CABRERA', 'ARROYO', 'JULIO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'FLOREZ ORDUZ RAIMUNDO', 'ZAMBRANO CASTRO CLARA', 'BLANCO CASTRO OCTAVIO', 'HERNANDEZ PUELLO LUCYA', 'Parroco de Tehuixtla', 'I', '55', '33', '24/06/2013'),
(34, 'RODRIGUEZ', 'QUIROZ', 'MARCOS', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'HURTADO MENDEZ SERGIO', 'RODELO RODRIGUEZ CARLA', 'GOMEZ MORALES FRANCISCO', 'PARDO FLOREZ LIZETH', 'Parroco de Tehuixtla', 'I', '56', '34', '24/06/2013'),
(35, 'VIDES', 'PEREZ', 'MIGUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'GUTIERREZ BELEÑO LUIS', 'FERNANDEZ BELEÑO MONICA', 'SIMANCAS MUÑOZ OSCAR', 'MARTINEZ POLO FLOR', 'Parroco de Tehuixtla', 'I', '57', '35', '24/06/2013'),
(36, 'PEREZ', 'HERNANDEZ', 'NILO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ALTAMIRANDA MENDEZ IGNACIO', 'PEREIRA NUÑEZ MIRIAM', 'GRACIA DIAZ ANDRES', 'MENDOZA PORTO ANDREA', 'Parroco de Tehuixtla', 'X', '58', '36', '24/06/2013'),
(37, 'OJEDA', 'SOLIS', 'FRANCISCO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PEREGRINO RODRIGUEZ ISAAC', 'MACHACON GAMARRA LUZ', 'CANTILLO PRAT LUIS', 'OSORIO ARRIETA PETRA', 'Parroco de Tehuixtla', 'X', '59', '37', '24/06/2013'),
(38, 'SALGADO', 'PALOMINO', 'GRATINIANO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'COAVAS ORTIZ RODRIGO', 'JULIO SALAS FLOR', 'URANGO OLMOS JULIO', 'QUINTERO ROJAS ELENA', 'Parroco de Tehuixtla', 'I', '60', '38', '24/06/2013'),
(39, 'FONTALVO', 'MARTINEZ', 'IGNACIO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'VILLALBA BATISTA FERMIN', 'ARZUZA GOMEZ GUADALUPE', 'DIAZ GRACIA DANIEL', 'LUNA TAMARA GALILEA', 'Parroco de Tehuixtla', 'I', '61', '39', '24/06/2013'),
(40, 'CABRERA', 'GUERRERO', 'JUAN', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ZABALETA RODRIGUEZ LUIS', 'NUÑEZ NORIEGA LUCYA', 'BARCO AHUMEDO ANTONIO', 'OROZCO BERDUGO BERTHA', 'Parroco de Tehuixtla', 'X', '62', '40', '24/06/2013'),
(41, 'VILLADIEGO', 'MARTINEZ', 'JUAN', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ALEAN ALEAN RICARDO', 'DE LA CRUZ ORTEGA CARLA', 'JULIO PEREZ JOSE', 'RAMOS URANGO MANUELA', 'Parroco de Tehuixtla', 'I', '63', '41', '24/06/2013'),
(42, 'MENDOZA', 'BARRIOS', 'MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'PEREZ TORREZ TOMAS', 'IRIARTE ALCAZAR MARIA', 'VEGA CARREAZO MIGUEL', 'RIVERA RAMIREZ ITZEL', 'Parroco de Tehuixtla', 'I', '64', '42', '24/06/2013'),
(43, 'CASTELLAR', 'MENDOZA', 'JUAN', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'ABELLANO MENDEZ RANULFO', 'NUÑEZ ZUÑIGA FERNADA', 'SABALZA BAENA LUIS', 'PEREZ VELASQUEZ KORINA', 'Parroco de Tehuixtla', 'X', '65', '43', '24/06/2013'),
(44, 'MEDINA', 'SUAREZ', 'MARCIAL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'CASTELLON JIMENEZ JOSE', 'PACHECO ESPITIA ANDREA', 'RODRIGUEZ VILLADIEGO MANUEL', 'PEREZ CASTELLON MARIA', 'Parroco de Tehuixtla', 'I', '66', '44', '24/06/2013'),
(45, 'CARDENAS', 'JULIO', 'SEGUNDO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'MENECES APOLINARIO GILBERTO', 'SALAS SUAREZ GALILEA', 'HOYOS YEPEZ EMIGDIO', 'ARTEAGA CANTERO ISABEL', 'Parroco de Tehuixtla', 'I', '67', '45', '24/06/2013'),
(46, 'ZABALETA', 'GUERRERO', 'DANIEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'DE HOYOS ENRIQUE', 'BENAVIDES DIAZ BERTHA', 'CASTILLO MANRIQUE PEDRO', 'CASTELLON DEVOZ LUZ', 'Parroco de Tehuixtla', 'I', '68', '46', '24/06/2013'),
(47, 'BARRIOS', 'SANDON', 'MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'SARMIENTO BLANCO RITO', 'CASTILLO GOMEZ RITA', 'ANAYA GONZALEZ JAIME', 'VOZ CASTELLON JAZMIN', 'Parroco de Tehuixtla', 'X', '69', '47', '24/06/2013'),
(48, 'BENAVIDES', 'MARQUEZ', 'MANUEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'RECUERO NADRID JOSE', 'CASSIANI HERRERA MANUELA', 'HERRERA NORIEGA RIGOBERTO', 'MANJARREZ GRANADOS LILIBETH', 'Parroco de Tehuixtla', 'I', '70', '48', '24/06/2013'),
(49, 'NARCES', 'BRUN', 'GAMALIEL', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'TORREGLOSA LARA RAMON', 'AYALA MARIMON MANDY', 'PUELLO MATTA MIGUEL', 'DIAZ PEREZ LIANA', 'Parroco de Tehuixtla', 'I', '71', '49', '24/06/2013'),
(50, 'HERNANDEZ', 'PUELLO', 'AUSBERTO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'HERRERA UTRIA JULIO', 'RUIZ MELENDEZ ANA', 'CERVANTES LEON ERNESTO', 'ALTAMAR SANTANDER DIANA', 'Parroco de Tehuixtla', 'I', '72', '50', '24/06/2013'),
(51, 'De la Garza', 'ARRIETA', 'ALFREDO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'DIAZ IZQUIERDO  MARTIN', 'RODELO  RODRIGUEZ JESSSICA', 'HOYOS LOPEZ ENRIQUE', 'VARGAS MORALES MANUELA', 'Parroco de Tehuixtla', 'I', '23', '1', '24/06/2013'),
(52, 'Prieto', 'De la Garza', 'ALFREDO', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'DIAZ IZQUIERDO  MARTIN', 'RODELO  RODRIGUEZ JESSSICA', 'HOYOS LOPEZ ENRIQUE', 'VARGAS MORALES MANUELA', 'Parroco de Tehuixtla', 'I', '23', '1', '24/06/2013'),
(53, 'Lamber', 'Lamber', 'Lamber', 'M', '24/06/2013', '12/06/2013', 'Tehuixtla, Morelos', 'DIAZ IZQUIERDO  MARTIN', 'RODELO  RODRIGUEZ JESSSICA', 'HOYOS LOPEZ ENRIQUE', 'VARGAS MORALES MANUELA', 'Parroco de Tehuixtla', 'I', '23', '1', '24/06/2013'),
(54, 'Peralta', 'ARRIETA', 'Eugenia', 'F', '24/05/2013', '12/01/2012', 'Tehuixtla, Morelos', 'DIAZ IZQUIERDO  MARTIN', 'RODELO  RODRIGUEZ JESSSICA', 'HOYOS LOPEZ ENRIQUE', 'VARGAS MORALES MANUELA', 'Parroco de Tehuixtla', 'I', '23', '1', '24/06/2013'),
(55, 'Corona', 'Raba', 'Juan', 'M', '19/05/84', '23/08/84', 'Tehuix', 'Angelito', 'Elsita', 'Abueno', 'Abuela', 'Bautizante', 'VIII', '78', ' ', '11/07/2013'),
(56, 'Corona', 'Rab', 'Juan', 'M', '12/09/1984', '12/09/1984', 'Zacatepec', 'Angelito', 'Elsita', 'Abuelo', 'Abuela', 'Parroco', 'XXXVII', '12', '', '11/07/2013 '),
(57, 'Corona', 'Rab', 'Juan', 'M', '12/09/1984', '12/09/1984', 'Zacatepec', 'Angelito', 'Elsita', 'Abuelo', 'Abuela', 'Parroco', 'XXXVII', '12', 'mm', '11/07/2013 '),
(58, 'Corona', 'Rab', 'Juan', 'M', '19/05/1984', '19/05/1984', 'Jojutla', 'Angelito', 'Elsita', 'Abuelo', 'Abuela', 'parroco', 'XXX', '34', '67', '11/07/2013 11:47'),
(59, 'Corona', 'Rab', 'Juan', 'M', '19/05/1984', '19/05/1984', 'Jojutla', 'Angelito', 'Elsita', 'Abuelo', 'Abuela', 'parroco', 'XXX', '34', '', '11/07/2013 11:49'),
(60, 'Pera', 'Manzana', 'Julia', 'F', '13/06/2013', '01/07/2013', 'Jojutla', 'padre', 'madre', 'padrino', 'madrina', 'Parroco', 'VX', '78', '', '13/07/2013 12:02'),
(61, 'cruz', 'apple', 'Martha', 'F', '13/06/2013', '01/07/2013', 'Jojutla', 'padre', 'madre', 'padrino', 'madrina', 'Parroco', 'VX', '78', '45', '13/07/2013 12:06'),
(62, 'cruz', 'apple', 'Julliana', 'F', '13/06/2013', '01/07/2013', 'Jojutla', 'padre', 'madre', 'padrino', 'madrina', 'Parroco', 'VX', '78', '45', '13/07/2013 12:23'),
(63, 'cruz', 'apple', 'Jose', 'M', '13/06/2013', '01/07/2013', 'Jojutla', 'padre', 'madre', 'padrino', 'madrina', 'Parroco', 'VX', '78', 'b', '13/07/2013 12:24'),
(64, 'cruz', 'apple', 'Humberto', 'M', '13/06/2013', '01/07/2013', 'Jojutla', 'padre', 'madre', 'padrino', 'madrina', 'Parroco Tehuixtla', 'VX', '78', '', '13/07/2013 13:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenpdf`
--

CREATE TABLE `imagenpdf` (
  `id_img` int(6) NOT NULL,
  `ruta` varchar(44) NOT NULL,
  `descrip` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenpdf`
--

INSERT INTO `imagenpdf` (`id_img`, `ruta`, `descrip`) VALUES
(1, 'imgFondoPDF/hojaBautizoV1.jpg', 'img uno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `c_lugar` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `descrip` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`c_lugar`, `nombre`, `descrip`) VALUES
(1, 'Parroquia de Tehuixtla', 'Tehuixtla Jojutla, Morelos México.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(4) NOT NULL,
  `nombre` varchar(18) NOT NULL,
  `passw` varchar(18) NOT NULL,
  `descripcion` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `passw`, `descripcion`) VALUES
(1, 'user1', 'passw1', 'Usuario de prueba'),
(2, 'user2', 'passw2', 'Segundo usuario prueba'),
(3, 'us4', 'passw', 'Cuarto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indices de la tabla `bautizo`
--
ALTER TABLE `bautizo`
  ADD PRIMARY KEY (`c_bau`);

--
-- Indices de la tabla `imagenpdf`
--
ALTER TABLE `imagenpdf`
  ADD PRIMARY KEY (`id_img`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`c_lugar`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
