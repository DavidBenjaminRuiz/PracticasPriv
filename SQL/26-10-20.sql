--
-- Base de datos: `sales`
-- Sergio Franco Casillas ---------------------------------
-- 26 de octubre de 2020 ----------------------------------
-- SEMINARIO DE SOLUCION DE PROBLEBAS DE BASES DE DATOS ---
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--
CREATE DATABASE david CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
USE  david;

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2001, 'Aceite'),
(7, 'Aderezos'),
(302, 'ALMACEN'),
(301, 'AUDIFONOS'),
(7011, 'Audio'),
(7017, 'Audio1'),
(6, 'Bebidas'),
(300, 'BOCINAS'),
(6931, 'Botanas'),
(5006, 'cellphone'),
(5, 'Comida'),
(7003, 'Comida rapida'),
(5007, 'Computador'),
(307, 'Computadoras'),
(1314, 'COMPUTADORES'),
(3, 'Congelados'),
(2, 'Consolas'),
(7002, 'Deportes'),
(10, 'Desechables'),
(9003, 'Despensa'),
(7010, 'Electronica'),
(7016, 'Electronica1'),
(5012, 'equipos de computo'),
(5011, 'facturacion'),
(2004, 'FARMACIA'),
(7008, 'Farmaciasimi'),
(7000, 'Frutas'),
(304, 'hardware'),
(7004, 'Higiene'),
(4, 'Higiene y cuidado personal'),
(7009, 'Instrumentos y gadgets músicales'),
(1, 'Juegos'),
(6932, 'Lácteos'),
(114, 'LAPICES Y MARCADORES'),
(5001, 'Limpieza'),
(9001, 'MakeUp'),
(9000, 'Maquillaje'),
(2006, 'Movil'),
(2007, 'Ordenador'),
(8, 'Paninis'),
(2002, 'Partes Electricas'),
(214, 'PINTURA'),
(2003, 'Refacciones - Afinacion'),
(2005, 'SALUD Y BELLEZA'),
(305, 'software'),
(7007, 'Tecnologia'),
(306, 'Telefonia'),
(1313, 'TELEVISORES'),
(9002, 'TVs'),
(303, 'VENTA DIRECTA'),
(7001, 'Verduras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `idclients` int NOT NULL,
  `peoplecode` int NOT NULL,
  `datein` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` enum('ENTERPRISE','SMALL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`idclients`, `peoplecode`, `datein`, `type`) VALUES
(29, 29, '2020-10-22 19:54:17', 'SMALL'),
(30, 30, '2020-10-22 19:54:17', 'ENTERPRISE'),
(31, 1, '2020-10-22 20:30:14', 'SMALL'),
(32, 4, '2020-10-22 20:30:14', 'ENTERPRISE'),
(35, 11, '2020-10-22 20:34:42', 'SMALL'),
(36, 14, '2020-10-22 20:34:42', 'ENTERPRISE'),
(37, 35, '2020-10-22 20:39:25', 'ENTERPRISE'),
(38, 36, '2020-10-22 20:39:25', 'SMALL'),
(303, 303, '2020-10-22 20:51:54', 'ENTERPRISE'),
(304, 304, '2020-10-22 20:51:54', 'SMALL'),
(305, 53, '2020-10-22 21:51:44', 'ENTERPRISE'),
(306, 56, '2020-10-22 21:51:44', 'SMALL'),
(307, 310, '2020-10-22 21:52:15', 'SMALL'),
(308, 312, '2020-10-22 21:52:15', 'ENTERPRISE'),
(309, 3, '2020-10-22 22:02:13', 'ENTERPRISE'),
(313, 313, '2020-10-23 00:12:49', 'ENTERPRISE'),
(315, 315, '2020-10-23 00:12:49', 'SMALL'),
(503, 503, '2020-10-26 11:59:22', 'ENTERPRISE'),
(504, 504, '2020-10-26 11:59:22', 'SMALL'),
(2001, 2004, '2020-10-22 22:23:23', 'ENTERPRISE'),
(2002, 2005, '2020-10-22 22:23:23', 'SMALL'),
(2003, 49, '2020-10-22 22:33:34', 'ENTERPRISE'),
(2004, 50, '2020-10-22 22:33:34', 'SMALL'),
(2005, 323, '2020-10-22 22:49:01', 'ENTERPRISE'),
(2006, 324, '2020-10-22 22:49:01', 'SMALL'),
(2007, 5000, '2020-10-22 23:08:21', 'ENTERPRISE'),
(2008, 5005, '2020-10-22 23:08:21', 'SMALL'),
(3111, 1003, '2020-10-22 23:16:10', 'SMALL'),
(3222, 1004, '2020-10-22 23:16:10', 'ENTERPRISE'),
(5008, 5008, '2020-10-23 00:13:04', 'ENTERPRISE'),
(5009, 5009, '2020-10-23 00:13:04', 'SMALL'),
(5011, 5011, '2020-10-23 00:27:15', 'SMALL'),
(5012, 5012, '2020-10-23 00:27:15', 'ENTERPRISE'),
(7000, 7003, '2020-10-22 23:42:22', 'ENTERPRISE'),
(7001, 7004, '2020-10-22 23:43:51', 'SMALL'),
(7941, 92754, '2020-10-22 23:40:49', 'SMALL'),
(7942, 92755, '2020-10-22 23:40:49', 'SMALL'),
(7943, 92756, '2020-10-23 01:59:10', 'SMALL'),
(7944, 92759, '2020-10-23 01:59:10', 'ENTERPRISE'),
(7945, 92767, '2020-10-21 22:30:00', 'ENTERPRISE'),
(7946, 92768, '2020-09-30 12:23:13', 'SMALL'),
(7947, 92763, '2020-10-24 17:09:07', 'ENTERPRISE'),
(7948, 92764, '2020-10-24 17:09:07', 'SMALL'),
(7949, 43, '2020-10-24 22:23:57', 'ENTERPRISE'),
(7950, 44, '2020-10-24 22:23:57', 'SMALL'),
(7953, 92784, '2020-10-26 01:38:48', 'ENTERPRISE'),
(7954, 92785, '2020-10-26 01:38:48', 'SMALL'),
(7955, 39, '2020-10-26 03:33:02', 'SMALL'),
(7956, 92786, '2020-10-26 03:33:02', 'ENTERPRISE'),
(7957, 92787, '2020-10-26 03:33:04', 'ENTERPRISE'),
(7958, 92788, '2020-10-26 03:33:04', 'SMALL'),
(7959, 92789, '2020-10-26 03:33:04', 'SMALL'),
(7960, 92790, '2020-10-26 03:33:05', 'SMALL'),
(7961, 9000, '2020-10-26 05:01:55', 'ENTERPRISE'),
(7962, 9005, '2020-10-26 05:01:55', 'SMALL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `idemp` int NOT NULL,
  `peoplecode` int NOT NULL,
  `jobdesc` enum('CLEANER','CASHIER','','USHER') NOT NULL COMMENT 'Job description',
  `datein` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateofbirth` date NOT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `nss` varchar(20) DEFAULT NULL,
  `bloodtype` varchar(20) DEFAULT NULL,
  `maritalstat` enum('SINGLE','MARRIED','DIVORCED','WIDOWED','SEPARATED') NOT NULL DEFAULT 'SINGLE',
  `jobstatus` enum('HIRED','FIRED','PAUSED') NOT NULL DEFAULT 'HIRED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`idemp`, `peoplecode`, `jobdesc`, `datein`, `dateofbirth`, `curp`, `nss`, `bloodtype`, `maritalstat`, `jobstatus`) VALUES
(1, 6, 'CASHIER', '2020-10-22 20:19:34', '1999-01-20', 'LACURP1', '00000001', 'O+', 'SINGLE', 'HIRED'),
(2, 5, 'USHER', '2020-10-22 20:19:34', '1969-06-20', 'LACURP2', '00000002', 'O+', 'MARRIED', 'PAUSED'),
(3, 7, 'CASHIER', '2020-10-22 20:19:34', '1987-04-01', 'LACURP3', '00000003', 'O+', 'MARRIED', 'HIRED'),
(5, 26, 'CASHIER', '2020-10-22 19:54:16', '2000-12-11', 'MUCHACURP', 'MUCHONSS', 'A+', 'SINGLE', 'HIRED'),
(6, 27, 'USHER', '2020-10-22 19:54:16', '1999-01-01', 'MUCHACUR1P', 'MUCHONSS1', 'A-', 'SINGLE', 'HIRED'),
(7, 28, 'CASHIER', '2020-10-22 19:54:16', '1990-06-23', 'MUCHACURP2', 'MUCHONSS2', 'O+', 'SINGLE', 'HIRED'),
(8, 11, 'USHER', '2020-10-22 20:07:08', '1990-06-26', 'GAFACURPXD', '1234numeritos', 'O+', 'SINGLE', 'HIRED'),
(9, 12, 'USHER', '2020-10-22 20:07:08', '1995-01-10', 'MUCHASLETRASDECURP', 'hghjfhf827732', 'O-', 'SINGLE', 'PAUSED'),
(10, 13, 'CASHIER', '2020-10-22 20:07:08', '1997-12-21', 'MASLETRASDECURPXD', 'ndnsadad1221', 'A+', 'MARRIED', 'HIRED'),
(11, 92761, 'CASHIER', '2020-10-23 01:42:29', '2000-06-26', 'IIES000626HJRRI6', '5112021', 'A+', 'SINGLE', 'HIRED'),
(12, 92760, 'USHER', '2020-10-23 01:42:29', '1964-07-20', 'COBC19640720HJCRG0', '5112326', 'O-', 'MARRIED', 'PAUSED'),
(13, 92762, 'CASHIER', '2020-10-23 01:42:29', '1967-02-20', 'COXK19670220HJCA7', '5182961', 'A-', 'MARRIED', 'HIRED'),
(14, 92786, 'CLEANER', '2020-10-26 03:29:38', '1991-01-02', 'KEFL32H97T81G23436', '59654851265', 'A-', 'SINGLE', 'HIRED'),
(15, 92787, 'CASHIER', '2020-10-26 03:29:38', '1991-01-02', 'VALJ329M7D8T12F343', '58463321548', 'B-', 'SINGLE', 'HIRED'),
(16, 92788, 'CASHIER', '2020-10-26 03:29:41', '1991-01-02', 'BREA329F781M234D35', '98563214586', 'B+', 'WIDOWED', 'HIRED'),
(17, 92789, 'USHER', '2020-10-26 03:29:41', '1991-01-02', 'BLK32F97C8B1M23F43', '84631958462', 'A', 'SEPARATED', 'FIRED'),
(18, 92790, 'USHER', '2020-10-26 03:29:41', '1991-01-02', 'REDC3E29G78D12V343', '94632598745', 'B', 'SINGLE', 'FIRED'),
(22, 8, 'CASHIER', '2020-10-22 20:14:52', '1978-07-22', 'FACS780722HJCRSR05', '123456789', 'O+', 'MARRIED', 'HIRED'),
(30, 46, 'CASHIER', '2020-10-22 22:29:12', '2000-06-09', 'SETM000609HJCRRR87', '123456789', 'A+', 'SINGLE', 'HIRED'),
(31, 47, 'USHER', '2020-10-22 22:29:12', '1991-04-12', 'MIGR000609HJCRRR87', '133456789', 'O-', 'SINGLE', 'HIRED'),
(32, 48, 'CLEANER', '2020-10-22 22:29:12', '1998-11-06', 'FEGI000609HJCRRR87', '143456789', 'B+', 'SINGLE', 'HIRED'),
(40, 32, 'CLEANER', '2020-10-23 17:11:34', '1999-11-10', 'ADSS55568D', '254781558', 'O+', 'SINGLE', 'FIRED'),
(41, 92763, 'CASHIER', '2020-10-23 17:11:34', '2002-01-13', 'GFHIR747B4', '25511889', 'A+', 'MARRIED', 'HIRED'),
(42, 92764, 'CLEANER', '2020-10-23 17:11:34', '2000-03-28', 'OFUT45F214', '56331874', 'A-', 'SINGLE', 'FIRED'),
(43, 92765, 'CASHIER', '2020-10-23 17:11:34', '1987-04-30', 'DF5S48E5H9', '964875331', 'B+', 'MARRIED', 'PAUSED'),
(44, 92766, 'USHER', '2020-10-23 17:11:37', '1985-12-20', 'DSLOA842C5', '96763948', 'A+', 'SINGLE', 'HIRED'),
(53, 53, 'CLEANER', '2020-10-22 21:04:06', '2020-01-28', 'CGM002054454584R0', 'NO HAY', '0 POSITIVO', 'MARRIED', 'HIRED'),
(54, 54, 'CASHIER', '2020-10-22 21:09:47', '2000-01-02', 'CGM002054454584R0', 'NO HAY', '0 NEGATIVO', 'MARRIED', 'HIRED'),
(55, 55, 'USHER', '2020-10-22 21:09:47', '2010-06-13', 'CGM002054454584R0', 'NO HAY', '0 POSITIVO', 'MARRIED', 'HIRED'),
(56, 56, 'CASHIER', '2020-10-22 21:09:47', '2005-04-29', 'CGM002054454584R0', 'NO HAY', '0 NEGATIVO', 'MARRIED', 'HIRED'),
(57, 57, 'CLEANER', '2020-10-22 21:09:47', '2009-08-18', 'CGM002054454584R0', 'NO HAY', '0 POSITIVO', 'MARRIED', 'HIRED'),
(300, 300, 'CASHIER', '2020-10-22 20:44:51', '1970-08-10', 'RAJJ2302382', '27361289', 'O-', 'SINGLE', 'HIRED'),
(301, 301, 'CASHIER', '2020-10-22 20:44:51', '1999-11-13', 'RUEH283642', '38753234', 'A+', 'MARRIED', 'HIRED'),
(302, 302, 'USHER', '2020-10-22 20:44:51', '1990-01-30', 'WEOIU24937743', '2834724', 'A-', 'WIDOWED', 'HIRED'),
(308, 315, 'CASHIER', '2020-10-22 17:00:00', '1978-07-22', 'FACS780722HJCRSR05', '123456987', 'O+', 'MARRIED', 'HIRED'),
(314, 314, 'CLEANER', '2020-10-22 23:34:43', '1999-10-10', 'JMPG191010AGFNK7', '5469632162', 'O-', 'SINGLE', 'HIRED'),
(316, 316, 'USHER', '2020-10-22 23:34:43', '1988-05-05', 'MACD880505BFGRK7', '6325787951', 'A+', 'MARRIED', 'PAUSED'),
(317, 317, 'CASHIER', '2020-10-22 23:34:43', '1987-02-27', 'HAFC870227OLKIU2', '3216549871', 'AB-', 'DIVORCED', 'HIRED'),
(550, 92781, 'CLEANER', '2020-10-26 01:34:49', '1970-08-10', 'sassos456456313789', '012345678', 'O+', 'SINGLE', 'HIRED'),
(551, 92782, 'CASHIER', '2020-10-26 01:34:49', '1999-11-13', 'sassos123123313789', '123456789', 'O-', 'MARRIED', 'HIRED'),
(552, 92783, 'USHER', '2020-10-26 01:34:49', '1990-01-30', 'sassos789789313789', '234567890', 'A-', 'MARRIED', 'HIRED'),
(658, 308, 'CASHIER', '2020-10-22 22:01:11', '1996-02-03', NULL, '152648', 'A+', 'SINGLE', 'HIRED'),
(659, 309, 'CASHIER', '2020-10-22 22:01:11', '1992-06-04', NULL, '482659', 'AB+', 'SINGLE', 'HIRED'),
(660, 311, 'CASHIER', '2020-10-22 22:01:11', '1990-01-02', NULL, '325498', 'A-', 'SINGLE', 'HIRED'),
(1001, 10, 'CLEANER', '2020-10-22 20:17:11', '1970-08-10', 'badfad255555313789', '123456789', 'O+', 'MARRIED', 'HIRED'),
(1002, 33, 'CASHIER', '2020-10-22 20:17:11', '1999-11-13', 'badfad255555313781', '123456781', 'O-', 'SINGLE', 'HIRED'),
(1003, 34, 'USHER', '2020-10-22 20:17:11', '1990-01-30', 'badfad255555313782', '123456782', 'A-', 'SINGLE', 'HIRED'),
(1120, 500, 'USHER', '2020-10-26 11:55:41', '1969-10-23', 'VDB128828jcjl03mj', '99999125675675612345', 'B+', 'SINGLE', 'HIRED'),
(1121, 501, 'CASHIER', '2020-10-26 11:55:41', '1998-02-09', 'RPGT56487563HJCLJH', '88888125675675612345', 'A+', 'SINGLE', 'PAUSED'),
(1122, 502, 'USHER', '2020-10-26 11:55:41', '1999-05-14', 'JFGSD567TH789JCJCL', '77777125675675612345', 'O-', 'SINGLE', 'FIRED'),
(1123, 92751, 'CASHIER', '2020-10-22 23:40:46', '2000-04-12', 'PASR0004126928H293', '0482759582R', 'A+', 'SINGLE', 'HIRED'),
(1124, 92752, 'USHER', '2020-10-22 23:40:46', '2002-05-01', 'PEHR0005136928H292', '3918572891R', 'A-', 'SINGLE', 'HIRED'),
(1125, 92753, 'CLEANER', '2020-10-22 23:40:46', '1998-03-30', 'FISN0002136929H291', '3985710295N', 'O-', 'MARRIED', 'PAUSED'),
(2001, 2001, 'USHER', '2020-10-22 22:29:08', '2000-11-13', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(2002, 2002, 'USHER', '2020-10-22 22:29:08', '2002-10-28', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(2003, 2003, 'CASHIER', '2020-10-22 22:29:08', '1976-07-16', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(2845, 1, 'USHER', '2020-10-22 23:04:13', '1998-11-25', 'RAG981125AJDFNSIDL', '1234567890', 'A+', 'SINGLE', 'HIRED'),
(3000, 1000, 'CASHIER', '2020-10-22 22:58:12', '2000-04-12', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(3001, 1001, 'CLEANER', '2020-10-22 22:58:12', '2000-04-02', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(3002, 1002, 'CASHIER', '2020-10-22 22:58:12', '2005-01-25', NULL, NULL, NULL, 'SINGLE', 'HIRED'),
(5000, 5001, 'CLEANER', '2020-10-22 22:57:32', '0000-00-00', 'JBMM347123456CL01', '123456789', 'O-', 'SINGLE', 'HIRED'),
(5001, 5003, 'USHER', '2020-10-22 22:57:32', '0000-00-00', 'JRCH348123465', '123456798', 'O+', 'MARRIED', 'HIRED'),
(5002, 5002, 'CASHIER', '2020-10-22 22:57:32', '0000-00-00', 'MGMMM348120262', '12345987', 'A-', 'DIVORCED', 'HIRED'),
(5006, 5006, 'USHER', '2020-10-22 23:33:45', '1998-11-25', 'IIOM981125AJDFNSID', '1234567890', 'A+', 'SINGLE', 'HIRED'),
(5007, 5007, 'USHER', '2020-10-22 23:33:45', '1992-04-23', 'BLMY920423AJDFNSID', '2233441123', 'AB+', 'MARRIED', 'PAUSED'),
(5010, 5010, 'CASHIER', '2020-10-22 23:33:45', '2000-08-10', 'PKPE920423AJDFNSID', '2015639847', 'O-', 'SINGLE', 'FIRED'),
(5011, 5011, 'USHER', '2020-10-22 23:51:50', '1994-12-18', 'saem941218hjcnnn03', '12345678', 'A+', 'SINGLE', 'HIRED'),
(5012, 5012, 'USHER', '2020-10-22 23:51:50', '1998-03-30', 'cohj142587hjfhj02', '87654321', 'A-', 'SINGLE', 'HIRED'),
(5013, 5013, 'CASHIER', '2020-10-22 23:51:50', '1990-11-11', 'malj901105hjetr090', '08642123', 'O-', 'MARRIED', 'HIRED'),
(7000, 7000, 'CLEANER', '2020-10-22 23:37:09', '1999-09-29', 'k1999', '1', 'si', 'SINGLE', 'HIRED'),
(7001, 7001, 'CASHIER', '2020-10-22 23:37:09', '2000-01-01', 'a2000', '2', 'si', 'SINGLE', 'HIRED'),
(7002, 7002, 'USHER', '2020-10-22 23:37:09', '1995-02-02', 'r1995', '3', 'si', 'SINGLE', 'HIRED'),
(7777, 323, 'USHER', '2020-10-22 22:45:13', '1998-11-25', 'ZIOM981125AJDFNSID', '1234527890', 'A+', 'SINGLE', 'HIRED'),
(7778, 324, 'USHER', '2020-10-22 22:45:13', '1992-04-23', 'BLMY910423AJDFNSID', '2211441123', 'AB+', 'MARRIED', 'PAUSED'),
(7779, 325, 'CASHIER', '2020-10-22 22:45:13', '2000-08-10', 'PKPZ920423AJDFNSID', '2115639847', 'O-', 'SINGLE', 'FIRED'),
(9000, 9001, 'CLEANER', '2020-10-26 04:59:10', '1990-10-02', 'JMPG191010AGFNK7', '5469632162', 'O-', 'SINGLE', 'HIRED'),
(10003, 1003, 'CLEANER', '2020-10-25 23:03:37', '1974-04-30', 'POIUYTR987', '124578421', 'O+', 'SINGLE', 'PAUSED'),
(10004, 1004, 'USHER', '2020-10-25 23:03:47', '1958-12-26', 'LKJHGFD765', '498547855', 'O+', 'SINGLE', 'HIRED'),
(10100, 40, 'CASHIER', '2020-10-22 20:25:52', '2000-05-13', 'AFSJS3578', 'ERUDH13278', 'O+', 'SINGLE', 'HIRED'),
(11100, 41, 'CASHIER', '2020-10-22 20:25:52', '1999-01-26', 'AFSJS33478', 'ERUDH673278', 'O-', 'SINGLE', 'HIRED'),
(12100, 42, 'USHER', '2020-10-22 20:25:52', '2001-09-07', 'AFSJKS3578', 'ERUFDH13278', 'A+', 'SINGLE', 'HIRED'),
(15000, 92767, 'CASHIER', '2016-09-13 05:12:00', '2020-02-22', 'MUML000222MJCXXRA9', '687980', 'B-', 'SINGLE', 'HIRED'),
(15001, 92768, 'CLEANER', '2011-07-11 07:21:00', '1911-12-08', 'MORM110812JHJKJSY', '68291', 'B+', 'MARRIED', 'PAUSED'),
(15002, 92769, 'USHER', '2019-04-01 12:10:00', '1978-09-11', 'SESE6782911YRA8', '79290', 'A-', 'WIDOWED', 'FIRED'),
(75100, 2, 'USHER', '2020-10-22 23:04:13', '1992-04-23', 'HAG920423AJDFNSIDL', '2233441123', 'AB+', 'MARRIED', 'PAUSED'),
(206618189, 39, '', '2020-10-22 20:20:12', '1991-01-02', 'GORC3297812343', '123251234', 'O', 'SINGLE', 'PAUSED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail`
--

CREATE TABLE `mail` (
  `idmail` int NOT NULL,
  `peoplecode` int NOT NULL,
  `mail` varchar(100) NOT NULL,
  `type` enum('JOB','PERSONAL','OTHER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mail`
--

INSERT INTO `mail` (`idmail`, `peoplecode`, `mail`, `type`) VALUES
(26, 26, 'correoRanmdom1@mail.com', 'JOB'),
(27, 27, 'correoRandom2@mail.com', 'JOB'),
(28, 28, 'correoRandom3@alumno.com', 'OTHER'),
(29, 29, 'correoRandom3@Hotmail.com', 'OTHER'),
(30, 30, 'correoRanmdom4@Yahoo.com', 'PERSONAL'),
(31, 11, 'Adrian.franco@alumnos.udg.mx', 'JOB'),
(32, 12, 'Eduardo@gmail.com', 'PERSONAL'),
(33, 13, 'Rosa@gmail.com', 'JOB'),
(34, 14, 'Cristian.G@gmail.com', 'OTHER'),
(35, 15, 'Gabriel.F@gmail.com', 'PERSONAL'),
(36, 8, 'scasillas@cualtos.udg.mx', 'JOB'),
(37, 10, 'fernando@gmail.com', 'JOB'),
(38, 33, 'Jhonson@gmail.com', 'PERSONAL'),
(39, 34, 'duar@gmail.com', 'OTHER'),
(40, 35, 'bruno@gmail.com', 'JOB'),
(41, 36, 'ed@gmail.com', 'PERSONAL'),
(42, 10, 'uriel.ramirez@alumnos.udg.mx', 'JOB'),
(43, 1, 'jose.dramirez@alumnos.udg.mx', 'JOB'),
(44, 2, 'gis2036@gmail.com', 'PERSONAL'),
(45, 3, 'fw2m@gmail.com', 'JOB'),
(46, 4, 'angi_sel@gmail.com', 'OTHER'),
(47, 5, 'yomero@gmail.com', 'PERSONAL'),
(48, 6, 'elMoi3698@gmail.com', 'OTHER'),
(49, 7, 'simp626@gmail.com', 'PERSONAL'),
(50, 32, 'gerardo.franco@alumnos.udg.mx', 'PERSONAL'),
(51, 39, 'christian.gromero@alumnos.udg.mx', 'OTHER'),
(300, 300, 'JonyAJ14@mail.com', 'PERSONAL'),
(301, 301, 'Ritoba@mail.com', 'JOB'),
(302, 302, 'AlejandroFer@cabañas.com', 'JOB'),
(303, 303, 'Piedra321@alumno.com', 'OTHER'),
(304, 304, 'SuperGokuFan@com.com', 'PERSONAL'),
(305, 53, 'andragofra@gmail.com', 'JOB'),
(306, 54, 'oscargoruiz@gmail.com', 'PERSONAL'),
(307, 55, 'carolinagonzalez@gmail.com', 'JOB'),
(308, 56, 'susigomezlopez@gmail.com', 'PERSONAL'),
(309, 57, 'aaronacevesgomez@gmail.com', 'OTHER'),
(310, 308, 'carlosg@soft.com', 'JOB'),
(311, 309, 'fatimaolomeli@soft.com', 'JOB'),
(312, 310, 'jesusj@gmail.com', 'PERSONAL'),
(313, 311, 'tobysmarcos@soft.com', 'JOB'),
(314, 312, 'mariag@outlook.com', 'PERSONAL'),
(315, 1, 'criscastellanos@gmail.com', 'PERSONAL'),
(316, 2, 'aideeglez@roomlink.com', 'JOB'),
(317, 3, 'mglezzt@gmail.com', 'OTHER'),
(318, 4, 'sebasgun@gmail.com', 'PERSONAL'),
(319, 5, 'alnavjim@people.com', 'JOB'),
(321, 308, 'scasillas1@cualtos.udg.mx', 'JOB'),
(500, 500, 'DVal11@mail.com', 'PERSONAL'),
(501, 501, 'RaulPTrabajo@mail.com', 'JOB'),
(502, 502, 'Jime223@mail.com', 'OTHER'),
(503, 503, 'MartinFlores@mail.com', 'JOB'),
(504, 504, 'AndreaCo@mail.com', 'PERSONAL'),
(1111, 1000, 'ramon@cajero.com', 'JOB'),
(1222, 1001, 'Rodolfo@cleaner.com', 'JOB'),
(1333, 1002, 'Chris@cajero.com', 'JOB'),
(1444, 1003, 'Lilibeth@cliente.com', 'PERSONAL'),
(1555, 1004, 'Lia@cliente.com', 'PERSONAL'),
(2001, 2001, 'nelson@gmail.com', 'PERSONAL'),
(2002, 2002, 'lizbeth@gmail.com', 'PERSONAL'),
(2003, 2003, 'elvira@gmail.com', 'PERSONAL'),
(2004, 2004, 'j.antonio@gmail.com', 'PERSONAL'),
(2005, 2005, 'gisela@gmail.com', 'PERSONAL'),
(2011, 46, 'marco@mail.com', 'JOB'),
(2012, 47, 'ricardo@mail.com', 'JOB'),
(2013, 48, 'ignacio@mail.com', 'OTHER'),
(2014, 49, 'sofia@mail.com', 'JOB'),
(2015, 50, 'daniela@mail.com', 'PERSONAL'),
(2016, 323, 'arevaloz@gmail.com', 'PERSONAL'),
(2017, 324, 'myrella@westlink.com', 'JOB'),
(2018, 325, 'lopez@gmail.com', 'OTHER'),
(2019, 326, 'hernande@gmail.com', 'PERSONAL'),
(2020, 327, 'duko@ssj.com', 'JOB'),
(2021, 1, 'alcala_rodolfo@gmail.com', 'PERSONAL'),
(2022, 2, 'hector.agonzalez@alumnos.com', 'JOB'),
(2023, 3, 'lopez.juan@outlook.com', 'OTHER'),
(2024, 4, 'van_fran95@gmail.com', 'PERSONAL'),
(2025, 5, 'daniel_lab@hotmail.com', 'JOB'),
(2026, 5000, 'Palonso@gmail.com', 'PERSONAL'),
(2027, 5001, 'Jackeline47@alumnos.udg.mx', 'JOB'),
(2028, 5002, 'mariaGmoran@outlook.com', 'OTHER'),
(2029, 5003, 'RamonCama@hotmail.com', 'PERSONAL'),
(2030, 5005, 'NelsonIslas96@alumnos.udg.mx', 'JOB'),
(2031, 313, 'oscarflores@gmail.com', 'PERSONAL'),
(2032, 314, 'javipg@cbin.com', 'JOB'),
(2033, 315, 'andreamonseFG@gmail.com', 'PERSONAL'),
(2034, 316, 'melanieCD@cbin.com', 'JOB'),
(2035, 317, 'horacioFC@cbin.com', 'JOB'),
(2036, 5006, 'moisesiniguez@gmail.com', 'PERSONAL'),
(2037, 5007, 'myrcellabaratheon@westlink.com', 'JOB'),
(2038, 5008, 'lopez.marcos@gmail.com', 'OTHER'),
(2039, 5009, 'hernandezvaleria@gmail.com', 'PERSONAL'),
(2040, 5010, 'parker.peter@clarin.com', 'JOB'),
(2041, 5011, 'manuel@DCmagana.com', 'JOB'),
(2042, 5012, 'jairo@gmail.com', 'PERSONAL'),
(2043, 5014, 'E_ruelas@DCmagana.com', 'JOB'),
(2044, 5015, 'Alondra@CorpADR.com', 'JOB'),
(5981, 92751, 'ramon@sales.com', 'JOB'),
(5982, 92752, 'roberto@sales.com', 'JOB'),
(5983, 92753, 'nicolas@sales.com', 'PERSONAL'),
(5984, 92754, 'matias@sales.com', 'PERSONAL'),
(5985, 92755, 'flan@sales.com', 'OTHER'),
(7000, 7000, 'kevin@alumnos.udg', 'JOB'),
(7001, 7001, 'alex@alumnos.udg', 'JOB'),
(7002, 7002, 'rodo@alumnos.udg', 'PERSONAL'),
(7003, 7003, 'elon@alumnos.udg', 'PERSONAL'),
(7004, 7004, 'jesus@alumnos.udg', 'OTHER'),
(7005, 92756, 'hugo.franco@alumnos.udg.mx', 'JOB'),
(7006, 92757, 'andimorales@gmail.com', 'PERSONAL'),
(7007, 92758, 'layne.staley@gmail.com', 'JOB'),
(7008, 92759, 'angiegossow@gmail.com', 'OTHER'),
(7009, 92760, 'chrisjcornell@gmail.com', 'PERSONAL'),
(7010, 92761, 'vanessaini@gmail.com', 'OTHER'),
(7011, 92762, 'kurtdcobain@gmail.com', 'PERSONAL'),
(7012, 92763, 'fragerardosue@hotmail.com', 'PERSONAL'),
(7013, 92764, 'becrrajosu@gmail.com', 'JOB'),
(7014, 92765, 'francojosuebc@gmail.com', 'PERSONAL'),
(7015, 92766, 'gerafb@gmail.com', 'PERSONAL'),
(7016, 92767, 'Laura.MunozM@alumno.udg.mx', 'JOB'),
(7017, 92768, 'Mario.MRM@cantinflas.com', 'PERSONAL'),
(7018, 92769, 'Enrrique.Segoviano@segovianos.com', 'PERSONAL'),
(7019, 92770, 'Xavier.lopez@chabelos.udg.mx', 'JOB'),
(7020, 92771, 'Ricardo.GG@cepillin.udg.mx', 'JOB'),
(7021, 40, 'edgar.esqueda@outlook.com', 'PERSONAL'),
(7022, 41, 'edgar.mesqueda@alumnos.udg.mx', 'JOB'),
(7023, 42, 'maquinadefuego@gmail.com', 'OTHER'),
(7024, 43, 'chiquilin@hotmail.com', 'PERSONAL'),
(7025, 44, 'correotrabajo@com.com', 'JOB'),
(7030, 1000, 'andre.lopez6128@alumnos.udg.mx', 'PERSONAL'),
(7031, 1001, 'andre.lopez61281@alumnos.udg.mx', 'PERSONAL'),
(7032, 1002, 'andre.lopez61283@alumnos.udg.mx', 'PERSONAL'),
(7033, 1003, 'andre.lopez61284@alumnos.udg.mx', 'JOB'),
(7036, 1004, 'andre.lopez61285@alumnos.udg.mx', 'JOB'),
(7042, 92781, 'Jaime@hotmail.com', 'PERSONAL'),
(7043, 92782, 'Diosito@gmail.com', 'JOB'),
(7044, 92782, 'Malandro@outlook.com', 'JOB'),
(7045, 92784, 'Marihuanol@alumno.com', 'OTHER'),
(7046, 92785, 'Simonalamona@yahoo.com', 'PERSONAL'),
(7047, 92786, 'rookiepoliceman@alumnos.udg.mx', 'JOB'),
(7048, 92787, 'specialatckandsupresion@alumnos.udg.mx', 'JOB'),
(7049, 92788, 'thirdbirthday@alumnos.udg.mx', 'PERSONAL'),
(7050, 92789, 'fromshadows@alumnos.udg.mx', 'PERSONAL'),
(7051, 92790, 'redlikeroses@alumnos.udg.mx', 'PERSONAL'),
(9000, 9000, 'jacky@gmail.com', 'PERSONAL'),
(9001, 9001, 'alexbh@gmail.com', 'JOB'),
(9002, 9002, 'jacime@gmail.com', 'PERSONAL'),
(9003, 9003, 'rosal233@gmail.com', 'JOB'),
(9005, 9005, 'adriancito@outlook.com', 'JOB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `code` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname1` varchar(45) NOT NULL,
  `lastname2` varchar(45) DEFAULT NULL,
  `enterprisename` varchar(45) DEFAULT NULL,
  `street` varchar(45) NOT NULL,
  `num` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `municipality` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `people`
--

INSERT INTO `people` (`code`, `name`, `lastname1`, `lastname2`, `enterprisename`, `street`, `num`, `city`, `municipality`, `state`, `country`, `zipcode`, `rfc`) VALUES
(1, 'David', 'Ramirez', 'Delgado', 'Delgado inc', 'Colon', '57', 'Arandas', 'Arandas', 'Jalisco', NULL, '47180', 'XAXX010101000'),
(2, 'Gricelda', 'Torres', 'Perona', 'Delgado inc', 'Lomas', '36', 'CDMX', 'CDMX', 'CDMX', NULL, '00001', 'XAXX010101000'),
(3, 'Federico', 'Hierbas', 'Gustav', 'Delgado inc', 'Pomelo', '55', 'Tepatitlan', 'Tepatitlan', 'Jalisco', NULL, '47600', 'XAXX010101000'),
(4, 'Angela', 'Bouvier', 'Ramones', 'Delgado inc', 'Apollo XI', '9', 'Morelia', 'Morelia', 'Michoacan', NULL, '36890', 'XAXX010101000'),
(5, 'Juan', 'Camaney', 'Salinas', 'Delgado inc', 'Abe Lincoln', '5', 'Baja California Sur', 'Baja', 'Baja California Sur', NULL, '00356', 'XAXX010101000'),
(6, 'Moises', 'Iñiguez', 'Gonzales', 'Delgado inc', 'Carretera norte', '36', 'Arandas', 'Agua Negra', 'Jalisco', NULL, '47180', 'XAXX010101000'),
(7, 'Marge', 'Simpson', 'Bouvier', 'La FOX', 'Evergreen', '626', 'Springfield', 'Springfield', 'Massachusetts', NULL, '01001', 'XAXX010101000'),
(8, 'Sergio', 'Franco', 'Casillas', NULL, 'Gardenias', '22', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', 'FACS-780722-965'),
(9, 'fernando', 'barajas', 'gomez', NULL, 'marcelino', '450', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47610', '0'),
(10, 'fernando', 'barajas', 'gomez', NULL, 'marcelino', '450', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47610', '0'),
(11, 'Adrian', 'Garcia', 'Franco', 'UNA EMPRESA', 'Corona', '43', 'Arandas', 'ARANDAS', 'Jalisco', 'Mexico', '47180', 'tetete1923821'),
(12, 'Eduardo', 'Garcia', 'Garcia', 'UNA EMPRESA UN POCO CHIDA 2', 'Hernadez', '443', 'Arandas', 'ARANDAS', 'Jalisco', 'Mexico', '47180', 'tetete124'),
(13, 'Rosa', 'Garcia', 'Franco', 'UNA EMPRESA UN POCO CHIDA', 'Ramon', '78', 'Arandas', 'ARANDAS', 'Jalisco', 'Mexico', '47180', 'poiu6790'),
(14, 'Cristian', 'Garcia', 'Franco', 'UNA EMPRESA NO TAN CHIDA', 'Morelos', '889', 'Arandas', 'ARANDAS', 'Jalisco', 'Mexico', '47180', 'gf57853'),
(15, 'Gabriel', 'Morales', 'Martin', 'UNA EMPRESA CHIDA', 'Corona', '889', 'Arandas', 'ARANDAS', 'Jalisco', 'Mexico', '47180', '3123123123'),
(26, 'David', 'Ruiz', 'Avalos', 'THOR-TAS', 'Rios', '666', 'Nuevo Laredo', 'Tamaulipas', 'Nuevo Leon', 'Mexico', '6666', 'NOPAGOIMPUESTOS'),
(27, 'Pedro', 'Mares', 'Secos', 'THOR-TAS', 'Ocas', '667', 'Nuevo Laredo', 'Tamaulipas', 'Nuevo Leon', 'Mexico', '6969', 'NOPAGOIMPUESTOS'),
(28, 'Juan', 'Escutia', 'Marinez', 'THOR-TAS', 'Reforma', '668', 'Nuevo Laredo', 'Tamaulipas', 'Nuevo Leon', 'Mexico', '7777', 'NOPAGOIMPUESTOS'),
(29, 'Fernando', 'Montes', 'de Oca', 'THOR-TAS', 'Colosio', '669', 'Nuevo Laredo', 'Tamaulipas', 'Nuevo Leon', 'Mexico', '1010', 'NOPAGOIMPUESTOS'),
(30, 'Carlos', 'Salinas', 'deGortari', 'THOR-TAS', 'Pri', '670', 'Nuevo Laredo', 'Tamaulipas', 'Nuevo Leon', 'Mexico', '1011', 'NOPAGOIMPUESTOS'),
(31, 'André Joseph', 'López', 'Cortez', NULL, 'Villa', '436', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47650', 'XD-690-520'),
(32, 'Gerardo Josué', 'Franco', 'Becerra', NULL, 'Cabañas', '40', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'AX-420-520'),
(33, 'Jhonson', 'Smith', 'gomez', NULL, 'marcelino', '451', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47611', '123456'),
(34, 'Dua', 'Lipa', 'gomez', NULL, 'marcelino', '452', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47612', '123457'),
(35, 'Bruno', 'Mars', 'gomez', NULL, 'marcelino', '453', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47613', '123458'),
(36, 'Ed', 'Sheeran', 'gomez', NULL, 'marcelino', '454', 'tepatitlan', 'tepatitlan', 'jalisco', 'tepatitlan', '47614', '123459'),
(37, 'Uriel', 'Ramírez', 'Ibarra', NULL, 'Hidalgo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Joshua', 'Franco', 'Becerra', NULL, 'Gardenias', '22', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', 'FACS-780722-965'),
(39, 'Christian Fabian', 'Gomez', 'Romero', NULL, 'Girasoles', '200', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', ''),
(40, 'Edgar', 'Martinez', 'Esqueda', NULL, 'Gpe. Victoria', '123', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'México', '47600', '12343145'),
(41, 'Gerardo', 'Ramírez', 'Román', NULL, 'Aldama', '245', 'Guadalajara', 'Guadalajara', 'Jalisco', 'México', '44500', '173065'),
(42, 'Luis', 'Fernandez', 'Rodríguez', NULL, 'Samartin', '276', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'México', '47600', '1208528345'),
(43, 'Cesar', 'Duarte', 'Jiménez', NULL, 'Vallarta', '57', 'Guadalajara', 'Tonalá', 'Jalisco', 'México', '45600', '123624345'),
(44, 'Andrés', 'Martin', 'Domínguez', NULL, 'Hidalgo', '60', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'México', '47600', '12335645'),
(45, 'CAROLINA', 'GONZALEZ', 'MARTIN', NULL, 'MORELOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Marco', 'Servin', 'de la Torre', 'empresa', 'Nardos', '15', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'SETM000609HJCRRR87'),
(47, 'Ricardo', 'Milos', 'Gutierrez', 'empresa', 'La danza', '16', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'MIGR000609HJCRRR87'),
(48, 'Ignacio', 'Freeman', 'Gomez', 'empresa', 'San Pedro', '17', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'FEGIM000609HJCRRR87'),
(49, 'Sofia', 'Cortes', 'Hernandez', 'Grecia', 'empresa', '18', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'COHS000609HJCRRR87'),
(50, 'Daniela', 'Martinez', 'Martin', 'empresa', 'Samartin', '19', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'MAMD000609HJCRRR87'),
(53, 'CAROLINA1', 'GONZALEZ1', 'MARTIN1', 'DESCONOCIDO', 'MORELOS', '217', 'TEPATITLAN', 'CAPILLA', 'JALISCO', 'MEXICO', 'BIEN BONITO', 'NO HAY'),
(54, 'CAROLINA2', 'GONZALEZ2', 'MARTIN2', 'DESCONOCIDO', 'MORELOS', '217', 'TEPATITLAN', 'CAPILLA', 'JALISCO', 'MEXICO', 'BIEN BONITO', 'NO HAY'),
(55, 'CAROLINA3', 'GONZALEZ3', 'MARTIN3', 'DESCONOCIDO', 'MORELOS', '217', 'TEPATITLAN', 'CAPILLA', 'JALISCO', 'MEXICO', 'BIEN BONITO', 'NO HAY'),
(56, 'CAROLINA4', 'GONZALEZ4', 'MARTIN4', 'DESCONOCIDO', 'MORELOS', '217', 'TEPATITLAN', 'CAPILLA', 'JALISCO', 'MEXICO', 'BIEN BONITO', 'NO HAY'),
(57, 'CAROLINA5', 'GONZALEZ5', 'MARTIN5', 'DESCONOCIDO', 'MORELOS', '217', 'TEPATITLAN', 'CAPILLA', 'JALISCO', 'MEXICO', 'BIEN BONITO', 'NO HAY'),
(300, 'Jonatan', 'Ramírez', 'Jimenez', 'Wikipedia', 'La del sur', '32', 'Wacanda', 'Yes', 'Durango', 'Japan', '57290', 'RRFC324281'),
(301, 'Jony', 'Estoy', 'Atento', 'Costco', 'Esparza', '246', 'Chicago', 'YES', 'Jalisco', 'Madagascar', '21000', 'NOSi191730'),
(302, 'Alex', 'Fernandez', 'Allende', 'Waltmart', 'WallStreet', '10', 'LA', 'NO', 'Texas', 'India', '00191', 'YHYFA293474'),
(303, 'Pedro', 'Pica', 'Piedra', 'La Cueva', 'Bosques', '19', 'Alabahama', 'NO', 'Brasilia', 'Brasil', '01823', 'DHHA28423'),
(304, 'Goku', 'Super', 'Sayan', 'Insecto', 'Kaiosama', '7', 'Hiroshima', 'NO', 'Japania', 'Japon', '0239', 'NDKSHDN92384'),
(305, 'Sergio', 'Franco', 'Casillas', NULL, 'Gardenias', '22', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', 'FACS-780722-965'),
(306, 'Sergio', 'Franco', 'Casillas', NULL, 'Gardenias', '22', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', 'FACS-780722-965'),
(307, 'Sergio', 'Franco', 'Casillas', NULL, 'Gardenias', '22', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', 'FACS-780722-965'),
(308, 'Carlos', 'Garcia', NULL, NULL, '16 de septiembre', '56', 'Arandas', NULL, 'Jalisco', NULL, NULL, 'GALC9602036T9'),
(309, 'Fatima', 'Orozco', NULL, NULL, 'Benito Juarez', '52', 'Atotonilco', NULL, 'Jalisco', NULL, NULL, 'ORHF9206042A3'),
(310, 'Jesus', 'Jimenez', NULL, NULL, 'Calle Yen', '32', 'Guadalajara', NULL, 'Jalisco', NULL, NULL, 'JISJ8801235M1'),
(311, 'Toby', 'Schneider', NULL, NULL, 'Quintana Roo', '98', 'San Ignacio Cerro Gordo', NULL, 'Jalisco', NULL, NULL, 'SCMT9010225G6'),
(312, 'Maria', 'Gutierrez', NULL, NULL, 'Mexico', '69', 'Arandas', NULL, 'Jalisco', NULL, NULL, 'GUGM9712269L9'),
(313, 'Oscar', 'Flores', 'Sanchez', 'Microsoft', 'Niños Heroes', '#67', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'OAFS2000'),
(314, 'Javier', 'Perez', 'Gomez', 'Apple', 'Vicente Guerrero', '#199', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'JMPG1999'),
(315, 'Andrea', 'Flores', 'Gutierrez', 'Microsoft', 'Reforma', '#45', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'AMFG2025'),
(316, 'Melanie', 'Carrillo', 'De la mora', 'Apple', 'Constitucion', '#256', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'MACD2345'),
(317, 'Horacio', 'Franco', 'Casillas', 'Microsoft', 'Av. LA paz', '#20', 'Capilla de Milpillas', 'Tepatitlan', 'Jalisco', 'Mexico', '47720', 'HAFC1987'),
(318, 'Cristian', 'Castellanos', 'Delgadillo', NULL, 'Juan Ibarra', '#52', NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'Aidee', 'Gonzalez', 'Aguirre', NULL, 'Degollado', '#12', NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Miriam', 'Gonzalez', 'Torres', NULL, 'Aztecas', '#5', NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'Sebastian', 'Gutierrez', 'Navarro', NULL, 'Yaquis', '#5223', NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'Alan', 'Navarro', 'Jimenez', NULL, 'Garza', '#24', NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'Jose', 'Arevaloz', 'Castañeda', 'Aple', 'Degollado', '#52', 'Acatic', 'Tepatitlan', 'Jalisco', 'México', '47720', 'AOJO102020'),
(324, 'Myrella', 'Castellanos', 'Lerda', 'sam', 'Distrito del Rey', '#1', 'Kingslanding', 'Kingslanding', 'Central', 'Westeros', '99022', 'BLXY992929'),
(325, 'Javier', 'MAgaña', 'Garcia', 'ladelaesquina', 'Morelos', '#567', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'México', '47600', 'LGZA102120'),
(326, 'Ramon', 'Hernandez', 'Hernandez', 'ssj', 'Hidalgo', '#100A', 'Acatic', 'Arandas', 'Jalisco', 'México', '45470', 'ZHVA112020'),
(327, 'Mauro', 'Lombardo', '', 'Clarin', 'MAr', '#35', 'Buenos Aires', 'Buenos Aires', 'Nueva York', 'Argentina', '10021', 'PZPE101010'),
(328, 'Rodolfo', 'Alcala', 'Guitierrez', 'Apple', 'Degollado', '#222', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'IOMO102020'),
(329, 'Héctor', 'Aguirre', 'Gonzalez', 'Apple', 'Hidalgo', '#213', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'AGHO102020'),
(330, 'Juan', 'Lopez', 'Guitierrez', 'Apple', 'Esparza', '#222', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'LGJ102020'),
(331, 'Valeria', 'Franco', 'Perez', 'Apple', 'Gallardo', '#666', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'FPVO102020'),
(332, 'Daniel', 'Perez', 'Orozco', 'Apple', 'Carnicerito', '#233', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'OPDO102020'),
(500, 'Valeria', 'D', 'B', 'Papeleria PahPen', 'Aldama', NULL, 'Tepatitlan', '?????', 'Jalisco', 'Mexico', '?????', '?????'),
(501, 'Raul', 'Perez', 'Gonzalez', 'Papeleria PahPen', 'Universo', NULL, 'Tepatitlan', '?????', 'Jalisco', 'Mexico', '?????', '?????'),
(502, 'Jimena', 'Fernandez', 'Garcia', 'Empresas de Papel', 'Calle Miraflores', NULL, 'Ocotlan', '?????', 'Jalisco', 'Mexico', '?????', '?????'),
(503, 'Martin', 'Carranza', 'Plascencia', 'Empresas de Papel', '9 esquinas', NULL, 'Guadalajara', '?????', 'Jalisco', 'Mexico', '?????', '?????'),
(504, 'Andrea', 'Cruz', 'Plascencia', 'Papeleria PahPen', '9 esquinas', NULL, 'Guadalajara', '?????', 'Jalisco', 'Mexico', '?????', '?????'),
(1000, 'Ramón', 'Paredes', 'Sánchez', 'Walmart', 'elm street', '14', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47639', '011111'),
(1001, 'Rodolfo', 'Anaya', 'Martínez', 'Walmart', 'Juan Escutia', '235', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47646', '02222'),
(1002, 'Chris', 'Anaya', 'Martínez', 'Walmart', 'Vallarta', '244', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47645', '033333'),
(1003, 'Lilibeth', 'Anaya', 'Martínez', 'Fruteria', 'arboles de la barranca', '10', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', '044444'),
(1004, 'Lia', 'Anaya', 'Martínez', 'Marinela', 'safaera', '12', 'Tepatitlán de Morelos', 'Tepatitlan', 'Jalisco', 'México', '47600', '045555'),
(1012, 'Jaime', 'Martinez', 'Gomez', 'Apple', 'Vicente Guerrero', '#199', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'JMPG1999'),
(1013, 'Alejandro', 'Biquez', 'Hernandez', 'Microsoft', 'Reforma', '#45', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'AMFG2025'),
(1014, 'Rosalina', 'Mercado', 'Becerra', 'Apple', 'Constitucion', '#256', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'MACD2345'),
(1015, 'Adrian', 'Becerra', 'Casillas', 'Microsoft', 'Av. LA paz', '#20', 'San Julian ', 'San Julian', 'Jalisco', 'Mexico', '47720', 'HAFC1987'),
(1016, 'Alejandro', 'Padilla', 'Flores', '-', 'El plan', '#5', 'San Juan', 'San Juan', 'Jalisco', 'Mexico', '47180', 'PAM5993'),
(1017, 'Donal', 'trup', 'deamercia', 'papeleria SanM', 'Coras', '#133', 'San Juan', 'San Juan', 'Jalisco', 'Mexico', '47485', 'JBM347'),
(1018, 'Zaira', 'Padilla', 'Flores', 'Gym club one', 'Hidalgo', '#14', 'San Juan', 'San Juan', 'Jalisco', 'Mexico', '47180', 'MMM348'),
(1019, 'Jazmin', 'Padilla', 'Flores', 'AT&T', 'Hidalgo', '#78', 'San Juan', 'San Juan', 'Jalisco', 'Mexico', '47180', 'JRCH348'),
(1020, 'Calcifer', 'Padilla', 'Flores', 'tortilleria juna', 'san judas', '#7', 'San Juan', 'San Juan', 'Jalisco', 'Mexico', '47789', 'NIM347'),
(2001, 'Nelson', 'Islas', 'Martin', NULL, 'Las Afueras', '26A', 'Tepatitlan de Morelos', 'Tepatitlan de Morelos', 'Jalisco', 'Mexico', '47715', 'IAMN001113HJCSRLA8'),
(2002, 'Lizbeth', 'Martin', 'Iniguez', NULL, 'Jose Maria Moreno', '95B', 'Tepatitlan de Morelos', 'Tepatitlan de Morelos', 'Jalisco', 'Mexico', '47715', 'AAAA000000AAAAAAA0'),
(2003, 'Elvira', 'Martin', 'Ibarra', NULL, 'Las Afueras', '26A', 'Tepatitlan de Morelos', 'Tepatitlan de Morelos', 'Jalisco', 'Mexico', '47715', 'AAAA000000AAAAAAA0'),
(2004, 'Jose Antonio', 'Islas', 'Perez', NULL, 'Las Afueras', '26A', 'Tepatitlan de Morelos', 'Tepatitlan de Morelos', 'Jalisco', 'Mexico', '47715', 'AAAA000000AAAAAAA0'),
(2005, 'Gisela', 'Islas', 'Martin', NULL, 'Las Afueras', '26A', 'Tepatitlan de Morelos', 'Tepatitlan de Morelos', 'Jalisco', 'Mexico', '47715', 'AAAA000000AAAAAAA0'),
(4500, 'Jackeline', 'Becerra ', 'Mercado', 'Microsoft', 'Niños Heroes', '#73', 'San Miguel el Alto', 'San Miguel el Alto', 'Jalisco', 'Mexico', '47140', 'JBM2000'),
(5000, 'Paola', 'Alonso', 'Moran', 'Abarrotes reyna', 'Huastecos', '#258', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'PAM5993'),
(5001, 'Jackeline', 'Becerra', 'Mercado', 'papeleria SanM', 'Coras', '#133', 'San Miguel', 'San Miguel', 'Jalisco', 'Mexico', '47485', 'JBM347'),
(5002, 'Maria', 'Moran', 'Moran', 'Gym club one', 'Hidalgo', '#14', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'MMM348'),
(5003, 'Ramon', 'Camarena', 'Hernadez', 'AT&T', 'Hidalgo', '#78', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'JRCH348'),
(5004, 'Jesús', 'De', 'Nazaret', 'Garnachas Doña Josefa', 'San José', '0', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(5005, 'Nelson', 'Islas', 'Martin', 'tortilleria juna', 'san judas', '#7', 'Tepatitlan', 'Pegueros', 'Jalisco', 'Mexico', '47789', 'NIM347'),
(5006, 'Moises', 'Iñiguez', 'Ortega', 'Aple', 'Degollado', '#52', 'Capilla de Milpillas', 'Tepatitlan', 'Jalisco', 'México', '47720', 'IOMO102020'),
(5007, 'Myrcella', 'Baratheon', 'Lannister', 'Embajada', 'Distrito del Rey', '#1', 'Kingslanding', 'Kingslanding', 'Central', 'Westeros', '99022', 'BLMY992929'),
(5008, 'Marcos', 'Lopez', 'Garcia', 'Microsoft', 'Morelos', '#567', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'México', '47600', 'LGMA102120'),
(5009, 'Valeria', 'Hernandez', 'Hernandez', 'Microsoft', 'Hidalgo', '#100A', 'Arandas', 'Arandas', 'Jalisco', 'México', '47180', 'HHVA112020'),
(5010, 'Peter', 'Parker', '', 'Clarin', 'Queens', '#3045', 'Nueva York', 'Nueva York', 'Nueva York', 'Estados Unidos', '10021', 'PAPE101010'),
(5011, 'Manuel', 'Santillan', 'Enriquez', 'Despacho magaña', '12 de octubre', '#100', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47800', 'OAFS2000'),
(5012, 'Jairo', 'contreras', 'hernandez', 'Despacho magaña', '12 de octubre', '#100', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47800', 'cohj142587fhj'),
(5013, 'eduardo', 'magaña', 'lopez', 'Despacho magaña', '12 de octubre', '#100', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47800', 'malj901105etr'),
(5014, 'elizabeth', 'ruelas', 'velazquez', 'Despacho magaña', '12 de octubre', '#100', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47800', 'ruve123456tde'),
(5015, 'Alondra', 'lopez', 'lozano', 'Corporativo ADR', '12 de octubre', '#100', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47800', 'lola908765qqq'),
(7000, 'Kevin', 'Olmeda', 'De Rueda', 'Google', 'Persas', '102', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(7001, 'Alejandro', 'Padilla', 'Flores', 'Google', 'NIños Héroes', '200', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(7002, 'Rodolfo', 'Anaya', 'Martinez', 'Google', 'Miguel Hidalgo', '300', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(7003, 'Elon', 'Musk', 'Juárez', 'Garnachas Doña Josefa', 'Avenida102', '-12', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(7004, 'Jesús', 'De', 'Nazaret', 'Garnachas Doña Josefa', 'San José', '0', 'LA', 'Salinas', 'California', 'USA', '11111', 'NOHAYRFC'),
(9000, 'Jackeline', 'Becerra ', 'Mercado', 'Microsoft', 'Niños Heroes', '#73', 'San Miguel el Alto', 'San Miguel el Alto', 'Jalisco', 'Mexico', '47140', 'JBM2000'),
(9001, 'Jaime', 'Martinez', 'Gomez', 'Apple', 'Vicente Guerrero', '#199', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'JMPG1999'),
(9002, 'Alejandro', 'Biquez', 'Hernandez', 'Microsoft', 'Reforma', '#45', 'Tepatitlan', 'Tepatitlan', 'Jalisco', 'Mexico', '47600', 'AMFG2025'),
(9003, 'Rosalina', 'Mercado', 'Becerra', 'Apple', 'Constitucion', '#256', 'Arandas', 'Arandas', 'Jalisco', 'Mexico', '47180', 'MACD2345'),
(9005, 'Adrian', 'Becerra', 'Casillas', 'Microsoft', 'Av. LA paz', '#20', 'San Julian ', 'San Julian', 'Jalisco', 'Mexico', '47720', 'HAFC1987'),
(92751, 'Ramón', 'Paredes', 'Sánchez', 'Tortas famosas', 'Porfirio Díaz', '10', 'Tepatitlán', 'Tepatitlán de Morelos', 'Jalisco', 'México', '45500', 'RPSP123'),
(92752, 'Roberto', 'Pérez', 'Hernández', 'Apple Inc', 'Gardenias', '20', 'Tepatitlán', 'Tepatitlán de Morelos', 'Jalisco', 'México', '45500', 'RPH123'),
(92753, 'Nicolas', 'Fishman', 'Spinetta', 'MiniSoft', 'Confederación', '140', 'Guadalajara', 'Guadalajara', 'Jalisco', 'México', '45600', 'NFS123'),
(92754, 'Matías', 'Péres', 'Prado', 'Tortas famosas', 'Independencia', '98', 'León', 'León', 'Guanajuato', 'México', '46600', 'MPP123'),
(92755, 'Flan', 'Sánchez', 'Abisal', 'Tienda don Hugo', 'Miguel Blanco', '45', 'Tepatitlán', 'Tepatitlán de Morelos', 'Jalisco', 'México', '45500', 'FSA123'),
(92756, 'Hugo', 'Franco', 'García', 'Capcom', 'Gardenias', '28', 'Tepatitlán', 'Tepatitlan de Morelos', 'Jalisco', 'México', '47698', '552HFG321'),
(92757, 'Andrea', 'Morales', 'Guzmán', 'Mary Kay', 'Mapelo', '12', 'Tepatitlán', 'Tepatitlán de Morelos', 'Jalisco', 'México', '47690', '165AMG497'),
(92758, 'Layne', 'Staley', 'Xxxx', 'Alice in Chains', 'Rooster', '65', 'Kirkland', 'Kirkland', 'Washington', 'USA', '98033', '651LSX456'),
(92759, 'Angela', 'Gossow', 'Xx', 'Arch Enemy', 'Mezzosoprano', '49', 'Leverkusen', 'Colonia', 'Colonia', 'Alemania', '50670', '879AGX639'),
(92760, 'Chris', 'Boyle', 'Cornell', 'Soundgarden', 'Spoonman', '27', 'Seattle', 'Seattle', 'Washington', 'USA', '98101', '634CHX631'),
(92761, 'Vanessa', 'Iñiguez', 'Esquivias', 'EMI', 'Rosales', '58', 'Pegueros', 'Tepatitlan de Morelos', 'Jalisco', 'México', '47715', '646SIE645'),
(92762, 'Kurt', 'Cobain', 'Xxxxx', 'Nirvana', 'Abbey Road', '32', 'Aberdeen', 'Aberdeen', 'Washington', 'USA', '98520', '499KCX689'),
(92763, 'Gerardo Josué2', 'Franco2', 'Becerra2', NULL, 'Morelos', '120', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'ED-862-710'),
(92764, 'Gerardo Josué3', 'Franco3', 'Becerra3', NULL, '16 de Septiembre', '78', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'RT-310-794'),
(92765, 'Gerardo Josué4', 'Franco4', 'Becerra4', NULL, 'Robles', '84', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'PIO-732-113'),
(92766, 'Gerardo Josué5', 'Franco5', 'Becerra5', NULL, 'Palmas', '367', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'YR-752-438'),
(92767, 'Laura', 'Muñoz', 'Muñoz', 'MOONSOFT', 'Aldrete', '346', 'San Julian', 'San julian', 'Jalisco', 'Mexico', '47170', 'MUML0002221HO'),
(92768, 'Mario', 'Moreno', 'Reyes', 'Cantinflas', 'Fortino', '123', 'San Miguel de Allende', 'Guanajuato', 'Guanajuato', 'Mexico', '47687', 'MORM110812IHO'),
(92769, 'Enrrique', 'Segoviano', 'S', 'Govianos', 'Hidalgo', '456', 'CDMX', 'Iztacalco', 'Mexico', 'Mexico', '67789', 'SESE6782911H0'),
(92770, 'Xavier', 'Lopez', 'Rodriguez', 'Chabelo', 'Morelos', '768', 'Summit', 'Chicago', 'Illinois', 'USA', '67890', 'LORX6290651HO'),
(92771, 'Ricardo', 'González', 'Gutierréz', 'Cepillin', 'Reforma', '678', 'Santiago', 'Monterrey', 'Nuevo Léon', 'Mexico', '57821', 'GOGR7249151HO'),
(92777, 'André Joseph2', 'López2', 'Cortez2', NULL, 'Villa2', '963', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'XA-420-520'),
(92778, 'André Joseph3', 'López3', 'Cortez3', NULL, 'Villa3', '741', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'DA-420-520'),
(92779, 'André Josep4h', 'Lópe4z', 'Cortez4', NULL, 'Villa', '4852', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'WE-420-520'),
(92780, 'André Joseph6', 'López6', 'Cortez6', NULL, 'Villa', '123', 'Tepatitlán de Morelos', 'Tepatitlán', 'Jalisco', 'México', '47600', 'CX-420-520'),
(92781, 'Jaime', 'del monte', 'Medina', NULL, 'Porfirio Dias', '420', NULL, 'Tepatitlan', 'Jalisco', 'México', '47670', '12345'),
(92782, 'David', 'Ocampos', 'Jimenez', NULL, 'Cerro de pikachos', '651', NULL, 'Zapopan', 'Guadalajara', 'México', '45321', '123456'),
(92783, 'Alex', 'Panduro', 'Rivera', NULL, 'Revolucion', '1785', NULL, 'Toluca', 'Chiapas', 'Canada', '78541', '234567'),
(92784, 'Saitama', 'Mamarre', 'Ozuna', NULL, 'Valenciano', '325', NULL, 'Anda lucia', 'Tokio', 'China', '56328', '345678'),
(92785, 'Pikachu', 'Derbez', 'Paleta', NULL, 'Tet\'apo elho\'yo', '69', NULL, 'Rio', 'Toronto', 'Brazil', '84628', '456789'),
(92786, 'Leon', 'F', 'Kenedy', 'RPD', 'Independencia', '101', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47610', ''),
(92787, 'Jill', 'Valentine', '', 'STARS', 'Revolucion', '203', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47680', ''),
(92788, 'Aya', 'Brea', '', 'MIST', 'Aldama', '954', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47690', ''),
(92789, 'Blake', 'Belladdonna', '', 'RWBY', 'Moctezuma', '345', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47650', ''),
(92790, 'Ruby', 'Rose', '', 'RWBY', 'Samartin', '624', 'Tepatitlan de Morelos', 'Tepatitlan', 'Jalisco', 'Mexico', '47640', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people_has_phone`
--

CREATE TABLE `people_has_phone` (
  `people_code` int NOT NULL,
  `phone_idphone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `people_has_phone`
--

INSERT INTO `people_has_phone` (`people_code`, `phone_idphone`) VALUES
(8, 7),
(38, 7),
(10, 10),
(36, 10),
(92781, 10),
(92784, 10),
(33, 11),
(35, 11),
(92782, 11),
(92785, 11),
(34, 12),
(92783, 12),
(39, 13),
(92788, 13),
(11, 20),
(12, 21),
(15, 21),
(13, 22),
(14, 22),
(300, 300),
(303, 300),
(301, 301),
(304, 301),
(302, 302),
(1, 309),
(308, 309),
(309, 309),
(311, 309),
(310, 310),
(312, 311),
(318, 312),
(322, 312),
(319, 313),
(321, 313),
(320, 314),
(4, 315),
(308, 315),
(500, 1120),
(503, 1120),
(501, 1121),
(504, 1121),
(502, 1122),
(1003, 1234),
(2, 2001),
(2003, 2001),
(2005, 2001),
(2004, 2002),
(2001, 2003),
(2002, 2003),
(323, 2004),
(324, 2005),
(325, 2006),
(326, 2006),
(46, 2007),
(49, 2007),
(47, 2008),
(48, 2008),
(50, 2009),
(7000, 7000),
(7001, 7000),
(7002, 7001),
(7003, 7001),
(7004, 7002),
(92751, 9035),
(92753, 9035),
(92754, 9035),
(92755, 9036),
(92752, 9037),
(1000, 12345),
(1001, 12345),
(1002, 12345),
(1001, 123456),
(1002, 123456),
(1003, 123456),
(1004, 123456),
(313, 123457),
(314, 123458),
(315, 123458),
(316, 123458),
(317, 123459),
(5006, 123460),
(5007, 123461),
(5009, 123461),
(5008, 123462),
(5011, 123463),
(5012, 123464),
(5013, 123465),
(5014, 123466),
(5015, 123467),
(92757, 123471),
(92760, 123471),
(92759, 123472),
(92762, 123472),
(92756, 123473),
(92758, 123473),
(92761, 123473),
(32, 123474),
(92763, 123475),
(92764, 123476),
(92765, 123477),
(92766, 123478),
(92767, 123479),
(92769, 123479),
(92767, 123480),
(92768, 123480),
(92769, 123480),
(40, 123482),
(41, 123482),
(41, 123483),
(42, 123483),
(40, 123484),
(39, 123499),
(92786, 123499),
(92789, 123499),
(92787, 123500),
(92789, 123500),
(92786, 123501),
(92790, 123501),
(92787, 123502),
(92788, 123502),
(39, 123503),
(92790, 123503);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone`
--

CREATE TABLE `phone` (
  `idphone` int NOT NULL,
  `phone` varchar(15) NOT NULL,
  `type` enum('MOVIL','HOME','JOB','OTRO') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `phone`
--

INSERT INTO `phone` (`idphone`, `phone`, `type`) VALUES
(4, '378-648-1287', 'HOME'),
(5, '378-138-6666', 'JOB'),
(6, '378-962-7578', 'MOVIL'),
(7, '3781150228', 'MOVIL'),
(8, '3781111916', 'JOB'),
(10, '378-123-4567', 'MOVIL'),
(11, '378-123-4568', 'HOME'),
(12, '378-123-4569', 'JOB'),
(13, '3781019358', 'MOVIL'),
(17, '348-593-2368', 'MOVIL'),
(18, '333-109-3625', 'JOB'),
(19, '378-019-2524', 'HOME'),
(20, '348-139-3866', 'MOVIL'),
(21, '348-109-3266', 'JOB'),
(22, '348-019-8906', 'OTRO'),
(300, '378-122-2781', 'MOVIL'),
(301, '342-482-7822', 'JOB'),
(302, '248-234-5221', 'HOME'),
(306, '3787114585', 'MOVIL'),
(307, '3782569685', 'HOME'),
(308, '3785695248', 'OTRO'),
(309, '123-123-4656', 'JOB'),
(310, '321-123-9568', 'MOVIL'),
(311, '789-321-6598', 'OTRO'),
(312, '3781149960', 'MOVIL'),
(313, '3781380114', 'JOB'),
(314, '3336659407', 'HOME'),
(315, '378-1150-228', 'MOVIL'),
(1120, '125-79-77523', 'JOB'),
(1121, '895-28-89580', 'JOB'),
(1122, '248-234-5921', 'MOVIL'),
(1234, '3781238567', 'MOVIL'),
(2001, '378 717 0557', 'HOME'),
(2002, '378 717 0133', 'JOB'),
(2003, '378 731 2134', 'MOVIL'),
(2004, '3781111111', 'MOVIL'),
(2005, '3782222222', 'JOB'),
(2006, '3783333333', 'HOME'),
(2007, '378-116-2845', 'MOVIL'),
(2008, '378-180-0250', 'OTRO'),
(2009, '331-547-7591', 'HOME'),
(2010, '3781114546', 'MOVIL'),
(2011, '3783456789', 'JOB'),
(2012, '3787890021', 'HOME'),
(2013, '3471502361', 'MOVIL'),
(2014, '3475201236', 'JOB'),
(2015, '3485963201', 'MOVIL'),
(2016, '3481025396', 'MOVIL'),
(2017, '3471235689', 'HOME'),
(2018, '3785932026', 'JOB'),
(7000, '111-111-1111', 'MOVIL'),
(7001, '222-222-2222', 'HOME'),
(7002, '333-333-3333', 'JOB'),
(9035, '378-111-1234', 'JOB'),
(9036, '378-123-2222', 'MOVIL'),
(9037, '378-321-1233', 'OTRO'),
(12345, '3787654321', 'JOB'),
(123456, '3785432167', 'HOME'),
(123457, '3782546321', 'MOVIL'),
(123458, '3787896321', 'JOB'),
(123459, '3787852416', 'MOVIL'),
(123460, '3781150001', 'MOVIL'),
(123461, '1228004543', 'JOB'),
(123462, '7189002345', 'HOME'),
(123463, '431-134-1234', 'MOVIL'),
(123464, '348-134-456', 'JOB'),
(123465, '348-134-0001', 'MOVIL'),
(123466, '348-134-1000', 'OTRO'),
(123467, '348-134-9999', 'MOVIL'),
(123471, '378-119-3866', 'MOVIL'),
(123472, '378-109-0066', 'JOB'),
(123473, '378-019-3006', 'HOME'),
(123474, '3784178962', 'MOVIL'),
(123475, '3788536441', 'HOME'),
(123476, '3783768494', 'JOB'),
(123477, '3781236978', 'JOB'),
(123478, '3789645721', 'MOVIL'),
(123479, '347-105-8086', 'JOB'),
(123480, '456-167-9812', 'MOVIL'),
(123481, '678-231-7920', 'JOB'),
(123482, '378-102-2137', 'MOVIL'),
(123483, '378-781-2314', 'JOB'),
(123484, '33-3566-5467', 'MOVIL'),
(123485, '3231306573', 'MOVIL'),
(123486, '3231478521', 'MOVIL'),
(123487, '3235741677', 'HOME'),
(123488, '3234138710', 'JOB'),
(123489, '3237854469', 'MOVIL'),
(123496, '378-520-8981', 'MOVIL'),
(123497, '378-875-9620', 'JOB'),
(123498, '378-562-4654', 'HOME'),
(123499, '3782411252', 'JOB'),
(123500, '3781024356', 'JOB'),
(123501, '3330152351', 'MOVIL'),
(123502, '3331129456', 'MOVIL'),
(123503, '3781789359', 'HOME');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `code` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `category` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`code`, `name`, `description`, `price`, `category`) VALUES
(1, 'LoL', 'Deluxe', 999, 1),
(2, 'Among US', 'Standard', 50, 1),
(3, 'Fall Guys 4', 'Standard', 200, 1),
(4, 'Wii', 'Nintendo', 2500, 2),
(5, 'GameBoy', 'Nintendo', 600, 2),
(6, 'pizza rafaellos salchicha', 'pizza microondas 350gr', 46, 1),
(7, 'desodorante Olds Spice', 'desodorante en barra 125 gr', 35, 2),
(8, 'papas a la fancesa', 'papas a la francesa greatvalue 1kg', 69, 1),
(9, 'pasta colgate Max', 'pasta para dientes colgate Max 85gr', 38, 2),
(10, 'jamon barato', 'jamon para cocinar congelado expirado 3.5kg', 99, 1),
(11, 'Frituras sabritas', 'Frituras 1 bolsa', 13, 5),
(12, 'Refreco coca-cola', 'Botella de 2,5L.', 35, 6),
(13, 'Refreco Fresca', 'Botella de 500 ml.', 13, 6),
(14, 'Galletas emperador', 'Paquete de 109 g.', 13, 5),
(15, 'Agua natural', 'Botella de 500 ml.', 8, 6),
(16, 'Aderezo de fresa', 'Dulce para ensaladas', 100, 7),
(17, 'Aderezo verde', 'Para las ensaldas verdes', 75, 7),
(18, 'Adrezo rojo', 'Para untar en lugar de mayonesa como en hamburguesas, etc', 75, 7),
(19, 'Panini ham', 'Con verduda, jamon, aderezo y queso', 55, 8),
(20, 'Panini pizza', 'Con aderezo, pepperoni, queso y salsa riquitikis', 65, 8),
(115, 'LAPICES', 'Paquete de Lapices 12p.', 200, 1),
(215, 'COPIC', 'Marcadores COPIC 32p.', 500, 1),
(300, 'Bocina GT10', 'Bocina 3 con lampara', 200, 300),
(301, 'Bocina BT2', 'Bocina 8', 500, 300),
(302, 'Audifonos BT', 'Audifonos bluetooth', 200, 301),
(303, 'Audifonos IP', 'Audifonos iphone', 120, 301),
(304, 'Audifonos EC', 'Audifonos economicos', 20, 301),
(305, 'TEQUILA 30-30', 'Tequila blanco 100% agave', 350, 302),
(306, 'COCA COLA', 'Refresco negro de 1 litro', 35.5, 303),
(307, 'ROMPOPE', 'Rompope con 15% de alcohol', 40, 302),
(308, 'JUGOS EL VALLE', 'Juego de naranja de 350ml', 7.5, 303),
(309, 'CHOCOLATE LA ABUELITA', 'CHOCOLATE 100% DE CACAO', 5.5, 303),
(310, 'RAM', 'MEMORIA DE ACCESO ALEATORIO', 100, 304),
(311, 'OFFICE', 'PAQUETE OFFICE', 150, 305),
(312, 'INTEL CORE 7', 'PROCESADOR INTEL', 500, 304),
(313, 'AUTOCAD', 'PLANOS 3D', 120, 305),
(314, 'PHOTOSHOP', 'EDITOR DE IMAGEN', 100, 305),
(315, 'Iphone 12', '1 pieza', 21000, 1),
(316, 'PC de escritorio', '1 pieza', 24999, 2),
(317, 'airpods', '2 piezas', 5000, 1),
(318, 'Estuche para laptop', '1 piezas', 599, 1),
(319, 'Cargador portatil', '1 piezas', 2499, 1),
(320, 'Samsung A70', '1 piezas', 10000, 1),
(415, 'Acuarelas OT', 'kit básico de acuarela 10p.', 120, 2),
(515, 'Acrilicos SN', 'Acrilicos no toxico de 25ml', 20, 2),
(615, 'Marcadores', 'Marcadores de agua 24p.', 200, 2),
(1313, 'Televisor Panasonic', 'Televisor Panasonic de 42 pulgadas resolución 4K', 30000, 1313),
(1314, 'Televisor Xiaomi', 'La mejor televisión Calidad-Precio', 5000, 1313),
(1315, 'Laptop ASUS', 'Laptop Asus con un i10 de 11 generación', 20000, 1314),
(1316, 'PC Gamer', 'PC con un Intel Pentium, 2 GB de RAM DDR3 a un súper precio', 10000, 1314),
(1317, 'Laptop Gamer', 'La mejor opción para gastarte el equivalente a un auto decente', 200000, 1314),
(2001, 'Mobil5W30', 'Aceite Mobil para Motor a Gasolina SAE 5W30', 95, 1),
(2002, 'Mobil10W30', 'Aceite Mobil para Motor a Gasolina SAE 10W30', 95, 1),
(2003, 'F-41A00', 'Filtro de Aire Cartek para TSURU III Tapa roja', 126, 3),
(2004, '7153', 'Foco Doble Polo pata dispareja Blanco', 25, 2),
(2005, 'FGI-19', 'Filtro Gasolina Chevrolet doble rosca', 75, 3),
(2011, 'Flaxendol', 'Naproxeno sodico de 550mg con 12 tabletas', 32.5, 2004),
(2012, 'Omeprazol', 'Omeprazol de 20mg con 30 cápsulas', 15.6, 2004),
(2013, 'Rivotril', 'Clonazepam 2mg con 30 tabletas', 589, 2004),
(2014, 'Old Spice', 'Old Spice fresh de barra con 50g', 55, 2005),
(2015, 'Ponds', 'Crema ponds Clarant B3 200g', 107, 2005),
(2016, 'Iphone 11', '1 pieza', 21000, 1),
(2017, 'Macbook', '1 pieza', 24999, 2),
(2018, 'freebuds', '2 piezas', 5000, 1),
(2019, 'Cargador Iphone 11', '1 piezas', 599, 1),
(2020, 'airpods', '1 piezas', 2499, 1),
(2021, 'Iphone X', '1 piezas', 10000, 1),
(2022, 'escoba ', 'pelo de angel', 42, 5001),
(5000, 'Iphone 12', '1 pieza', 21000, 5006),
(5001, 'Macbook', '1 pieza', 24999, 5007),
(5002, 'airpods', '2 piezas', 5000, 5006),
(5003, 'Cargador Iphone 12', '1 piezas', 599, 5006),
(5004, 'airpods', '1 piezas', 2499, 5006),
(5005, 'Iphone X', '1 piezas', 10000, 5006),
(5941, 'Doritos', 'Doritos nacho 60 gr.', 11, 6931),
(5942, 'Oikos', 'Yoghurt griego', 15.5, 6932),
(5943, 'Sello Rojo 1', 'Leche descremada de un litro', 15, 6932),
(5944, 'Sabritas', 'Papas fritas 60 gr.', 12, 6931),
(5945, 'Cheetos', 'Cheetos naranjas 50 gr.', 10, 6931),
(7000, 'Manzana', 'Una Manzana', 2.7, 1),
(7001, 'Pera', 'Una Pera', 1.9, 1),
(7002, 'Plátano', 'Un Plátano', 2.8, 1),
(7003, 'Brócoli', 'Un Brócoli', 1.1, 2),
(7004, 'Calabaza', 'Una Calabaza', 0.9, 2),
(7005, 'balon de futbol', '1 pieza', 90, 7002),
(7006, 'pan', '8 piezas', 32, 5),
(7007, 'maquillaje', '1 pieza', 360, 302),
(7008, 'Television', '1 pieza', 4599, 305),
(7009, 'Paquete de galletas OREO', '1 pieza', 80, 5),
(7010, 'manzanas', '1 kilo', 30, 7000),
(7011, 'timbres ', '1 pieza', 2, 5011),
(7012, 'PC de escritorio', '1 pieza', 15000, 5012),
(7013, 'pizza fud pepperoni', 'pizza fud 1 pieza', 35, 7003),
(7014, 'desodorante axe wild', 'desodorante en aerosol axe 162ml', 23, 7004),
(7015, 'pan bimbo hamburguesa', 'pan bimbo para hamburguesas 8 piezas 450g', 50, 7003),
(7016, 'enjuague bucal colgate', 'enjuague bucal colgate plax ice infinity 1lt', 56, 7004),
(7017, 'frituras sabritas fritos', 'bolsa de frituras sabritas fritos 57g', 12, 7003),
(7018, 'Nintendo Switch', 'Nintendo Consola Switch Neon 32GB Version 1.1 - Standard Edition', 8890, 7007),
(7019, 'Aderogyl', '5 Ampolletas de 3ml, Vitaminas en Solución para la Prevención y el Tratamiento de la Gripe', 114, 7008),
(7020, 'LUTEMA', 'Cubre Bocas Quirúrgico Desechables de 3 Capas Conformado de Tela y Filtro Mascarillas Protectoras', 345, 7008),
(7021, 'Xiaomi Mi Band 4', 'Pantalla AMOLED a color, sensor de 6 ejes', 507.01, 7007),
(7022, 'Men Speed Stick', 'Antitranspirante speed stick stain guard clean en barra para caballero 50 g', 35, 7008),
(7023, 'Crema Lubridem', 'Crema para piel normal - Extra humectante', 56, 4),
(7024, 'Guitarra Fender', 'Guitarra Fender CC-60SCE Negra - ELECTRO ACÚSTICA', 5490, 7009),
(7025, 'Piano Yamaha', ' Piano - Yamaha P125WHSET - Blanco', 19799, 7009),
(7026, 'Amplificador Fender', 'Amplificador Fender Acoustasonic 40 2314200000', 4050, 7009),
(7027, 'Atril Guitarra', 'Atril para guitarra acústica 0991812000', 290, 7009),
(7028, 'Computadora Asus', 'Mas chido que razer', 200, 1),
(7029, 'Monitor BT2', 'Mucha calidad', 500, 1),
(7030, 'Audifonos Kraken', 'Asus apesta', 200, 2),
(7031, 'Microfono Sylc', 'Para los ASMR', 120, 2),
(7032, 'Bocinas Gringas', 'I don\'t speak taco', 20, 2),
(7033, 'cuchara bolsa', 'Bolsa con 20 cucharas plasticas', 10, 10),
(7034, 'tenedor bolsa', 'Bolsa con 20 tenedores plasticos', 10, 10),
(7035, 'cuchillo bolsa', 'Bolsa con 20 cuchillos plasticos', 10, 10),
(7036, 'vaso bolsa', 'Bolsa con 20 vasos plasticos transparentes', 15, 10),
(7037, 'vaso termico bolsa', 'Bolsa con 20 vasos termicos', 20, 10),
(7038, 'plato bolsa', 'Bolsa con 20 platos extendidos', 20, 10),
(9000, 'labial', '1 pieza', 90, 1),
(9001, 'Lomo', '8 piezas', 32, 4),
(9002, 'maquillaje', '1 pieza', 360, 5),
(9003, 'Television', '1 pieza', 4599, 2),
(9004, 'Paquete de galletas Principe', '1 pieza', 80, 4),
(9005, 'manzanas', '1 kilo', 30, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `idprovider` int NOT NULL,
  `peoplecode` int NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`idprovider`, `peoplecode`, `note`) VALUES
(29, 29, 'Vende buen cristal'),
(30, 30, 'Surte mazapanes'),
(31, 2, NULL),
(32, 3, NULL),
(33, 15, 'Alguna nota de proveedores'),
(34, 14, 'Alguna nota de proveedores pero en otro'),
(35, 35, 'surte el pan'),
(36, 36, 'surte el aceite'),
(43, 43, 'Trae los mejores televisores Calidad-Precio'),
(44, 44, 'Las laptops duran más de un año, traen garantía'),
(303, 303, 'pedro no trae nada, ni flow ni tazos'),
(304, 304, 'Vender esta sobrevalorado cuando salvan al mundo'),
(305, 310, NULL),
(306, 312, NULL),
(307, 54, 'PROVEEDOR ATENTO'),
(308, 55, 'NO VIENE MUY SEGUIDO'),
(309, 1, 'Se ha vendido un Iphone'),
(313, 313, 'Trajo 200 piezas de pan'),
(315, 315, 'Ingreso con 500 maquillajes'),
(503, 503, 'Provee los lapices en paquetes'),
(504, 504, 'Provee los copics en diferentes presentaciones'),
(1003, 1003, 'Proveedora de fruteria'),
(1004, 1004, 'Provedora de Marinela'),
(2001, 2004, 'Aceite Mobil'),
(2002, 2005, 'Mayasa'),
(2003, 49, 'Proveedor de farmacos'),
(2004, 50, 'Proveedor de salud y belleza'),
(2005, 5005, 'CAMBIO DE CELULARES A EMPLEADOS'),
(5006, 5006, 'Vendio un espacio en la nube de Aple'),
(5007, 5007, 'Pasaporte a Westeros aceptado'),
(5014, 5014, 'cualquier cosa'),
(5015, 5015, 'vender cuerpo'),
(7000, 7003, NULL),
(7001, 7004, NULL),
(92754, 92754, 'PROVEEDOR #1'),
(92755, 92755, 'PROVEEDOR #2'),
(92756, 92757, 'comida rapida'),
(92757, 92758, 'productos de higiene'),
(92758, 92770, 'Electrinico de marcas reconocidas internacionalmente'),
(92759, 92771, 'Medicamentos y productos de cuidado para la salud de calidad'),
(92760, 92765, 'Instrumentos musicales'),
(92761, 92766, 'Gadgets para elaboración y producción de música'),
(92764, 92784, 'Alburea chido'),
(92765, 92785, 'Pistea como albañil'),
(92766, 9005, '200 lapices 2B'),
(92767, 9000, '50 sombras maquillaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `idventa` int NOT NULL,
  `idticket` int NOT NULL,
  `datein` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `quantity` float NOT NULL,
  `product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`idventa`, `idticket`, `datein`, `price`, `quantity`, `product`) VALUES
(1, 1, '2020-10-22 19:54:20', 999, 1, 1),
(2, 1, '2020-10-22 19:54:20', 1999, 1, 2),
(3, 1, '2020-10-22 19:54:20', 1500, 1, 3),
(4, 2, '2020-10-22 19:54:20', 12999, 1, 5),
(5, 2, '2020-10-22 19:54:20', 11999, 1, 4),
(6, 2, '2020-10-22 19:54:20', 12999, 1, 5),
(7, 1, '2020-10-22 20:25:29', 35, 3, 1),
(8, 1, '2020-10-22 20:25:29', 23, 1, 2),
(9, 1, '2020-10-22 20:25:29', 56, 1, 4),
(10, 2, '2020-10-22 20:25:29', 50, 80, 3),
(11, 2, '2020-10-22 20:25:29', 56, 63, 4),
(12, 2, '2020-10-22 20:25:29', 12, 251, 5),
(13, 305, '2020-10-22 22:01:23', 100, 2, 310),
(14, 305, '2020-10-22 22:01:23', 500, 1, 312),
(15, 305, '2020-10-22 22:01:23', 150, 1, 311),
(16, 306, '2020-10-22 22:01:23', 120, 1, 313),
(17, 306, '2020-10-22 22:01:23', 100, 1, 314),
(18, 306, '2020-10-22 22:01:23', 150, 1, 311),
(19, 1, '2020-10-22 22:02:18', 21000, 1, 1),
(20, 1, '2020-10-22 22:02:18', 24999, 1, 2),
(21, 1, '2020-10-22 22:02:18', 5000, 2, 3),
(22, 2, '2020-10-22 22:02:18', 599, 1, 4),
(23, 2, '2020-10-22 22:02:18', 2499, 1, 5),
(24, 2, '2020-10-22 22:02:18', 10000, 1, 6),
(25, 313, '2020-10-22 22:14:22', 35.5, 1, 309),
(26, 312, '2020-10-22 22:14:22', 120, 3, 307),
(1666, 889, '2020-10-26 12:01:23', 200, 1, 1),
(2001, 2001, '2020-10-22 22:33:27', 380, 4, 1),
(2002, 2001, '2020-10-22 22:33:27', 126, 1, 3),
(2003, 2001, '2020-10-22 22:33:27', 95, 1, 2),
(2004, 2002, '2020-10-22 22:33:27', 475, 5, 2),
(2005, 2002, '2020-10-22 22:33:27', 126, 1, 5),
(2006, 2002, '2020-10-22 22:33:27', 50, 2, 4),
(2666, 889, '2020-10-26 12:01:23', 500, 1, 2),
(3666, 889, '2020-10-26 12:01:23', 200, 1, 3),
(4666, 998, '2020-10-26 12:01:23', 20, 1, 5),
(5666, 998, '2020-10-26 12:01:23', 120, 1, 4),
(6666, 998, '2020-10-26 12:01:23', 200, 1, 3),
(7000, 7000, '2020-10-22 23:45:23', 2.7, 4, 7000),
(7001, 7000, '2020-10-22 23:45:23', 1.9, 3, 7001),
(7002, 7000, '2020-10-22 23:45:23', 2.8, 2, 7002),
(7003, 7001, '2020-10-22 23:45:23', 1.1, 5, 7003),
(7004, 7001, '2020-10-22 23:45:23', 0.9, 1, 7004),
(7005, 7001, '2020-10-22 23:45:23', 2.7, 1, 7000),
(93611, 1595, '2020-10-23 00:07:11', 33, 3, 5941),
(93612, 1595, '2020-10-23 00:07:11', 24, 2, 5944),
(93613, 1596, '2020-10-23 00:07:11', 31, 2, 5942);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `idticket` int NOT NULL,
  `iduser` int NOT NULL,
  `codeclient` int NOT NULL,
  `saledate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymenttype` enum('CASH','CREDITCARD','CHECK','DEBIT CARD','TRANSFERENCE') NOT NULL,
  `deliverydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`idticket`, `iduser`, `codeclient`, `saledate`, `paymenttype`, `deliverydate`) VALUES
(1, 1, 29, '2020-10-22 19:54:17', 'CASH', '2020-10-22'),
(2, 2, 30, '2020-10-22 19:54:17', 'CHECK', '2020-10-22'),
(19, 10, 35, '2020-10-22 20:43:02', 'CASH', '2020-10-12'),
(20, 11, 36, '2020-10-22 20:43:02', 'CREDITCARD', '2020-09-12'),
(25, 6, 37, '2020-10-22 20:51:10', 'CASH', '2020-10-22'),
(26, 7, 38, '2020-10-22 20:51:10', 'CREDITCARD', '2020-10-22'),
(300, 300, 303, '2020-10-22 20:57:23', 'CASH', '2020-10-21'),
(301, 301, 304, '2020-10-22 20:57:23', 'CHECK', '2020-10-21'),
(305, 304, 307, '2020-10-22 22:01:23', 'CASH', '2020-10-26'),
(306, 305, 308, '2020-10-22 22:01:23', 'CHECK', '2020-11-08'),
(312, 303, 306, '2020-10-22 22:03:32', 'CREDITCARD', '2020-01-31'),
(313, 302, 305, '2020-10-22 22:03:32', 'DEBIT CARD', '2020-01-18'),
(889, 777, 503, '2020-10-04 00:00:00', 'CASH', '2020-10-21'),
(998, 888, 504, '2020-10-04 00:00:00', 'CHECK', '2020-10-21'),
(1000, 7359, 5008, '2020-10-23 00:41:00', 'DEBIT CARD', '2020-10-20'),
(1001, 7360, 5009, '2020-10-23 00:44:28', 'TRANSFERENCE', '0000-00-00'),
(1313, 7372, 7949, '2020-10-24 23:25:32', 'CASH', '2020-10-22'),
(1314, 7373, 7950, '2020-10-24 23:25:32', 'CHECK', '2020-10-22'),
(1595, 7355, 7941, '2020-10-23 00:03:51', 'CASH', '2020-10-25'),
(1596, 7356, 7942, '2020-10-23 00:03:51', 'CREDITCARD', '2020-10-29'),
(2001, 2001, 2001, '2020-10-22 22:32:17', 'TRANSFERENCE', '2020-11-01'),
(2002, 2002, 2002, '2020-10-22 22:32:17', 'CASH', '2020-10-22'),
(2003, 2003, 2003, '2020-10-22 22:52:27', 'CASH', '2020-10-22'),
(2004, 2004, 2004, '2020-10-22 22:52:27', 'CHECK', '2020-10-22'),
(7000, 7000, 7000, '2020-10-22 23:44:40', 'CASH', '2020-10-22'),
(7001, 7001, 7001, '2020-10-22 23:44:40', 'CREDITCARD', '2020-10-22'),
(7004, 7357, 313, '2020-10-23 00:37:33', 'CREDITCARD', '2020-12-25'),
(7005, 7358, 315, '2020-10-23 00:37:33', 'CHECK', '2020-10-31'),
(7006, 7361, 5012, '2020-10-23 00:40:30', 'CASH', '2020-12-31'),
(7007, 7362, 5011, '2020-10-23 00:40:30', 'CREDITCARD', '2020-12-24'),
(7008, 7363, 7943, '2020-10-23 01:59:54', 'CASH', '2020-10-23'),
(7009, 7364, 7944, '2020-10-23 01:59:54', 'TRANSFERENCE', '2020-11-01'),
(7010, 7370, 7945, '2020-10-21 22:30:00', 'CASH', '2020-10-21'),
(7011, 7371, 7946, '2020-08-12 10:25:12', 'CREDITCARD', '2020-10-23'),
(7026, 7374, 7953, '2020-10-26 02:06:10', 'CASH', '2020-10-21'),
(7027, 7375, 7954, '2020-10-26 02:06:10', 'CHECK', '2020-10-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usersys`
--

CREATE TABLE `usersys` (
  `userid` int NOT NULL,
  `empcode` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `datein` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='System Users\n';

--
-- Volcado de datos para la tabla `usersys`
--

INSERT INTO `usersys` (`userid`, `empcode`, `username`, `password`, `datein`) VALUES
(1, 5, 'Thor-tas', 'Tor', '2020-10-22 19:54:16'),
(2, 6, 'Rambo', 'Rambo5', '2020-10-22 19:54:16'),
(3, 1, 'moises', 'abe6729cf4a6bd2d81ef0bcdcbeb18c9f4396b8c', '2020-10-22 20:20:37'),
(4, 3, 'margorie', 'bouvie', '2020-10-22 20:20:37'),
(6, 1001, 'fer123', 'e1ffc21bf282d299f13c6a67e7f86ae7d833c680', '2020-10-22 20:22:07'),
(7, 1002, 'jhon321', '05f1c8141122b1d5cc21a995ed28fd9091fbb53e', '2020-10-22 20:22:07'),
(9, 22, 'scasillas', '8a23ec4296f7f85cb333cb5bdb6978581b4985d5', '2020-10-22 20:24:36'),
(10, 8, 'AdrianS', '98e3320f47231c69d18b31737baaac425aea7b76', '2020-10-22 20:26:52'),
(11, 9, 'EduardoS', '67d33b2d86622d9445d9ed6196b64401030a61ac', '2020-10-22 20:26:52'),
(12, 206618189, 'TdarkONE', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0', '2020-10-22 20:31:33'),
(300, 300, 'JonyX31', '1b4273a11ec4efea012ddc97669d40b5', '2020-10-22 20:48:17'),
(301, 301, 'Ritobaba', 'af7de8294422595e372cc53d3d01ab63', '2020-10-22 20:48:17'),
(302, 53, 'CAROLINA1', '123456', '2020-10-22 21:46:05'),
(303, 54, 'CAROLINA2', '987654', '2020-10-22 21:46:05'),
(304, 659, 'orfatima', '820cee3d9d0b5eee15016c7c6812fd0c899128ae', '2020-10-22 22:01:23'),
(305, 660, 'eltobias', 'b376a936897571eccd3c598f6a3dca7026f0afec', '2020-10-22 22:01:23'),
(306, 2, 'Aidee', 'contraseña', '2020-10-22 22:02:13'),
(308, 308, 'scasillas', '8a23ec4296f7f85cb333cb5bdb6978581b4985d5', '2020-10-22 22:23:41'),
(777, 1120, 'ValDB', 'notapassword1', '2020-10-26 11:57:29'),
(888, 1121, 'Rauuul', 'Eldelosmichis', '2020-10-26 11:57:29'),
(1000, 3000, 'RamónUser', 'b8cd2126ec2a99177033b772bfb045346177f3c9', '2020-10-22 23:06:05'),
(1002, 3002, 'ChrisUser', '426566b247304388267c3be9bd4699b0a816cfba', '2020-10-22 23:06:05'),
(2001, 2001, 'NelsonIslas', '123456789', '2020-10-22 22:31:06'),
(2002, 2002, 'LizbethMartin', '123456789', '2020-10-22 22:31:06'),
(2003, 31, 'RicardoMilos', 'a23ff8784cfe3f858a07b2cdeb25cbd27aa99808', '2020-10-22 00:00:00'),
(2004, 32, 'NachoLibre', '41ff354b2b330bd1f8a0587675e43cb32a731f33', '2020-10-22 00:00:00'),
(2013, 5000, 'jackeline', 'jackeline215392851', '2020-10-22 22:58:42'),
(2014, 5001, 'Ramon', 'Ramon3481234986', '2020-10-22 22:58:42'),
(2015, 7777, 'Jose', '8cb2237d0679ca88db6464eac60da96345513964', '2020-10-22 22:58:47'),
(2016, 7778, 'Myrella', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-10-22 22:58:47'),
(7000, 7000, 'kevin-olm', '011c945f30ce2cbafc452f39840f025693339c42', '2020-10-22 23:38:24'),
(7001, 7001, 'MaquinaDeFuego', 'fea7f657f56a2a448da7d4b535ee5e279caf3d9a', '2020-10-22 23:38:24'),
(7355, 1123, 'Ramon_PS', 'a96cd6aa4ffb61f3dc9545055a9ed47aa0cf15f3', '2020-10-22 23:40:46'),
(7356, 1125, 'Nicolas_FS', 'f949176607cbb555237a39f6b67491570faf78e3', '2020-10-22 23:40:46'),
(7357, 314, 'javierperez', 'a140051f025be917def4248d58fb7b2029615470', '2020-10-22 23:56:46'),
(7358, 316, 'melaniecarry', '5023693737038ba52ecede73e5124c95a99732de', '2020-10-22 23:56:46'),
(7359, 5006, 'Moises', '8c31b65bdecdc9f18b695d7318186fd1feed690d', '2020-10-23 00:00:33'),
(7360, 5007, 'Myrcella', 'bbfa5f3209935b2be44698c2319a29e67c5b107f', '2020-10-23 00:00:33'),
(7361, 5011, 'nahum_enr', 'e516f979536994a14d9b0500bca3a1287b9ea9fe', '2020-10-23 00:04:46'),
(7362, 5013, 'Jonathan', '52370ff326a3339e9ebd611d1cdee0e7605100da', '2020-10-23 00:04:46'),
(7363, 11, 'vaneiñiguez', '98e3320f47231c69d18b31737baaac425aea7b76', '2020-10-23 01:43:58'),
(7364, 12, 'kdcobain', '67d33b2d86622d9445d9ed6196b64401030a61ac', '2020-10-23 01:43:58'),
(7365, 40, 'gfranco', '9dfd74d712bced064645c7c31faca59ca5b871b9', '2020-10-23 17:13:52'),
(7366, 41, 'jfranco', 'ab473baf4c92bc015206217b81839e30c0c37b90', '2020-10-23 17:13:52'),
(7367, 42, 'gbecerra', '93b03506888b899187316c087d1056f29ed4258e', '2020-10-23 17:13:52'),
(7368, 43, 'jbecerra', 'eadb63cd2b9a4b77f4b89e464d227bd09880b88c', '2020-10-23 17:13:52'),
(7369, 44, 'josuefb', '36fd6f3f797cb6f3dc3bb67ca1df961e5475e7dc', '2020-10-23 17:13:55'),
(7370, 15000, 'LYMM', 'lymm', '2020-02-22 13:30:00'),
(7371, 15001, 'MarioCN', 'Cantinflas', '2009-06-14 12:00:00'),
(7372, 10100, 'Chiquilin', 'chiquilin12345', '2020-10-24 22:12:29'),
(7373, 11100, 'Edgar Alejandro', 'contraseña', '2020-10-24 22:12:29'),
(7374, 550, 'jighme', '0e12db18af36b58c8ad957f5b1de946df0c1492d', '2020-10-26 01:38:36'),
(7375, 551, 'Cochiloco', 'e5d0861e2b5ac243a523a15708424a7fafbf125a', '2020-10-26 01:38:36'),
(7376, 16, 'BREA', 'd9a3643f4d5ffb25a0714f3c1d16ee6679ef0e2e', '2020-10-26 03:31:38'),
(7377, 9000, 'jackybm', 'mercadito', '2020-10-26 04:59:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `idwh` int NOT NULL,
  `product` int NOT NULL,
  `quantity` float NOT NULL,
  `datein` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expdate` date NOT NULL,
  `provider` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`name`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idclients`),
  ADD UNIQUE KEY `peoplecode_UNIQUE` (`peoplecode`),
  ADD KEY `fk_personas_cliente_idx` (`peoplecode`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idemp`),
  ADD UNIQUE KEY `peoplecode_UNIQUE` (`peoplecode`),
  ADD KEY `fk_persona_emp_idx` (`peoplecode`);

--
-- Indices de la tabla `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`idmail`),
  ADD UNIQUE KEY `correo_UNIQUE` (`mail`),
  ADD KEY `fk_personas_correos_idx` (`peoplecode`);

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`code`);

--
-- Indices de la tabla `people_has_phone`
--
ALTER TABLE `people_has_phone`
  ADD PRIMARY KEY (`people_code`,`phone_idphone`),
  ADD KEY `fk_people_has_phone_phone1_idx` (`phone_idphone`),
  ADD KEY `fk_people_has_phone_people1_idx` (`people_code`);

--
-- Indices de la tabla `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`idphone`),
  ADD UNIQUE KEY `telefono_UNIQUE` (`phone`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`code`),
  ADD KEY `fk_prod_cat_idx` (`category`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`idprovider`) USING BTREE,
  ADD UNIQUE KEY `peoplecode_UNIQUE` (`peoplecode`) USING BTREE;

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_prod_ventas_idx` (`product`),
  ADD KEY `fk_ticket_ventas_idx` (`idticket`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`idticket`),
  ADD UNIQUE KEY `codeclient_UNIQUE` (`codeclient`),
  ADD UNIQUE KEY `iduser_UNIQUE` (`iduser`),
  ADD KEY `fk_tickets_usersys_idx` (`iduser`),
  ADD KEY `fk_tickets_clientes_idx` (`codeclient`);

--
-- Indices de la tabla `usersys`
--
ALTER TABLE `usersys`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `empcode_UNIQUE` (`empcode`),
  ADD KEY `fk_usersys_emp_idx` (`empcode`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`idwh`),
  ADD KEY `fk_prod_almacen_idx` (`product`),
  ADD KEY `fk_provider_wh_idx` (`provider`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9004;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `idclients` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7963;

--
-- AUTO_INCREMENT de la tabla `mail`
--
ALTER TABLE `mail`
  MODIFY `idmail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9006;

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92791;

--
-- AUTO_INCREMENT de la tabla `phone`
--
ALTER TABLE `phone`
  MODIFY `idphone` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123507;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9006;

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `idprovider` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92768;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `idventa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93620;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `idticket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7028;

--
-- AUTO_INCREMENT de la tabla `usersys`
--
ALTER TABLE `usersys`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7379;

--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `idwh` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_people_clients` FOREIGN KEY (`peoplecode`) REFERENCES `people` (`code`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_persona_emp` FOREIGN KEY (`peoplecode`) REFERENCES `people` (`code`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `fk_personas_correos` FOREIGN KEY (`peoplecode`) REFERENCES `people` (`code`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `people_has_phone`
--
ALTER TABLE `people_has_phone`
  ADD CONSTRAINT `fk_people_has_phone_people1` FOREIGN KEY (`people_code`) REFERENCES `people` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_people_has_phone_phone1` FOREIGN KEY (`phone_idphone`) REFERENCES `phone` (`idphone`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_prod_cat` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `fk_people_provider` FOREIGN KEY (`peoplecode`) REFERENCES `people` (`code`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_prod_sales` FOREIGN KEY (`product`) REFERENCES `products` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_sales` FOREIGN KEY (`idticket`) REFERENCES `tickets` (`idticket`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_tickets_clients` FOREIGN KEY (`codeclient`) REFERENCES `clients` (`idclients`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_usersys` FOREIGN KEY (`iduser`) REFERENCES `usersys` (`userid`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usersys`
--
ALTER TABLE `usersys`
  ADD CONSTRAINT `fk_usersys_emp` FOREIGN KEY (`empcode`) REFERENCES `employees` (`idemp`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `fk_prod_wh` FOREIGN KEY (`product`) REFERENCES `products` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_provider_wh` FOREIGN KEY (`provider`) REFERENCES `provider` (`idprovider`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */