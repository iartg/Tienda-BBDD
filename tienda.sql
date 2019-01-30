-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2019 a las 11:52:50
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cesta`
--

CREATE TABLE `cesta` (
  `id_usuario` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_prod` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cesta`
--

INSERT INTO `cesta` (`id_usuario`, `id_prod`, `cantidad`) VALUES
('juan', 'cin1', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_prod` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_usuario`, `id_prod`, `cantidad`, `fecha_compra`) VALUES
('EU0IXKB6P985NTQ', 'juan', 'ele1', 1, '2019-01-04 01:07:28'),
('EU0IXKB6P985NTQ', 'juan', 'vid1', 1, '2019-01-04 01:07:28'),
('EU0IXKB6P985NTQ', 'juan', 'lib1', 1, '2019-01-04 01:07:28'),
('EU0IXKB6P985NTQ', 'juan', 'fot2', 1, '2019-01-04 01:07:28'),
('RETTL5L477Q85OR', 'juan', 'ele10', 1, '2019-01-04 14:06:18'),
('RETTL5L477Q85OR', 'juan', 'ele11', 1, '2019-01-04 14:06:18'),
('G1P1YZ1NPUOUV8K', 'juan', 'ele1', 1, '2019-01-04 15:23:06'),
('8S16B6VVAP9MAJF', 'juan', 'ele1', 2, '2019-01-04 15:25:11'),
('NUMLBZ3BKPGXGH7', 'juan', 'ele13', 2, '2019-01-04 15:26:10'),
('RTGXLHX533CZZUW', 'juan', 'ele1', 2, '2019-01-04 15:28:32'),
('C2XN3CY5R21LHM1', 'juan', 'ele10', 2, '2019-01-04 15:32:17'),
('05VON3ZR1M7SNMQ', 'juan', 'ele23', 1, '2019-01-05 20:16:01'),
('05VON3ZR1M7SNMQ', 'juan', 'ele11', 1, '2019-01-05 20:16:01'),
('05VON3ZR1M7SNMQ', 'juan', 'inf8', 1, '2019-01-05 20:16:01'),
('45MXUDK60TKDULO', 'juan', 'cin11', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin10', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin1', 2, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin17', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'inf18', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'inf8', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'inf13', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin2', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin21', 1, '2019-01-12 23:18:49'),
('45MXUDK60TKDULO', 'juan', 'cin24', 1, '2019-01-12 23:18:49'),
('NKPZ9QFA4KFURSA', 'estrella', 'cin1', 1, '2019-01-13 18:47:02'),
('NKPZ9QFA4KFURSA', 'estrella', 'inf10', 1, '2019-01-13 18:47:02'),
('NKPZ9QFA4KFURSA', 'estrella', 'inf23', 1, '2019-01-13 18:47:02'),
('NKPZ9QFA4KFURSA', 'estrella', 'vid11', 1, '2019-01-13 18:47:02'),
('NKPZ9QFA4KFURSA', 'estrella', 'vid14', 1, '2019-01-13 18:47:02'),
('NKPZ9QFA4KFURSA', 'estrella', 'vid13', 1, '2019-01-13 18:47:02'),
('53LE8X1FHRWQ3IE', 'estrella', 'fot9', 2, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'dep21', 1, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'ele24', 2, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'lib10', 1, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'ele6', 1, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'ele20', 1, '2019-01-13 22:07:16'),
('53LE8X1FHRWQ3IE', 'estrella', 'cin12', 1, '2019-01-13 22:07:16'),
('KFT0ITFMB4L0AWO', 'juan', 'cin10', 1, '2019-01-17 09:14:12'),
('KFT0ITFMB4L0AWO', 'juan', 'cin11', 1, '2019-01-17 09:14:12'),
('KFT0ITFMB4L0AWO', 'juan', 'cin14', 1, '2019-01-17 09:14:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_prod` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom_producto` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` float(6,2) DEFAULT NULL,
  `imagen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_prod`, `nom_producto`, `precio`, `imagen`, `categoria`) VALUES
