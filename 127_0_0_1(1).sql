-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 08:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chepp`
--
DROP DATABASE IF EXISTS `chepp`;
CREATE DATABASE IF NOT EXISTS `chepp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chepp`;

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

DROP TABLE IF EXISTS `sheet1`;
CREATE TABLE `sheet1` (
  `number` int(3) DEFAULT NULL,
  `symbol` varchar(3) DEFAULT NULL,
  `group_new` varchar(11) DEFAULT NULL,
  `group_old` varchar(11) DEFAULT NULL,
  `period` int(1) DEFAULT NULL,
  `en_name` varchar(13) DEFAULT NULL,
  `atomic_mass` decimal(6,3) DEFAULT NULL,
  `mp` decimal(6,2) DEFAULT NULL,
  `bp` decimal(5,1) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `density` decimal(9,7) DEFAULT NULL,
  `en` decimal(3,2) DEFAULT NULL,
  `iev1` decimal(6,4) DEFAULT NULL,
  `iev2` varchar(5) DEFAULT NULL,
  `iev3` decimal(6,3) DEFAULT NULL,
  `ie1` varchar(4) DEFAULT NULL,
  `ie2` varchar(4) DEFAULT NULL,
  `ie3` varchar(5) DEFAULT NULL,
  `eav` varchar(3) DEFAULT NULL,
  `ea` varchar(3) DEFAULT NULL,
  `cos` varchar(10) DEFAULT NULL,
  `pec` varchar(22) DEFAULT NULL,
  `oec` varchar(22) DEFAULT NULL,
  `ar` varchar(3) DEFAULT NULL,
  `ir` varchar(3) DEFAULT NULL,
  `cr` varchar(3) DEFAULT NULL,
  `arpm` decimal(4,1) DEFAULT NULL,
  `avpm` varchar(4) DEFAULT NULL,
  `crystal` varchar(20) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `characteristics` varchar(25) DEFAULT NULL,
  `uses` varchar(26) DEFAULT NULL,
  `polarizability` decimal(5,3) DEFAULT NULL,
  `heat_atomization` int(3) DEFAULT NULL,
  `year_discovered` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`number`, `symbol`, `group_new`, `group_old`, `period`, `en_name`, `atomic_mass`, `mp`, `bp`, `state`, `density`, `en`, `iev1`, `iev2`, `iev3`, `ie1`, `ie2`, `ie3`, `eav`, `ea`, `cos`, `pec`, `oec`, `ar`, `ir`, `cr`, `arpm`, `avpm`, `crystal`, `color`, `characteristics`, `uses`, `polarizability`, `heat_atomization`, `year_discovered`) VALUES
(1, 'H', '1', 'I A', 1, 'hydrogen', '1.008', '-259.10', '-252.9', 'g', '0.0000699', '2.20', '13.5984', '', NULL, '1312', '', '', '0.7', '72', '±1', '1s1', '1s1', '0.7', '1.5', '0.3', '37.1', '14.4', 'hexagonal', 'colorless', 'diatomic,dens<air at r.t.', 'rocket fuel', '0.700', 218, 1766),
(2, 'He', '18', 'VIII A', 1, 'helium', '4.003', '-272.20', '-268.9', 'g', '0.0001790', NULL, '24.5874', '54.41', NULL, '2372', '5250', '', '<0', '<0', '0', '1s2', '1s2', '0.4', '', '0.9', '31.0', '19.5', 'hexagonal', 'colorless', 'Inert, dens<air at r.t.', 'cryogenics, blimps', '0.198', 0, 1895),
(3, 'Li', '1', 'I A', 2, 'lithium', '6.941', '180.50', '1342.0', 's', '0.5430000', '0.98', '5.3917', '76.63', '122.451', '520', '7394', '11815', '0.6', '60', '+1', '[He] 2s1', '[He] 2s1', '2.0', '0.7', '1.2', '152.0', '13.1', 'cubic: body centered', 'silvery', 'soft, lightest solid', 'batteries, lubricant', '24.300', 161, 1817),
(4, 'Be', '2', 'II A', 2, 'beryllium', '9.012', '1278.00', '2970.0', 's', '1.8500000', '1.57', '9.3226', '18.21', '153.893', '899', '1757', '14848', '<0', '<0', '+2', '[He] 2s2', '[He] 2s2', '1.4', '0.4', '0.9', '112.0', '5', 'hexagonal', 'steel gray', 'toxic', 'Cu alloys, X-ray windows', '5.600', 324, 1797),
(5, 'B', '13', 'III A', 2, 'boron', '10.810', '2079.00', '2550.0', 's', '2.3400000', '2.04', '8.2980', '25.15', '37.930', '801', '2427', '3660', '0.2', '27', '+3', '[He] 2s2 2p1', '[He] 2s2 2p1', '1.1', '0.2', '0.8', '85.0', '4.6', 'rhombohedral', 'black', 'B12 icosahedra; 3 forms', 'borax, glass making(B2O3)', '3.000', 573, 1808),
(6, 'C', '14', 'IV A', 2, 'carbon', '12.010', '3367.00', '4827.0', 's', '2.2500000', '2.55', '11.2603', '24.38', '47.887', '1086', '2353', '4620', '1.2', '122', '±4', '[He] 2s2 2p2', '[He] 2s2 2p2', '0.9', '0.1', '0.7', '77.2', '4.58', 'hexagonal', 'black', '6 forms: graphite,diamond', 'fuel(coal), lubricant', '1.800', 717, NULL),
(7, 'N', '15', 'V A', 2, 'nitrogen', '14.010', '-209.90', '-195.8', 'g', '0.0012500', '3.04', '14.5341', '29.60', '47.448', '1402', '2856', '4578', '<0', '<0', '−3', '[He] 2s2 2p3', '[He] 2s2 2p3', '0.7', '1.7', '0.7', '70.0', '17.3', 'hexagonal', 'colorless', 'diatomic(N2)', 'fertilizer, cryogenics', '1.100', 473, 1772),
(8, 'O', '16', 'VI A', 2, 'oxygen', '16.000', '-218.40', '-183.0', 'g', '0.0014300', '3.44', '13.6181', '35.11', '54.934', '1314', '3388', '5300', '1.4', '141', '−2', '[He] 2s2 2p4', '[He] 2s2 2p4', '0.6', '1.4', '0.7', '73.0', '14', 'cubic', 'colorless', 'diatomic,2 forms: O2, O3', 'rocket fuel, steel mfr.', '0.793', 249, 1774),
(9, 'F', '17', 'VII A', 2, 'fluorine', '19.000', '-219.80', '-188.1', 'g', '0.0017000', '3.98', '17.4228', '34.97', '62.707', '1681', '3374', '6050', '3.4', '328', '−1', '[He] 2s2 2p5', '[He] 2s2 2p5', '0.5', '1.3', '0.7', '72.0', '12.6', 'cubic', 'colorless', 'diatomic(F2), corrosive', 'fluorocarbons, toothpaste', '0.634', 79, 1886),
(10, 'Ne', '18', 'VIII A', 2, 'neon', '20.180', '-248.00', '-248.7', 'g', '0.0009000', NULL, '21.5645', '40.96', '63.450', '2081', '3952', '6122', '<0', '<0', '0', '[He] 2s2 2p6', '[He] 2s2 2p6', '0.5', '', '0.7', '71.0', '17.3', 'cubic: face centered', 'colorless', 'Inert, dens<air at r.t.', 'Neon signs', '0.396', 0, 1898),
(11, 'Na', '1', 'I A', 3, 'sodium', '22.990', '97.80', '883.0', 's', '0.9710000', '0.93', '5.1391', '47.28', '71.641', '496', '4562', '6912', '0.5', '53', '+1', '[Ne] 3s1', '[Ne] 3s1', '2.2', '1.0', '1.5', '186.0', '23.7', 'cubic: body centered', 'silvery', 'soft', 'lamps, table salt', '23.600', 109, 1807),
(12, 'Mg', '2', 'II A', 3, 'magnesium', '24.310', '649.00', '1090.0', 's', '1.7400000', '1.31', '7.6462', '15.03', '80.143', '738', '1451', '7733', '<0', '<0', '+2', '[Ne] 3s2', '[Ne] 3s2', '1.7', '0.7', '1.3', '160.0', '13.9', 'hexagonal', 'silvery', 'burns brightly', 'alloys, flash bulbs', '10.600', 148, 1808),
(13, 'Al', '13', 'III A', 3, 'aluminum', '26.980', '660.00', '2467.0', 's', '2.7000000', '1.61', '5.9858', '18.82', '28.447', '578', '1817', '2745', '0.4', '42', '+3', '[Ne] 3s2 3p1', '[Ne] 3s2 3p1', '1.8', '0.5', '1.1', '143.0', '10', 'cubic: face centered', 'silvery', 'passivated: surface oxide', 'Al cans & foil,reflectors', '8.300', 326, 1825),
(14, 'Si', '14', 'IV A', 3, 'silicon', '28.090', '1410.00', '2355.0', 's', '2.3300000', '1.90', '8.1517', '16.34', '33.492', '787', '1577', '3231', '1.3', '134', '±4', '[Ne] 3s2 3p2', '[Ne] 3s2 3p2', '1.4', '0.2', '1.1', '117.6', '12.1', 'cubic: face centered', 'gray-black', 'semimetal', 'comp chip,lubricant,glass', '5.400', 452, 1824),
(15, 'P', '15', 'V A', 3, 'phosphorus', '30.970', '44.10', '280.0', 's', '1.8200000', '2.19', '10.4867', '19.72', '30.180', '1012', '1903', '2912', '0.7', '72', '−3', '[Ne] 3s2 3p3', '[Ne] 3s2 3p3', '1.2', '0.1', '1.0', '110.0', '17', 'monoclinic', 'white-yellow', '(P4) pyrophoric, 15 forms', 'fertilizer, detergents', '3.600', 315, 1669),
(16, 'S', '16', 'VI A', 3, 'sulfur', '32.070', '112.80', '444.7', 's', '2.0700000', '2.58', '10.3600', '23.33', '34.830', '1000', '2251', '3361', '2.0', '201', '−2', '[Ne] 3s2 3p4', '[Ne] 3s2 3p4', '1.0', '0.2', '1.0', '103.0', '15.5', 'orthorhombic', 'yellow(pale)', '(S8)brittle, 19 forms', 'rubber, batteries (H2SO4)', '2.900', 279, NULL),
(17, 'Cl', '17', 'VII A', 3, 'chlorine', '35.450', '-101.00', '-34.6', 'g', '0.0032100', '3.16', '12.9676', '23.81', '39.611', '1251', '2297', '3822', '3.6', '348', '−1', '[Ne] 3s2 3p5', '[Ne] 3s2 3p5', '0.9', '1.8', '0.9', '100.0', '16.9', 'orthorhombic', 'greenish-yellow', 'diatomic(Cl2), corrosive', 'bleach (NaOCl), PVC pipe', '2.200', 121, 1774),
(18, 'Ar', '18', 'VIII A', 3, 'argon', '39.950', '-189.20', '-185.7', 'g', '0.0017800', NULL, '15.7596', '27.62', '40.740', '1521', '2666', '3931', '<0', '<0', '0', '[Ne] 3s2 3p6', '[Ne] 3s2 3p6', '0.8', '', '0.9', '98.0', '23.9', 'cubic: face centered', 'colorless', 'Inert', 'lasers, light bulbs', '1.586', 0, 1894),
(19, 'K', '1', 'I A', 4, 'potassium', '39.100', '63.25', '760.0', 's', '0.8600000', '0.82', '4.3407', '31.62', '45.720', '419', '3051', '4411', '0.5', '48', '+1', '[Ar] 4s1', '[Ar] 4s1', '2.7', '1.5', '2.0', '227.0', '45.4', 'cubic: body centered', 'silvery-white', 'soft', 'fertilizer, low-Na salt', '43.400', 90, 1807),
(20, 'Ca', '2', 'II A', 4, 'calcium', '40.080', '839.00', '1484.0', 's', '1.5500000', '1.00', '6.1132', '11.87', '50.908', '590', '1145', '4912', '0.0', '4', '+2', '[Ar] 4s2', '[Ar] 4s2', '2.2', '1', '1.7', '197.0', '25.9', 'cubic: face centered', 'silvery-white', 'burns brightly', 'lime, cement', '22.800', 178, 1808),
(21, 'Sc', '3', 'III B', 4, 'scandium', '44.960', '1541.00', '2832.0', 's', '2.9900000', '1.36', '6.5614', '12.8', '24.760', '633', '1235', '2389', '0.1', '18', '+3', '[Ar] 4s2 3d1', '[Ar] 4s2 3d1', '2.0', '0.7', '1.4', '162.0', '15', 'hexagonal', 'silvery-white', 'soft', 'no significant uses', '17.800', 378, 1879),
(22, 'Ti', '4', 'IV B', 4, 'titanium', '47.870', '1660.00', '3287.0', 's', '4.5400000', '1.54', '6.8282', '13.58', '27.491', '659', '1310', '2652', '0.0', '8', '+4,3,2', '[Ar] 4s2 3d2', '[Ar] 4s2 3d2', '2', '0.6', '1.3', '147.0', '10.6', 'hexagonal', 'gray', 'max strength/weight ratio', 'steel,white pigment(TiO2)', '14.600', 470, 1791),
(23, 'V', '5', 'V B', 4, 'vanadium', '50.940', '1890.00', '3380.0', 's', '6.1100000', '1.63', '6.7463', '14.65', '29.310', '651', '1414', '2828', '0.5', '51', '+5,2,3,4', '[Ar] 4s2 3d3', '[Ar] 4s2 3d3', '1.9', '0.5', '1.2', '134.0', '8.78', 'cubic: body centered', 'bright white', 'soft', 'tool steel, V2O5 catalyst', '12.400', 514, 1830),
(24, 'Cr', '6', 'VI B', 4, 'chromium', '52.000', '1857.00', '2672.0', 's', '7.1900000', '1.66', '6.7666', '16.5', '30.960', '653', '1592', '2987', '0.6', '65', '+3,2,6', '[Ar] 4s2 3d4', '[Ar] 4s1 3d5', '1.8', '0.6', '1.1', '128.0', '7.23', 'cubic: body centered', 'silvery-white', 'hard', 'CrO2 tape, paint, steel', '11.600', 397, 1798),
(25, 'Mn', '7', 'VII B', 4, 'manganese', '54.940', '1244.00', '1962.0', 's', '7.4300000', '1.55', '7.4340', '15.64', '33.667', '717', '1509', '3248', '<0', '<0', '+2,3,4,6,7', '[Ar] 4s2 3d5', '[Ar] 4s2 3d5', '1.7', '0.6', '1.1', '127.0', '7.39', 'cubic: body centered', 'gray-white', 'hard, brittle', 'steel, dry cells(MnO2)', '9.400', 281, 1774),
(26, 'Fe', '8', 'VIII B', 4, 'iron', '55.850', '1535.00', '2750.0', 's', '7.8600000', '1.83', '7.9024', '16.18', '30.651', '762', '1561', '2957', '0.1', '15', '+3,2', '[Ar] 4s2 3d6', '[Ar] 4s2 3d6', '1.7', '0.5', '1.1', '126.0', '7.1', 'cubic: body centered', 'gray', 'fairly soft when pure', 'steel', '8.400', 418, NULL),
(27, 'Co', '9', 'VIII B', 4, 'cobalt', '58.930', '1495.00', '2870.0', 's', '8.9000000', '1.88', '7.8810', '17.06', '33.500', '760', '1646', '3232', '0.6', '64', '+2,3', '[Ar] 4s2 3d7', '[Ar] 4s2 3d7', '1.6', '0.6', '1.1', '125.0', '6.7', 'hexagonal', 'bluish-white', 'hard', 'magnets, Co glass (blue)', '7.500', 425, 1737),
(28, 'Ni', '10', 'VIII B', 4, 'nickel', '58.690', '1453.00', '2730.0', 's', '8.9000000', '1.91', '7.6398', '18.16', '35.170', '737', '1753', '3393', '1.1', '112', '+2,3', '[Ar] 4s2 3d8', '[Ar] 4s2 3d8', '1.6', '0.6', '1.1', '124.0', '6.59', 'cubic: face centered', 'silvery-white', 'hard, takes a high polish', 'alloys, coins, batteries', '6.800', 430, 1751),
(29, 'Cu', '11', 'I B', 4, 'copper', '63.550', '1083.00', '2567.0', 's', '8.9600000', '1.90', '7.7264', '20.29', '36.830', '745', '1958', '3554', '1.2', '120', '+2,1', '[Ar] 4s2 3d9', '[Ar] 4s1 3d10', '1.5', '0.7', '1.1', '128.0', '7.1', 'cubic: face centered', 'orange-red', 'soft, ductile', 'wire, bronze, coins', '6.700', 338, NULL),
(30, 'Zn', '12', 'II B', 4, 'zinc', '65.410', '419.60', '906.0', 's', '7.1300000', '1.65', '9.3941', '17.96', '39.722', '906', '1733', '3833', '<0', '<0', '+2', '[Ar] 4s2 3d10', '[Ar] 4s2 3d10', '1.5', '0.7', '1.2', '134.0', '9.2', 'hexagonal', 'silvery', 'brittle', 'batteries, galvanizing', '6.400', 131, 1600),
(31, 'Ga', '13', 'III A', 4, 'gallium', '69.720', '29.80', '2403.0', 's', '5.9000000', '1.81', '5.9993', '20.51', '30.710', '579', '1979', '2963', '0.3', '29', '+3', '[Ar] 4s2 3d10 4p1', '[Ar] 4s2 3d10 4p1', '1.8', '0.6', '1.2', '135.0', '11.8', 'orthorhombic', 'silvery-blue', 'melts near r.t.wets glass', 'photocells, transistors', '8.100', 286, 1875),
(32, 'Ge', '14', 'IV A', 4, 'germanium', '72.640', '947.40', '2830.0', 's', '5.3200000', '2.01', '7.9000', '15.93', '34.220', '762', '1537', '3302', '1.2', '119', '+4,2', '[Ar] 4s2 3d10 4p2', '[Ar] 4s2 3d10 4p2', '1.5', '0.5', '1.2', '122.3', '13.6', 'cubic: face centered', 'gray-black', 'semimetal, brittle', 'transistor, wide-ang lens', '6.100', 377, 1886),
(33, 'As', '15', 'V A', 4, 'arsenic', '74.920', '817.00', '617.0', 's', '5.7300000', '2.18', '9.8152', '18.63', '28.351', '947', '1798', '2735', '0.8', '78', '±3,+5', '[Ar] 4s2 3d10 4p3', '[Ar] 4s2 3d10 4p3', '1.3', '0.5', '1.2', '120.0', '13.1', 'rhombohedral', 'gray', 'semimetal,brittle,3 forms', 'photocells (GaAs), poisons', '4.300', 302, 1600),
(34, 'Se', '16', 'VI A', 4, 'selenium', '78.960', '217.00', '685.0', 's', '4.7900000', '2.55', '9.7524', '21.19', '30.820', '941', '2045', '2974', '2.0', '195', '+4,−2,+6', '[Ar] 4s2 3d10 4p4', '[Ar] 4s2 3d10 4p4', '1.2', '0.5', '1.1', '119.0', '16.4', 'hexagonal', 'black', '6 forms', 'Xerography, medicines', '3.800', 227, 1818),
(35, 'Br', '17', 'VII A', 4, 'bromine', '79.900', '-7.20', '58.8', 'l', '3.1200000', '2.96', '11.8138', '21.8', '36.000', '1140', '2103', '3473', '3.3', '324', '±1,+5', '[Ar] 4s2 3d10 4p5', '[Ar] 4s2 3d10 4p5', '1.1', '1.9', '1.1', '114.0', '25.6', 'orthorhombic', 'red-brown', 'diatomic,corrosive,liquid', 'pesticides,photography', '3.100', 112, 1826),
(36, 'Kr', '18', 'VIII A', 4, 'krypton', '83.800', '-157.00', '-152.0', 'g', '0.0037400', '3.00', '13.9996', '24.35', '36.950', '1351', '2350', '3565', '<0', '<0', '0', '[Ar] 4s2 3d10 4p6', '[Ar] 4s2 3d10 4p6', '1.0', '', '1.1', '112.0', '38.9', 'cubic: face centered', 'colorless', 'unreactive', 'lamps, UV-laser', '2.500', 0, 1898),
(37, 'Rb', '1', 'I A', 5, 'rubidium', '85.470', '38.90', '686.0', 's', '1.5300000', '0.82', '4.1771', '27.28', '40.000', '403', '2632', '3859', '0.4', '47', '+1', '[Kr] 5s2', '[Kr] 5s2', '2.9', '1.6', '2.1', '248.0', '55.9', 'cubic: body centered', 'silvery-white', 'soft', 'photocells', '47.300', 86, 1861),
(38, 'Sr', '2', 'II A', 5, 'strontium', '87.620', '769.00', '1384.0', 's', '2.5400000', '0.95', '5.6948', '11.03', '43.600', '549', '1064', '4207', '0.1', '11', '+2', '[Kr] 5s2', '[Kr] 5s2', '2.4', '1.2', '1.9', '215.0', '33.7', 'cubic: face centered', 'silvery', 'tarnishes', 'fireworks (red flame)', '27.600', 164, 1808),
(39, 'Y', '3', 'III B', 5, 'yttrium', '88.910', '1523.00', '3337.0', 's', '4.4700000', '1.22', '6.2170', '12.24', '20.520', '600', '1181', '1980', '0.3', '30', '+3', '[Kr] 5s2 4d1', '[Kr] 5s2 4d1', '2.2', '1.0', '1.6', '180.0', '19.8', 'hexagonal', 'silvery', 'forms protective oxide', 'YAG laser, TV phosphor', '22.700', 423, 1794),
(40, 'Zr', '4', 'IV B', 5, 'zirconium', '91.220', '1852.00', '4377.0', 's', '6.5100000', '1.33', '6.6339', '13.13', '22.990', '640', '1267', '2218', '0.4', '41', '+4', '[Kr] 5s2 4d2', '[Kr] 5s2 4d2', '2.1', '0.8', '1.4', '160.0', '14.1', 'hexagonal', 'grayish-white', 'hard, relatively inert', 'deodorants, fuel rod clad', '17.900', 609, 1789),
(41, 'Nb', '5', 'VI B', 5, 'niobium', '92.910', '2468.00', '4742.0', 's', '8.5700000', '1.60', '6.7589', '14.32', '25.040', '652', '1382', '2416', '0.9', '87', '+5,3', '[Kr] 5s2 4d3', '[Kr] 5s1 4d4', '2.0', '0.6', '1.6', '146.0', '10.8', 'cubic: body centered', 'silvery-white', 'soft', 'stainless steels, magnets', '15.700', 726, 1801),
(42, 'Mo', '6', 'VI B', 5, 'molybdenum', '95.940', '2617.00', '4612.0', 's', '10.2000000', '2.16', '7.0924', '16.46', '27.160', '684', '1588', '2621', '0.7', '72', '+6,3,5', '[Kr] 5s2 4d4', '[Kr] 5s1 4d5', '2.0', '0.5', '1.3', '139.0', '9.4', 'cubic: body centered', 'silvery-white', 'very hard', 'catalysts, tool steel', '12.800', 658, 1781),
(43, 'Tc', '7', 'VII B', 5, 'technetium', '98.000', '2172.00', '4877.0', 's', '11.5000000', '1.90', '7.2800', '15.26', '29.540', '702', '1472', '2850', '0.5', '53', '+7,4,6', '[Kr] 5s2 4d5', '[Kr] 5s2 4d5', '1.9', '', '1.2', '136.0', '8.5', 'hexagonal', 'silvery gray', 'Radioactive, man made', 'medical imaging agents', '11.400', 677, 1939),
(44, 'Ru', '8', 'VIII B', 5, 'ruthenium', '101.100', '2310.00', '3900.0', 's', '12.4000000', '2.20', '7.3605', '16.76', '28.470', '710', '1617', '2747', '1.0', '101', '+4,3,6,8', '[Kr] 5s2 4d6', '[Kr] 5s1 4d7', '1.8', '0.6', '1.2', '134.0', '8.3', 'hexagonal', 'silvery-white', 'hard', 'catalysts', '9.600', 643, 1844),
(45, 'Rh', '9', 'VIII B', 5, 'rhodium', '102.900', '1966.00', '3727.0', 's', '12.4000000', '2.28', '7.4589', '18.08', '31.060', '720', '1744', '2997', '1.1', '110', '+3,4,6', '[Kr] 5s2 4d7', '[Kr] 5s1 4d8', '1.8', '0.6', '1.2', '134.0', '8.3', 'cubic: face centered', 'silvery-white', 'forms hard coatings', 'catalysts, elec. contacts', '8.600', 556, 1803),
(46, 'Pd', '10', 'VIII B', 5, 'palladium', '106.400', '1554.00', '3140.0', 's', '12.0000000', '2.20', '8.3369', '19.63', '32.930', '804', '1894', '3177', '0.5', '54', '+2,4', '[Kr] 5s2 4d8', '[Kr] (5s0) 4d10', '1.7', '0.6', '1.2', '137.0', '8.9', 'cubic: face centered', 'silvery-white', 'absorbs H2', 'catalysts, dental crowns', '4.800', 378, 1803),
(47, 'Ag', '11', 'I B', 5, 'silver', '107.900', '962.00', '2212.0', 's', '10.5000000', '1.93', '7.5762', '21.49', '34.830', '731', '2073', '3361', '1.3', '125', '+1', '[Kr] 5s2 4d9', '[Kr] 5s1 4d10', '1.7', '1.1', '1.3', '144.0', '10.3', 'cubic: face centered', 'silvery', 'soft, ductile, tarnishes', 'film(AgBr),coins,jewelry', '7.900', 284, NULL),
(48, 'Cd', '12', 'II B', 5, 'cadmium', '112.400', '320.90', '765.0', 's', '8.6500000', '1.69', '8.9937', '16.90', '37.480', '868', '1631', '3616', '<0', '<0', '+2', '[Kr] 5s2 4d10', '[Kr] 5s2 4d10', '1.7', '0.9', '1.4', '151.0', '13.1', 'hexagonal', 'bluish-white', 'soft', 'battery,yel. pigment(CdS)', '7.200', 112, 1817),
(49, 'In', '13', 'III A', 5, 'indium', '114.800', '156.60', '2080.0', 's', '7.3100000', '1.78', '5.7864', '18.86', '28.030', '558', '1821', '2704', '0.3', '29', '+3', '[Kr] 5s2 4d10 5p1', '[Kr] 5s2 4d10 5p1', '2', '0.8', '1.4', '167.0', '15.7', 'tetragonal', 'silvery-white', 'soft', 'transistors, photocells', '9.700', 243, 1863),
(50, 'Sn', '14', 'IV A', 5, 'tin', '118.700', '232.00', '2270.0', 's', '7.3100000', '1.96', '7.3438', '14.63', '30.502', '709', '1412', '2943', '1.1', '107', '+4,2', '[Kr] 5s2 4d10 5p2', '[Kr] 5s2 4d10 5p2', '1.7', '0.7', '1.4', '140.5', '16.3', 'tetragonal', 'silvery-white', 'resists corrosion;2 forms', 'solder, pewter, bronze', '7.700', 302, NULL),
(51, 'Sb', '15', 'V A', 5, 'antimony', '121.800', '631.00', '1950.0', 's', '6.6900000', '2.05', '8.6400', '16.53', '25.300', '834', '1595', '2441', '1.0', '103', '+3,5', '[Kr] 5s2 4d10 5p3', '[Kr] 5s2 4d10 5p3', '1.5', '0.7', '1.4', '140.0', '18.2', 'rhombohedral', 'bluish-white', 'brittle; 5 forms', 'Pb alloy(battery), dyeing', '6.600', 262, 1600),
(52, 'Te', '16', 'VI A', 5, 'tellurium', '127.600', '449.50', '989.8', 's', '6.2400000', '2.10', '9.0096', '18.6', '27.960', '869', '1795', '2698', '1.9', '190', '+4,6,−2', '[Kr] 5s2 4d10 5p4', '[Kr] 5s2 4d10 5p4', '1.4', '0.9', '1.3', '142.0', '20.5', 'hexagonal', 'silvery', 'semimetal', 'semiconductors, steel', '5.500', 197, 1783),
(53, 'I', '17', 'VII A', 5, 'iodine', '126.900', '113.50', '184.0', 's', '4.9300000', '2.66', '10.4513', '19.13', '33.000', '1008', '1846', '3184', '3.0', '295', '−1,+5,7', '[Kr] 5s2 4d10 5p5', '[Kr] 5s2 4d10 5p5', '1.3', '2.2', '1.3', '133.0', '25.7', 'orthorhombic', 'bluish-black', 'diatomic', 'nutrient, antiseptic', '5.000', 107, 1811),
(54, 'Xe', '18', 'VIII A', 5, 'xenon', '131.300', '-111.80', '-107.1', 'g', '0.0058900', '2.60', '12.1299', '21.21', '32.100', '1170', '2046', '3097', '<0', '<0', '0', '[Kr] 5s2 4d10 5p6', '[Kr] 5s2 4d10 5p6', '1.2', '', '1.3', '131.0', '37.3', 'cubic: face centered', 'colorless', 'unreactive', 'UV-laser, hi intens lamps', '4.000', 0, 1898),
(55, 'Cs', '1', 'I A', 6, 'cesium', '132.900', '28.40', '669.0', 's', '1.8700000', '0.79', '3.8939', '25.1', NULL, '376', '2422', '', '0.4', '45', '+1', '[Xe] 6s1', '[Xe] 6s1', '3.3', '1.7', '2.3', '265.0', '71.0', 'cubic: body centered', 'yellow/silvery', 'softest metal', 'photocells, IR lamps', '59.600', 79, 1860),
(56, 'Ba', '2', 'II A', 6, 'barium', '137.300', '725.00', '1640.0', 's', '3.5000000', '0.89', '5.2117', '10.00', NULL, '503', '965', '', '0.1', '14', '+2', '[Xe] 6s2', '[Xe] 6s2', '2.7', '1.4', '1.9', '222.0', '39.2', 'cubic: body centered', 'silvery-white', 'soft', 'X-ray imaging agnt(BaSO4)', '39.700', 180, 1808),
(57, 'La', 'lanthanides', 'III B', 6, 'lanthanum', '138.900', '920.00', '3454.0', 's', '6.1500000', '1.10', '5.5770', '11.05', '19.174', '538', '1067', '1850', '0.5', '48', '+3', '[Xe] 6s2 4f1', '[Xe] 6s2 4f1', '2.7', '1.1', '1.6', '187.0', '20.7', 'hexagonal', 'silvery-white', 'soft, malleable', 'lighter flints, CRTs', '31.100', 423, 1839),
(58, 'Ce', 'lanthanides', 'lanthanides', 6, 'cerium', '140.100', '798.00', '3257.0', 's', '6.6600000', '1.12', '5.5387', '10.85', '20.200', '534', '1047', '1949', NULL, '', '+3,4', '[Xe] 6s2 4f2', '[Xe] 6s2 4f2', '2.7', '1.1', '1.6', '182.0', '20.6', 'cubic: face centered', 'silvery-white', 'malleable', 'self-cleaning ovens(CeO2)', '29.600', 419, 1803),
(59, 'Pr', 'lanthanides', 'lanthanides', 6, 'praseodymium', '140.900', '931.00', '3017.0', 's', '6.7700000', '1.13', '5.4640', '10.55', '21.620', '527', '1018', '2086', NULL, '', '+3,4', '[Xe] 6s2 4f3', '[Xe] 6s2 4f3', '2.6', '1.1', '1.6', '182.0', '20.8', 'hexagonal', 'silvery-white', 'soft', 'alloys, Welder\'s mask', '28.200', 356, 1885),
(60, 'Nd', 'lanthanides', 'lanthanides', 6, 'neodymium', '144.200', '1016.00', '3127.0', 's', '7.0000000', '1.14', '5.5250', '10.72', '22.076', '533', '1035', '2130', NULL, '', '+3', '[Xe] 6s2 4f4', '[Xe] 6s2 4f4', '2.6', '', '1.6', '181.0', '20.6', 'hexagonal', 'silvery-white', NULL, 'alloys, Welder\'s mask', '31.400', 328, 1885),
(61, 'Pm', 'lanthanides', 'lanthanides', 6, 'promethium', '145.000', '1042.00', '3000.0', 's', '7.2600000', NULL, '5.5500', '10.90', '22.283', '535', '1052', '2150', NULL, '', '+3', '[Xe] 6s2 4f5', '[Xe] 6s2 4f5', '2.6', '1.0', '1.6', '183.0', '22.3', 'hexagonal', 'silvery-white', 'Radioactive', 'nuclear battery', '30.100', 301, 1945),
(62, 'Sm', 'lanthanides', 'lanthanides', 6, 'samarium', '150.400', '1074.00', '1794.0', 's', '7.5200000', '1.17', '5.6437', '11.06', '23.423', '545', '1068', '2260', NULL, '', '+3,2', '[Xe] 6s2 4f6', '[Xe] 6s2 4f6', '2.5', '1.0', '1.6', '180.0', '19.9', 'rhombohedral', 'silvery-white', NULL, 'alloys, headphones', '28.800', 207, 1880),
(63, 'Eu', 'lanthanides', 'lanthanides', 6, 'europium', '152.000', '822.00', '1529.0', 's', '5.2400000', NULL, '5.6704', '11.24', '24.926', '547', '1085', '2405', NULL, '', '+3,2', '[Xe] 6s2 4f7', '[Xe] 6s2 4f7', '2.5', '1.0', '1.8', '208.0', '28.9', 'cubic: body centered', 'silvery-white', 'hard', 'alloys, color TV phosphor', '27.700', 178, 1901),
(64, 'Gd', 'lanthanides', 'lanthanides', 6, 'gadolinium', '157.300', '1313.00', '3273.0', 's', '7.9000000', '1.20', '6.1500', '12.09', '20.635', '593', '1167', '1991', NULL, '', '+3', '[Xe] 6s2 4f8', '[Xe] 6s2 4f8', '2.5', '1.0', '1.6', '180.0', '19.9', 'hexagonal', 'silvery-white', NULL, 'alloys, CD disk', '23.500', 398, 1880),
(65, 'Tb', 'lanthanides', 'lanthanides', 6, 'terbium', '158.900', '1365.00', '3230.0', 's', '8.2300000', NULL, '5.8939', '11.52', '21.910', '569', '1112', '2114', NULL, '', '+3,4', '[Xe] 6s2 4f9', '[Xe] 6s2 4f9', '2.5', '1.1', '1.5', '177.0', '19.2', 'hexagonal', 'silvery-white', 'soft', 'alloys', '25.500', 389, 1843),
(66, 'Dy', 'lanthanides', 'lanthanides', 6, 'dysprosium', '162.500', '1412.00', '2567.0', 's', '8.5500000', '1.22', '5.9389', '11.67', '22.802', '573', '1126', '2200', NULL, '', '+3', '[Xe] 6s2 4f10', '[Xe] 6s2 4f10', '2.4', '1.0', '1.5', '178.0', '19', 'hexagonal', 'silvery-white', 'neutron absorber', 'alloys, CD disk', '24.500', 291, 1886),
(67, 'Ho', 'lanthanides', 'lanthanides', 6, 'holmium', '164.900', '1474.00', '2700.0', 's', '8.8000000', '1.23', '6.0216', '11.80', '22.843', '581', '1139', '2204', NULL, '', '+3', '[Xe] 6s2 4f11', '[Xe] 6s2 4f11', '2.4', '', '1.5', '176.0', '18.8', 'hexagonal', 'silvery-white', NULL, 'alloys', '23.600', 301, 1879),
(68, 'Er', 'lanthanides', 'lanthanides', 6, 'erbium', '167.300', '1529.00', '2868.0', 's', '9.0700000', '1.24', '6.1078', '11.92', '22.739', '589', '1151', '2194', NULL, '', '+3', '[Xe] 6s2 4f12', '[Xe] 6s2 4f12', '2.4', '1', '1.5', '176.0', '18.4', 'hexagonal', 'silvery-white', NULL, 'alloys, photogr. filter', '22.700', 317, 1843),
(69, 'Tm', 'lanthanides', 'lanthanides', 6, 'thulium', '168.900', '1545.00', '1950.0', 's', '9.3200000', '1.25', '6.1843', '12.05', '26.367', '597', '1163', '2544', NULL, '', '+3,2', '[Xe] 6s2 4f13', '[Xe] 6s2 4f13', '2.4', '1.0', '1.5', '176.0', '18.1', 'hexagonal', 'silvery-white', 'soft', 'alloys', '21.800', 232, 1879),
(70, 'Yb', 'lanthanides', 'lanthanides', 6, 'ytterbium', '173.000', '819.00', '1196.0', 's', '6.9700000', NULL, '6.2542', '12.18', '25.030', '603', '1176', '2415', NULL, '', '+3,2', '[Xe] 6s2 4f14', '[Xe] 6s2 4f14', '2.4', '0.9', '1.7', '193.0', '24.7', 'cubic: face centered', 'silvery-white', 'soft', 'alloys', '21.000', 152, 1879),
(71, 'Lu', '3', 'lanthanides', 6, 'lutetium', '175.000', '1663.00', '3402.0', 's', '9.8400000', '1.27', '5.4259', '13.88', '20.957', '524', '1340', '2022', NULL, '', '+3', '[Xe] 6s2 4f14 5d1', '[Xe] 6s2 4f14 5d1', '2.2', '0.9', '1.5', '174.0', '17.7', 'hexagonal', 'silvery-white', NULL, 'alloys', '21.900', NULL, 1907),
(72, 'Hf', '4', 'IV B', 6, 'hafnium', '178.500', '2227.00', '4600.0', 's', '13.3000000', '1.30', '6.8251', '14.92', '23.320', '659', '1440', '2250', '0.0', '0', '+4', '[Xe] 6s2 4f14 5d2', '[Xe] 6s2 4f14 5d2', '2.1', '0.8', '1.4', '159.0', '13.6', 'hexagonal', 'silvery', 'hard', 'nuclear control rods', '16.200', 619, 1923),
(73, 'Ta', '5', 'V B', 6, 'tantalum', '180.900', '2996.00', '5425.0', 's', '16.6000000', '1.50', '7.8900', NULL, NULL, '761', '', '', '0.3', '31', '+5', '[Xe] 6s2 4f14 5d3', '[Xe] 6s2 4f14 5d3', '2.0', '0.6', '1.3', '146.0', '10.9', 'cubic: body centered', 'gray', 'hard, inert at <100 deg.C', 'surg. implants,heat exch.', '13.100', 782, 1802),
(74, 'W', '6', 'VI B', 6, 'tungsten', '183.800', '3410.00', '5660.0', 's', '19.3000000', '2.36', '7.9800', NULL, NULL, '770', '', '', '0.8', '83', '+6,4', '[Xe] 6s2 4f14 5d4', '[Xe] 6s2 4f14 5d4', '2.0', '0.6', '1.3', '139.0', '9.53', 'cubic: body centered', 'bluish-gray', 'highest melting metal', 'WC drill bits, bulb wire', '11.100', 849, 1783),
(75, 'Re', '7', 'VII B', 6, 'rhenium', '186.200', '3180.00', '5600.0', 's', '21.0000000', '1.90', '7.8800', NULL, NULL, '760', '', '', '0.1', '14', '+7,4,6', '[Xe] 6s2 4f14 5d5', '[Xe] 6s2 4f14 5d5', '1.9', '0.5', '1.2', '137.0', '8.85', 'hexagonal', 'silvery-white', 'high melting point', 'catalysts, thermocouples', '9.700', 770, 1925),
(76, 'Os', '8', 'VIII B', 6, 'osmium', '190.200', '3045.00', '5030.0', 's', '22.6000000', '2.20', '8.7000', NULL, NULL, '839', '', '', '1.1', '106', '+4,6,8', '[Xe] 6s2 4f14 5d6', '[Xe] 6s2 4f14 5d6', '1.9', '0.6', '1.2', '135.0', '8.49', 'hexagonal', 'bluish-white', 'hard, dense, inert <100 C', 'hard alloys,phono needles', '8.500', 791, 1804),
(77, 'Ir', '9', 'VIII B', 6, 'iridium', '192.200', '2410.00', '4130.0', 's', '22.4000000', '2.20', '9.1000', NULL, NULL, '878', '', '', '1.5', '151', '+4,3,6', '[Xe] 6s2 4f14 5d7', '[Xe] 6s2 4f14 5d7', '1.8', '0.6', '1.2', '136.0', '8.54', 'cubic: face centered', 'white', 'hard, densest el, inert', 'Pt/Ir sparkplugs', '7.600', 665, 1804),
(78, 'Pt', '10', 'VIII B', 6, 'platinum', '195.100', '1772.00', '3827.0', 's', '21.4000000', '2.28', '9.0000', '18.56', NULL, '868', '1791', '', '2.1', '206', '+4,2', '[Xe] 6s2 4f14 5d8', '[Xe] 6s2 4f14 5d8', '1.8', '0.6', '1.3', '139.0', '9.1', 'cubic: face centered', 'silvery-white', 'Inert, ductile', 'jewelry, catalysts', '6.500', 565, 1748),
(79, 'Au', '11', 'I B', 6, 'gold', '197.000', '1064.00', '3080.0', 's', '19.3000000', '2.54', '9.2257', '20.52', NULL, '890', '1980', '', '2.3', '223', '+3,1', '[Xe] 6s2 4f14 5d9', '[Xe] 6s2 4f14 5d9', '1.7', '0.8', '1.3', '144.0', '10.2', 'cubic: face centered', 'golden yellow', 'Inert, ductile malleable', 'jewelry, electronics', '6.100', 366, NULL),
(80, 'Hg', '12', 'II B', 6, 'mercury', '200.600', '-38.90', '357.0', 'l', '13.5000000', '2.00', '10.4375', '18.75', '34.202', '1007', '1810', '3300', '<0', '<0', '+2,1', '[Xe] 6s2 4f14 5d10', '[Xe] 6s2 4f14 5d10', '1.7', '1.0', '1.4', '151.0', '14.8', 'rhombohedral', 'silvery-white', 'liquid at r.t., volatile', 'amalgams, Cl2, NaOH prod.', '5.400', 61, NULL),
(81, 'Tl', '13', 'III A', 6, 'thallium', '204.400', '303.00', '1457.0', 's', '11.9000000', '1.62', '6.1083', '20.42', '29.829', '589', '1971', '2878', '0.2', '19', '+1,3', '[Xe] 6s2 4f14 5d10 6p1', '[Xe] 6s2 4f14 5d10 6p1', '2.0', '1.5', '1.4', '170.0', '17.2', 'hexagonal', 'bluish-gray', 'soft', 'IR detectors, photomult.', '7.600', 182, 1861),
(82, 'Pb', '14', 'IV A', 6, 'lead', '207.200', '327.50', '1740.0', 's', '11.4000000', '2.33', '7.4167', '15.02', '31.943', '716', '1450', '3082', '0.3', '35', '+2,4', '[Xe] 6s2 4f14 5d10 6p2', '[Xe] 6s2 4f14 5d10 6p2', '1.8', '1.1', '1.4', '146.0', '18.1', 'cubic: face centered', 'gray', 'soft', 'batteries, solder, paints', '6.800', 196, NULL),
(83, 'Bi', '15', 'V A', 6, 'bismuth', '209.000', '271.00', '1560.0', 's', '9.7500000', '2.02', '7.2890', '16.68', '25.559', '703', '1610', '2466', '0.9', '92', '+3,5', '[Xe] 6s2 4f14 5d10 6p3', '[Xe] 6s2 4f14 5d10 6p3', '1.6', '1.0', '1.4', '150.0', '21.3', 'rhombohedral', 'white', 'brittle', 'antacid, fusible alloy', '7.400', 207, 1600),
(84, 'Po', '16', 'VI A', 6, 'polonium', '209.000', '254.00', '962.0', 's', '9.3200000', '2.00', '8.4167', NULL, NULL, '812', '', '', '1.9', '183', '+4,2', '[Xe] 6s2 4f14 5d10 6p4', '[Xe] 6s2 4f14 5d10 6p4', '1.5', '', '1.4', '168.0', '22.2', 'monoclinic', 'blue glow', 'Radioactive; 2 forms', 'thermoelectric power', '6.800', 144, 1898),
(85, 'At', '17', 'VII A', 6, 'astatine', '210.000', '302.00', '337.0', 's', NULL, '2.20', '9.5000', NULL, NULL, '917', '', '', '2.8', '270', '', '[Xe] 6s2 4f14 5d10 6p5', '[Xe] 6s2 4f14 5d10 6p5', '1.4', '', '1.4', NULL, '', '', NULL, 'Radioactive', NULL, '6.000', 92, 1940),
(86, 'Rn', '18', 'VIII A', 6, 'radon', '222.000', '-71.00', '-61.8', 'g', '0.0097300', NULL, '10.7485', NULL, NULL, '1037', '', '', '<0', '<0', '0', '[Xe] 6s2 4f14 5d10 6p6', '[Xe] 6s2 4f14 5d10 6p6', '1.3', '', '', NULL, '50.5', 'cubic: face centered', 'colorless', 'Radioactive,air pollutant', 'earthquake prediction', '5.300', 0, 1900),
(87, 'Fr', '1', 'I A', 7, 'francium', '223.000', '27.00', '677.0', 's', NULL, '0.70', '3.9400', NULL, NULL, '380', '', '', '0.4', '44', '+1', '[Rn] 7s1', '[Rn] 7s1', '', '', '', NULL, '', 'cubic: body centered', NULL, 'Radioactive', NULL, '48.700', 73, 1939),
(88, 'Ra', '2', 'II A', 7, 'radium', '226.000', '700.00', '1140.0', 's', '5.0000000', '0.90', '5.2789', '10.14', NULL, '509', '979', '', NULL, '', '+2', '[Rn] 7s2', '[Rn] 7s2', '', '1.6', '', NULL, '45.2', 'cubic: body centered', 'white', 'Radioactive, luminescent', 'neutron source', '38.300', 159, 1898),
(89, 'Ac', 'actinides', 'III B', 7, 'actinium', '227.000', '1050.00', '3200.0', 's', '10.1000000', '1.10', '5.1700', '12.12', NULL, '499', '1170', '', NULL, '', '+3', '[Rn] 7s2 5f1', '[Rn] 7s2 5f1', '', '', '', NULL, '22.5', 'cubic: face centered', 'silvery-white', 'Radioactive', 'thermoelectric power', '32.100', 385, 1899),
(90, 'Th', 'actinides', 'actinides', 7, 'thorium', '232.000', '1750.00', '4790.0', 's', '11.7000000', '1.30', '6.0800', '11.50', '20.003', '587', '1110', '1930', NULL, '', '+4', '[Rn] 7s2 5f2', '[Rn] 7s2 5f2', '', '1.0', '1.6', '179.0', '19.9', 'cubic: face centered', 'white', 'Radioactive', 'gas mantles (ThO2)', '32.100', 576, 1829),
(91, 'Pa', 'actinides', 'actinides', 7, 'protactinium', '231.000', '1570.00', '4000.0', 's', '15.4000000', '1.50', '5.8900', NULL, NULL, '568', '', '', NULL, '', '+5,4', '[Rn] 7s2 5f3', '[Rn] 7s2 5f3', '', '', '', '163.0', '15', 'orthorhombic', 'silvery', 'Radioactive', NULL, '25.400', 527, 1917),
(92, 'U', 'actinides', 'actinides', 7, 'uranium', '238.000', '1132.00', '3818.0', 's', '19.0000000', '1.38', '6.1941', NULL, NULL, '598', '', '', NULL, '', '+6,3,4,5', '[Rn] 7s2 5f4', '[Rn] 7s2 5f4', '', '0.8', '1.4', '156.0', '12.5', 'orthorhombic', 'silvery', 'Radioactive', 'nuclear reactor fuel', '27.400', 490, 1789),
(93, 'Np', 'actinides', 'actinides', 7, 'neptunium', '237.000', '640.00', '3900.0', 's', '20.2000000', '1.36', '6.2657', NULL, NULL, '605', '', '', NULL, '', '+5,3,4,6', '[Rn] 7s2 5f5', '[Rn] 7s2 5f5', '', '', '', '155.0', '11.6', 'orthorhombic', 'silvery', 'Radioactive', NULL, '24.800', NULL, 1940),
(94, 'Pu', 'actinides', 'actinides', 7, 'plutonium', '239.000', '641.00', '3232.0', 's', '19.8000000', '1.28', '6.0600', NULL, NULL, '585', '', '', NULL, '', '+4,3,5,6', '[Rn] 7s2 5f6', '[Rn] 7s2 5f6', '', '', '', '159.0', '12.3', 'monoclinic', 'silvery', 'Radioactive', 'weapon fuel, pacemakers', '24.500', 352, 1940),
(95, 'Am', 'actinides', 'actinides', 7, 'americium', '243.000', '994.00', '2607.0', 's', '13.7000000', '1.30', '5.9933', NULL, NULL, '578', '', '', NULL, '', '+3,4,5,6', '[Rn] 7s2 5f7', '[Rn] 7s2 5f7', '', '', '', '173.0', '17.8', 'hexagonal', 'silvery-white', 'Radioactive', 'smoke detector', '23.300', NULL, 1944),
(96, 'Cm', 'actinides', 'actinides', 7, 'curium', '247.000', '1340.00', NULL, 's', '13.5000000', '1.30', '6.0200', NULL, NULL, '581', '', '', NULL, '', '+3', '[Rn] 7s2 5f8', '[Rn] 7s2 5f8', '', '', '', '174.0', '18.2', 'hexagonal', 'silvery-white', 'Radioactive', 'thermoelec. pwr, n source', '23.000', NULL, 1944),
(97, 'Bk', 'actinides', 'actinides', 7, 'berkelium', '247.000', '986.00', NULL, 's', '14.0000000', '1.30', '6.2300', NULL, NULL, '601', '', '', NULL, '', '+3,4', '[Rn] 7s2 5f9', '[Rn] 7s2 5f9', '', '', '', '170.0', '', '', 'silvery', 'Radioactive', NULL, '22.700', NULL, 1949),
(98, 'Cf', 'actinides', 'actinides', 7, 'californium', '251.000', NULL, NULL, NULL, NULL, '1.30', '6.3000', NULL, NULL, '608', '', '', NULL, '', '+3', '[Rn] 7s2 5f10', '[Rn] 7s2 5f10', '', '', '', '186.0', '', '', NULL, 'Radioactive', 'neutron source', '20.500', NULL, 1949),
(99, 'Es', 'actinides', 'actinides', 7, 'einsteinium', '252.000', NULL, NULL, NULL, NULL, '1.30', '6.4200', NULL, NULL, '619', '', '', NULL, '', '+3', '[Rn] 7s2 5f11', '[Rn] 7s2 5f11', '', '', '', '186.0', '', '', NULL, 'Radioactive', NULL, '19.700', NULL, 1954),
(100, 'Fm', 'actinides', 'actinides', 7, 'fermium', '257.000', NULL, NULL, NULL, NULL, '1.30', '6.5000', NULL, NULL, '627', '', '', NULL, '', '+3', '[Rn] 7s2 5f12', '[Rn] 7s2 5f12', '', '', '', NULL, '', '', NULL, 'Radioactive', NULL, '23.800', NULL, 1954),
(101, 'Md', 'actinides', 'actinides', 7, 'mendelevium', '258.000', NULL, NULL, NULL, NULL, '1.30', '6.5800', NULL, NULL, '635', '', '', NULL, '', '+3,2', '[Rn] 7s2 5f13', '[Rn] 7s2 5f13', '', '', '', NULL, '', '', NULL, 'Radioactive', NULL, '18.200', NULL, 1955),
(102, 'No', 'actinides', 'actinides', 7, 'nobelium', '259.000', NULL, NULL, NULL, NULL, '1.30', '6.6500', NULL, NULL, '642', '', '', NULL, '', '+2,3', '[Rn] 7s2 5f14', '[Rn] 7s2 5f14', '', '', '', NULL, '', '', NULL, 'Radioactive', NULL, '17.500', NULL, 1958),
(103, 'Lr', '3', 'actinides', 7, 'lawrencium', '262.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '+3', '[Rn] 7s2 5f14 6d1', '[Rn] 7s2 5f14 6d1', '', '', '', NULL, '', '', NULL, 'Radioactive,few atms made', NULL, NULL, NULL, 1961),
(104, 'Rf', '4', 'IV B', 7, 'rutherfordium', '261.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d2', '[Rn] 7s2 5f14 6d2', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Db', '5', 'V B', 7, 'dubnium', '262.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d3', '[Rn] 7s2 5f14 6d3', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Sg', '6', 'VI B', 7, 'seaborgium', '266.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d4', '[Rn] 7s2 5f14 6d4', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Bh', '7', 'VII B', 7, 'bohrium', '264.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d5', '[Rn] 7s2 5f14 6d5', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Hs', '8', 'VIII B', 7, 'hassium', '277.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d6', '[Rn] 7s2 5f14 6d6', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Mt', '9', 'VIII B', 7, 'meitnerium', '268.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d7', '[Rn] 7s2 5f14 6d7', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Ds', '10', 'VIII B', 7, 'darmstadtium', '281.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d8', '[Rn] 7s2 5f14 6d8', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Rg', '11', 'I B', 7, 'roentgentium', '272.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d9', '[Rn] 7s2 5f14 6d9', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Uub', '12', 'II B', 7, 'ununbium', '285.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d10', '[Rn] 7s2 5f14 6d10', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Uut', '13', 'III A', 7, 'ununtrium', '284.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d10 7p1', '[Rn] 7s2 5f14 6d10 7p1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Uuq', '14', 'IV A', 7, 'ununquadium', '289.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d10 7p2', '[Rn] 7s2 5f14 6d10 7p2', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Uup', '15', 'V A', 7, 'ununpentium', '288.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d10 7p3', '[Rn] 7s2 5f14 6d10 7p3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Uuh', '16', 'VI A', 7, 'ununhexium', '292.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '[Rn] 7s2 5f14 6d10 7p4', '[Rn] 7s2 5f14 6d10 7p4', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Uus', '17', 'VII A', 7, 'ununseptium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', NULL, '[Rn] 7s2 5f14 6d10 7p5', '[Rn] 7s2 5f14 6d10 7p5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Uuo', '18', 'VIII A', 7, 'ununoctium', '294.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', NULL, '[Rn] 7s2 5f14 6d10 7p6', '[Rn] 7s2 5f14 6d10 7p6', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(32) NOT NULL,
  `role` set('user','admin','developer') NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `role`, `enabled`, `password`) VALUES
('admin', 'admin', 1, '$2y$10$4fWexb9DNGY.MinZvqSCbOTZEFGCpx0spepIqFmyn0nZei520WVEm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