('cin1', 'Coco (Blu-Ray)', 7.46, 'src/cin1.jpg', 'cine'),
('cin10', 'Trilogia Men in Black (Blu-Ray)', 20.99, 'src/cin10.jpg', 'cine'),
('cin11', 'Malditos bastardos (Blu-Ray)', 12.99, 'src/cin11.jpg', 'cine'),
('cin12', 'Avatar 3D (Blu-Ray + Blu-Ray 3D + DVD)', 25.99, 'src/cin12.jpg', 'cine'),
('cin13', 'El Hobbit La batalla de los cinco ejercitos (Blu-Ray)', 26.99, 'src/cin13.jpg', 'cine'),
('cin14', 'Pulp fiction (Blu-Ray + DVD)', 19.99, 'src/cin14.jpg', 'cine'),
('cin15', 'Pack Planeta de los simios: La trilogia (Blu-Ray)', 22.99, 'src/cin15.jpg', 'cine'),
('cin16', 'Origen (Blu-Ray)', 9.99, 'src/cin16.jpg', 'cine'),
('cin17', '2001: Una odisea del espacio (Blu-Ray)', 9.99, 'src/cin17.jpg', 'cine'),
('cin18', 'Pack Jumanji: Peliculas 1-2 (Blu-Ray) (ed limitada metal)', 21.99, 'src/cin18.jpg', 'cine'),
('cin19', 'Gladiator (Blu-Ray)', 15.99, 'src/cin19.jpg', 'cine'),
('cin2', 'Star Wars: Los ultimos jedi (Blu-Ray)', 8.96, 'src/cin2.jpg', 'cine'),
('cin20', 'Cosmos, Una Odisea en el Espacio-Tiempo (DVD)', 29.99, 'src/cin20.jpg', 'cine'),
('cin21', 'The story of film (DVD)', 24.99, 'src/cin21.jpg', 'cine'),
('cin22', 'Pack Planeta tierra: La coleccion (DVD)', 38.99, 'src/cin22.jpg', 'cine'),
('cin23', 'Conoces a Joe Black (Blu-Ray)', 9.99, 'src/cin23.jpg', 'cine'),
('cin24', 'Sleepers (Blu-Ray)', 12.99, 'src/cin24.jpg', 'cine'),
('cin25', 'Old boy (DVD)', 11.99, 'src/cin25.jpg', 'cine'),
('cin26', 'Multiple (Blu-Ray)', 9.95, 'src/cin26.jpg', 'cine'),
('cin27', 'El protegido (DVD)', 7.99, 'src/cin27.jpg', 'cine'),
('cin28', 'Los Otros (DVD)', 8.99, 'src/cin28.jpg', 'cine'),
('cin29', 'Pack La purga: Peliculas 1-4 (Blu-Ray)', 36.99, 'src/cin29.jpg', 'cine'),
('cin3', 'Rogue One: Una historia de Star Wars 3D (Blu-Ray + Blu-Ray 3D)', 11.21, 'src/cin3.jpg', 'cine'),
('cin30', 'La soga (Blu-Ray)', 15.99, 'src/cin30.jpg', 'cine'),
('cin31', 'Metropolis (Blu-Ray + DVD)', 17.99, 'src/cin31.jpg', 'cine'),
('cin4', 'Juego de tronos. 7 temporada (Blu-Ray)', 24.59, 'src/cin4.jpg', 'cine'),
('cin5', 'Pack: Hitchcock (DVD)', 25.99, 'src/cin5.jpg', 'cine'),
('cin6', 'Que fue de Baby Jane (Blu-Ray)', 10.99, 'src/cin6.jpg', 'cine'),
('cin7', 'Megalodon (DVD)', 16.99, 'src/cin7.jpg', 'cine'),
('cin8', 'Pack The Lord of the rings: La trilogia (Blu-Ray)', 62.99, 'src/cin8.jpg', 'cine'),
('cin9', 'El Hobbit. Trilogia Cinematografica (DVD)', 30.99, 'src/cin9.jpg', 'cine'),
('dep1', 'Balon de baloncesto replica Liga ACB TF-500 2018-2019 Talla 7 Spalding', 49.95, 'src/dep1.jpg', 'deportes'),
('dep10', 'Tabla de paddle surf rigida Bark vapor elite Surftech', 3134.30, 'src/dep10.jpg', 'deportes'),
('dep11', 'Tabla de paddle surf hinchable Phisher Ari I Nui', 1049.00, 'src/dep11.jpg', 'deportes'),
('dep12', 'Kayak Gemini Confort Sorbet Wave Sport', 840.00, 'src/dep12.jpg', 'deportes'),
('dep13', 'Tabla hinchable Paddle Surf Hydro Force Long Tail SUP Lite Bestway', 959.99, 'src/dep13.jpg', 'deportes'),
('dep14', 'Tabla de Snow Focus M DC Shoes', 319.00, 'src/dep14.jpg', 'deportes'),
('dep15', 'Esquis E-Flex GX LS + EL 9 SHFT Elan', 177.00, 'src/dep15.jpg', 'deportes'),
('dep16', 'Esquis Pursuit + Xpress 10 B83 Rossignol', 226.85, 'src/dep16.jpg', 'deportes'),
('dep17', 'Esquis Legend X80 + Xpress 11 B83 Dynastar', 314.30, 'src/dep17.jpg', 'deportes'),
('dep18', 'Cinta de correr Power 545i Proform', 549.00, 'src/dep18.jpg', 'deportes'),
('dep19', 'Bicicleta estatica Trainer Salter', 476.00, 'src/dep19.jpg', 'deportes'),
('dep2', 'Guantilla de boxeo MMA Everlast', 44.95, 'src/dep2.jpg', 'deportes'),
('dep20', 'Electroestimulador SP4.0 Compex', 439.00, 'src/dep20.jpg', 'deportes'),
('dep21', 'Aerobic Step Kettler', 124.50, 'src/dep21.jpg', 'deportes'),
('dep22', 'Banco Delta xl Kettler', 1151.10, 'src/dep22.jpg', 'deportes'),
('dep23', 'Balon de futbol Mundial de Rusia 2018 Telstar Top Glider Adidas', 11.95, 'src/dep23.jpg', 'deportes'),
('dep24', 'Patin paralelo Roller Tijuana', 55.95, 'src/dep24.jpg', 'deportes'),
('dep25', 'Patin unisex Twister 231 Rollerblade', 149.97, 'src/dep25.jpg', 'deportes'),
('dep26', 'Raqueta de frontenis IG Eclipse Head', 43.95, 'src/dep26.jpg', 'deportes'),
('dep27', 'Raqueta de tenis Blade Team 99 Wilson', 115.20, 'src/dep27.jpg', 'deportes'),
('dep28', 'Raqueta de Squash Boomerang', 19.95, 'src/dep28.jpg', 'deportes'),
('dep29', 'Balon de Rugby Supporter Inglaterra Gilbert', 29.95, 'src/dep29.jpg', 'deportes'),
('dep3', 'Saco de boxeo Everlast', 109.00, 'src/dep3.jpg', 'deportes'),
('dep30', 'Balon de Rugby Playa Gilbert', 21.95, 'src/dep30.jpg', 'deportes'),
('dep31', 'Pala de padel Blast Pro Drop Shot', 113.40, 'src/dep31.jpg', 'deportes'),
('dep32', 'Pala de padel Brava 8.2 Carbon Soft Starvie', 159.00, 'src/dep32.jpg', 'deportes'),
('dep4', 'Kimono de judo YUSHO MIZUNO', 222.00, 'src/dep4.jpg', 'deportes'),
('dep5', 'Tienda Antic Tribal Colour Easy Camp', 59.45, 'src/dep5.jpg', 'deportes'),
('dep6', 'Bicicleta Teamelite 03 29\' BMC', 909.30, 'src/dep6.jpg', 'deportes'),
('dep7', 'Bicicleta de carretera Roadmachine 02 BMC', 2029.30, 'src/dep7.jpg', 'deportes'),
('dep8', 'Bicicleta Trekking TK28\' Alloy Lady B-PRO', 207.20, 'src/dep8.jpg', 'deportes'),
('dep9', 'Bicicleta de paseo Soho AL 6V Conor', 242.25, 'src/dep9.jpg', 'deportes'),
('ele1', 'Barra de Sonido Sony HT-ST5000 7.1.2, Dolby Atmos, Multiroom Wi-Fi', 1199.20, 'src/ele1.jpg', 'electronica'),
('ele10', 'Tarjeta de Memoria SanDisk Extreme PRO CompactFlash de 32 GB UDMA7', 57.90, 'src/ele10.jpg', 'electronica'),
('ele11', 'Pendrive SanDisk iXpand USB 3.0 / conector lightning 128 GB', 69.90, 'src/ele11.jpg', 'electronica'),
('ele12', 'Pendrive USB 3.0 Sandisk Ultra Flair 128 GB', 29.90, 'src/ele12.jpg', 'electronica'),
('ele13', 'Pendrive Sandisk USB 3.0 64 GB', 15.90, 'src/ele13.jpg', 'electronica'),
('ele14', 'Tableta grafica Wacom Intuos S Bluetooth negro', 79.99, 'src/ele14.jpg', 'electronica'),
('ele15', 'Raton HP X3000 inalambrico negro', 14.99, 'src/ele15.jpg', 'electronica'),
('ele16', 'Pack Gaming Trust GXT 1180', 44.99, 'src/ele16.jpg', 'electronica'),
('ele17', 'Teclado Gaming The G-Lab retroiluminado USB, 10 atajos multimedia', 23.99, 'src/ele17.jpg', 'electronica'),
('ele18', 'Extensor de Red TP-Link RE450 AC1750 Dual Band Wireless', 69.99, 'src/ele18.jpg', 'electronica'),
('ele19', 'Teclado inalambrico Trust Veza Wireless con TouchPad', 19.99, 'src/ele19.jpg', 'electronica'),
('ele2', 'Sistema de audio de alta potencia Sony MHC-V41D con tecnologia NFC / Bluetooth', 319.00, 'src/ele2.jpg', 'electronica'),
('ele20', 'Auriculares Gaming con microfono y cable The G-Lab Korp Oxigen', 29.99, 'src/ele20.jpg', 'electronica'),
('ele21', 'Raton HP Z3700 Inalambrico rojo', 14.99, 'src/ele21.jpg', 'electronica'),
('ele22', 'Smart Keyboard para el iPad Pro de 26,67 cm', 179.00, 'src/ele22.jpg', 'electronica'),
('ele23', 'Microfono Trust Starzz', 9.99, 'src/ele23.jpg', 'electronica'),
('ele24', 'Altavoces Trust MiLa 2.0', 14.99, 'src/ele24.jpg', 'electronica'),
('ele25', 'Webcam Logitech C930e', 11.58, 'src/ele25.jpg', 'electronica'),
('ele26', 'Webcam Microsoft LifeCam Cinema', 74.99, 'src/ele26.jpg', 'electronica'),
('ele27', 'Gafas Realidad Mixta HP VR1000-100nn', 449.00, 'src/ele27.jpg', 'electronica'),
('ele28', 'Gafas de realidad virtual Lenovo Explorer Realidad Mixta', 249.00, 'src/ele28.jpg', 'electronica'),
('ele3', 'Proyector Epson EB S41 3LCD', 325.00, 'src/ele3.jpg', 'electronica'),
('ele4', 'Bateria externa huawei CP07 Negro', 24.99, 'src/ele4.jpg', 'electronica'),
('ele5', 'Gafas de realidad virtual Speck Pocket VR para Samsung Galaxy S7', 69.95, 'src/ele5.jpg', 'electronica'),
('ele6', 'Altavoz inteligente Google Home Mini carbon', 59.00, 'src/ele6.jpg', 'electronica'),
('ele7', 'Camara de Seguridad Inteligente SPC Lares Sonido Bidireccional WiFi', 34.90, 'src/ele7.jpg', 'electronica'),
('ele8', 'Tarjeta de Memoria SanDisk Ultra SDXC Clase 10 de 64 GB', 22.90, 'src/ele9.jpg', 'electronica'),
('ele9', 'Tarjeta de memoria Samsung Micro SD EVO+ 256GB C/Adapt V2017', 134.00, 'src/ele9.jpg', 'electronica'),
('fot1', 'Camara Evil Sony Alpha 7 con Objetivo Zoom 28-70 mm', 849.00, 'src/fot1.jpg', 'fotografia'),
('fot10', 'Objetivo Canon EF 40 mm F/2.8 STM para Canon EOS', 249.00, 'src/fot10.jpg', 'fotografia'),
('fot11', 'Camara reflex digital Nikon D850 Cuerpo', 3299.00, 'src/fot11.jpg', 'fotografia'),
('fot12', 'Camara Evil Olympus E-M1 con objetivo M.Zuiko 12-40 mm', 1799.00, 'src/fot12.jpg', 'fotografia'),
('fot13', 'Objetivo Canon EF 100-400mm F/4,5-5,6L IS II para Canon EOS', 2599.00, 'src/fot13.jpg', 'fotografia'),
('fot14', 'Camara para deporte de accion - Nilox - EVO 360+ Full HD', 159.99, 'src/fot14.jpg', 'fotografia'),
('fot15', 'Camara deportiva GoPro HERO', 219.00, 'src/fot15.jpg', 'fotografia'),
('fot16', 'Camara de realidad virtual 360 VR Quimmiq DV 4K Negra', 259.00, 'src/fot16.jpg', 'fotografia'),
('fot17', 'Camara de realidad virtual 360 VR 360 Fly HD Negra', 449.96, 'src/fot17.jpg', 'fotografia'),
('fot18', 'Camara deportiva National Geographic Explorer 2 Full HD Wi-Fi Set', 89.00, 'src/fot18.jpg', 'fotografia'),
('fot19', 'Camara compacta Nikon COOLPIX A10 16,1 MP Morado + Estuche', 89.00, 'src/fot19.jpg', 'fotografia'),
('fot2', 'Camara reflex Nikon D3400 con Objetivo AF-P DX 18-55mm', 399.00, 'src/fot2.jpg', 'fotografia'),
('fot20', 'Camara compacta Panasonic Lumix DC-TZ200 Plata Kit', 679.15, 'src/fot20.jpg', 'fotografia'),
('fot21', 'Camara compacta Nikon Coolpix A100 + Estuche + Selfie Stick', 116.10, 'src/fot21.jpg', 'fotografia'),
('fot22', 'Kit Camara instantanea Fujifilm Instax Mini 9 Azul cobalto', 99.00, 'src/fot22.jpg', 'fotografia'),
('fot23', 'Camara digital instantanea Polaroid Snap Touch Azul', 199.00, 'src/fot23.jpg', 'fotografia'),
('fot24', 'Camara Instantanea Fujifilm Instax Square SQ6 Graphite Gray', 139.00, 'src/fot24.jpg', 'fotografia'),
('fot25', 'Camara instantanea Fujifilm Instax Square SQ6 Blush Gold', 139.00, 'src/fot25.jpg', 'fotografia'),
('fot26', 'Videocamara JVC GZ-GZ-R405BEU Quad-Proof Full HD Wi-Fi', 254.15, 'src/fot26.jpg', 'fotografia'),
('fot27', 'Videocamara Sony Handycam AX33 4K', 649.00, 'src/fot27.jpg', 'fotografia'),
('fot28', 'Videocamara HD Canon Legria HF R806 negra + funda y tarjeta SD 16GB', 279.00, 'src/fot28.jpg', 'fotografia'),
('fot29', 'Videocamara Panansonic HC-VXF1EG-K 4K', 999.00, 'src/fot29.jpg', 'fotografia'),
('fot3', 'Camara Evil Olympus E-M10 Mark III plata con Objetivos M.Zuiko 14-42mm + 40-150 mm', 899.00, 'src/fot3.jpg', 'fotografia'),
('fot30', 'Videocamara HD Canon Legria HFG26 negra', 1069.00, 'src/fot30.jpg', 'fotografia'),
('fot31', 'Videocamara manual - Canon - LEGRIA HF R806 3.28MP CMOS Full HD Color blanco', 309.99, 'src/fot31.jpg', 'fotografia'),
('fot4', 'Kit Camara Evil Canon EOS M100 Blanca + Objetivo EF-M 15-45 mm', 399.00, 'src/fot4.jpg', 'fotografia'),
('fot5', 'Camara Evil Sony Alpha 6000 con Objetivo 16-50 mm', 629.00, 'src/fot5.jpg', 'fotografia'),
('fot6', 'Camara Evil Canon EOS M50 Negra con Objetivo EF-M 15-45 mm Cubo', 749.00, 'src/fot6.jpg', 'fotografia'),
('fot7', 'Objetivo Sony Sony SEL50F18F E-mount Lente Full-Size Negro', 209.00, 'src/fot7.jpg', 'fotografia'),
('fot8', 'Objetivo Olympus M. Zuiko Digital 45mm F1.8', 299.00, 'src/fot8.jpg', 'fotografia'),
('fot9', 'Objetivo Nikon AF-S DX 35 mm F/1,8G para Nikon SLR', 249.00, 'src/fot9.jpg', 'fotografia'),
('inf1', 'Portatil ACER Aspire 5, i5, 4 GB, 16 GB Optane, 1 TB HDD, GeForce MX130 2GB', 549.00, 'src/inf1.jpg', 'informatica'),
('inf10', 'Ordenador Sobremesa All in One ASUS ZN220ICGK-RA012T Intel Corei5-7200U gris', 807.00, 'src/inf10.jpg', 'informatica'),
('inf11', 'Sobremesa HP Pavilion Gaming 690-0025ns, i5, 12 GB, 1 TB HDD + 128 GB SSD, GTX1050 2 GB', 849.00, 'src/inf11.jpg', 'informatica'),
('inf12', 'Sobremesa HP Pavilion 595-p0000nsm, i5, 8 GB, 1 TB HDD + 128 GB SSD, Radeon 520 2 GB', 799.00, 'src/inf12.jpg', 'informatica'),
('inf13', 'All in One HP Envy 27-b200ns, i7, 16 GB, 1 TB HDD + 256 GB SSD, GTX1050 5 GB', 1899.00, 'src/inf13.jpg', 'informatica'),
('inf14', 'Apple iMac 27 Pantalla Retina MNED2Y , i5, 8 GB, 2 TB, Radeon Pro 580 8 GB', 2606.00, 'src/inf14.jpg', 'informatica'),
('inf15', 'Sobremesa Lenovo Ideacentre 620S-03, i5, 8 GB, 16 GB Optane, 2 TB HDD', 699.00, 'src/inf15.jpg', 'informatica'),
('inf16', 'Sobremesa Gaming HP Omen 875-0910ns, i7, 16 GB, 1 TB HDD + 128 GB SSD, GTX 1050Ti 4 GB', 1199.00, 'src/inf16.jpg', 'informatica'),
('inf17', 'Sobremesa HP OMEN X 900-002ns, i7, 32 GB, 256 GB SSD, 2 TB, GTX 1070 8 GB', 1564.80, 'src/inf17.jpg', 'informatica'),
('inf18', 'Acelerador HP Omen GA1-1000ns', 299.00, 'src/inf18.jpg', 'informatica'),
('inf19', 'Sobremesa Gaming Medion Erazer X 30 PCC619, i7, 8 GB, 128 GB SSD + 1 TB HDD, GTX 1050 2 GB', 999.00, 'src/inf19.jpg', 'informatica'),
('inf2', 'Portatil HP Pavilion 13-an0001ns, i7, 8 GB, 256 GB SSD', 849.00, 'src/inf2.jpg', 'informatica'),
('inf20', 'Impresora Multifuncion tinta Epson WorkForce WF-3725 Wi-Fi y Fax', 109.90, 'src/inf20.jpg', 'informatica'),
('inf21', 'Impresora multifuncion tinta HP OfficeJet Pro 6960 Fax Wi-Fi', 199.90, 'src/inf21.jpg', 'informatica'),
('inf22', 'Impresora Multifuncion Tinta Color HP Officejet 3831 Wi-Fi', 49.90, 'src/inf22.jpg', 'informatica'),
('inf23', 'Impresora fotografica HP Sprocket Photo Printer Roja', 119.00, 'src/inf23.jpg', 'informatica'),
('inf24', 'Impresora Multifuncion Tinta Epson WorkForce WF-2750DWF Fax, Wi-Fi', 55.00, 'src/inf24.jpg', 'informatica'),
('inf25', 'Impresora fotografica HP Sprocket Perla - Nueva Edicion Especial', 149.90, 'src/inf25.jpg', 'informatica'),
('inf26', 'Tablet SPC FLOW 17,78 cm 8 GB rosa y blanco', 59.90, 'src/inf26.jpg', 'informatica'),
('inf27', 'Tablet Samsung Galaxy Tab A (2016) 25,65 cm Wi-Fi 16 GB', 169.00, 'src/inf27.jpg', 'informatica'),
('inf28', 'Tablet Vexia FCS E2 25,4 cm Wi-Fi 32 GB Aluminio', 139.90, 'src/inf28.jpg', 'informatica'),
('inf29', 'Tablet Lenovo Yoga Tab3 Plus X703F 25,65 cm Wi-Fi 32 GB', 329.00, 'src/inf29.jpg', 'informatica'),
('inf3', 'Portatil Asus Vivobook S15 S510UA-BR409T, i5, 8 GB, 256 GB', 599.00, 'src/inf3.jpg', 'informatica'),
('inf30', 'Tablet Huawei MediaPad M5 Pro 27,43 cm 64 GB LTE', 499.00, 'src/inf30.jpg', 'informatica'),
('inf4', 'Portatil Huawei MateBook D, i5, 8 GB, 256 GB SSD', 799.00, 'src/inf4.jpg', 'informatica'),
('inf5', 'Convertible Medion E2221T MD60691 ES, Atom x5, 4 GB, 64 GB', 199.00, 'src/inf5.jpg', 'informatica'),
('inf6.jpg', 'Convertible HP 10-p014ns, Atom x5, 4 GB, 128 GB', 339.15, 'src/inf6.jpg', 'informatica'),
('inf7', 'Convertible Medion E2221T, Atom X5, 2 GB, 32 GB SSD', 189.00, 'src/inf7.jpg', 'informatica'),
('inf8', 'All in One HP 22-c0200ns intel Celeron, 4 GB, 1 TB, Intel UHD Graphics', 449.00, 'src/inf8.jpg', 'informatica'),
('inf9', 'Sobremesa Gaming ASUS GD30CI-SP003T, i7, 8 GB, 1 TB Sata + 128 GB SSD Sata 3, GTX1060 3 GB', 999.00, 'src/inf9.jpg', 'informatica'),
('lib1', 'Voces de Chernobil: Cronica del futuro (Bolsillo) (Tapa blanda)', 11.35, 'src/lib1.jpg', 'libros'),
('lib10', 'Armada (Tapa blanda)', 19.95, 'src/lib10.jpg', 'libros'),
('lib11', 'Los jardines de la luna (Malaz: El libro de los caidos 1) (Tapa dura)', 23.75, 'src/lib11.jpg', 'libros'),
('lib12', 'La sangre de los elfos', 20.85, 'src/lib12.jpg', 'libros'),
('lib13', 'El silmarillion: Editado por Christopher Tolkien (Tapa dura)', 19.90, 'src/lib13.jpg', 'libros'),
('lib14', 'El filtro burbuja: Como la web decide lo que leemos y lo que pensamos (Tapa blanda)', 17.95, 'src/lib14.jpg', 'libros'),
('lib15', 'La verdadera historia de Twitter (Tapa blanda)', 18.95, 'src/lib15.jpg', 'libros'),
('lib16', 'Transmision de datos y redes de computadoras (Tapa blanda)', 34.15, 'src/lib16.jpg', 'libros'),
('lib17', 'Portal o la ciencia del videojuego', 20.90, 'src/lib17.jpg', 'libros'),
('lib18', 'El mundo genuino-arduino: curso practico de formacion', 28.02, 'src/lib18.jpg', 'libros'),
('lib19', 'Pensamientos para mi mismo', 19.95, 'src/lib19.jpg', 'libros'),
('lib2', 'El medico', 12.30, 'src/lib2.jpg', 'libros'),
('lib20', 'Cartas del diablo a su sobrino (Tapa blanda)', 10.45, 'src/lib20.jpg', 'libros'),
('lib21', 'La biblia de super nintendo (Tapa dura)', 38.00, 'src/lib21.jpg', 'libros'),
('lib22', 'La guia completa de la musica clasica (Tapa dura)', 24.70, 'src/lib22.jpg', 'libros'),
('lib3', 'La bruja (Tapa dura)', 22.80, 'src/lib3.jpg', 'libros'),
('lib4', 'El silencio del pantano (Tapa blanda)', 18.05, 'src/lib4.jpg', 'libros'),
('lib5', 'El guardian invisible', 9.45, 'src/lib5.jpg', 'libros'),
('lib6', 'El padrino (Bolsillo) (Tapa blanda)', 11.35, 'src/lib6.jpg', 'libros'),
('lib7', 'El pozo de la ascension (nacidos de la bruma [mistborn] 2) (Tapa dura)', 18.52, 'src/lib7.jpg', 'libros'),
('lib8', 'El ultimo deseo (Tapa dura)', 22.75, 'src/lib8.jpg', 'libros'),
('lib9', 'La comunidad del anillo (Bolsillo) (Tapa blanda)', 10.40, 'src/lib9.jpg', 'libros'),
('tel1', 'Smartphone Libre MEIZU M6 16 GB Azul', 125.99, 'src/tel1.jpg', 'telefonia'),
('tel10', 'Sony Xperia XA2 32 GB Plata movil libre', 279.90, 'src/tel10.jpg', 'telefonia'),
('tel11', 'LG STYLUS 2 K520 movil libre', 179.90, 'src/tel11.jpg', 'telefonia'),
('tel12', 'iPhone XR 64GB Amarillo movil libre', 940.00, 'src/tel12.jpg', 'telefonia'),
('tel2', 'Samsung Galaxy S9 Plus 64GB Morado movil libre', 699.90, 'src/tel2.jpg', 'telefonia'),
('tel3', 'Huawei Mate 20 Lite Azul Dual SIM movil libre', 299.90, 'src/tel3.jpg', 'telefonia'),
('tel4', 'iPhone 6s 32GB Oro rosa movil libre', 349.00, 'src/tel4.jpg', 'telefonia'),
('tel5', 'XIAOMI MI A2 lite 3+32GB Negro movil libre', 177.30, 'src/tel5.jpg', 'telefonia'),
('tel6', 'LG G7 ThinQ 4GB + 64GB Azul movil libre', 499.90, 'src/tel6.jpg', 'telefonia'),
('tel7', 'iPhone XS 64GB Gris espacial movil libre', 1109.00, 'src/tel7.jpg', 'telefonia'),
('tel8', 'Honor 9 lite 32GB + 3GB Azul movil libre', 149.90, 'src/tel8.jpg', 'telefonia'),
('tel9', 'Huawei Bundle Mate 20 Midnight Blue movil libre + Watch Huawei GT Brown', 799.90, 'src/tel9.jpg', 'telefonia'),
('vid1', 'Consola PS4 Slim de 500GB', 199.90, 'src/vid1.jpg', 'videojuegos'),
('vid10', 'Pack accesorios maletin deluxe para Nintendo Switch', 34.90, 'src/vid10.jpg', 'videojuegos'),
('vid11', 'Nintendo Classic Mini: NES', 59.90, 'src/vid11.jpg', 'videojuegos'),
('vid12', 'Mando inalambrico blanco para Xbox One', 54.90, 'src/vid12.jpg', 'videojuegos'),
('vid13', 'Consola Retro Micro Arcade Blueway de 8 BIT con 240 juegos', 16.90, 'src/vid13.jpg', 'videojuegos'),
('vid14', 'Ratchet & Clank/Hits PS4', 19.90, 'src/vid14.jpg', 'videojuegos'),
('vid15', 'Volante y pedal de simulacion de carreras Logitech G29', 259.90, 'src/vid15.jpg', 'videojuegos'),
('vid16', 'Consola SNK Neo Geo Mini', 129.90, 'src/vid16.jpg', 'videojuegos'),
('vid17', 'Captain Toad: Treasure Tracker Nintendo Switch', 34.90, 'src/vid17.jpg', 'videojuegos'),
('vid18', 'Mando con cable (azul transparente iluminado) Nacon para PS4 y PC', 34.90, 'src/vid18.jpg', 'videojuegos'),
('vid19', 'Detective Pikachu 3DS', 34.90, 'src/vid19.jpg', 'videojuegos'),
('vid2', 'Consola Xbox One S 1TB + 2 mandos', 199.90, 'src/vid2.jpg', 'videojuegos'),
('vid20', 'Consola Nintendo 2DS Blanca/Roja + New Super Mario Bros Special Edition (preinstalado)', 99.90, 'src/vid20.jpg', 'videojuegos'),
('vid21', 'Nintendo Labo, Kit de robot (Toy-Con 02) Nintendo Switch', 74.90, 'src/vid21.jpg', 'videojuegos'),
('vid22', 'Mando con cable Chrome Gold Mario Nintendo Switch', 34.90, 'src/vid22.jpg', 'videojuegos'),
('vid23', 'Teclado y raton TAC Four para PS4, PS3 y PC', 99.90, 'src/vid23.jpg', 'videojuegos'),
('vid24', 'Ni no Kuni II: El renacer de un reino, Kings Edition PS4', 89.90, 'src/vid24.jpg', 'videojuegos'),
('vid25', 'Nintendo Switch Lunch Box Kit - Zelda: Climbing link (GS Design)', 27.90, 'src/vid25.jpg', 'videojuegos'),
('vid26', 'Consola Retro Atari Flashback', 79.90, 'src/vid26.jpg', 'videojuegos'),
('vid27', 'Nintendo Labo, Kit variado (Toy-Con 01) Nintendo Switch', 64.90, 'src/vid27.jpg', 'videojuegos'),
('vid28', 'Tetris Effect (Compatible VR) PS4', 34.90, 'src/vid28.jpg', 'videojuegos'),
('vid29', 'Uncharted 4: El Desenlace del Ladron Edicion Coleccionista Libertalia PS4', 99.90, 'src/vid29.jpg', 'videojuegos'),
('vid3', 'Mario Kart 8 Deluxe Nintendo Switch', 54.90, 'src/vid3.jpg', 'videojuegos'),
('vid30', 'Consola Arcade - Street Fighter 2 Champion Edition', 499.90, 'src/vid30.jpg', 'videojuegos'),
('vid31', 'RiME Collector\'s Edition Nintendo Switch', 52.90, 'src/vid31.jpg', 'videojuegos'),
('vid32', 'No Man\'s Sky PS4', 29.90, 'src/vid32.jpg', 'videojuegos'),
('vid33', 'Consola Xbox One X de 1 TB + Forza Horizon 4 + Forza Motorsport 7', 449.90, 'src/vid33.jpg', 'videojuegos'),
('vid4', 'Consola Nintendo Switch Azul Neon/Rojo Neon', 329.90, 'src/vid4.jpg', 'videojuegos'),
('vid5', 'Marvel\'s Spider- Man PS4', 39.90, 'src/vid5.jpg', 'videojuegos'),
('vid6', 'Astro Bot VR PS4', 34.90, 'src/vid6.jpg', 'videojuegos'),
('vid7', 'Gafas Playstation VR V2 + Camara + juego VR Worlds (descarga) PS4', 199.90, 'src/vid7.jpg', 'videojuegos'),
('vid8', 'Mando inalambrico Dualshock Azul V2 PS4', 54.90, 'src/vid8.jpg', 'videojuegos'),
('vid9', 'Consola Playstation Classic', 59.90, 'src/vid9.jpg', 'videojuegos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `pass`) VALUES
('estrella', 'aa87ddc5b4c24406d26ddad771ef44b0'),
('juan', 'a94652aa97c7211ba8954dd15a3cf838'),
('pepe', '926e27eecdbc7a18858b3798ba99bddd'),
('usuario', 'f8032d5cae3de20fcec887f395ec9a6a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cesta`
--
ALTER TABLE `cesta`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cesta`
--
ALTER TABLE `cesta`
  ADD CONSTRAINT `cesta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`nombre`),
  ADD CONSTRAINT `cesta_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `productos` (`id_prod`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`nombre`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `productos` (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
