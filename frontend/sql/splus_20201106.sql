/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : splus

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 06/11/2020 17:40:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c_equipos
-- ----------------------------
DROP TABLE IF EXISTS `c_equipos`;
CREATE TABLE `c_equipos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_equipos
-- ----------------------------

-- ----------------------------
-- Table structure for c_estados
-- ----------------------------
DROP TABLE IF EXISTS `c_estados`;
CREATE TABLE `c_estados`  (
  `id` bigint(20) NOT NULL,
  `cve_ent` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inegi_cat_estado_cve_ent_unique`(`cve_ent`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_estados
-- ----------------------------
INSERT INTO `c_estados` VALUES (1, '01', 'AGUASCALIENTES');
INSERT INTO `c_estados` VALUES (2, '02', 'BAJA CALIFORNIA');
INSERT INTO `c_estados` VALUES (3, '03', 'BAJA CALIFORNIA SUR');
INSERT INTO `c_estados` VALUES (4, '04', 'CAMPECHE');
INSERT INTO `c_estados` VALUES (5, '05', 'COAHUILA DE ZARAGOZA');
INSERT INTO `c_estados` VALUES (6, '06', 'COLIMA');
INSERT INTO `c_estados` VALUES (7, '07', 'CHIAPAS');
INSERT INTO `c_estados` VALUES (8, '08', 'CHIHUAHUA');
INSERT INTO `c_estados` VALUES (9, '09', 'CIUDAD DE MÉXICO');
INSERT INTO `c_estados` VALUES (10, '10', 'DURANGO');
INSERT INTO `c_estados` VALUES (11, '11', 'GUANAJUATO');
INSERT INTO `c_estados` VALUES (12, '12', 'GUERRERO');
INSERT INTO `c_estados` VALUES (13, '13', 'HIDALGO');
INSERT INTO `c_estados` VALUES (14, '14', 'JALISCO');
INSERT INTO `c_estados` VALUES (15, '15', 'MÉXICO');
INSERT INTO `c_estados` VALUES (16, '16', 'MICHOACÁN DE OCAMPO');
INSERT INTO `c_estados` VALUES (17, '17', 'MORELOS');
INSERT INTO `c_estados` VALUES (18, '18', 'NAYARIT');
INSERT INTO `c_estados` VALUES (19, '19', 'NUEVO LEÓN');
INSERT INTO `c_estados` VALUES (20, '20', 'OAXACA');
INSERT INTO `c_estados` VALUES (21, '21', 'PUEBLA');
INSERT INTO `c_estados` VALUES (22, '22', 'QUERÉTARO');
INSERT INTO `c_estados` VALUES (23, '23', 'QUINTANA ROO');
INSERT INTO `c_estados` VALUES (24, '24', 'SAN LUIS POTOSÍ');
INSERT INTO `c_estados` VALUES (25, '25', 'SINALOA');
INSERT INTO `c_estados` VALUES (26, '26', 'SONORA');
INSERT INTO `c_estados` VALUES (27, '27', 'TABASCO');
INSERT INTO `c_estados` VALUES (28, '28', 'TAMAULIPAS');
INSERT INTO `c_estados` VALUES (29, '29', 'TLAXCALA');
INSERT INTO `c_estados` VALUES (30, '30', 'VERACRUZ DE IGNACIO DE LA LLAVE');
INSERT INTO `c_estados` VALUES (31, '31', 'YUCATÁN');
INSERT INTO `c_estados` VALUES (32, '32', 'ZACATECAS');

-- ----------------------------
-- Table structure for c_estatus_general
-- ----------------------------
DROP TABLE IF EXISTS `c_estatus_general`;
CREATE TABLE `c_estatus_general`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_estatus_general
-- ----------------------------

-- ----------------------------
-- Table structure for c_marca
-- ----------------------------
DROP TABLE IF EXISTS `c_marca`;
CREATE TABLE `c_marca`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_marca
-- ----------------------------

-- ----------------------------
-- Table structure for c_perfiles
-- ----------------------------
DROP TABLE IF EXISTS `c_perfiles`;
CREATE TABLE `c_perfiles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estatus` int(200) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_perfiles
-- ----------------------------
INSERT INTO `c_perfiles` VALUES (1, 'Administrador', 1);
INSERT INTO `c_perfiles` VALUES (2, 'Secretaria', 1);

-- ----------------------------
-- Table structure for c_sueldos
-- ----------------------------
DROP TABLE IF EXISTS `c_sueldos`;
CREATE TABLE `c_sueldos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_sueldos
-- ----------------------------
INSERT INTO `c_sueldos` VALUES (1, 'Sueldo Fijo', 1);
INSERT INTO `c_sueldos` VALUES (2, 'Comisión', 1);

-- ----------------------------
-- Table structure for cat_municipio
-- ----------------------------
DROP TABLE IF EXISTS `cat_municipio`;
CREATE TABLE `cat_municipio`  (
  `municipio_id` bigint(20) NOT NULL,
  `cve_ent` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cve_mun` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom_mun` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `cve_inegi` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`municipio_id`) USING BTREE,
  INDEX `inegi_cat_municipio_cve_ent_foreign`(`cve_ent`) USING BTREE,
  CONSTRAINT `inegi_cat_municipio_cve_ent_foreign` FOREIGN KEY (`cve_ent`) REFERENCES `cat_estado` (`cve_ent`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_municipio
-- ----------------------------
INSERT INTO `cat_municipio` VALUES (1, '01', '001', 'AGUASCALIENTES', NULL, NULL, '01001');
INSERT INTO `cat_municipio` VALUES (2, '01', '002', 'ASIENTOS', NULL, NULL, '01002');
INSERT INTO `cat_municipio` VALUES (3, '01', '003', 'CALVILLO', NULL, NULL, '01003');
INSERT INTO `cat_municipio` VALUES (4, '01', '004', 'COSÍO', NULL, NULL, '01004');
INSERT INTO `cat_municipio` VALUES (5, '01', '005', 'JESÚS MARÍA', NULL, NULL, '01005');
INSERT INTO `cat_municipio` VALUES (6, '01', '006', 'PABELLÓN DE ARTEAGA', NULL, NULL, '01006');
INSERT INTO `cat_municipio` VALUES (7, '01', '007', 'RINCÓN DE ROMOS', NULL, NULL, '01007');
INSERT INTO `cat_municipio` VALUES (8, '01', '008', 'SAN JOSÉ DE GRACIA', NULL, NULL, '01008');
INSERT INTO `cat_municipio` VALUES (9, '01', '009', 'TEPEZALÁ', NULL, NULL, '01009');
INSERT INTO `cat_municipio` VALUES (10, '01', '010', 'EL LLANO', NULL, NULL, '01010');
INSERT INTO `cat_municipio` VALUES (11, '01', '011', 'SAN FRANCISCO DE LOS ROMO', NULL, NULL, '01011');
INSERT INTO `cat_municipio` VALUES (12, '02', '001', 'ENSENADA', NULL, NULL, '02001');
INSERT INTO `cat_municipio` VALUES (13, '02', '002', 'MEXICALI', NULL, NULL, '02002');
INSERT INTO `cat_municipio` VALUES (14, '02', '003', 'TECATE', NULL, NULL, '02003');
INSERT INTO `cat_municipio` VALUES (15, '02', '004', 'TIJUANA', NULL, NULL, '02004');
INSERT INTO `cat_municipio` VALUES (16, '02', '005', 'PLAYAS DE ROSARITO', NULL, NULL, '02005');
INSERT INTO `cat_municipio` VALUES (17, '03', '001', 'COMONDÚ', NULL, NULL, '03001');
INSERT INTO `cat_municipio` VALUES (18, '03', '002', 'MULEGÉ', NULL, NULL, '03002');
INSERT INTO `cat_municipio` VALUES (19, '03', '003', 'LA PAZ', NULL, NULL, '03003');
INSERT INTO `cat_municipio` VALUES (20, '03', '008', 'LOS CABOS', NULL, NULL, '03008');
INSERT INTO `cat_municipio` VALUES (21, '03', '009', 'LORETO', NULL, NULL, '03009');
INSERT INTO `cat_municipio` VALUES (22, '04', '001', 'CALKINÍ', NULL, NULL, '04001');
INSERT INTO `cat_municipio` VALUES (23, '04', '002', 'CAMPECHE', NULL, NULL, '04002');
INSERT INTO `cat_municipio` VALUES (24, '04', '003', 'CARMEN', NULL, NULL, '04003');
INSERT INTO `cat_municipio` VALUES (25, '04', '004', 'CHAMPOTÓN', NULL, NULL, '04004');
INSERT INTO `cat_municipio` VALUES (26, '04', '005', 'HECELCHAKÁN', NULL, NULL, '04005');
INSERT INTO `cat_municipio` VALUES (27, '04', '006', 'HOPELCHÉN', NULL, NULL, '04006');
INSERT INTO `cat_municipio` VALUES (28, '04', '007', 'PALIZADA', NULL, NULL, '04007');
INSERT INTO `cat_municipio` VALUES (29, '04', '008', 'TENABO', NULL, NULL, '04008');
INSERT INTO `cat_municipio` VALUES (30, '04', '009', 'ESCÁRCEGA', NULL, NULL, '04009');
INSERT INTO `cat_municipio` VALUES (31, '04', '010', 'CALAKMUL', NULL, NULL, '04010');
INSERT INTO `cat_municipio` VALUES (32, '04', '011', 'CANDELARIA', NULL, NULL, '04011');
INSERT INTO `cat_municipio` VALUES (33, '05', '001', 'ABASOLO', NULL, NULL, '05001');
INSERT INTO `cat_municipio` VALUES (34, '05', '002', 'ACUÑA', NULL, NULL, '05002');
INSERT INTO `cat_municipio` VALUES (35, '05', '003', 'ALLENDE', NULL, NULL, '05003');
INSERT INTO `cat_municipio` VALUES (36, '05', '004', 'ARTEAGA', NULL, NULL, '05004');
INSERT INTO `cat_municipio` VALUES (37, '05', '005', 'CANDELA', NULL, NULL, '05005');
INSERT INTO `cat_municipio` VALUES (38, '05', '006', 'CASTAÑOS', NULL, NULL, '05006');
INSERT INTO `cat_municipio` VALUES (39, '05', '007', 'CUATRO CIÉNEGAS', NULL, NULL, '05007');
INSERT INTO `cat_municipio` VALUES (40, '05', '008', 'ESCOBEDO', NULL, NULL, '05008');
INSERT INTO `cat_municipio` VALUES (41, '05', '009', 'FRANCISCO I. MADERO', NULL, NULL, '05009');
INSERT INTO `cat_municipio` VALUES (42, '05', '010', 'FRONTERA', NULL, NULL, '05010');
INSERT INTO `cat_municipio` VALUES (43, '05', '011', 'GENERAL CEPEDA', NULL, NULL, '05011');
INSERT INTO `cat_municipio` VALUES (44, '05', '012', 'GUERRERO', NULL, NULL, '05012');
INSERT INTO `cat_municipio` VALUES (45, '05', '013', 'HIDALGO', NULL, NULL, '05013');
INSERT INTO `cat_municipio` VALUES (46, '05', '014', 'JIMÉNEZ', NULL, NULL, '05014');
INSERT INTO `cat_municipio` VALUES (47, '05', '015', 'JUÁREZ', NULL, NULL, '05015');
INSERT INTO `cat_municipio` VALUES (48, '05', '016', 'LAMADRID', NULL, NULL, '05016');
INSERT INTO `cat_municipio` VALUES (49, '05', '017', 'MATAMOROS', NULL, NULL, '05017');
INSERT INTO `cat_municipio` VALUES (50, '05', '018', 'MONCLOVA', NULL, NULL, '05018');
INSERT INTO `cat_municipio` VALUES (51, '05', '019', 'MORELOS', NULL, NULL, '05019');
INSERT INTO `cat_municipio` VALUES (52, '05', '020', 'MÚZQUIZ', NULL, NULL, '05020');
INSERT INTO `cat_municipio` VALUES (53, '05', '021', 'NADADORES', NULL, NULL, '05021');
INSERT INTO `cat_municipio` VALUES (54, '05', '022', 'NAVA', NULL, NULL, '05022');
INSERT INTO `cat_municipio` VALUES (55, '05', '023', 'OCAMPO', NULL, NULL, '05023');
INSERT INTO `cat_municipio` VALUES (56, '05', '024', 'PARRAS', NULL, NULL, '05024');
INSERT INTO `cat_municipio` VALUES (57, '05', '025', 'PIEDRAS NEGRAS', NULL, NULL, '05025');
INSERT INTO `cat_municipio` VALUES (58, '05', '026', 'PROGRESO', NULL, NULL, '05026');
INSERT INTO `cat_municipio` VALUES (59, '05', '027', 'RAMOS ARIZPE', NULL, NULL, '05027');
INSERT INTO `cat_municipio` VALUES (60, '05', '028', 'SABINAS', NULL, NULL, '05028');
INSERT INTO `cat_municipio` VALUES (61, '05', '029', 'SACRAMENTO', NULL, NULL, '05029');
INSERT INTO `cat_municipio` VALUES (62, '05', '030', 'SALTILLO', NULL, NULL, '05030');
INSERT INTO `cat_municipio` VALUES (63, '05', '031', 'SAN BUENAVENTURA', NULL, NULL, '05031');
INSERT INTO `cat_municipio` VALUES (64, '05', '032', 'SAN JUAN DE SABINAS', NULL, NULL, '05032');
INSERT INTO `cat_municipio` VALUES (65, '05', '033', 'SAN PEDRO', NULL, NULL, '05033');
INSERT INTO `cat_municipio` VALUES (66, '05', '034', 'SIERRA MOJADA', NULL, NULL, '05034');
INSERT INTO `cat_municipio` VALUES (67, '05', '035', 'TORREÓN', NULL, NULL, '05035');
INSERT INTO `cat_municipio` VALUES (68, '05', '036', 'VIESCA', NULL, NULL, '05036');
INSERT INTO `cat_municipio` VALUES (69, '05', '037', 'VILLA UNIÓN', NULL, NULL, '05037');
INSERT INTO `cat_municipio` VALUES (70, '05', '038', 'ZARAGOZA', NULL, NULL, '05038');
INSERT INTO `cat_municipio` VALUES (71, '06', '001', 'ARMERÍA', NULL, NULL, '06001');
INSERT INTO `cat_municipio` VALUES (72, '06', '002', 'COLIMA', NULL, NULL, '06002');
INSERT INTO `cat_municipio` VALUES (73, '06', '003', 'COMALA', NULL, NULL, '06003');
INSERT INTO `cat_municipio` VALUES (74, '06', '004', 'COQUIMATLÁN', NULL, NULL, '06004');
INSERT INTO `cat_municipio` VALUES (75, '06', '005', 'CUAUHTÉMOC', NULL, NULL, '06005');
INSERT INTO `cat_municipio` VALUES (76, '06', '006', 'IXTLAHUACÁN', NULL, NULL, '06006');
INSERT INTO `cat_municipio` VALUES (77, '06', '007', 'MANZANILLO', NULL, NULL, '06007');
INSERT INTO `cat_municipio` VALUES (78, '06', '008', 'MINATITLÁN', NULL, NULL, '06008');
INSERT INTO `cat_municipio` VALUES (79, '06', '009', 'TECOMÁN', NULL, NULL, '06009');
INSERT INTO `cat_municipio` VALUES (80, '06', '010', 'VILLA DE ÁLVAREZ', NULL, NULL, '06010');
INSERT INTO `cat_municipio` VALUES (81, '07', '001', 'ACACOYAGUA', NULL, NULL, '07001');
INSERT INTO `cat_municipio` VALUES (82, '07', '002', 'ACALA', NULL, NULL, '07002');
INSERT INTO `cat_municipio` VALUES (83, '07', '003', 'ACAPETAHUA', NULL, NULL, '07003');
INSERT INTO `cat_municipio` VALUES (84, '07', '004', 'ALTAMIRANO', NULL, NULL, '07004');
INSERT INTO `cat_municipio` VALUES (85, '07', '005', 'AMATÁN', NULL, NULL, '07005');
INSERT INTO `cat_municipio` VALUES (86, '07', '006', 'AMATENANGO DE LA FRONTERA', NULL, NULL, '07006');
INSERT INTO `cat_municipio` VALUES (87, '07', '007', 'AMATENANGO DEL VALLE', NULL, NULL, '07007');
INSERT INTO `cat_municipio` VALUES (88, '07', '008', 'ANGEL ALBINO CORZO', NULL, NULL, '07008');
INSERT INTO `cat_municipio` VALUES (89, '07', '009', 'ARRIAGA', NULL, NULL, '07009');
INSERT INTO `cat_municipio` VALUES (90, '07', '010', 'BEJUCAL DE OCAMPO', NULL, NULL, '07010');
INSERT INTO `cat_municipio` VALUES (91, '07', '011', 'BELLA VISTA', NULL, NULL, '07011');
INSERT INTO `cat_municipio` VALUES (92, '07', '012', 'BERRIOZÁBAL', NULL, NULL, '07012');
INSERT INTO `cat_municipio` VALUES (93, '07', '013', 'BOCHIL', NULL, NULL, '07013');
INSERT INTO `cat_municipio` VALUES (94, '07', '014', 'EL BOSQUE', NULL, NULL, '07014');
INSERT INTO `cat_municipio` VALUES (95, '07', '015', 'CACAHOATÁN', NULL, NULL, '07015');
INSERT INTO `cat_municipio` VALUES (96, '07', '016', 'CATAZAJÁ', NULL, NULL, '07016');
INSERT INTO `cat_municipio` VALUES (97, '07', '017', 'CINTALAPA', NULL, NULL, '07017');
INSERT INTO `cat_municipio` VALUES (98, '07', '018', 'COAPILLA', NULL, NULL, '07018');
INSERT INTO `cat_municipio` VALUES (99, '07', '019', 'COMITÁN DE DOMÍNGUEZ', NULL, NULL, '07019');
INSERT INTO `cat_municipio` VALUES (100, '07', '020', 'LA CONCORDIA', NULL, NULL, '07020');
INSERT INTO `cat_municipio` VALUES (101, '07', '021', 'COPAINALÁ', NULL, NULL, '07021');
INSERT INTO `cat_municipio` VALUES (102, '07', '022', 'CHALCHIHUITÁN', NULL, NULL, '07022');
INSERT INTO `cat_municipio` VALUES (103, '07', '023', 'CHAMULA', NULL, NULL, '07023');
INSERT INTO `cat_municipio` VALUES (104, '07', '024', 'CHANAL', NULL, NULL, '07024');
INSERT INTO `cat_municipio` VALUES (105, '07', '025', 'CHAPULTENANGO', NULL, NULL, '07025');
INSERT INTO `cat_municipio` VALUES (106, '07', '026', 'CHENALHÓ', NULL, NULL, '07026');
INSERT INTO `cat_municipio` VALUES (107, '07', '027', 'CHIAPA DE CORZO', NULL, NULL, '07027');
INSERT INTO `cat_municipio` VALUES (108, '07', '028', 'CHIAPILLA', NULL, NULL, '07028');
INSERT INTO `cat_municipio` VALUES (109, '07', '029', 'CHICOASÉN', NULL, NULL, '07029');
INSERT INTO `cat_municipio` VALUES (110, '07', '030', 'CHICOMUSELO', NULL, NULL, '07030');
INSERT INTO `cat_municipio` VALUES (111, '07', '031', 'CHILÓN', NULL, NULL, '07031');
INSERT INTO `cat_municipio` VALUES (112, '07', '032', 'ESCUINTLA', NULL, NULL, '07032');
INSERT INTO `cat_municipio` VALUES (113, '07', '033', 'FRANCISCO LEÓN', NULL, NULL, '07033');
INSERT INTO `cat_municipio` VALUES (114, '07', '034', 'FRONTERA COMALAPA', NULL, NULL, '07034');
INSERT INTO `cat_municipio` VALUES (115, '07', '035', 'FRONTERA HIDALGO', NULL, NULL, '07035');
INSERT INTO `cat_municipio` VALUES (116, '07', '036', 'LA GRANDEZA', NULL, NULL, '07036');
INSERT INTO `cat_municipio` VALUES (117, '07', '037', 'HUEHUETÁN', NULL, NULL, '07037');
INSERT INTO `cat_municipio` VALUES (118, '07', '038', 'HUIXTÁN', NULL, NULL, '07038');
INSERT INTO `cat_municipio` VALUES (119, '07', '039', 'HUITIUPÁN', NULL, NULL, '07039');
INSERT INTO `cat_municipio` VALUES (120, '07', '040', 'HUIXTLA', NULL, NULL, '07040');
INSERT INTO `cat_municipio` VALUES (121, '07', '041', 'LA INDEPENDENCIA', NULL, NULL, '07041');
INSERT INTO `cat_municipio` VALUES (122, '07', '042', 'IXHUATÁN', NULL, NULL, '07042');
INSERT INTO `cat_municipio` VALUES (123, '07', '043', 'IXTACOMITÁN', NULL, NULL, '07043');
INSERT INTO `cat_municipio` VALUES (124, '07', '044', 'IXTAPA', NULL, NULL, '07044');
INSERT INTO `cat_municipio` VALUES (125, '07', '045', 'IXTAPANGAJOYA', NULL, NULL, '07045');
INSERT INTO `cat_municipio` VALUES (126, '07', '046', 'JIQUIPILAS', NULL, NULL, '07046');
INSERT INTO `cat_municipio` VALUES (127, '07', '047', 'JITOTOL', NULL, NULL, '07047');
INSERT INTO `cat_municipio` VALUES (128, '07', '048', 'JUÁREZ', NULL, NULL, '07048');
INSERT INTO `cat_municipio` VALUES (129, '07', '049', 'LARRÁINZAR', NULL, NULL, '07049');
INSERT INTO `cat_municipio` VALUES (130, '07', '050', 'LA LIBERTAD', NULL, NULL, '07050');
INSERT INTO `cat_municipio` VALUES (131, '07', '051', 'MAPASTEPEC', NULL, NULL, '07051');
INSERT INTO `cat_municipio` VALUES (132, '07', '052', 'LAS MARGARITAS', NULL, NULL, '07052');
INSERT INTO `cat_municipio` VALUES (133, '07', '053', 'MAZAPA DE MADERO', NULL, NULL, '07053');
INSERT INTO `cat_municipio` VALUES (134, '07', '054', 'MAZATÁN', NULL, NULL, '07054');
INSERT INTO `cat_municipio` VALUES (135, '07', '055', 'METAPA', NULL, NULL, '07055');
INSERT INTO `cat_municipio` VALUES (136, '07', '056', 'MITONTIC', NULL, NULL, '07056');
INSERT INTO `cat_municipio` VALUES (137, '07', '057', 'MOTOZINTLA', NULL, NULL, '07057');
INSERT INTO `cat_municipio` VALUES (138, '07', '058', 'NICOLÁS RUÍZ', NULL, NULL, '07058');
INSERT INTO `cat_municipio` VALUES (139, '07', '059', 'OCOSINGO', NULL, NULL, '07059');
INSERT INTO `cat_municipio` VALUES (140, '07', '060', 'OCOTEPEC', NULL, NULL, '07060');
INSERT INTO `cat_municipio` VALUES (141, '07', '061', 'OCOZOCOAUTLA DE ESPINOSA', NULL, NULL, '07061');
INSERT INTO `cat_municipio` VALUES (142, '07', '062', 'OSTUACÁN', NULL, NULL, '07062');
INSERT INTO `cat_municipio` VALUES (143, '07', '063', 'OSUMACINTA', NULL, NULL, '07063');
INSERT INTO `cat_municipio` VALUES (144, '07', '064', 'OXCHUC', NULL, NULL, '07064');
INSERT INTO `cat_municipio` VALUES (145, '07', '065', 'PALENQUE', NULL, NULL, '07065');
INSERT INTO `cat_municipio` VALUES (146, '07', '066', 'PANTELHÓ', NULL, NULL, '07066');
INSERT INTO `cat_municipio` VALUES (147, '07', '067', 'PANTEPEC', NULL, NULL, '07067');
INSERT INTO `cat_municipio` VALUES (148, '07', '068', 'PICHUCALCO', NULL, NULL, '07068');
INSERT INTO `cat_municipio` VALUES (149, '07', '069', 'PIJIJIAPAN', NULL, NULL, '07069');
INSERT INTO `cat_municipio` VALUES (150, '07', '070', 'EL PORVENIR', NULL, NULL, '07070');
INSERT INTO `cat_municipio` VALUES (151, '07', '071', 'VILLA COMALTITLÁN', NULL, NULL, '07071');
INSERT INTO `cat_municipio` VALUES (152, '07', '072', 'PUEBLO NUEVO SOLISTAHUACÁN', NULL, NULL, '07072');
INSERT INTO `cat_municipio` VALUES (153, '07', '073', 'RAYÓN', NULL, NULL, '07073');
INSERT INTO `cat_municipio` VALUES (154, '07', '074', 'REFORMA', NULL, NULL, '07074');
INSERT INTO `cat_municipio` VALUES (155, '07', '075', 'LAS ROSAS', NULL, NULL, '07075');
INSERT INTO `cat_municipio` VALUES (156, '07', '076', 'SABANILLA', NULL, NULL, '07076');
INSERT INTO `cat_municipio` VALUES (157, '07', '077', 'SALTO DE AGUA', NULL, NULL, '07077');
INSERT INTO `cat_municipio` VALUES (158, '07', '078', 'SAN CRISTÓBAL DE LAS CASAS', NULL, NULL, '07078');
INSERT INTO `cat_municipio` VALUES (159, '07', '079', 'SAN FERNANDO', NULL, NULL, '07079');
INSERT INTO `cat_municipio` VALUES (160, '07', '080', 'SILTEPEC', NULL, NULL, '07080');
INSERT INTO `cat_municipio` VALUES (161, '07', '081', 'SIMOJOVEL', NULL, NULL, '07081');
INSERT INTO `cat_municipio` VALUES (162, '07', '082', 'SITALÁ', NULL, NULL, '07082');
INSERT INTO `cat_municipio` VALUES (163, '07', '083', 'SOCOLTENANGO', NULL, NULL, '07083');
INSERT INTO `cat_municipio` VALUES (164, '07', '084', 'SOLOSUCHIAPA', NULL, NULL, '07084');
INSERT INTO `cat_municipio` VALUES (165, '07', '085', 'SOYALÓ', NULL, NULL, '07085');
INSERT INTO `cat_municipio` VALUES (166, '07', '086', 'SUCHIAPA', NULL, NULL, '07086');
INSERT INTO `cat_municipio` VALUES (167, '07', '087', 'SUCHIATE', NULL, NULL, '07087');
INSERT INTO `cat_municipio` VALUES (168, '07', '088', 'SUNUAPA', NULL, NULL, '07088');
INSERT INTO `cat_municipio` VALUES (169, '07', '089', 'TAPACHULA', NULL, NULL, '07089');
INSERT INTO `cat_municipio` VALUES (170, '07', '090', 'TAPALAPA', NULL, NULL, '07090');
INSERT INTO `cat_municipio` VALUES (171, '07', '091', 'TAPILULA', NULL, NULL, '07091');
INSERT INTO `cat_municipio` VALUES (172, '07', '092', 'TECPATÁN', NULL, NULL, '07092');
INSERT INTO `cat_municipio` VALUES (173, '07', '093', 'TENEJAPA', NULL, NULL, '07093');
INSERT INTO `cat_municipio` VALUES (174, '07', '094', 'TEOPISCA', NULL, NULL, '07094');
INSERT INTO `cat_municipio` VALUES (175, '07', '096', 'TILA', NULL, NULL, '07096');
INSERT INTO `cat_municipio` VALUES (176, '07', '097', 'TONALÁ', NULL, NULL, '07097');
INSERT INTO `cat_municipio` VALUES (177, '07', '098', 'TOTOLAPA', NULL, NULL, '07098');
INSERT INTO `cat_municipio` VALUES (178, '07', '099', 'LA TRINITARIA', NULL, NULL, '07099');
INSERT INTO `cat_municipio` VALUES (179, '07', '100', 'TUMBALÁ', NULL, NULL, '07100');
INSERT INTO `cat_municipio` VALUES (180, '07', '101', 'TUXTLA GUTIÉRREZ', NULL, NULL, '07101');
INSERT INTO `cat_municipio` VALUES (181, '07', '102', 'TUXTLA CHICO', NULL, NULL, '07102');
INSERT INTO `cat_municipio` VALUES (182, '07', '103', 'TUZANTÁN', NULL, NULL, '07103');
INSERT INTO `cat_municipio` VALUES (183, '07', '104', 'TZIMOL', NULL, NULL, '07104');
INSERT INTO `cat_municipio` VALUES (184, '07', '105', 'UNIÓN JUÁREZ', NULL, NULL, '07105');
INSERT INTO `cat_municipio` VALUES (185, '07', '106', 'VENUSTIANO CARRANZA', NULL, NULL, '07106');
INSERT INTO `cat_municipio` VALUES (186, '07', '107', 'VILLA CORZO', NULL, NULL, '07107');
INSERT INTO `cat_municipio` VALUES (187, '07', '108', 'VILLAFLORES', NULL, NULL, '07108');
INSERT INTO `cat_municipio` VALUES (188, '07', '109', 'YAJALÓN', NULL, NULL, '07109');
INSERT INTO `cat_municipio` VALUES (189, '07', '110', 'SAN LUCAS', NULL, NULL, '07110');
INSERT INTO `cat_municipio` VALUES (190, '07', '111', 'ZINACANTÁN', NULL, NULL, '07111');
INSERT INTO `cat_municipio` VALUES (191, '07', '112', 'SAN JUAN CANCUC', NULL, NULL, '07112');
INSERT INTO `cat_municipio` VALUES (192, '07', '113', 'ALDAMA', NULL, NULL, '07113');
INSERT INTO `cat_municipio` VALUES (193, '07', '114', 'BENEMÉRITO DE LAS AMÉRICAS', NULL, NULL, '07114');
INSERT INTO `cat_municipio` VALUES (194, '07', '115', 'MARAVILLA TENEJAPA', NULL, NULL, '07115');
INSERT INTO `cat_municipio` VALUES (195, '07', '116', 'MARQUÉS DE COMILLAS', NULL, NULL, '07116');
INSERT INTO `cat_municipio` VALUES (196, '07', '117', 'MONTECRISTO DE GUERRERO', NULL, NULL, '07117');
INSERT INTO `cat_municipio` VALUES (197, '07', '118', 'SAN ANDRÉS DURAZNAL', NULL, NULL, '07118');
INSERT INTO `cat_municipio` VALUES (198, '07', '119', 'SANTIAGO EL PINAR', NULL, NULL, '07119');
INSERT INTO `cat_municipio` VALUES (199, '08', '001', 'AHUMADA', NULL, NULL, '08001');
INSERT INTO `cat_municipio` VALUES (200, '08', '002', 'ALDAMA', NULL, NULL, '08002');
INSERT INTO `cat_municipio` VALUES (201, '08', '003', 'ALLENDE', NULL, NULL, '08003');
INSERT INTO `cat_municipio` VALUES (202, '08', '004', 'AQUILES SERDÁN', NULL, NULL, '08004');
INSERT INTO `cat_municipio` VALUES (203, '08', '005', 'ASCENSIÓN', NULL, NULL, '08005');
INSERT INTO `cat_municipio` VALUES (204, '08', '006', 'BACHÍNIVA', NULL, NULL, '08006');
INSERT INTO `cat_municipio` VALUES (205, '08', '007', 'BALLEZA', NULL, NULL, '08007');
INSERT INTO `cat_municipio` VALUES (206, '08', '009', 'BOCOYNA', NULL, NULL, '08009');
INSERT INTO `cat_municipio` VALUES (207, '08', '010', 'BUENAVENTURA', NULL, NULL, '08010');
INSERT INTO `cat_municipio` VALUES (208, '08', '011', 'CAMARGO', NULL, NULL, '08011');
INSERT INTO `cat_municipio` VALUES (209, '08', '012', 'CARICHÍ', NULL, NULL, '08012');
INSERT INTO `cat_municipio` VALUES (210, '08', '013', 'CASAS GRANDES', NULL, NULL, '08013');
INSERT INTO `cat_municipio` VALUES (211, '08', '014', 'CORONADO', NULL, NULL, '08014');
INSERT INTO `cat_municipio` VALUES (212, '08', '015', 'COYAME DEL SOTOL', NULL, NULL, '08015');
INSERT INTO `cat_municipio` VALUES (213, '08', '016', 'LA CRUZ', NULL, NULL, '08016');
INSERT INTO `cat_municipio` VALUES (214, '08', '017', 'CUAUHTÉMOC', NULL, NULL, '08017');
INSERT INTO `cat_municipio` VALUES (215, '08', '018', 'CUSIHUIRIACHI', NULL, NULL, '08018');
INSERT INTO `cat_municipio` VALUES (216, '08', '019', 'CHIHUAHUA', NULL, NULL, '08019');
INSERT INTO `cat_municipio` VALUES (217, '08', '020', 'CHÍNIPAS', NULL, NULL, '08020');
INSERT INTO `cat_municipio` VALUES (218, '08', '021', 'DELICIAS', NULL, NULL, '08021');
INSERT INTO `cat_municipio` VALUES (219, '08', '022', 'DR. BELISARIO DOMÍNGUEZ', NULL, NULL, '08022');
INSERT INTO `cat_municipio` VALUES (220, '08', '023', 'GALEANA', NULL, NULL, '08023');
INSERT INTO `cat_municipio` VALUES (221, '08', '024', 'SANTA ISABEL', NULL, NULL, '08024');
INSERT INTO `cat_municipio` VALUES (222, '08', '025', 'GÓMEZ FARÍAS', NULL, NULL, '08025');
INSERT INTO `cat_municipio` VALUES (223, '08', '026', 'GRAN MORELOS', NULL, NULL, '08026');
INSERT INTO `cat_municipio` VALUES (224, '08', '027', 'GUACHOCHI', NULL, NULL, '08027');
INSERT INTO `cat_municipio` VALUES (225, '08', '028', 'GUADALUPE', NULL, NULL, '08028');
INSERT INTO `cat_municipio` VALUES (226, '08', '029', 'GUADALUPE Y CALVO', NULL, NULL, '08029');
INSERT INTO `cat_municipio` VALUES (227, '08', '030', 'GUAZAPARES', NULL, NULL, '08030');
INSERT INTO `cat_municipio` VALUES (228, '08', '031', 'GUERRERO', NULL, NULL, '08031');
INSERT INTO `cat_municipio` VALUES (229, '08', '032', 'HIDALGO DEL PARRAL', NULL, NULL, '08032');
INSERT INTO `cat_municipio` VALUES (230, '08', '033', 'HUEJOTITÁN', NULL, NULL, '08033');
INSERT INTO `cat_municipio` VALUES (231, '08', '034', 'IGNACIO ZARAGOZA', NULL, NULL, '08034');
INSERT INTO `cat_municipio` VALUES (232, '08', '035', 'JANOS', NULL, NULL, '08035');
INSERT INTO `cat_municipio` VALUES (233, '08', '036', 'JIMÉNEZ', NULL, NULL, '08036');
INSERT INTO `cat_municipio` VALUES (234, '08', '037', 'JUÁREZ', NULL, NULL, '08037');
INSERT INTO `cat_municipio` VALUES (235, '08', '038', 'JULIMES', NULL, NULL, '08038');
INSERT INTO `cat_municipio` VALUES (236, '08', '039', 'LÓPEZ', NULL, NULL, '08039');
INSERT INTO `cat_municipio` VALUES (237, '08', '040', 'MADERA', NULL, NULL, '08040');
INSERT INTO `cat_municipio` VALUES (238, '08', '041', 'MAGUARICHI', NULL, NULL, '08041');
INSERT INTO `cat_municipio` VALUES (239, '08', '042', 'MANUEL BENAVIDES', NULL, NULL, '08042');
INSERT INTO `cat_municipio` VALUES (240, '08', '043', 'MATACHÍ', NULL, NULL, '08043');
INSERT INTO `cat_municipio` VALUES (241, '08', '044', 'MATAMOROS', NULL, NULL, '08044');
INSERT INTO `cat_municipio` VALUES (242, '08', '045', 'MEOQUI', NULL, NULL, '08045');
INSERT INTO `cat_municipio` VALUES (243, '08', '046', 'MORELOS', NULL, NULL, '08046');
INSERT INTO `cat_municipio` VALUES (244, '08', '047', 'MORIS', NULL, NULL, '08047');
INSERT INTO `cat_municipio` VALUES (245, '08', '048', 'NAMIQUIPA', NULL, NULL, '08048');
INSERT INTO `cat_municipio` VALUES (246, '08', '049', 'NONOAVA', NULL, NULL, '08049');
INSERT INTO `cat_municipio` VALUES (247, '08', '050', 'NUEVO CASAS GRANDES', NULL, NULL, '08050');
INSERT INTO `cat_municipio` VALUES (248, '08', '051', 'OCAMPO', NULL, NULL, '08051');
INSERT INTO `cat_municipio` VALUES (249, '08', '052', 'OJINAGA', NULL, NULL, '08052');
INSERT INTO `cat_municipio` VALUES (250, '08', '053', 'PRAXEDIS G. GUERRERO', NULL, NULL, '08053');
INSERT INTO `cat_municipio` VALUES (251, '08', '054', 'RIVA PALACIO', NULL, NULL, '08054');
INSERT INTO `cat_municipio` VALUES (252, '08', '055', 'ROSALES', NULL, NULL, '08055');
INSERT INTO `cat_municipio` VALUES (253, '08', '056', 'ROSARIO', NULL, NULL, '08056');
INSERT INTO `cat_municipio` VALUES (254, '08', '057', 'SAN FRANCISCO DE BORJA', NULL, NULL, '08057');
INSERT INTO `cat_municipio` VALUES (255, '08', '058', 'SAN FRANCISCO DE CONCHOS', NULL, NULL, '08058');
INSERT INTO `cat_municipio` VALUES (256, '08', '059', 'SAN FRANCISCO DEL ORO', NULL, NULL, '08059');
INSERT INTO `cat_municipio` VALUES (257, '08', '060', 'SANTA BÁRBARA', NULL, NULL, '08060');
INSERT INTO `cat_municipio` VALUES (258, '08', '061', 'SATEVÓ', NULL, NULL, '08061');
INSERT INTO `cat_municipio` VALUES (259, '08', '062', 'SAUCILLO', NULL, NULL, '08062');
INSERT INTO `cat_municipio` VALUES (260, '08', '063', 'TEMÓSACHIC', NULL, NULL, '08063');
INSERT INTO `cat_municipio` VALUES (261, '08', '064', 'EL TULE', NULL, NULL, '08064');
INSERT INTO `cat_municipio` VALUES (262, '08', '065', 'URIQUE', NULL, NULL, '08065');
INSERT INTO `cat_municipio` VALUES (263, '08', '066', 'URUACHI', NULL, NULL, '08066');
INSERT INTO `cat_municipio` VALUES (264, '08', '067', 'VALLE DE ZARAGOZA', NULL, NULL, '08067');
INSERT INTO `cat_municipio` VALUES (265, '09', '002', 'AZCAPOTZALCO', NULL, NULL, '09002');
INSERT INTO `cat_municipio` VALUES (266, '09', '003', 'COYOACÁN', NULL, NULL, '09003');
INSERT INTO `cat_municipio` VALUES (267, '09', '004', 'CUAJIMALPA DE MORELOS', NULL, NULL, '09004');
INSERT INTO `cat_municipio` VALUES (268, '09', '005', 'GUSTAVO A. MADERO', NULL, NULL, '09005');
INSERT INTO `cat_municipio` VALUES (269, '09', '006', 'IZTACALCO', NULL, NULL, '09006');
INSERT INTO `cat_municipio` VALUES (270, '09', '007', 'IZTAPALAPA', NULL, NULL, '09007');
INSERT INTO `cat_municipio` VALUES (271, '09', '008', 'LA MAGDALENA CONTRERAS', NULL, NULL, '09008');
INSERT INTO `cat_municipio` VALUES (272, '09', '009', 'MILPA ALTA', NULL, NULL, '09009');
INSERT INTO `cat_municipio` VALUES (273, '09', '010', 'ÁLVARO OBREGÓN', NULL, NULL, '09010');
INSERT INTO `cat_municipio` VALUES (274, '09', '011', 'TLÁHUAC', NULL, NULL, '09011');
INSERT INTO `cat_municipio` VALUES (275, '09', '012', 'TLALPAN', NULL, NULL, '09012');
INSERT INTO `cat_municipio` VALUES (276, '09', '013', 'XOCHIMILCO', NULL, NULL, '09013');
INSERT INTO `cat_municipio` VALUES (277, '09', '014', 'BENITO JUÁREZ', NULL, NULL, '09014');
INSERT INTO `cat_municipio` VALUES (278, '09', '015', 'CUAUHTÉMOC', NULL, NULL, '09015');
INSERT INTO `cat_municipio` VALUES (279, '09', '016', 'MIGUEL HIDALGO', NULL, NULL, '09016');
INSERT INTO `cat_municipio` VALUES (280, '09', '017', 'VENUSTIANO CARRANZA', NULL, NULL, '09017');
INSERT INTO `cat_municipio` VALUES (281, '10', '001', 'CANATLÁN', NULL, NULL, '10001');
INSERT INTO `cat_municipio` VALUES (282, '10', '002', 'CANELAS', NULL, NULL, '10002');
INSERT INTO `cat_municipio` VALUES (283, '10', '003', 'CONETO DE COMONFORT', NULL, NULL, '10003');
INSERT INTO `cat_municipio` VALUES (284, '10', '004', 'CUENCAMÉ', NULL, NULL, '10004');
INSERT INTO `cat_municipio` VALUES (285, '10', '005', 'DURANGO', NULL, NULL, '10005');
INSERT INTO `cat_municipio` VALUES (286, '10', '006', 'GENERAL SIMÓN BOLÍVAR', NULL, NULL, '10006');
INSERT INTO `cat_municipio` VALUES (287, '10', '007', 'GÓMEZ PALACIO', NULL, NULL, '10007');
INSERT INTO `cat_municipio` VALUES (288, '10', '008', 'GUADALUPE VICTORIA', NULL, NULL, '10008');
INSERT INTO `cat_municipio` VALUES (289, '10', '009', 'GUANACEVÍ', NULL, NULL, '10009');
INSERT INTO `cat_municipio` VALUES (290, '10', '010', 'HIDALGO', NULL, NULL, '10010');
INSERT INTO `cat_municipio` VALUES (291, '10', '011', 'INDÉ', NULL, NULL, '10011');
INSERT INTO `cat_municipio` VALUES (292, '10', '012', 'LERDO', NULL, NULL, '10012');
INSERT INTO `cat_municipio` VALUES (293, '10', '013', 'MAPIMÍ', NULL, NULL, '10013');
INSERT INTO `cat_municipio` VALUES (294, '10', '014', 'MEZQUITAL', NULL, NULL, '10014');
INSERT INTO `cat_municipio` VALUES (295, '10', '015', 'NAZAS', NULL, NULL, '10015');
INSERT INTO `cat_municipio` VALUES (296, '10', '016', 'NOMBRE DE DIOS', NULL, NULL, '10016');
INSERT INTO `cat_municipio` VALUES (297, '10', '017', 'OCAMPO', NULL, NULL, '10017');
INSERT INTO `cat_municipio` VALUES (298, '10', '018', 'EL ORO', NULL, NULL, '10018');
INSERT INTO `cat_municipio` VALUES (299, '10', '019', 'OTÁEZ', NULL, NULL, '10019');
INSERT INTO `cat_municipio` VALUES (300, '10', '020', 'PÁNUCO DE CORONADO', NULL, NULL, '10020');
INSERT INTO `cat_municipio` VALUES (301, '10', '021', 'PEÑÓN BLANCO', NULL, NULL, '10021');
INSERT INTO `cat_municipio` VALUES (302, '10', '022', 'POANAS', NULL, NULL, '10022');
INSERT INTO `cat_municipio` VALUES (303, '10', '023', 'PUEBLO NUEVO', NULL, NULL, '10023');
INSERT INTO `cat_municipio` VALUES (304, '10', '024', 'RODEO', NULL, NULL, '10024');
INSERT INTO `cat_municipio` VALUES (305, '10', '025', 'SAN BERNARDO', NULL, NULL, '10025');
INSERT INTO `cat_municipio` VALUES (306, '10', '026', 'SAN DIMAS', NULL, NULL, '10026');
INSERT INTO `cat_municipio` VALUES (307, '10', '027', 'SAN JUAN DE GUADALUPE', NULL, NULL, '10027');
INSERT INTO `cat_municipio` VALUES (308, '10', '028', 'SAN JUAN DEL RÍO', NULL, NULL, '10028');
INSERT INTO `cat_municipio` VALUES (309, '10', '029', 'SAN LUIS DEL CORDERO', NULL, NULL, '10029');
INSERT INTO `cat_municipio` VALUES (310, '10', '030', 'SAN PEDRO DEL GALLO', NULL, NULL, '10030');
INSERT INTO `cat_municipio` VALUES (311, '10', '031', 'SANTA CLARA', NULL, NULL, '10031');
INSERT INTO `cat_municipio` VALUES (312, '10', '032', 'SANTIAGO PAPASQUIARO', NULL, NULL, '10032');
INSERT INTO `cat_municipio` VALUES (313, '10', '033', 'SÚCHIL', NULL, NULL, '10033');
INSERT INTO `cat_municipio` VALUES (314, '10', '034', 'TAMAZULA', NULL, NULL, '10034');
INSERT INTO `cat_municipio` VALUES (315, '10', '035', 'TEPEHUANES', NULL, NULL, '10035');
INSERT INTO `cat_municipio` VALUES (316, '10', '036', 'TLAHUALILO', NULL, NULL, '10036');
INSERT INTO `cat_municipio` VALUES (317, '10', '037', 'TOPIA', NULL, NULL, '10037');
INSERT INTO `cat_municipio` VALUES (318, '10', '038', 'VICENTE GUERRERO', NULL, NULL, '10038');
INSERT INTO `cat_municipio` VALUES (319, '10', '039', 'NUEVO IDEAL', NULL, NULL, '10039');
INSERT INTO `cat_municipio` VALUES (320, '11', '001', 'ABASOLO', NULL, NULL, '11001');
INSERT INTO `cat_municipio` VALUES (321, '11', '002', 'ACÁMBARO', NULL, NULL, '11002');
INSERT INTO `cat_municipio` VALUES (322, '11', '003', 'SAN MIGUEL DE ALLENDE', NULL, NULL, '11003');
INSERT INTO `cat_municipio` VALUES (323, '11', '004', 'APASEO EL ALTO', NULL, NULL, '11004');
INSERT INTO `cat_municipio` VALUES (324, '11', '005', 'APASEO EL GRANDE', NULL, NULL, '11005');
INSERT INTO `cat_municipio` VALUES (325, '11', '006', 'ATARJEA', NULL, NULL, '11006');
INSERT INTO `cat_municipio` VALUES (326, '11', '007', 'CELAYA', NULL, NULL, '11007');
INSERT INTO `cat_municipio` VALUES (327, '11', '008', 'MANUEL DOBLADO', NULL, NULL, '11008');
INSERT INTO `cat_municipio` VALUES (328, '11', '009', 'COMONFORT', NULL, NULL, '11009');
INSERT INTO `cat_municipio` VALUES (329, '11', '010', 'CORONEO', NULL, NULL, '11010');
INSERT INTO `cat_municipio` VALUES (330, '11', '011', 'CORTAZAR', NULL, NULL, '11011');
INSERT INTO `cat_municipio` VALUES (331, '11', '012', 'CUERÁMARO', NULL, NULL, '11012');
INSERT INTO `cat_municipio` VALUES (332, '11', '013', 'DOCTOR MORA', NULL, NULL, '11013');
INSERT INTO `cat_municipio` VALUES (333, '11', '014', 'DOLORES HIDALGO CUNA DE LA INDEPENDENCIA NACIONAL', NULL, NULL, '11014');
INSERT INTO `cat_municipio` VALUES (334, '11', '015', 'GUANAJUATO', NULL, NULL, '11015');
INSERT INTO `cat_municipio` VALUES (335, '11', '016', 'HUANÍMARO', NULL, NULL, '11016');
INSERT INTO `cat_municipio` VALUES (336, '11', '017', 'IRAPUATO', NULL, NULL, '11017');
INSERT INTO `cat_municipio` VALUES (337, '11', '018', 'JARAL DEL PROGRESO', NULL, NULL, '11018');
INSERT INTO `cat_municipio` VALUES (338, '11', '019', 'JERÉCUARO', NULL, NULL, '11019');
INSERT INTO `cat_municipio` VALUES (339, '11', '020', 'LEÓN', NULL, NULL, '11020');
INSERT INTO `cat_municipio` VALUES (340, '11', '021', 'MOROLEÓN', NULL, NULL, '11021');
INSERT INTO `cat_municipio` VALUES (341, '11', '022', 'OCAMPO', NULL, NULL, '11022');
INSERT INTO `cat_municipio` VALUES (342, '11', '023', 'PÉNJAMO', NULL, NULL, '11023');
INSERT INTO `cat_municipio` VALUES (343, '11', '024', 'PUEBLO NUEVO', NULL, NULL, '11024');
INSERT INTO `cat_municipio` VALUES (344, '11', '025', 'PURÍSIMA DEL RINCÓN', NULL, NULL, '11025');
INSERT INTO `cat_municipio` VALUES (345, '11', '026', 'ROMITA', NULL, NULL, '11026');
INSERT INTO `cat_municipio` VALUES (346, '11', '027', 'SALAMANCA', NULL, NULL, '11027');
INSERT INTO `cat_municipio` VALUES (347, '11', '028', 'SALVATIERRA', NULL, NULL, '11028');
INSERT INTO `cat_municipio` VALUES (348, '11', '029', 'SAN DIEGO DE LA UNIÓN', NULL, NULL, '11029');
INSERT INTO `cat_municipio` VALUES (349, '11', '030', 'SAN FELIPE', NULL, NULL, '11030');
INSERT INTO `cat_municipio` VALUES (350, '11', '031', 'SAN FRANCISCO DEL RINCÓN', NULL, NULL, '11031');
INSERT INTO `cat_municipio` VALUES (351, '11', '032', 'SAN JOSÉ ITURBIDE', NULL, NULL, '11032');
INSERT INTO `cat_municipio` VALUES (352, '11', '033', 'SAN LUIS DE LA PAZ', NULL, NULL, '11033');
INSERT INTO `cat_municipio` VALUES (353, '11', '034', 'SANTA CATARINA', NULL, NULL, '11034');
INSERT INTO `cat_municipio` VALUES (354, '11', '035', 'SANTA CRUZ DE JUVENTINO ROSAS', NULL, NULL, '11035');
INSERT INTO `cat_municipio` VALUES (355, '11', '036', 'SANTIAGO MARAVATÍO', NULL, NULL, '11036');
INSERT INTO `cat_municipio` VALUES (356, '11', '037', 'SILAO DE LA VICTORIA', NULL, NULL, '11037');
INSERT INTO `cat_municipio` VALUES (357, '11', '038', 'TARANDACUAO', NULL, NULL, '11038');
INSERT INTO `cat_municipio` VALUES (358, '11', '039', 'TARIMORO', NULL, NULL, '11039');
INSERT INTO `cat_municipio` VALUES (359, '11', '040', 'TIERRA BLANCA', NULL, NULL, '11040');
INSERT INTO `cat_municipio` VALUES (360, '11', '041', 'URIANGATO', NULL, NULL, '11041');
INSERT INTO `cat_municipio` VALUES (361, '11', '042', 'VALLE DE SANTIAGO', NULL, NULL, '11042');
INSERT INTO `cat_municipio` VALUES (362, '11', '043', 'VICTORIA', NULL, NULL, '11043');
INSERT INTO `cat_municipio` VALUES (363, '11', '044', 'VILLAGRÁN', NULL, NULL, '11044');
INSERT INTO `cat_municipio` VALUES (364, '11', '045', 'XICHÚ', NULL, NULL, '11045');
INSERT INTO `cat_municipio` VALUES (365, '11', '046', 'YURIRIA', NULL, NULL, '11046');
INSERT INTO `cat_municipio` VALUES (366, '12', '001', 'ACAPULCO DE JUÁREZ', NULL, NULL, '12001');
INSERT INTO `cat_municipio` VALUES (367, '12', '002', 'AHUACUOTZINGO', NULL, NULL, '12002');
INSERT INTO `cat_municipio` VALUES (368, '12', '003', 'AJUCHITLÁN DEL PROGRESO', NULL, NULL, '12003');
INSERT INTO `cat_municipio` VALUES (369, '12', '004', 'ALCOZAUCA DE GUERRERO', NULL, NULL, '12004');
INSERT INTO `cat_municipio` VALUES (370, '12', '005', 'ALPOYECA', NULL, NULL, '12005');
INSERT INTO `cat_municipio` VALUES (371, '12', '006', 'APAXTLA', NULL, NULL, '12006');
INSERT INTO `cat_municipio` VALUES (372, '12', '007', 'ARCELIA', NULL, NULL, '12007');
INSERT INTO `cat_municipio` VALUES (373, '12', '008', 'ATENANGO DEL RÍO', NULL, NULL, '12008');
INSERT INTO `cat_municipio` VALUES (374, '12', '009', 'ATLAMAJALCINGO DEL MONTE', NULL, NULL, '12009');
INSERT INTO `cat_municipio` VALUES (375, '12', '010', 'ATLIXTAC', NULL, NULL, '12010');
INSERT INTO `cat_municipio` VALUES (376, '12', '011', 'ATOYAC DE ÁLVAREZ', NULL, NULL, '12011');
INSERT INTO `cat_municipio` VALUES (377, '12', '012', 'AYUTLA DE LOS LIBRES', NULL, NULL, '12012');
INSERT INTO `cat_municipio` VALUES (378, '12', '013', 'AZOYÚ', NULL, NULL, '12013');
INSERT INTO `cat_municipio` VALUES (379, '12', '014', 'BENITO JUÁREZ', NULL, NULL, '12014');
INSERT INTO `cat_municipio` VALUES (380, '12', '015', 'BUENAVISTA DE CUÉLLAR', NULL, NULL, '12015');
INSERT INTO `cat_municipio` VALUES (381, '12', '016', 'COAHUAYUTLA DE JOSÉ MARÍA IZAZAGA', NULL, NULL, '12016');
INSERT INTO `cat_municipio` VALUES (382, '12', '017', 'COCULA', NULL, NULL, '12017');
INSERT INTO `cat_municipio` VALUES (383, '12', '018', 'COPALA', NULL, NULL, '12018');
INSERT INTO `cat_municipio` VALUES (384, '12', '019', 'COPALILLO', NULL, NULL, '12019');
INSERT INTO `cat_municipio` VALUES (385, '12', '020', 'COPANATOYAC', NULL, NULL, '12020');
INSERT INTO `cat_municipio` VALUES (386, '12', '021', 'COYUCA DE BENÍTEZ', NULL, NULL, '12021');
INSERT INTO `cat_municipio` VALUES (387, '12', '022', 'COYUCA DE CATALÁN', NULL, NULL, '12022');
INSERT INTO `cat_municipio` VALUES (388, '12', '023', 'CUAJINICUILAPA', NULL, NULL, '12023');
INSERT INTO `cat_municipio` VALUES (389, '12', '024', 'CUALÁC', NULL, NULL, '12024');
INSERT INTO `cat_municipio` VALUES (390, '12', '025', 'CUAUTEPEC', NULL, NULL, '12025');
INSERT INTO `cat_municipio` VALUES (391, '12', '026', 'CUETZALA DEL PROGRESO', NULL, NULL, '12026');
INSERT INTO `cat_municipio` VALUES (392, '12', '027', 'CUTZAMALA DE PINZÓN', NULL, NULL, '12027');
INSERT INTO `cat_municipio` VALUES (393, '12', '028', 'CHILAPA DE ÁLVAREZ', NULL, NULL, '12028');
INSERT INTO `cat_municipio` VALUES (394, '12', '029', 'CHILPANCINGO DE LOS BRAVO', NULL, NULL, '12029');
INSERT INTO `cat_municipio` VALUES (395, '12', '030', 'FLORENCIO VILLARREAL', NULL, NULL, '12030');
INSERT INTO `cat_municipio` VALUES (396, '12', '031', 'GENERAL CANUTO A. NERI', NULL, NULL, '12031');
INSERT INTO `cat_municipio` VALUES (397, '12', '032', 'GENERAL HELIODORO CASTILLO', NULL, NULL, '12032');
INSERT INTO `cat_municipio` VALUES (398, '12', '033', 'HUAMUXTITLÁN', NULL, NULL, '12033');
INSERT INTO `cat_municipio` VALUES (399, '12', '034', 'HUITZUCO DE LOS FIGUEROA', NULL, NULL, '12034');
INSERT INTO `cat_municipio` VALUES (400, '12', '035', 'IGUALA DE LA INDEPENDENCIA', NULL, NULL, '12035');
INSERT INTO `cat_municipio` VALUES (401, '12', '036', 'IGUALAPA', NULL, NULL, '12036');
INSERT INTO `cat_municipio` VALUES (402, '12', '037', 'IXCATEOPAN DE CUAUHTÉMOC', NULL, NULL, '12037');
INSERT INTO `cat_municipio` VALUES (403, '12', '038', 'ZIHUATANEJO DE AZUETA', NULL, NULL, '12038');
INSERT INTO `cat_municipio` VALUES (404, '12', '039', 'JUAN R. ESCUDERO', NULL, NULL, '12039');
INSERT INTO `cat_municipio` VALUES (405, '12', '040', 'LEONARDO BRAVO', NULL, NULL, '12040');
INSERT INTO `cat_municipio` VALUES (406, '12', '041', 'MALINALTEPEC', NULL, NULL, '12041');
INSERT INTO `cat_municipio` VALUES (407, '12', '042', 'MÁRTIR DE CUILAPAN', NULL, NULL, '12042');
INSERT INTO `cat_municipio` VALUES (408, '12', '043', 'METLATÓNOC', NULL, NULL, '12043');
INSERT INTO `cat_municipio` VALUES (409, '12', '044', 'MOCHITLÁN', NULL, NULL, '12044');
INSERT INTO `cat_municipio` VALUES (410, '12', '045', 'OLINALÁ', NULL, NULL, '12045');
INSERT INTO `cat_municipio` VALUES (411, '12', '046', 'OMETEPEC', NULL, NULL, '12046');
INSERT INTO `cat_municipio` VALUES (412, '12', '047', 'PEDRO ASCENCIO ALQUISIRAS', NULL, NULL, '12047');
INSERT INTO `cat_municipio` VALUES (413, '12', '048', 'PETATLÁN', NULL, NULL, '12048');
INSERT INTO `cat_municipio` VALUES (414, '12', '049', 'PILCAYA', NULL, NULL, '12049');
INSERT INTO `cat_municipio` VALUES (415, '12', '050', 'PUNGARABATO', NULL, NULL, '12050');
INSERT INTO `cat_municipio` VALUES (416, '12', '051', 'QUECHULTENANGO', NULL, NULL, '12051');
INSERT INTO `cat_municipio` VALUES (417, '12', '052', 'SAN LUIS ACATLÁN', NULL, NULL, '12052');
INSERT INTO `cat_municipio` VALUES (418, '12', '053', 'SAN MARCOS', NULL, NULL, '12053');
INSERT INTO `cat_municipio` VALUES (419, '12', '054', 'SAN MIGUEL TOTOLAPAN', NULL, NULL, '12054');
INSERT INTO `cat_municipio` VALUES (420, '12', '055', 'TAXCO DE ALARCÓN', NULL, NULL, '12055');
INSERT INTO `cat_municipio` VALUES (421, '12', '056', 'TECOANAPA', NULL, NULL, '12056');
INSERT INTO `cat_municipio` VALUES (422, '12', '057', 'TÉCPAN DE GALEANA', NULL, NULL, '12057');
INSERT INTO `cat_municipio` VALUES (423, '12', '058', 'TELOLOAPAN', NULL, NULL, '12058');
INSERT INTO `cat_municipio` VALUES (424, '12', '059', 'TEPECOACUILCO DE TRUJANO', NULL, NULL, '12059');
INSERT INTO `cat_municipio` VALUES (425, '12', '060', 'TETIPAC', NULL, NULL, '12060');
INSERT INTO `cat_municipio` VALUES (426, '12', '061', 'TIXTLA DE GUERRERO', NULL, NULL, '12061');
INSERT INTO `cat_municipio` VALUES (427, '12', '062', 'TLACOACHISTLAHUACA', NULL, NULL, '12062');
INSERT INTO `cat_municipio` VALUES (428, '12', '063', 'TLACOAPA', NULL, NULL, '12063');
INSERT INTO `cat_municipio` VALUES (429, '12', '064', 'TLALCHAPA', NULL, NULL, '12064');
INSERT INTO `cat_municipio` VALUES (430, '12', '065', 'TLALIXTAQUILLA DE MALDONADO', NULL, NULL, '12065');
INSERT INTO `cat_municipio` VALUES (431, '12', '066', 'TLAPA DE COMONFORT', NULL, NULL, '12066');
INSERT INTO `cat_municipio` VALUES (432, '12', '067', 'TLAPEHUALA', NULL, NULL, '12067');
INSERT INTO `cat_municipio` VALUES (433, '12', '068', 'LA UNIÓN DE ISIDORO MONTES DE OCA', NULL, NULL, '12068');
INSERT INTO `cat_municipio` VALUES (434, '12', '069', 'XALPATLÁHUAC', NULL, NULL, '12069');
INSERT INTO `cat_municipio` VALUES (435, '12', '070', 'XOCHIHUEHUETLÁN', NULL, NULL, '12070');
INSERT INTO `cat_municipio` VALUES (436, '12', '071', 'XOCHISTLAHUACA', NULL, NULL, '12071');
INSERT INTO `cat_municipio` VALUES (437, '12', '072', 'ZAPOTITLÁN TABLAS', NULL, NULL, '12072');
INSERT INTO `cat_municipio` VALUES (438, '12', '073', 'ZIRÁNDARO', NULL, NULL, '12073');
INSERT INTO `cat_municipio` VALUES (439, '12', '074', 'ZITLALA', NULL, NULL, '12074');
INSERT INTO `cat_municipio` VALUES (440, '12', '075', 'EDUARDO NERI', NULL, NULL, '12075');
INSERT INTO `cat_municipio` VALUES (441, '12', '076', 'ACATEPEC', NULL, NULL, '12076');
INSERT INTO `cat_municipio` VALUES (442, '12', '077', 'MARQUELIA', NULL, NULL, '12077');
INSERT INTO `cat_municipio` VALUES (443, '12', '078', 'COCHOAPA EL GRANDE', NULL, NULL, '12078');
INSERT INTO `cat_municipio` VALUES (444, '12', '079', 'JOSÉ JOAQUÍN DE HERRERA', NULL, NULL, '12079');
INSERT INTO `cat_municipio` VALUES (445, '12', '080', 'JUCHITÁN', NULL, NULL, '12080');
INSERT INTO `cat_municipio` VALUES (446, '12', '081', 'ILIATENCO', NULL, NULL, '12081');
INSERT INTO `cat_municipio` VALUES (447, '13', '001', 'ACATLÁN', NULL, NULL, '13001');
INSERT INTO `cat_municipio` VALUES (448, '13', '002', 'ACAXOCHITLÁN', NULL, NULL, '13002');
INSERT INTO `cat_municipio` VALUES (449, '13', '003', 'ACTOPAN', NULL, NULL, '13003');
INSERT INTO `cat_municipio` VALUES (450, '13', '004', 'AGUA BLANCA DE ITURBIDE', NULL, NULL, '13004');
INSERT INTO `cat_municipio` VALUES (451, '13', '005', 'AJACUBA', NULL, NULL, '13005');
INSERT INTO `cat_municipio` VALUES (452, '13', '006', 'ALFAJAYUCAN', NULL, NULL, '13006');
INSERT INTO `cat_municipio` VALUES (453, '13', '007', 'ALMOLOYA', NULL, NULL, '13007');
INSERT INTO `cat_municipio` VALUES (454, '13', '008', 'APAN', NULL, NULL, '13008');
INSERT INTO `cat_municipio` VALUES (455, '13', '009', 'EL ARENAL', NULL, NULL, '13009');
INSERT INTO `cat_municipio` VALUES (456, '13', '010', 'ATITALAQUIA', NULL, NULL, '13010');
INSERT INTO `cat_municipio` VALUES (457, '13', '011', 'ATLAPEXCO', NULL, NULL, '13011');
INSERT INTO `cat_municipio` VALUES (458, '13', '012', 'ATOTONILCO EL GRANDE', NULL, NULL, '13012');
INSERT INTO `cat_municipio` VALUES (459, '13', '013', 'ATOTONILCO DE TULA', NULL, NULL, '13013');
INSERT INTO `cat_municipio` VALUES (460, '13', '014', 'CALNALI', NULL, NULL, '13014');
INSERT INTO `cat_municipio` VALUES (461, '13', '015', 'CARDONAL', NULL, NULL, '13015');
INSERT INTO `cat_municipio` VALUES (462, '13', '016', 'CUAUTEPEC DE HINOJOSA', NULL, NULL, '13016');
INSERT INTO `cat_municipio` VALUES (463, '13', '017', 'CHAPANTONGO', NULL, NULL, '13017');
INSERT INTO `cat_municipio` VALUES (464, '13', '018', 'CHAPULHUACÁN', NULL, NULL, '13018');
INSERT INTO `cat_municipio` VALUES (465, '13', '019', 'CHILCUAUTLA', NULL, NULL, '13019');
INSERT INTO `cat_municipio` VALUES (466, '13', '020', 'ELOXOCHITLÁN', NULL, NULL, '13020');
INSERT INTO `cat_municipio` VALUES (467, '13', '021', 'EMILIANO ZAPATA', NULL, NULL, '13021');
INSERT INTO `cat_municipio` VALUES (468, '13', '022', 'EPAZOYUCAN', NULL, NULL, '13022');
INSERT INTO `cat_municipio` VALUES (469, '13', '023', 'FRANCISCO I. MADERO', NULL, NULL, '13023');
INSERT INTO `cat_municipio` VALUES (470, '13', '024', 'HUASCA DE OCAMPO', NULL, NULL, '13024');
INSERT INTO `cat_municipio` VALUES (471, '13', '025', 'HUAUTLA', NULL, NULL, '13025');
INSERT INTO `cat_municipio` VALUES (472, '13', '026', 'HUAZALINGO', NULL, NULL, '13026');
INSERT INTO `cat_municipio` VALUES (473, '13', '027', 'HUEHUETLA', NULL, NULL, '13027');
INSERT INTO `cat_municipio` VALUES (474, '13', '028', 'HUEJUTLA DE REYES', NULL, NULL, '13028');
INSERT INTO `cat_municipio` VALUES (475, '13', '029', 'HUICHAPAN', NULL, NULL, '13029');
INSERT INTO `cat_municipio` VALUES (476, '13', '030', 'IXMIQUILPAN', NULL, NULL, '13030');
INSERT INTO `cat_municipio` VALUES (477, '13', '031', 'JACALA DE LEDEZMA', NULL, NULL, '13031');
INSERT INTO `cat_municipio` VALUES (478, '13', '032', 'JALTOCÁN', NULL, NULL, '13032');
INSERT INTO `cat_municipio` VALUES (479, '13', '033', 'JUÁREZ HIDALGO', NULL, NULL, '13033');
INSERT INTO `cat_municipio` VALUES (480, '13', '034', 'LOLOTLA', NULL, NULL, '13034');
INSERT INTO `cat_municipio` VALUES (481, '13', '035', 'METEPEC', NULL, NULL, '13035');
INSERT INTO `cat_municipio` VALUES (482, '13', '036', 'SAN AGUSTÍN METZQUITITLÁN', NULL, NULL, '13036');
INSERT INTO `cat_municipio` VALUES (483, '13', '037', 'METZTITLÁN', NULL, NULL, '13037');
INSERT INTO `cat_municipio` VALUES (484, '13', '038', 'MINERAL DEL CHICO', NULL, NULL, '13038');
INSERT INTO `cat_municipio` VALUES (485, '13', '039', 'MINERAL DEL MONTE', NULL, NULL, '13039');
INSERT INTO `cat_municipio` VALUES (486, '13', '040', 'LA MISIÓN', NULL, NULL, '13040');
INSERT INTO `cat_municipio` VALUES (487, '13', '041', 'MIXQUIAHUALA DE JUÁREZ', NULL, NULL, '13041');
INSERT INTO `cat_municipio` VALUES (488, '13', '042', 'MOLANGO DE ESCAMILLA', NULL, NULL, '13042');
INSERT INTO `cat_municipio` VALUES (489, '13', '043', 'NICOLÁS FLORES', NULL, NULL, '13043');
INSERT INTO `cat_municipio` VALUES (490, '13', '044', 'NOPALA DE VILLAGRÁN', NULL, NULL, '13044');
INSERT INTO `cat_municipio` VALUES (491, '13', '045', 'OMITLÁN DE JUÁREZ', NULL, NULL, '13045');
INSERT INTO `cat_municipio` VALUES (492, '13', '046', 'SAN FELIPE ORIZATLÁN', NULL, NULL, '13046');
INSERT INTO `cat_municipio` VALUES (493, '13', '047', 'PACULA', NULL, NULL, '13047');
INSERT INTO `cat_municipio` VALUES (494, '13', '048', 'PACHUCA DE SOTO', NULL, NULL, '13048');
INSERT INTO `cat_municipio` VALUES (495, '13', '049', 'PISAFLORES', NULL, NULL, '13049');
INSERT INTO `cat_municipio` VALUES (496, '13', '050', 'PROGRESO DE OBREGÓN', NULL, NULL, '13050');
INSERT INTO `cat_municipio` VALUES (497, '13', '051', 'MINERAL DE LA REFORMA', NULL, NULL, '13051');
INSERT INTO `cat_municipio` VALUES (498, '13', '052', 'SAN AGUSTÍN TLAXIACA', NULL, NULL, '13052');
INSERT INTO `cat_municipio` VALUES (499, '13', '053', 'SAN BARTOLO TUTOTEPEC', NULL, NULL, '13053');
INSERT INTO `cat_municipio` VALUES (500, '13', '054', 'SAN SALVADOR', NULL, NULL, '13054');
INSERT INTO `cat_municipio` VALUES (501, '13', '055', 'SANTIAGO DE ANAYA', NULL, NULL, '13055');
INSERT INTO `cat_municipio` VALUES (502, '13', '056', 'SANTIAGO TULANTEPEC DE LUGO GUERRERO', NULL, NULL, '13056');
INSERT INTO `cat_municipio` VALUES (503, '13', '057', 'SINGUILUCAN', NULL, NULL, '13057');
INSERT INTO `cat_municipio` VALUES (504, '13', '058', 'TASQUILLO', NULL, NULL, '13058');
INSERT INTO `cat_municipio` VALUES (505, '13', '059', 'TECOZAUTLA', NULL, NULL, '13059');
INSERT INTO `cat_municipio` VALUES (506, '13', '060', 'TENANGO DE DORIA', NULL, NULL, '13060');
INSERT INTO `cat_municipio` VALUES (507, '13', '061', 'TEPEAPULCO', NULL, NULL, '13061');
INSERT INTO `cat_municipio` VALUES (508, '13', '062', 'TEPEHUACÁN DE GUERRERO', NULL, NULL, '13062');
INSERT INTO `cat_municipio` VALUES (509, '13', '063', 'TEPEJI DEL RÍO DE OCAMPO', NULL, NULL, '13063');
INSERT INTO `cat_municipio` VALUES (510, '13', '064', 'TEPETITLÁN', NULL, NULL, '13064');
INSERT INTO `cat_municipio` VALUES (511, '13', '065', 'TETEPANGO', NULL, NULL, '13065');
INSERT INTO `cat_municipio` VALUES (512, '13', '066', 'VILLA DE TEZONTEPEC', NULL, NULL, '13066');
INSERT INTO `cat_municipio` VALUES (513, '13', '067', 'TEZONTEPEC DE ALDAMA', NULL, NULL, '13067');
INSERT INTO `cat_municipio` VALUES (514, '13', '068', 'TIANGUISTENGO', NULL, NULL, '13068');
INSERT INTO `cat_municipio` VALUES (515, '13', '069', 'TIZAYUCA', NULL, NULL, '13069');
INSERT INTO `cat_municipio` VALUES (516, '13', '070', 'TLAHUELILPAN', NULL, NULL, '13070');
INSERT INTO `cat_municipio` VALUES (517, '13', '071', 'TLAHUILTEPA', NULL, NULL, '13071');
INSERT INTO `cat_municipio` VALUES (518, '13', '072', 'TLANALAPA', NULL, NULL, '13072');
INSERT INTO `cat_municipio` VALUES (519, '13', '073', 'TLANCHINOL', NULL, NULL, '13073');
INSERT INTO `cat_municipio` VALUES (520, '13', '074', 'TLAXCOAPAN', NULL, NULL, '13074');
INSERT INTO `cat_municipio` VALUES (521, '13', '075', 'TOLCAYUCA', NULL, NULL, '13075');
INSERT INTO `cat_municipio` VALUES (522, '13', '076', 'TULA DE ALLENDE', NULL, NULL, '13076');
INSERT INTO `cat_municipio` VALUES (523, '13', '077', 'TULANCINGO DE BRAVO', NULL, NULL, '13077');
INSERT INTO `cat_municipio` VALUES (524, '13', '078', 'XOCHIATIPAN', NULL, NULL, '13078');
INSERT INTO `cat_municipio` VALUES (525, '13', '079', 'XOCHICOATLÁN', NULL, NULL, '13079');
INSERT INTO `cat_municipio` VALUES (526, '13', '080', 'YAHUALICA', NULL, NULL, '13080');
INSERT INTO `cat_municipio` VALUES (527, '13', '081', 'ZACUALTIPÁN DE ÁNGELES', NULL, NULL, '13081');
INSERT INTO `cat_municipio` VALUES (528, '13', '082', 'ZAPOTLÁN DE JUÁREZ', NULL, NULL, '13082');
INSERT INTO `cat_municipio` VALUES (529, '13', '083', 'ZEMPOALA', NULL, NULL, '13083');
INSERT INTO `cat_municipio` VALUES (530, '13', '084', 'ZIMAPÁN', NULL, NULL, '13084');
INSERT INTO `cat_municipio` VALUES (531, '14', '001', 'ACATIC', NULL, NULL, '14001');
INSERT INTO `cat_municipio` VALUES (532, '14', '002', 'ACATLÁN DE JUÁREZ', NULL, NULL, '14002');
INSERT INTO `cat_municipio` VALUES (533, '14', '003', 'AHUALULCO DE MERCADO', NULL, NULL, '14003');
INSERT INTO `cat_municipio` VALUES (534, '14', '004', 'AMACUECA', NULL, NULL, '14004');
INSERT INTO `cat_municipio` VALUES (535, '14', '005', 'AMATITÁN', NULL, NULL, '14005');
INSERT INTO `cat_municipio` VALUES (536, '14', '006', 'AMECA', NULL, NULL, '14006');
INSERT INTO `cat_municipio` VALUES (537, '14', '007', 'SAN JUANITO DE ESCOBEDO', NULL, NULL, '14007');
INSERT INTO `cat_municipio` VALUES (538, '14', '008', 'ARANDAS', NULL, NULL, '14008');
INSERT INTO `cat_municipio` VALUES (539, '14', '009', 'EL ARENAL', NULL, NULL, '14009');
INSERT INTO `cat_municipio` VALUES (540, '14', '010', 'ATEMAJAC DE BRIZUELA', NULL, NULL, '14010');
INSERT INTO `cat_municipio` VALUES (541, '14', '011', 'ATENGO', NULL, NULL, '14011');
INSERT INTO `cat_municipio` VALUES (542, '14', '012', 'ATENGUILLO', NULL, NULL, '14012');
INSERT INTO `cat_municipio` VALUES (543, '14', '013', 'ATOTONILCO EL ALTO', NULL, NULL, '14013');
INSERT INTO `cat_municipio` VALUES (544, '14', '014', 'ATOYAC', NULL, NULL, '14014');
INSERT INTO `cat_municipio` VALUES (545, '14', '015', 'AUTLÁN DE NAVARRO', NULL, NULL, '14015');
INSERT INTO `cat_municipio` VALUES (546, '14', '016', 'AYOTLÁN', NULL, NULL, '14016');
INSERT INTO `cat_municipio` VALUES (547, '14', '017', 'AYUTLA', NULL, NULL, '14017');
INSERT INTO `cat_municipio` VALUES (548, '14', '018', 'LA BARCA', NULL, NULL, '14018');
INSERT INTO `cat_municipio` VALUES (549, '14', '019', 'BOLAÑOS', NULL, NULL, '14019');
INSERT INTO `cat_municipio` VALUES (550, '14', '020', 'CABO CORRIENTES', NULL, NULL, '14020');
INSERT INTO `cat_municipio` VALUES (551, '14', '021', 'CASIMIRO CASTILLO', NULL, NULL, '14021');
INSERT INTO `cat_municipio` VALUES (552, '14', '022', 'CIHUATLÁN', NULL, NULL, '14022');
INSERT INTO `cat_municipio` VALUES (553, '14', '023', 'ZAPOTLÁN EL GRANDE', NULL, NULL, '14023');
INSERT INTO `cat_municipio` VALUES (554, '14', '024', 'COCULA', NULL, NULL, '14024');
INSERT INTO `cat_municipio` VALUES (555, '14', '025', 'COLOTLÁN', NULL, NULL, '14025');
INSERT INTO `cat_municipio` VALUES (556, '14', '026', 'CONCEPCIÓN DE BUENOS AIRES', NULL, NULL, '14026');
INSERT INTO `cat_municipio` VALUES (557, '14', '027', 'CUAUTITLÁN DE GARCÍA BARRAGÁN', NULL, NULL, '14027');
INSERT INTO `cat_municipio` VALUES (558, '14', '028', 'CUAUTLA', NULL, NULL, '14028');
INSERT INTO `cat_municipio` VALUES (559, '14', '029', 'CUQUÍO', NULL, NULL, '14029');
INSERT INTO `cat_municipio` VALUES (560, '14', '030', 'CHAPALA', NULL, NULL, '14030');
INSERT INTO `cat_municipio` VALUES (561, '14', '031', 'CHIMALTITÁN', NULL, NULL, '14031');
INSERT INTO `cat_municipio` VALUES (562, '14', '032', 'CHIQUILISTLÁN', NULL, NULL, '14032');
INSERT INTO `cat_municipio` VALUES (563, '14', '033', 'DEGOLLADO', NULL, NULL, '14033');
INSERT INTO `cat_municipio` VALUES (564, '14', '034', 'EJUTLA', NULL, NULL, '14034');
INSERT INTO `cat_municipio` VALUES (565, '14', '035', 'ENCARNACIÓN DE DÍAZ', NULL, NULL, '14035');
INSERT INTO `cat_municipio` VALUES (566, '14', '036', 'ETZATLÁN', NULL, NULL, '14036');
INSERT INTO `cat_municipio` VALUES (567, '14', '037', 'EL GRULLO', NULL, NULL, '14037');
INSERT INTO `cat_municipio` VALUES (568, '14', '038', 'GUACHINANGO', NULL, NULL, '14038');
INSERT INTO `cat_municipio` VALUES (569, '14', '039', 'GUADALAJARA', NULL, NULL, '14039');
INSERT INTO `cat_municipio` VALUES (570, '14', '040', 'HOSTOTIPAQUILLO', NULL, NULL, '14040');
INSERT INTO `cat_municipio` VALUES (571, '14', '041', 'HUEJÚCAR', NULL, NULL, '14041');
INSERT INTO `cat_municipio` VALUES (572, '14', '042', 'HUEJUQUILLA EL ALTO', NULL, NULL, '14042');
INSERT INTO `cat_municipio` VALUES (573, '14', '043', 'LA HUERTA', NULL, NULL, '14043');
INSERT INTO `cat_municipio` VALUES (574, '14', '044', 'IXTLAHUACÁN DE LOS MEMBRILLOS', NULL, NULL, '14044');
INSERT INTO `cat_municipio` VALUES (575, '14', '045', 'IXTLAHUACÁN DEL RÍO', NULL, NULL, '14045');
INSERT INTO `cat_municipio` VALUES (576, '14', '046', 'JALOSTOTITLÁN', NULL, NULL, '14046');
INSERT INTO `cat_municipio` VALUES (577, '14', '047', 'JAMAY', NULL, NULL, '14047');
INSERT INTO `cat_municipio` VALUES (578, '14', '048', 'JESÚS MARÍA', NULL, NULL, '14048');
INSERT INTO `cat_municipio` VALUES (579, '14', '049', 'JILOTLÁN DE LOS DOLORES', NULL, NULL, '14049');
INSERT INTO `cat_municipio` VALUES (580, '14', '050', 'JOCOTEPEC', NULL, NULL, '14050');
INSERT INTO `cat_municipio` VALUES (581, '14', '051', 'JUANACATLÁN', NULL, NULL, '14051');
INSERT INTO `cat_municipio` VALUES (582, '14', '052', 'JUCHITLÁN', NULL, NULL, '14052');
INSERT INTO `cat_municipio` VALUES (583, '14', '053', 'LAGOS DE MORENO', NULL, NULL, '14053');
INSERT INTO `cat_municipio` VALUES (584, '14', '054', 'EL LIMÓN', NULL, NULL, '14054');
INSERT INTO `cat_municipio` VALUES (585, '14', '055', 'MAGDALENA', NULL, NULL, '14055');
INSERT INTO `cat_municipio` VALUES (586, '14', '056', 'SANTA MARÍA DEL ORO', NULL, NULL, '14056');
INSERT INTO `cat_municipio` VALUES (587, '14', '057', 'LA MANZANILLA DE LA PAZ', NULL, NULL, '14057');
INSERT INTO `cat_municipio` VALUES (588, '14', '058', 'MASCOTA', NULL, NULL, '14058');
INSERT INTO `cat_municipio` VALUES (589, '14', '059', 'MAZAMITLA', NULL, NULL, '14059');
INSERT INTO `cat_municipio` VALUES (590, '14', '060', 'MEXTICACÁN', NULL, NULL, '14060');
INSERT INTO `cat_municipio` VALUES (591, '14', '061', 'MEZQUITIC', NULL, NULL, '14061');
INSERT INTO `cat_municipio` VALUES (592, '14', '062', 'MIXTLÁN', NULL, NULL, '14062');
INSERT INTO `cat_municipio` VALUES (593, '14', '063', 'OCOTLÁN', NULL, NULL, '14063');
INSERT INTO `cat_municipio` VALUES (594, '14', '064', 'OJUELOS DE JALISCO', NULL, NULL, '14064');
INSERT INTO `cat_municipio` VALUES (595, '14', '065', 'PIHUAMO', NULL, NULL, '14065');
INSERT INTO `cat_municipio` VALUES (596, '14', '066', 'PONCITLÁN', NULL, NULL, '14066');
INSERT INTO `cat_municipio` VALUES (597, '14', '067', 'PUERTO VALLARTA', NULL, NULL, '14067');
INSERT INTO `cat_municipio` VALUES (598, '14', '068', 'VILLA PURIFICACIÓN', NULL, NULL, '14068');
INSERT INTO `cat_municipio` VALUES (599, '14', '069', 'QUITUPAN', NULL, NULL, '14069');
INSERT INTO `cat_municipio` VALUES (600, '14', '070', 'EL SALTO', NULL, NULL, '14070');
INSERT INTO `cat_municipio` VALUES (601, '14', '071', 'SAN CRISTÓBAL DE LA BARRANCA', NULL, NULL, '14071');
INSERT INTO `cat_municipio` VALUES (602, '14', '072', 'SAN DIEGO DE ALEJANDRÍA', NULL, NULL, '14072');
INSERT INTO `cat_municipio` VALUES (603, '14', '073', 'SAN JUAN DE LOS LAGOS', NULL, NULL, '14073');
INSERT INTO `cat_municipio` VALUES (604, '14', '074', 'SAN JULIÁN', NULL, NULL, '14074');
INSERT INTO `cat_municipio` VALUES (605, '14', '075', 'SAN MARCOS', NULL, NULL, '14075');
INSERT INTO `cat_municipio` VALUES (606, '14', '076', 'SAN MARTÍN DE BOLAÑOS', NULL, NULL, '14076');
INSERT INTO `cat_municipio` VALUES (607, '14', '077', 'SAN MARTÍN HIDALGO', NULL, NULL, '14077');
INSERT INTO `cat_municipio` VALUES (608, '14', '078', 'SAN MIGUEL EL ALTO', NULL, NULL, '14078');
INSERT INTO `cat_municipio` VALUES (609, '14', '079', 'GÓMEZ FARÍAS', NULL, NULL, '14079');
INSERT INTO `cat_municipio` VALUES (610, '14', '080', 'SAN SEBASTIÁN DEL OESTE', NULL, NULL, '14080');
INSERT INTO `cat_municipio` VALUES (611, '14', '081', 'SANTA MARÍA DE LOS ÁNGELES', NULL, NULL, '14081');
INSERT INTO `cat_municipio` VALUES (612, '14', '082', 'SAYULA', NULL, NULL, '14082');
INSERT INTO `cat_municipio` VALUES (613, '14', '083', 'TALA', NULL, NULL, '14083');
INSERT INTO `cat_municipio` VALUES (614, '14', '084', 'TALPA DE ALLENDE', NULL, NULL, '14084');
INSERT INTO `cat_municipio` VALUES (615, '14', '085', 'TAMAZULA DE GORDIANO', NULL, NULL, '14085');
INSERT INTO `cat_municipio` VALUES (616, '14', '086', 'TAPALPA', NULL, NULL, '14086');
INSERT INTO `cat_municipio` VALUES (617, '14', '087', 'TECALITLÁN', NULL, NULL, '14087');
INSERT INTO `cat_municipio` VALUES (618, '14', '088', 'TECOLOTLÁN', NULL, NULL, '14088');
INSERT INTO `cat_municipio` VALUES (619, '14', '089', 'TECHALUTA DE MONTENEGRO', NULL, NULL, '14089');
INSERT INTO `cat_municipio` VALUES (620, '14', '090', 'TENAMAXTLÁN', NULL, NULL, '14090');
INSERT INTO `cat_municipio` VALUES (621, '14', '091', 'TEOCALTICHE', NULL, NULL, '14091');
INSERT INTO `cat_municipio` VALUES (622, '14', '092', 'TEOCUITATLÁN DE CORONA', NULL, NULL, '14092');
INSERT INTO `cat_municipio` VALUES (623, '14', '093', 'TEPATITLÁN DE MORELOS', NULL, NULL, '14093');
INSERT INTO `cat_municipio` VALUES (624, '14', '094', 'TEQUILA', NULL, NULL, '14094');
INSERT INTO `cat_municipio` VALUES (625, '14', '095', 'TEUCHITLÁN', NULL, NULL, '14095');
INSERT INTO `cat_municipio` VALUES (626, '14', '096', 'TIZAPÁN EL ALTO', NULL, NULL, '14096');
INSERT INTO `cat_municipio` VALUES (627, '14', '097', 'TLAJOMULCO DE ZÚÑIGA', NULL, NULL, '14097');
INSERT INTO `cat_municipio` VALUES (628, '14', '098', 'SAN PEDRO TLAQUEPAQUE', NULL, NULL, '14098');
INSERT INTO `cat_municipio` VALUES (629, '14', '099', 'TOLIMÁN', NULL, NULL, '14099');
INSERT INTO `cat_municipio` VALUES (630, '14', '100', 'TOMATLÁN', NULL, NULL, '14100');
INSERT INTO `cat_municipio` VALUES (631, '14', '101', 'TONALÁ', NULL, NULL, '14101');
INSERT INTO `cat_municipio` VALUES (632, '14', '102', 'TONAYA', NULL, NULL, '14102');
INSERT INTO `cat_municipio` VALUES (633, '14', '103', 'TONILA', NULL, NULL, '14103');
INSERT INTO `cat_municipio` VALUES (634, '14', '104', 'TOTATICHE', NULL, NULL, '14104');
INSERT INTO `cat_municipio` VALUES (635, '14', '105', 'TOTOTLÁN', NULL, NULL, '14105');
INSERT INTO `cat_municipio` VALUES (636, '14', '106', 'TUXCACUESCO', NULL, NULL, '14106');
INSERT INTO `cat_municipio` VALUES (637, '14', '107', 'TUXCUECA', NULL, NULL, '14107');
INSERT INTO `cat_municipio` VALUES (638, '14', '108', 'TUXPAN', NULL, NULL, '14108');
INSERT INTO `cat_municipio` VALUES (639, '14', '109', 'UNIÓN DE SAN ANTONIO', NULL, NULL, '14109');
INSERT INTO `cat_municipio` VALUES (640, '14', '110', 'UNIÓN DE TULA', NULL, NULL, '14110');
INSERT INTO `cat_municipio` VALUES (641, '14', '111', 'VALLE DE GUADALUPE', NULL, NULL, '14111');
INSERT INTO `cat_municipio` VALUES (642, '14', '112', 'VALLE DE JUÁREZ', NULL, NULL, '14112');
INSERT INTO `cat_municipio` VALUES (643, '14', '113', 'SAN GABRIEL', NULL, NULL, '14113');
INSERT INTO `cat_municipio` VALUES (644, '14', '114', 'VILLA CORONA', NULL, NULL, '14114');
INSERT INTO `cat_municipio` VALUES (645, '14', '115', 'VILLA GUERRERO', NULL, NULL, '14115');
INSERT INTO `cat_municipio` VALUES (646, '14', '116', 'VILLA HIDALGO', NULL, NULL, '14116');
INSERT INTO `cat_municipio` VALUES (647, '14', '117', 'CAÑADAS DE OBREGÓN', NULL, NULL, '14117');
INSERT INTO `cat_municipio` VALUES (648, '14', '118', 'YAHUALICA DE GONZÁLEZ GALLO', NULL, NULL, '14118');
INSERT INTO `cat_municipio` VALUES (649, '14', '119', 'ZACOALCO DE TORRES', NULL, NULL, '14119');
INSERT INTO `cat_municipio` VALUES (650, '14', '120', 'ZAPOPAN', NULL, NULL, '14120');
INSERT INTO `cat_municipio` VALUES (651, '14', '121', 'ZAPOTILTIC', NULL, NULL, '14121');
INSERT INTO `cat_municipio` VALUES (652, '14', '122', 'ZAPOTITLÁN DE VADILLO', NULL, NULL, '14122');
INSERT INTO `cat_municipio` VALUES (653, '14', '123', 'ZAPOTLÁN DEL REY', NULL, NULL, '14123');
INSERT INTO `cat_municipio` VALUES (654, '14', '124', 'ZAPOTLANEJO', NULL, NULL, '14124');
INSERT INTO `cat_municipio` VALUES (655, '14', '125', 'SAN IGNACIO CERRO GORDO', NULL, NULL, '14125');
INSERT INTO `cat_municipio` VALUES (656, '15', '001', 'ACAMBAY DE RUÍZ CASTAÑEDA', NULL, NULL, '15001');
INSERT INTO `cat_municipio` VALUES (657, '15', '002', 'ACOLMAN', NULL, NULL, '15002');
INSERT INTO `cat_municipio` VALUES (658, '15', '003', 'ACULCO', NULL, NULL, '15003');
INSERT INTO `cat_municipio` VALUES (659, '15', '004', 'ALMOLOYA DE ALQUISIRAS', NULL, NULL, '15004');
INSERT INTO `cat_municipio` VALUES (660, '15', '005', 'ALMOLOYA DE JUÁREZ', NULL, NULL, '15005');
INSERT INTO `cat_municipio` VALUES (661, '15', '006', 'ALMOLOYA DEL RÍO', NULL, NULL, '15006');
INSERT INTO `cat_municipio` VALUES (662, '15', '007', 'AMANALCO', NULL, NULL, '15007');
INSERT INTO `cat_municipio` VALUES (663, '15', '008', 'AMATEPEC', NULL, NULL, '15008');
INSERT INTO `cat_municipio` VALUES (664, '15', '009', 'AMECAMECA', NULL, NULL, '15009');
INSERT INTO `cat_municipio` VALUES (665, '15', '010', 'APAXCO', NULL, NULL, '15010');
INSERT INTO `cat_municipio` VALUES (666, '15', '011', 'ATENCO', NULL, NULL, '15011');
INSERT INTO `cat_municipio` VALUES (667, '15', '012', 'ATIZAPÁN', NULL, NULL, '15012');
INSERT INTO `cat_municipio` VALUES (668, '15', '013', 'ATIZAPÁN DE ZARAGOZA', NULL, NULL, '15013');
INSERT INTO `cat_municipio` VALUES (669, '15', '014', 'ATLACOMULCO', NULL, NULL, '15014');
INSERT INTO `cat_municipio` VALUES (670, '15', '015', 'ATLAUTLA', NULL, NULL, '15015');
INSERT INTO `cat_municipio` VALUES (671, '15', '016', 'AXAPUSCO', NULL, NULL, '15016');
INSERT INTO `cat_municipio` VALUES (672, '15', '017', 'AYAPANGO', NULL, NULL, '15017');
INSERT INTO `cat_municipio` VALUES (673, '15', '018', 'CALIMAYA', NULL, NULL, '15018');
INSERT INTO `cat_municipio` VALUES (674, '15', '019', 'CAPULHUAC', NULL, NULL, '15019');
INSERT INTO `cat_municipio` VALUES (675, '15', '020', 'COACALCO DE BERRIOZÁBAL', NULL, NULL, '15020');
INSERT INTO `cat_municipio` VALUES (676, '15', '021', 'COATEPEC HARINAS', NULL, NULL, '15021');
INSERT INTO `cat_municipio` VALUES (677, '15', '022', 'COCOTITLÁN', NULL, NULL, '15022');
INSERT INTO `cat_municipio` VALUES (678, '15', '023', 'COYOTEPEC', NULL, NULL, '15023');
INSERT INTO `cat_municipio` VALUES (679, '15', '024', 'CUAUTITLÁN', NULL, NULL, '15024');
INSERT INTO `cat_municipio` VALUES (680, '15', '025', 'CHALCO', NULL, NULL, '15025');
INSERT INTO `cat_municipio` VALUES (681, '15', '026', 'CHAPA DE MOTA', NULL, NULL, '15026');
INSERT INTO `cat_municipio` VALUES (682, '15', '027', 'CHAPULTEPEC', NULL, NULL, '15027');
INSERT INTO `cat_municipio` VALUES (683, '15', '028', 'CHIAUTLA', NULL, NULL, '15028');
INSERT INTO `cat_municipio` VALUES (684, '15', '029', 'CHICOLOAPAN', NULL, NULL, '15029');
INSERT INTO `cat_municipio` VALUES (685, '15', '030', 'CHICONCUAC', NULL, NULL, '15030');
INSERT INTO `cat_municipio` VALUES (686, '15', '031', 'CHIMALHUACÁN', NULL, NULL, '15031');
INSERT INTO `cat_municipio` VALUES (687, '15', '032', 'DONATO GUERRA', NULL, NULL, '15032');
INSERT INTO `cat_municipio` VALUES (688, '15', '033', 'ECATEPEC DE MORELOS', NULL, NULL, '15033');
INSERT INTO `cat_municipio` VALUES (689, '15', '034', 'ECATZINGO', NULL, NULL, '15034');
INSERT INTO `cat_municipio` VALUES (690, '15', '035', 'HUEHUETOCA', NULL, NULL, '15035');
INSERT INTO `cat_municipio` VALUES (691, '15', '036', 'HUEYPOXTLA', NULL, NULL, '15036');
INSERT INTO `cat_municipio` VALUES (692, '15', '037', 'HUIXQUILUCAN', NULL, NULL, '15037');
INSERT INTO `cat_municipio` VALUES (693, '15', '038', 'ISIDRO FABELA', NULL, NULL, '15038');
INSERT INTO `cat_municipio` VALUES (694, '15', '039', 'IXTAPALUCA', NULL, NULL, '15039');
INSERT INTO `cat_municipio` VALUES (695, '15', '040', 'IXTAPAN DE LA SAL', NULL, NULL, '15040');
INSERT INTO `cat_municipio` VALUES (696, '15', '041', 'IXTAPAN DEL ORO', NULL, NULL, '15041');
INSERT INTO `cat_municipio` VALUES (697, '15', '042', 'IXTLAHUACA', NULL, NULL, '15042');
INSERT INTO `cat_municipio` VALUES (698, '15', '043', 'XALATLACO', NULL, NULL, '15043');
INSERT INTO `cat_municipio` VALUES (699, '15', '044', 'JALTENCO', NULL, NULL, '15044');
INSERT INTO `cat_municipio` VALUES (700, '15', '045', 'JILOTEPEC', NULL, NULL, '15045');
INSERT INTO `cat_municipio` VALUES (701, '15', '046', 'JILOTZINGO', NULL, NULL, '15046');
INSERT INTO `cat_municipio` VALUES (702, '15', '047', 'JIQUIPILCO', NULL, NULL, '15047');
INSERT INTO `cat_municipio` VALUES (703, '15', '048', 'JOCOTITLÁN', NULL, NULL, '15048');
INSERT INTO `cat_municipio` VALUES (704, '15', '049', 'JOQUICINGO', NULL, NULL, '15049');
INSERT INTO `cat_municipio` VALUES (705, '15', '050', 'JUCHITEPEC', NULL, NULL, '15050');
INSERT INTO `cat_municipio` VALUES (706, '15', '051', 'LERMA', NULL, NULL, '15051');
INSERT INTO `cat_municipio` VALUES (707, '15', '052', 'MALINALCO', NULL, NULL, '15052');
INSERT INTO `cat_municipio` VALUES (708, '15', '053', 'MELCHOR OCAMPO', NULL, NULL, '15053');
INSERT INTO `cat_municipio` VALUES (709, '15', '054', 'METEPEC', NULL, NULL, '15054');
INSERT INTO `cat_municipio` VALUES (710, '15', '055', 'MEXICALTZINGO', NULL, NULL, '15055');
INSERT INTO `cat_municipio` VALUES (711, '15', '056', 'MORELOS', NULL, NULL, '15056');
INSERT INTO `cat_municipio` VALUES (712, '15', '057', 'NAUCALPAN DE JUÁREZ', NULL, NULL, '15057');
INSERT INTO `cat_municipio` VALUES (713, '15', '058', 'NEZAHUALCÓYOTL', NULL, NULL, '15058');
INSERT INTO `cat_municipio` VALUES (714, '15', '059', 'NEXTLALPAN', NULL, NULL, '15059');
INSERT INTO `cat_municipio` VALUES (715, '15', '060', 'NICOLÁS ROMERO', NULL, NULL, '15060');
INSERT INTO `cat_municipio` VALUES (716, '15', '061', 'NOPALTEPEC', NULL, NULL, '15061');
INSERT INTO `cat_municipio` VALUES (717, '15', '062', 'OCOYOACAC', NULL, NULL, '15062');
INSERT INTO `cat_municipio` VALUES (718, '15', '063', 'OCUILAN', NULL, NULL, '15063');
INSERT INTO `cat_municipio` VALUES (719, '15', '064', 'EL ORO', NULL, NULL, '15064');
INSERT INTO `cat_municipio` VALUES (720, '15', '065', 'OTUMBA', NULL, NULL, '15065');
INSERT INTO `cat_municipio` VALUES (721, '15', '066', 'OTZOLOAPAN', NULL, NULL, '15066');
INSERT INTO `cat_municipio` VALUES (722, '15', '067', 'OTZOLOTEPEC', NULL, NULL, '15067');
INSERT INTO `cat_municipio` VALUES (723, '15', '068', 'OZUMBA', NULL, NULL, '15068');
INSERT INTO `cat_municipio` VALUES (724, '15', '069', 'PAPALOTLA', NULL, NULL, '15069');
INSERT INTO `cat_municipio` VALUES (725, '15', '070', 'LA PAZ', NULL, NULL, '15070');
INSERT INTO `cat_municipio` VALUES (726, '15', '071', 'POLOTITLÁN', NULL, NULL, '15071');
INSERT INTO `cat_municipio` VALUES (727, '15', '072', 'RAYÓN', NULL, NULL, '15072');
INSERT INTO `cat_municipio` VALUES (728, '15', '073', 'SAN ANTONIO LA ISLA', NULL, NULL, '15073');
INSERT INTO `cat_municipio` VALUES (729, '15', '074', 'SAN FELIPE DEL PROGRESO', NULL, NULL, '15074');
INSERT INTO `cat_municipio` VALUES (730, '15', '075', 'SAN MARTÍN DE LAS PIRÁMIDES', NULL, NULL, '15075');
INSERT INTO `cat_municipio` VALUES (731, '15', '076', 'SAN MATEO ATENCO', NULL, NULL, '15076');
INSERT INTO `cat_municipio` VALUES (732, '15', '077', 'SAN SIMÓN DE GUERRERO', NULL, NULL, '15077');
INSERT INTO `cat_municipio` VALUES (733, '15', '078', 'SANTO TOMÁS', NULL, NULL, '15078');
INSERT INTO `cat_municipio` VALUES (734, '15', '079', 'SOYANIQUILPAN DE JUÁREZ', NULL, NULL, '15079');
INSERT INTO `cat_municipio` VALUES (735, '15', '080', 'SULTEPEC', NULL, NULL, '15080');
INSERT INTO `cat_municipio` VALUES (736, '15', '081', 'TECÁMAC', NULL, NULL, '15081');
INSERT INTO `cat_municipio` VALUES (737, '15', '082', 'TEJUPILCO', NULL, NULL, '15082');
INSERT INTO `cat_municipio` VALUES (738, '15', '083', 'TEMAMATLA', NULL, NULL, '15083');
INSERT INTO `cat_municipio` VALUES (739, '15', '084', 'TEMASCALAPA', NULL, NULL, '15084');
INSERT INTO `cat_municipio` VALUES (740, '15', '085', 'TEMASCALCINGO', NULL, NULL, '15085');
INSERT INTO `cat_municipio` VALUES (741, '15', '086', 'TEMASCALTEPEC', NULL, NULL, '15086');
INSERT INTO `cat_municipio` VALUES (742, '15', '087', 'TEMOAYA', NULL, NULL, '15087');
INSERT INTO `cat_municipio` VALUES (743, '15', '088', 'TENANCINGO', NULL, NULL, '15088');
INSERT INTO `cat_municipio` VALUES (744, '15', '089', 'TENANGO DEL AIRE', NULL, NULL, '15089');
INSERT INTO `cat_municipio` VALUES (745, '15', '090', 'TENANGO DEL VALLE', NULL, NULL, '15090');
INSERT INTO `cat_municipio` VALUES (746, '15', '091', 'TEOLOYUCAN', NULL, NULL, '15091');
INSERT INTO `cat_municipio` VALUES (747, '15', '092', 'TEOTIHUACÁN', NULL, NULL, '15092');
INSERT INTO `cat_municipio` VALUES (748, '15', '093', 'TEPETLAOXTOC', NULL, NULL, '15093');
INSERT INTO `cat_municipio` VALUES (749, '15', '094', 'TEPETLIXPA', NULL, NULL, '15094');
INSERT INTO `cat_municipio` VALUES (750, '15', '095', 'TEPOTZOTLÁN', NULL, NULL, '15095');
INSERT INTO `cat_municipio` VALUES (751, '15', '096', 'TEQUIXQUIAC', NULL, NULL, '15096');
INSERT INTO `cat_municipio` VALUES (752, '15', '097', 'TEXCALTITLÁN', NULL, NULL, '15097');
INSERT INTO `cat_municipio` VALUES (753, '15', '098', 'TEXCALYACAC', NULL, NULL, '15098');
INSERT INTO `cat_municipio` VALUES (754, '15', '099', 'TEXCOCO', NULL, NULL, '15099');
INSERT INTO `cat_municipio` VALUES (755, '15', '100', 'TEZOYUCA', NULL, NULL, '15100');
INSERT INTO `cat_municipio` VALUES (756, '15', '101', 'TIANGUISTENCO', NULL, NULL, '15101');
INSERT INTO `cat_municipio` VALUES (757, '15', '102', 'TIMILPAN', NULL, NULL, '15102');
INSERT INTO `cat_municipio` VALUES (758, '15', '103', 'TLALMANALCO', NULL, NULL, '15103');
INSERT INTO `cat_municipio` VALUES (759, '15', '104', 'TLALNEPANTLA DE BAZ', NULL, NULL, '15104');
INSERT INTO `cat_municipio` VALUES (760, '15', '105', 'TLATLAYA', NULL, NULL, '15105');
INSERT INTO `cat_municipio` VALUES (761, '15', '106', 'TOLUCA', NULL, NULL, '15106');
INSERT INTO `cat_municipio` VALUES (762, '15', '107', 'TONATICO', NULL, NULL, '15107');
INSERT INTO `cat_municipio` VALUES (763, '15', '108', 'TULTEPEC', NULL, NULL, '15108');
INSERT INTO `cat_municipio` VALUES (764, '15', '109', 'TULTITLÁN', NULL, NULL, '15109');
INSERT INTO `cat_municipio` VALUES (765, '15', '110', 'VALLE DE BRAVO', NULL, NULL, '15110');
INSERT INTO `cat_municipio` VALUES (766, '15', '111', 'VILLA DE ALLENDE', NULL, NULL, '15111');
INSERT INTO `cat_municipio` VALUES (767, '15', '112', 'VILLA DEL CARBÓN', NULL, NULL, '15112');
INSERT INTO `cat_municipio` VALUES (768, '15', '113', 'VILLA GUERRERO', NULL, NULL, '15113');
INSERT INTO `cat_municipio` VALUES (769, '15', '114', 'VILLA VICTORIA', NULL, NULL, '15114');
INSERT INTO `cat_municipio` VALUES (770, '15', '115', 'XONACATLÁN', NULL, NULL, '15115');
INSERT INTO `cat_municipio` VALUES (771, '15', '116', 'ZACAZONAPAN', NULL, NULL, '15116');
INSERT INTO `cat_municipio` VALUES (772, '15', '117', 'ZACUALPAN', NULL, NULL, '15117');
INSERT INTO `cat_municipio` VALUES (773, '15', '118', 'ZINACANTEPEC', NULL, NULL, '15118');
INSERT INTO `cat_municipio` VALUES (774, '15', '119', 'ZUMPAHUACÁN', NULL, NULL, '15119');
INSERT INTO `cat_municipio` VALUES (775, '15', '120', 'ZUMPANGO', NULL, NULL, '15120');
INSERT INTO `cat_municipio` VALUES (776, '15', '121', 'CUAUTITLÁN IZCALLI', NULL, NULL, '15121');
INSERT INTO `cat_municipio` VALUES (777, '15', '122', 'VALLE DE CHALCO SOLIDARIDAD', NULL, NULL, '15122');
INSERT INTO `cat_municipio` VALUES (778, '15', '123', 'LUVIANOS', NULL, NULL, '15123');
INSERT INTO `cat_municipio` VALUES (779, '15', '124', 'SAN JOSÉ DEL RINCÓN', NULL, NULL, '15124');
INSERT INTO `cat_municipio` VALUES (780, '15', '125', 'TONANITLA', NULL, NULL, '15125');
INSERT INTO `cat_municipio` VALUES (781, '16', '001', 'ACUITZIO', NULL, NULL, '16001');
INSERT INTO `cat_municipio` VALUES (782, '16', '002', 'AGUILILLA', NULL, NULL, '16002');
INSERT INTO `cat_municipio` VALUES (783, '16', '003', 'ÁLVARO OBREGÓN', NULL, NULL, '16003');
INSERT INTO `cat_municipio` VALUES (784, '16', '004', 'ANGAMACUTIRO', NULL, NULL, '16004');
INSERT INTO `cat_municipio` VALUES (785, '16', '005', 'ANGANGUEO', NULL, NULL, '16005');
INSERT INTO `cat_municipio` VALUES (786, '16', '006', 'APATZINGÁN', NULL, NULL, '16006');
INSERT INTO `cat_municipio` VALUES (787, '16', '007', 'APORO', NULL, NULL, '16007');
INSERT INTO `cat_municipio` VALUES (788, '16', '008', 'AQUILA', NULL, NULL, '16008');
INSERT INTO `cat_municipio` VALUES (789, '16', '009', 'ARIO', NULL, NULL, '16009');
INSERT INTO `cat_municipio` VALUES (790, '16', '010', 'ARTEAGA', NULL, NULL, '16010');
INSERT INTO `cat_municipio` VALUES (791, '16', '011', 'BRISEÑAS', NULL, NULL, '16011');
INSERT INTO `cat_municipio` VALUES (792, '16', '012', 'BUENAVISTA', NULL, NULL, '16012');
INSERT INTO `cat_municipio` VALUES (793, '16', '013', 'CARÁCUARO', NULL, NULL, '16013');
INSERT INTO `cat_municipio` VALUES (794, '16', '014', 'COAHUAYANA', NULL, NULL, '16014');
INSERT INTO `cat_municipio` VALUES (795, '16', '015', 'COALCOMÁN DE VÁZQUEZ PALLARES', NULL, NULL, '16015');
INSERT INTO `cat_municipio` VALUES (796, '16', '016', 'COENEO', NULL, NULL, '16016');
INSERT INTO `cat_municipio` VALUES (797, '16', '017', 'CONTEPEC', NULL, NULL, '16017');
INSERT INTO `cat_municipio` VALUES (798, '16', '018', 'COPÁNDARO', NULL, NULL, '16018');
INSERT INTO `cat_municipio` VALUES (799, '16', '019', 'COTIJA', NULL, NULL, '16019');
INSERT INTO `cat_municipio` VALUES (800, '16', '020', 'CUITZEO', NULL, NULL, '16020');
INSERT INTO `cat_municipio` VALUES (801, '16', '021', 'CHARAPAN', NULL, NULL, '16021');
INSERT INTO `cat_municipio` VALUES (802, '16', '022', 'CHARO', NULL, NULL, '16022');
INSERT INTO `cat_municipio` VALUES (803, '16', '023', 'CHAVINDA', NULL, NULL, '16023');
INSERT INTO `cat_municipio` VALUES (804, '16', '024', 'CHERÁN', NULL, NULL, '16024');
INSERT INTO `cat_municipio` VALUES (805, '16', '025', 'CHILCHOTA', NULL, NULL, '16025');
INSERT INTO `cat_municipio` VALUES (806, '16', '026', 'CHINICUILA', NULL, NULL, '16026');
INSERT INTO `cat_municipio` VALUES (807, '16', '027', 'CHUCÁNDIRO', NULL, NULL, '16027');
INSERT INTO `cat_municipio` VALUES (808, '16', '028', 'CHURINTZIO', NULL, NULL, '16028');
INSERT INTO `cat_municipio` VALUES (809, '16', '029', 'CHURUMUCO', NULL, NULL, '16029');
INSERT INTO `cat_municipio` VALUES (810, '16', '030', 'ECUANDUREO', NULL, NULL, '16030');
INSERT INTO `cat_municipio` VALUES (811, '16', '031', 'EPITACIO HUERTA', NULL, NULL, '16031');
INSERT INTO `cat_municipio` VALUES (812, '16', '032', 'ERONGARÍCUARO', NULL, NULL, '16032');
INSERT INTO `cat_municipio` VALUES (813, '16', '033', 'GABRIEL ZAMORA', NULL, NULL, '16033');
INSERT INTO `cat_municipio` VALUES (814, '16', '034', 'HIDALGO', NULL, NULL, '16034');
INSERT INTO `cat_municipio` VALUES (815, '16', '035', 'LA HUACANA', NULL, NULL, '16035');
INSERT INTO `cat_municipio` VALUES (816, '16', '036', 'HUANDACAREO', NULL, NULL, '16036');
INSERT INTO `cat_municipio` VALUES (817, '16', '037', 'HUANIQUEO', NULL, NULL, '16037');
INSERT INTO `cat_municipio` VALUES (818, '16', '038', 'HUETAMO', NULL, NULL, '16038');
INSERT INTO `cat_municipio` VALUES (819, '16', '039', 'HUIRAMBA', NULL, NULL, '16039');
INSERT INTO `cat_municipio` VALUES (820, '16', '040', 'INDAPARAPEO', NULL, NULL, '16040');
INSERT INTO `cat_municipio` VALUES (821, '16', '041', 'IRIMBO', NULL, NULL, '16041');
INSERT INTO `cat_municipio` VALUES (822, '16', '042', 'IXTLÁN', NULL, NULL, '16042');
INSERT INTO `cat_municipio` VALUES (823, '16', '043', 'JACONA', NULL, NULL, '16043');
INSERT INTO `cat_municipio` VALUES (824, '16', '044', 'JIMÉNEZ', NULL, NULL, '16044');
INSERT INTO `cat_municipio` VALUES (825, '16', '045', 'JIQUILPAN', NULL, NULL, '16045');
INSERT INTO `cat_municipio` VALUES (826, '16', '046', 'JUÁREZ', NULL, NULL, '16046');
INSERT INTO `cat_municipio` VALUES (827, '16', '047', 'JUNGAPEO', NULL, NULL, '16047');
INSERT INTO `cat_municipio` VALUES (828, '16', '048', 'LAGUNILLAS', NULL, NULL, '16048');
INSERT INTO `cat_municipio` VALUES (829, '16', '049', 'MADERO', NULL, NULL, '16049');
INSERT INTO `cat_municipio` VALUES (830, '16', '050', 'MARAVATÍO', NULL, NULL, '16050');
INSERT INTO `cat_municipio` VALUES (831, '16', '051', 'MARCOS CASTELLANOS', NULL, NULL, '16051');
INSERT INTO `cat_municipio` VALUES (832, '16', '052', 'LÁZARO CÁRDENAS', NULL, NULL, '16052');
INSERT INTO `cat_municipio` VALUES (833, '16', '053', 'MORELIA', NULL, NULL, '16053');
INSERT INTO `cat_municipio` VALUES (834, '16', '054', 'MORELOS', NULL, NULL, '16054');
INSERT INTO `cat_municipio` VALUES (835, '16', '055', 'MÚGICA', NULL, NULL, '16055');
INSERT INTO `cat_municipio` VALUES (836, '16', '056', 'NAHUATZEN', NULL, NULL, '16056');
INSERT INTO `cat_municipio` VALUES (837, '16', '057', 'NOCUPÉTARO', NULL, NULL, '16057');
INSERT INTO `cat_municipio` VALUES (838, '16', '058', 'NUEVO PARANGARICUTIRO', NULL, NULL, '16058');
INSERT INTO `cat_municipio` VALUES (839, '16', '059', 'NUEVO URECHO', NULL, NULL, '16059');
INSERT INTO `cat_municipio` VALUES (840, '16', '060', 'NUMARÁN', NULL, NULL, '16060');
INSERT INTO `cat_municipio` VALUES (841, '16', '061', 'OCAMPO', NULL, NULL, '16061');
INSERT INTO `cat_municipio` VALUES (842, '16', '062', 'PAJACUARÁN', NULL, NULL, '16062');
INSERT INTO `cat_municipio` VALUES (843, '16', '063', 'PANINDÍCUARO', NULL, NULL, '16063');
INSERT INTO `cat_municipio` VALUES (844, '16', '064', 'PARÁCUARO', NULL, NULL, '16064');
INSERT INTO `cat_municipio` VALUES (845, '16', '065', 'PARACHO', NULL, NULL, '16065');
INSERT INTO `cat_municipio` VALUES (846, '16', '066', 'PÁTZCUARO', NULL, NULL, '16066');
INSERT INTO `cat_municipio` VALUES (847, '16', '067', 'PENJAMILLO', NULL, NULL, '16067');
INSERT INTO `cat_municipio` VALUES (848, '16', '068', 'PERIBÁN', NULL, NULL, '16068');
INSERT INTO `cat_municipio` VALUES (849, '16', '069', 'LA PIEDAD', NULL, NULL, '16069');
INSERT INTO `cat_municipio` VALUES (850, '16', '070', 'PURÉPERO', NULL, NULL, '16070');
INSERT INTO `cat_municipio` VALUES (851, '16', '071', 'PURUÁNDIRO', NULL, NULL, '16071');
INSERT INTO `cat_municipio` VALUES (852, '16', '072', 'QUERÉNDARO', NULL, NULL, '16072');
INSERT INTO `cat_municipio` VALUES (853, '16', '073', 'QUIROGA', NULL, NULL, '16073');
INSERT INTO `cat_municipio` VALUES (854, '16', '074', 'COJUMATLÁN DE RÉGULES', NULL, NULL, '16074');
INSERT INTO `cat_municipio` VALUES (855, '16', '075', 'LOS REYES', NULL, NULL, '16075');
INSERT INTO `cat_municipio` VALUES (856, '16', '076', 'SAHUAYO', NULL, NULL, '16076');
INSERT INTO `cat_municipio` VALUES (857, '16', '077', 'SAN LUCAS', NULL, NULL, '16077');
INSERT INTO `cat_municipio` VALUES (858, '16', '078', 'SANTA ANA MAYA', NULL, NULL, '16078');
INSERT INTO `cat_municipio` VALUES (859, '16', '079', 'SALVADOR ESCALANTE', NULL, NULL, '16079');
INSERT INTO `cat_municipio` VALUES (860, '16', '080', 'SENGUIO', NULL, NULL, '16080');
INSERT INTO `cat_municipio` VALUES (861, '16', '081', 'SUSUPUATO', NULL, NULL, '16081');
INSERT INTO `cat_municipio` VALUES (862, '16', '082', 'TACÁMBARO', NULL, NULL, '16082');
INSERT INTO `cat_municipio` VALUES (863, '16', '083', 'TANCÍTARO', NULL, NULL, '16083');
INSERT INTO `cat_municipio` VALUES (864, '16', '084', 'TANGAMANDAPIO', NULL, NULL, '16084');
INSERT INTO `cat_municipio` VALUES (865, '16', '085', 'TANGANCÍCUARO', NULL, NULL, '16085');
INSERT INTO `cat_municipio` VALUES (866, '16', '086', 'TANHUATO', NULL, NULL, '16086');
INSERT INTO `cat_municipio` VALUES (867, '16', '087', 'TARETAN', NULL, NULL, '16087');
INSERT INTO `cat_municipio` VALUES (868, '16', '088', 'TARÍMBARO', NULL, NULL, '16088');
INSERT INTO `cat_municipio` VALUES (869, '16', '089', 'TEPALCATEPEC', NULL, NULL, '16089');
INSERT INTO `cat_municipio` VALUES (870, '16', '090', 'TINGAMBATO', NULL, NULL, '16090');
INSERT INTO `cat_municipio` VALUES (871, '16', '091', 'TINGÜINDÍN', NULL, NULL, '16091');
INSERT INTO `cat_municipio` VALUES (872, '16', '092', 'TIQUICHEO DE NICOLÁS ROMERO', NULL, NULL, '16092');
INSERT INTO `cat_municipio` VALUES (873, '16', '093', 'TLALPUJAHUA', NULL, NULL, '16093');
INSERT INTO `cat_municipio` VALUES (874, '16', '094', 'TLAZAZALCA', NULL, NULL, '16094');
INSERT INTO `cat_municipio` VALUES (875, '16', '095', 'TOCUMBO', NULL, NULL, '16095');
INSERT INTO `cat_municipio` VALUES (876, '16', '096', 'TUMBISCATÍO', NULL, NULL, '16096');
INSERT INTO `cat_municipio` VALUES (877, '16', '097', 'TURICATO', NULL, NULL, '16097');
INSERT INTO `cat_municipio` VALUES (878, '16', '098', 'TUXPAN', NULL, NULL, '16098');
INSERT INTO `cat_municipio` VALUES (879, '16', '099', 'TUZANTLA', NULL, NULL, '16099');
INSERT INTO `cat_municipio` VALUES (880, '16', '100', 'TZINTZUNTZAN', NULL, NULL, '16100');
INSERT INTO `cat_municipio` VALUES (881, '16', '101', 'TZITZIO', NULL, NULL, '16101');
INSERT INTO `cat_municipio` VALUES (882, '16', '102', 'URUAPAN', NULL, NULL, '16102');
INSERT INTO `cat_municipio` VALUES (883, '16', '103', 'VENUSTIANO CARRANZA', NULL, NULL, '16103');
INSERT INTO `cat_municipio` VALUES (884, '16', '104', 'VILLAMAR', NULL, NULL, '16104');
INSERT INTO `cat_municipio` VALUES (885, '16', '105', 'VISTA HERMOSA', NULL, NULL, '16105');
INSERT INTO `cat_municipio` VALUES (886, '16', '106', 'YURÉCUARO', NULL, NULL, '16106');
INSERT INTO `cat_municipio` VALUES (887, '16', '107', 'ZACAPU', NULL, NULL, '16107');
INSERT INTO `cat_municipio` VALUES (888, '16', '108', 'ZAMORA', NULL, NULL, '16108');
INSERT INTO `cat_municipio` VALUES (889, '16', '109', 'ZINÁPARO', NULL, NULL, '16109');
INSERT INTO `cat_municipio` VALUES (890, '16', '110', 'ZINAPÉCUARO', NULL, NULL, '16110');
INSERT INTO `cat_municipio` VALUES (891, '16', '111', 'ZIRACUARETIRO', NULL, NULL, '16111');
INSERT INTO `cat_municipio` VALUES (892, '16', '112', 'ZITÁCUARO', NULL, NULL, '16112');
INSERT INTO `cat_municipio` VALUES (893, '16', '113', 'JOSÉ SIXTO VERDUZCO', NULL, NULL, '16113');
INSERT INTO `cat_municipio` VALUES (894, '17', '001', 'AMACUZAC', NULL, NULL, '17001');
INSERT INTO `cat_municipio` VALUES (895, '17', '002', 'ATLATLAHUCAN', NULL, NULL, '17002');
INSERT INTO `cat_municipio` VALUES (896, '17', '003', 'AXOCHIAPAN', NULL, NULL, '17003');
INSERT INTO `cat_municipio` VALUES (897, '17', '004', 'AYALA', NULL, NULL, '17004');
INSERT INTO `cat_municipio` VALUES (898, '17', '005', 'COATLÁN DEL RÍO', NULL, NULL, '17005');
INSERT INTO `cat_municipio` VALUES (899, '17', '006', 'CUAUTLA', NULL, NULL, '17006');
INSERT INTO `cat_municipio` VALUES (900, '17', '007', 'CUERNAVACA', NULL, NULL, '17007');
INSERT INTO `cat_municipio` VALUES (901, '17', '008', 'EMILIANO ZAPATA', NULL, NULL, '17008');
INSERT INTO `cat_municipio` VALUES (902, '17', '009', 'HUITZILAC', NULL, NULL, '17009');
INSERT INTO `cat_municipio` VALUES (903, '17', '010', 'JANTETELCO', NULL, NULL, '17010');
INSERT INTO `cat_municipio` VALUES (904, '17', '011', 'JIUTEPEC', NULL, NULL, '17011');
INSERT INTO `cat_municipio` VALUES (905, '17', '012', 'JOJUTLA', NULL, NULL, '17012');
INSERT INTO `cat_municipio` VALUES (906, '17', '014', 'MAZATEPEC', NULL, NULL, '17014');
INSERT INTO `cat_municipio` VALUES (907, '17', '015', 'MIACATLÁN', NULL, NULL, '17015');
INSERT INTO `cat_municipio` VALUES (908, '17', '016', 'OCUITUCO', NULL, NULL, '17016');
INSERT INTO `cat_municipio` VALUES (909, '17', '017', 'PUENTE DE IXTLA', NULL, NULL, '17017');
INSERT INTO `cat_municipio` VALUES (910, '17', '018', 'TEMIXCO', NULL, NULL, '17018');
INSERT INTO `cat_municipio` VALUES (911, '17', '019', 'TEPALCINGO', NULL, NULL, '17019');
INSERT INTO `cat_municipio` VALUES (912, '17', '020', 'TEPOZTLÁN', NULL, NULL, '17020');
INSERT INTO `cat_municipio` VALUES (913, '17', '021', 'TETECALA', NULL, NULL, '17021');
INSERT INTO `cat_municipio` VALUES (914, '17', '022', 'TETELA DEL VOLCÁN', NULL, NULL, '17022');
INSERT INTO `cat_municipio` VALUES (915, '17', '023', 'TLALNEPANTLA', NULL, NULL, '17023');
INSERT INTO `cat_municipio` VALUES (916, '17', '024', 'TLALTIZAPÁN DE ZAPATA', NULL, NULL, '17024');
INSERT INTO `cat_municipio` VALUES (917, '17', '025', 'TLAQUILTENANGO', NULL, NULL, '17025');
INSERT INTO `cat_municipio` VALUES (918, '17', '026', 'TLAYACAPAN', NULL, NULL, '17026');
INSERT INTO `cat_municipio` VALUES (919, '17', '027', 'TOTOLAPAN', NULL, NULL, '17027');
INSERT INTO `cat_municipio` VALUES (920, '17', '028', 'XOCHITEPEC', NULL, NULL, '17028');
INSERT INTO `cat_municipio` VALUES (921, '17', '029', 'YAUTEPEC', NULL, NULL, '17029');
INSERT INTO `cat_municipio` VALUES (922, '17', '030', 'YECAPIXTLA', NULL, NULL, '17030');
INSERT INTO `cat_municipio` VALUES (923, '17', '031', 'ZACATEPEC', NULL, NULL, '17031');
INSERT INTO `cat_municipio` VALUES (924, '17', '033', 'TEMOAC', NULL, NULL, '17033');
INSERT INTO `cat_municipio` VALUES (925, '18', '001', 'ACAPONETA', NULL, NULL, '18001');
INSERT INTO `cat_municipio` VALUES (926, '18', '002', 'AHUACATLÁN', NULL, NULL, '18002');
INSERT INTO `cat_municipio` VALUES (927, '18', '003', 'AMATLÁN DE CAÑAS', NULL, NULL, '18003');
INSERT INTO `cat_municipio` VALUES (928, '18', '004', 'COMPOSTELA', NULL, NULL, '18004');
INSERT INTO `cat_municipio` VALUES (929, '18', '005', 'HUAJICORI', NULL, NULL, '18005');
INSERT INTO `cat_municipio` VALUES (930, '18', '006', 'IXTLÁN DEL RÍO', NULL, NULL, '18006');
INSERT INTO `cat_municipio` VALUES (931, '18', '007', 'JALA', NULL, NULL, '18007');
INSERT INTO `cat_municipio` VALUES (932, '18', '008', 'XALISCO', NULL, NULL, '18008');
INSERT INTO `cat_municipio` VALUES (933, '18', '009', 'DEL NAYAR', NULL, NULL, '18009');
INSERT INTO `cat_municipio` VALUES (934, '18', '010', 'ROSAMORADA', NULL, NULL, '18010');
INSERT INTO `cat_municipio` VALUES (935, '18', '011', 'RUÍZ', NULL, NULL, '18011');
INSERT INTO `cat_municipio` VALUES (936, '18', '012', 'SAN BLAS', NULL, NULL, '18012');
INSERT INTO `cat_municipio` VALUES (937, '18', '013', 'SAN PEDRO LAGUNILLAS', NULL, NULL, '18013');
INSERT INTO `cat_municipio` VALUES (938, '18', '014', 'SANTA MARÍA DEL ORO', NULL, NULL, '18014');
INSERT INTO `cat_municipio` VALUES (939, '18', '015', 'SANTIAGO IXCUINTLA', NULL, NULL, '18015');
INSERT INTO `cat_municipio` VALUES (940, '18', '016', 'TECUALA', NULL, NULL, '18016');
INSERT INTO `cat_municipio` VALUES (941, '18', '017', 'TEPIC', NULL, NULL, '18017');
INSERT INTO `cat_municipio` VALUES (942, '18', '018', 'TUXPAN', NULL, NULL, '18018');
INSERT INTO `cat_municipio` VALUES (943, '18', '019', 'LA YESCA', NULL, NULL, '18019');
INSERT INTO `cat_municipio` VALUES (944, '18', '020', 'BAHÍA DE BANDERAS', NULL, NULL, '18020');
INSERT INTO `cat_municipio` VALUES (945, '19', '001', 'ABASOLO', NULL, NULL, '19001');
INSERT INTO `cat_municipio` VALUES (946, '19', '002', 'AGUALEGUAS', NULL, NULL, '19002');
INSERT INTO `cat_municipio` VALUES (947, '17', '032', 'ZACUALPAN DE AMILPAS', NULL, NULL, '17032');
INSERT INTO `cat_municipio` VALUES (948, '19', '003', 'LOS ALDAMAS', NULL, NULL, '19003');
INSERT INTO `cat_municipio` VALUES (949, '19', '004', 'ALLENDE', NULL, NULL, '19004');
INSERT INTO `cat_municipio` VALUES (950, '19', '005', 'ANÁHUAC', NULL, NULL, '19005');
INSERT INTO `cat_municipio` VALUES (951, '19', '006', 'APODACA', NULL, NULL, '19006');
INSERT INTO `cat_municipio` VALUES (952, '19', '007', 'ARAMBERRI', NULL, NULL, '19007');
INSERT INTO `cat_municipio` VALUES (953, '19', '008', 'BUSTAMANTE', NULL, NULL, '19008');
INSERT INTO `cat_municipio` VALUES (954, '19', '009', 'CADEREYTA JIMÉNEZ', NULL, NULL, '19009');
INSERT INTO `cat_municipio` VALUES (955, '19', '010', 'EL CARMEN', NULL, NULL, '19010');
INSERT INTO `cat_municipio` VALUES (956, '19', '011', 'CERRALVO', NULL, NULL, '19011');
INSERT INTO `cat_municipio` VALUES (957, '19', '012', 'CIÉNEGA DE FLORES', NULL, NULL, '19012');
INSERT INTO `cat_municipio` VALUES (958, '19', '013', 'CHINA', NULL, NULL, '19013');
INSERT INTO `cat_municipio` VALUES (959, '19', '014', 'DOCTOR ARROYO', NULL, NULL, '19014');
INSERT INTO `cat_municipio` VALUES (960, '19', '015', 'DOCTOR COSS', NULL, NULL, '19015');
INSERT INTO `cat_municipio` VALUES (961, '19', '016', 'DOCTOR GONZÁLEZ', NULL, NULL, '19016');
INSERT INTO `cat_municipio` VALUES (962, '19', '017', 'GALEANA', NULL, NULL, '19017');
INSERT INTO `cat_municipio` VALUES (963, '19', '018', 'GARCÍA', NULL, NULL, '19018');
INSERT INTO `cat_municipio` VALUES (964, '19', '019', 'SAN PEDRO GARZA GARCÍA', NULL, NULL, '19019');
INSERT INTO `cat_municipio` VALUES (965, '19', '020', 'GENERAL BRAVO', NULL, NULL, '19020');
INSERT INTO `cat_municipio` VALUES (966, '19', '021', 'GENERAL ESCOBEDO', NULL, NULL, '19021');
INSERT INTO `cat_municipio` VALUES (967, '19', '022', 'GENERAL TERÁN', NULL, NULL, '19022');
INSERT INTO `cat_municipio` VALUES (968, '19', '023', 'GENERAL TREVIÑO', NULL, NULL, '19023');
INSERT INTO `cat_municipio` VALUES (969, '19', '024', 'GENERAL ZARAGOZA', NULL, NULL, '19024');
INSERT INTO `cat_municipio` VALUES (970, '19', '025', 'GENERAL ZUAZUA', NULL, NULL, '19025');
INSERT INTO `cat_municipio` VALUES (971, '19', '026', 'GUADALUPE', NULL, NULL, '19026');
INSERT INTO `cat_municipio` VALUES (972, '19', '027', 'LOS HERRERAS', NULL, NULL, '19027');
INSERT INTO `cat_municipio` VALUES (973, '19', '028', 'HIGUERAS', NULL, NULL, '19028');
INSERT INTO `cat_municipio` VALUES (974, '19', '029', 'HUALAHUISES', NULL, NULL, '19029');
INSERT INTO `cat_municipio` VALUES (975, '19', '030', 'ITURBIDE', NULL, NULL, '19030');
INSERT INTO `cat_municipio` VALUES (976, '19', '031', 'JUÁREZ', NULL, NULL, '19031');
INSERT INTO `cat_municipio` VALUES (977, '19', '032', 'LAMPAZOS DE NARANJO', NULL, NULL, '19032');
INSERT INTO `cat_municipio` VALUES (978, '19', '033', 'LINARES', NULL, NULL, '19033');
INSERT INTO `cat_municipio` VALUES (979, '19', '034', 'MARÍN', NULL, NULL, '19034');
INSERT INTO `cat_municipio` VALUES (980, '19', '035', 'MELCHOR OCAMPO', NULL, NULL, '19035');
INSERT INTO `cat_municipio` VALUES (981, '19', '036', 'MIER Y NORIEGA', NULL, NULL, '19036');
INSERT INTO `cat_municipio` VALUES (982, '19', '037', 'MINA', NULL, NULL, '19037');
INSERT INTO `cat_municipio` VALUES (983, '19', '038', 'MONTEMORELOS', NULL, NULL, '19038');
INSERT INTO `cat_municipio` VALUES (984, '19', '039', 'MONTERREY', NULL, NULL, '19039');
INSERT INTO `cat_municipio` VALUES (985, '19', '040', 'PARÁS', NULL, NULL, '19040');
INSERT INTO `cat_municipio` VALUES (986, '19', '041', 'PESQUERÍA', NULL, NULL, '19041');
INSERT INTO `cat_municipio` VALUES (987, '19', '042', 'LOS RAMONES', NULL, NULL, '19042');
INSERT INTO `cat_municipio` VALUES (988, '19', '043', 'RAYONES', NULL, NULL, '19043');
INSERT INTO `cat_municipio` VALUES (989, '19', '044', 'SABINAS HIDALGO', NULL, NULL, '19044');
INSERT INTO `cat_municipio` VALUES (990, '19', '045', 'SALINAS VICTORIA', NULL, NULL, '19045');
INSERT INTO `cat_municipio` VALUES (991, '19', '046', 'SAN NICOLÁS DE LOS GARZA', NULL, NULL, '19046');
INSERT INTO `cat_municipio` VALUES (992, '19', '047', 'HIDALGO', NULL, NULL, '19047');
INSERT INTO `cat_municipio` VALUES (993, '19', '048', 'SANTA CATARINA', NULL, NULL, '19048');
INSERT INTO `cat_municipio` VALUES (994, '19', '049', 'SANTIAGO', NULL, NULL, '19049');
INSERT INTO `cat_municipio` VALUES (995, '19', '050', 'VALLECILLO', NULL, NULL, '19050');
INSERT INTO `cat_municipio` VALUES (996, '19', '051', 'VILLALDAMA', NULL, NULL, '19051');
INSERT INTO `cat_municipio` VALUES (997, '20', '001', 'ABEJONES', NULL, NULL, '20001');
INSERT INTO `cat_municipio` VALUES (998, '20', '002', 'ACATLÁN DE PÉREZ FIGUEROA', NULL, NULL, '20002');
INSERT INTO `cat_municipio` VALUES (999, '20', '003', 'ASUNCIÓN CACALOTEPEC', NULL, NULL, '20003');
INSERT INTO `cat_municipio` VALUES (1000, '20', '004', 'ASUNCIÓN CUYOTEPEJI', NULL, NULL, '20004');
INSERT INTO `cat_municipio` VALUES (1001, '20', '005', 'ASUNCIÓN IXTALTEPEC', NULL, NULL, '20005');
INSERT INTO `cat_municipio` VALUES (1002, '20', '006', 'ASUNCIÓN NOCHIXTLÁN', NULL, NULL, '20006');
INSERT INTO `cat_municipio` VALUES (1003, '20', '007', 'ASUNCIÓN OCOTLÁN', NULL, NULL, '20007');
INSERT INTO `cat_municipio` VALUES (1004, '20', '008', 'ASUNCIÓN TLACOLULITA', NULL, NULL, '20008');
INSERT INTO `cat_municipio` VALUES (1005, '20', '009', 'AYOTZINTEPEC', NULL, NULL, '20009');
INSERT INTO `cat_municipio` VALUES (1006, '20', '010', 'EL BARRIO DE LA SOLEDAD', NULL, NULL, '20010');
INSERT INTO `cat_municipio` VALUES (1007, '20', '011', 'CALIHUALÁ', NULL, NULL, '20011');
INSERT INTO `cat_municipio` VALUES (1008, '20', '012', 'CANDELARIA LOXICHA', NULL, NULL, '20012');
INSERT INTO `cat_municipio` VALUES (1009, '20', '013', 'CIÉNEGA DE ZIMATLÁN', NULL, NULL, '20013');
INSERT INTO `cat_municipio` VALUES (1010, '20', '014', 'CIUDAD IXTEPEC', NULL, NULL, '20014');
INSERT INTO `cat_municipio` VALUES (1011, '20', '015', 'COATECAS ALTAS', NULL, NULL, '20015');
INSERT INTO `cat_municipio` VALUES (1012, '20', '016', 'COICOYÁN DE LAS FLORES', NULL, NULL, '20016');
INSERT INTO `cat_municipio` VALUES (1013, '20', '017', 'LA COMPAÑÍA', NULL, NULL, '20017');
INSERT INTO `cat_municipio` VALUES (1014, '20', '018', 'CONCEPCIÓN BUENAVISTA', NULL, NULL, '20018');
INSERT INTO `cat_municipio` VALUES (1015, '20', '019', 'CONCEPCIÓN PÁPALO', NULL, NULL, '20019');
INSERT INTO `cat_municipio` VALUES (1016, '20', '020', 'CONSTANCIA DEL ROSARIO', NULL, NULL, '20020');
INSERT INTO `cat_municipio` VALUES (1017, '20', '021', 'COSOLAPA', NULL, NULL, '20021');
INSERT INTO `cat_municipio` VALUES (1018, '20', '022', 'COSOLTEPEC', NULL, NULL, '20022');
INSERT INTO `cat_municipio` VALUES (1019, '20', '023', 'CUILÁPAM DE GUERRERO', NULL, NULL, '20023');
INSERT INTO `cat_municipio` VALUES (1020, '20', '024', 'CUYAMECALCO VILLA DE ZARAGOZA', NULL, NULL, '20024');
INSERT INTO `cat_municipio` VALUES (1021, '20', '025', 'CHAHUITES', NULL, NULL, '20025');
INSERT INTO `cat_municipio` VALUES (1022, '20', '026', 'CHALCATONGO DE HIDALGO', NULL, NULL, '20026');
INSERT INTO `cat_municipio` VALUES (1023, '20', '027', 'CHIQUIHUITLÁN DE BENITO JUÁREZ', NULL, NULL, '20027');
INSERT INTO `cat_municipio` VALUES (1024, '20', '028', 'HEROICA CIUDAD DE EJUTLA DE CRESPO', NULL, NULL, '20028');
INSERT INTO `cat_municipio` VALUES (1025, '20', '029', 'ELOXOCHITLÁN DE FLORES MAGÓN', NULL, NULL, '20029');
INSERT INTO `cat_municipio` VALUES (1026, '20', '030', 'EL ESPINAL', NULL, NULL, '20030');
INSERT INTO `cat_municipio` VALUES (1027, '20', '031', 'TAMAZULÁPAM DEL ESPÍRITU SANTO', NULL, NULL, '20031');
INSERT INTO `cat_municipio` VALUES (1028, '20', '032', 'FRESNILLO DE TRUJANO', NULL, NULL, '20032');
INSERT INTO `cat_municipio` VALUES (1029, '20', '033', 'GUADALUPE ETLA', NULL, NULL, '20033');
INSERT INTO `cat_municipio` VALUES (1030, '20', '034', 'GUADALUPE DE RAMÍREZ', NULL, NULL, '20034');
INSERT INTO `cat_municipio` VALUES (1031, '20', '035', 'GUELATAO DE JUÁREZ', NULL, NULL, '20035');
INSERT INTO `cat_municipio` VALUES (1032, '20', '036', 'GUEVEA DE HUMBOLDT', NULL, NULL, '20036');
INSERT INTO `cat_municipio` VALUES (1033, '20', '037', 'MESONES HIDALGO', NULL, NULL, '20037');
INSERT INTO `cat_municipio` VALUES (1034, '20', '038', 'VILLA HIDALGO', NULL, NULL, '20038');
INSERT INTO `cat_municipio` VALUES (1035, '20', '039', 'HEROICA CIUDAD DE HUAJUAPAN DE LEÓN', NULL, NULL, '20039');
INSERT INTO `cat_municipio` VALUES (1036, '20', '040', 'HUAUTEPEC', NULL, NULL, '20040');
INSERT INTO `cat_municipio` VALUES (1037, '20', '041', 'HUAUTLA DE JIMÉNEZ', NULL, NULL, '20041');
INSERT INTO `cat_municipio` VALUES (1038, '20', '042', 'IXTLÁN DE JUÁREZ', NULL, NULL, '20042');
INSERT INTO `cat_municipio` VALUES (1039, '20', '043', 'HEROICA CIUDAD DE JUCHITÁN DE ZARAGOZA', NULL, NULL, '20043');
INSERT INTO `cat_municipio` VALUES (1040, '20', '044', 'LOMA BONITA', NULL, NULL, '20044');
INSERT INTO `cat_municipio` VALUES (1041, '20', '045', 'MAGDALENA APASCO', NULL, NULL, '20045');
INSERT INTO `cat_municipio` VALUES (1042, '20', '046', 'MAGDALENA JALTEPEC', NULL, NULL, '20046');
INSERT INTO `cat_municipio` VALUES (1043, '20', '047', 'SANTA MAGDALENA JICOTLÁN', NULL, NULL, '20047');
INSERT INTO `cat_municipio` VALUES (1044, '20', '048', 'MAGDALENA MIXTEPEC', NULL, NULL, '20048');
INSERT INTO `cat_municipio` VALUES (1045, '20', '049', 'MAGDALENA OCOTLÁN', NULL, NULL, '20049');
INSERT INTO `cat_municipio` VALUES (1046, '20', '050', 'MAGDALENA PEÑASCO', NULL, NULL, '20050');
INSERT INTO `cat_municipio` VALUES (1047, '20', '051', 'MAGDALENA TEITIPAC', NULL, NULL, '20051');
INSERT INTO `cat_municipio` VALUES (1048, '20', '052', 'MAGDALENA TEQUISISTLÁN', NULL, NULL, '20052');
INSERT INTO `cat_municipio` VALUES (1049, '20', '053', 'MAGDALENA TLACOTEPEC', NULL, NULL, '20053');
INSERT INTO `cat_municipio` VALUES (1050, '20', '054', 'MAGDALENA ZAHUATLÁN', NULL, NULL, '20054');
INSERT INTO `cat_municipio` VALUES (1051, '20', '055', 'MARISCALA DE JUÁREZ', NULL, NULL, '20055');
INSERT INTO `cat_municipio` VALUES (1052, '20', '056', 'MÁRTIRES DE TACUBAYA', NULL, NULL, '20056');
INSERT INTO `cat_municipio` VALUES (1053, '20', '057', 'MATÍAS ROMERO AVENDAÑO', NULL, NULL, '20057');
INSERT INTO `cat_municipio` VALUES (1054, '20', '058', 'MAZATLÁN VILLA DE FLORES', NULL, NULL, '20058');
INSERT INTO `cat_municipio` VALUES (1055, '20', '059', 'MIAHUATLÁN DE PORFIRIO DÍAZ', NULL, NULL, '20059');
INSERT INTO `cat_municipio` VALUES (1056, '20', '060', 'MIXISTLÁN DE LA REFORMA', NULL, NULL, '20060');
INSERT INTO `cat_municipio` VALUES (1057, '20', '061', 'MONJAS', NULL, NULL, '20061');
INSERT INTO `cat_municipio` VALUES (1058, '20', '062', 'NATIVIDAD', NULL, NULL, '20062');
INSERT INTO `cat_municipio` VALUES (1059, '20', '063', 'NAZARENO ETLA', NULL, NULL, '20063');
INSERT INTO `cat_municipio` VALUES (1060, '20', '064', 'NEJAPA DE MADERO', NULL, NULL, '20064');
INSERT INTO `cat_municipio` VALUES (1061, '20', '065', 'IXPANTEPEC NIEVES', NULL, NULL, '20065');
INSERT INTO `cat_municipio` VALUES (1062, '20', '066', 'SANTIAGO NILTEPEC', NULL, NULL, '20066');
INSERT INTO `cat_municipio` VALUES (1063, '20', '067', 'OAXACA DE JUÁREZ', NULL, NULL, '20067');
INSERT INTO `cat_municipio` VALUES (1064, '20', '068', 'OCOTLÁN DE MORELOS', NULL, NULL, '20068');
INSERT INTO `cat_municipio` VALUES (1065, '20', '069', 'LA PE', NULL, NULL, '20069');
INSERT INTO `cat_municipio` VALUES (1066, '20', '070', 'PINOTEPA DE DON LUIS', NULL, NULL, '20070');
INSERT INTO `cat_municipio` VALUES (1067, '20', '071', 'PLUMA HIDALGO', NULL, NULL, '20071');
INSERT INTO `cat_municipio` VALUES (1068, '20', '072', 'SAN JOSÉ DEL PROGRESO', NULL, NULL, '20072');
INSERT INTO `cat_municipio` VALUES (1069, '20', '073', 'PUTLA VILLA DE GUERRERO', NULL, NULL, '20073');
INSERT INTO `cat_municipio` VALUES (1070, '20', '074', 'SANTA CATARINA QUIOQUITANI', NULL, NULL, '20074');
INSERT INTO `cat_municipio` VALUES (1071, '20', '075', 'REFORMA DE PINEDA', NULL, NULL, '20075');
INSERT INTO `cat_municipio` VALUES (1072, '20', '076', 'LA REFORMA', NULL, NULL, '20076');
INSERT INTO `cat_municipio` VALUES (1073, '20', '077', 'REYES ETLA', NULL, NULL, '20077');
INSERT INTO `cat_municipio` VALUES (1074, '20', '078', 'ROJAS DE CUAUHTÉMOC', NULL, NULL, '20078');
INSERT INTO `cat_municipio` VALUES (1075, '20', '079', 'SALINA CRUZ', NULL, NULL, '20079');
INSERT INTO `cat_municipio` VALUES (1076, '20', '080', 'SAN AGUSTÍN AMATENGO', NULL, NULL, '20080');
INSERT INTO `cat_municipio` VALUES (1077, '20', '081', 'SAN AGUSTÍN ATENANGO', NULL, NULL, '20081');
INSERT INTO `cat_municipio` VALUES (1078, '20', '082', 'SAN AGUSTÍN CHAYUCO', NULL, NULL, '20082');
INSERT INTO `cat_municipio` VALUES (1079, '20', '083', 'SAN AGUSTÍN DE LAS JUNTAS', NULL, NULL, '20083');
INSERT INTO `cat_municipio` VALUES (1080, '20', '084', 'SAN AGUSTÍN ETLA', NULL, NULL, '20084');
INSERT INTO `cat_municipio` VALUES (1081, '20', '085', 'SAN AGUSTÍN LOXICHA', NULL, NULL, '20085');
INSERT INTO `cat_municipio` VALUES (1082, '20', '086', 'SAN AGUSTÍN TLACOTEPEC', NULL, NULL, '20086');
INSERT INTO `cat_municipio` VALUES (1083, '20', '087', 'SAN AGUSTÍN YATARENI', NULL, NULL, '20087');
INSERT INTO `cat_municipio` VALUES (1084, '20', '088', 'SAN ANDRÉS CABECERA NUEVA', NULL, NULL, '20088');
INSERT INTO `cat_municipio` VALUES (1085, '20', '089', 'SAN ANDRÉS DINICUITI', NULL, NULL, '20089');
INSERT INTO `cat_municipio` VALUES (1086, '20', '090', 'SAN ANDRÉS HUAXPALTEPEC', NULL, NULL, '20090');
INSERT INTO `cat_municipio` VALUES (1087, '20', '091', 'SAN ANDRÉS HUAYÁPAM', NULL, NULL, '20091');
INSERT INTO `cat_municipio` VALUES (1088, '20', '092', 'SAN ANDRÉS IXTLAHUACA', NULL, NULL, '20092');
INSERT INTO `cat_municipio` VALUES (1089, '20', '093', 'SAN ANDRÉS LAGUNAS', NULL, NULL, '20093');
INSERT INTO `cat_municipio` VALUES (1090, '20', '094', 'SAN ANDRÉS NUXIÑO', NULL, NULL, '20094');
INSERT INTO `cat_municipio` VALUES (1091, '20', '095', 'SAN ANDRÉS PAXTLÁN', NULL, NULL, '20095');
INSERT INTO `cat_municipio` VALUES (1092, '20', '096', 'SAN ANDRÉS SINAXTLA', NULL, NULL, '20096');
INSERT INTO `cat_municipio` VALUES (1093, '20', '097', 'SAN ANDRÉS SOLAGA', NULL, NULL, '20097');
INSERT INTO `cat_municipio` VALUES (1094, '20', '098', 'SAN ANDRÉS TEOTILÁLPAM', NULL, NULL, '20098');
INSERT INTO `cat_municipio` VALUES (1095, '20', '099', 'SAN ANDRÉS TEPETLAPA', NULL, NULL, '20099');
INSERT INTO `cat_municipio` VALUES (1096, '20', '100', 'SAN ANDRÉS YAÁ', NULL, NULL, '20100');
INSERT INTO `cat_municipio` VALUES (1097, '20', '101', 'SAN ANDRÉS ZABACHE', NULL, NULL, '20101');
INSERT INTO `cat_municipio` VALUES (1098, '20', '102', 'SAN ANDRÉS ZAUTLA', NULL, NULL, '20102');
INSERT INTO `cat_municipio` VALUES (1099, '20', '103', 'SAN ANTONINO CASTILLO VELASCO', NULL, NULL, '20103');
INSERT INTO `cat_municipio` VALUES (1100, '20', '104', 'SAN ANTONINO EL ALTO', NULL, NULL, '20104');
INSERT INTO `cat_municipio` VALUES (1101, '20', '105', 'SAN ANTONINO MONTE VERDE', NULL, NULL, '20105');
INSERT INTO `cat_municipio` VALUES (1102, '20', '106', 'SAN ANTONIO ACUTLA', NULL, NULL, '20106');
INSERT INTO `cat_municipio` VALUES (1103, '20', '107', 'SAN ANTONIO DE LA CAL', NULL, NULL, '20107');
INSERT INTO `cat_municipio` VALUES (1104, '20', '108', 'SAN ANTONIO HUITEPEC', NULL, NULL, '20108');
INSERT INTO `cat_municipio` VALUES (1105, '20', '109', 'SAN ANTONIO NANAHUATÍPAM', NULL, NULL, '20109');
INSERT INTO `cat_municipio` VALUES (1106, '20', '110', 'SAN ANTONIO SINICAHUA', NULL, NULL, '20110');
INSERT INTO `cat_municipio` VALUES (1107, '20', '111', 'SAN ANTONIO TEPETLAPA', NULL, NULL, '20111');
INSERT INTO `cat_municipio` VALUES (1108, '20', '112', 'SAN BALTAZAR CHICHICÁPAM', NULL, NULL, '20112');
INSERT INTO `cat_municipio` VALUES (1109, '20', '113', 'SAN BALTAZAR LOXICHA', NULL, NULL, '20113');
INSERT INTO `cat_municipio` VALUES (1110, '20', '114', 'SAN BALTAZAR YATZACHI EL BAJO', NULL, NULL, '20114');
INSERT INTO `cat_municipio` VALUES (1111, '20', '115', 'SAN BARTOLO COYOTEPEC', NULL, NULL, '20115');
INSERT INTO `cat_municipio` VALUES (1112, '20', '116', 'SAN BARTOLOMÉ AYAUTLA', NULL, NULL, '20116');
INSERT INTO `cat_municipio` VALUES (1113, '20', '117', 'SAN BARTOLOMÉ LOXICHA', NULL, NULL, '20117');
INSERT INTO `cat_municipio` VALUES (1114, '20', '118', 'SAN BARTOLOMÉ QUIALANA', NULL, NULL, '20118');
INSERT INTO `cat_municipio` VALUES (1115, '20', '119', 'SAN BARTOLOMÉ YUCUAÑE', NULL, NULL, '20119');
INSERT INTO `cat_municipio` VALUES (1116, '20', '120', 'SAN BARTOLOMÉ ZOOGOCHO', NULL, NULL, '20120');
INSERT INTO `cat_municipio` VALUES (1117, '20', '121', 'SAN BARTOLO SOYALTEPEC', NULL, NULL, '20121');
INSERT INTO `cat_municipio` VALUES (1118, '20', '122', 'SAN BARTOLO YAUTEPEC', NULL, NULL, '20122');
INSERT INTO `cat_municipio` VALUES (1119, '20', '123', 'SAN BERNARDO MIXTEPEC', NULL, NULL, '20123');
INSERT INTO `cat_municipio` VALUES (1120, '20', '124', 'SAN BLAS ATEMPA', NULL, NULL, '20124');
INSERT INTO `cat_municipio` VALUES (1121, '20', '125', 'SAN CARLOS YAUTEPEC', NULL, NULL, '20125');
INSERT INTO `cat_municipio` VALUES (1122, '20', '126', 'SAN CRISTÓBAL AMATLÁN', NULL, NULL, '20126');
INSERT INTO `cat_municipio` VALUES (1123, '20', '127', 'SAN CRISTÓBAL AMOLTEPEC', NULL, NULL, '20127');
INSERT INTO `cat_municipio` VALUES (1124, '20', '128', 'SAN CRISTÓBAL LACHIRIOAG', NULL, NULL, '20128');
INSERT INTO `cat_municipio` VALUES (1125, '20', '129', 'SAN CRISTÓBAL SUCHIXTLAHUACA', NULL, NULL, '20129');
INSERT INTO `cat_municipio` VALUES (1126, '20', '130', 'SAN DIONISIO DEL MAR', NULL, NULL, '20130');
INSERT INTO `cat_municipio` VALUES (1127, '20', '131', 'SAN DIONISIO OCOTEPEC', NULL, NULL, '20131');
INSERT INTO `cat_municipio` VALUES (1128, '20', '132', 'SAN DIONISIO OCOTLÁN', NULL, NULL, '20132');
INSERT INTO `cat_municipio` VALUES (1129, '20', '133', 'SAN ESTEBAN ATATLAHUCA', NULL, NULL, '20133');
INSERT INTO `cat_municipio` VALUES (1130, '20', '134', 'SAN FELIPE JALAPA DE DÍAZ', NULL, NULL, '20134');
INSERT INTO `cat_municipio` VALUES (1131, '20', '135', 'SAN FELIPE TEJALÁPAM', NULL, NULL, '20135');
INSERT INTO `cat_municipio` VALUES (1132, '20', '136', 'SAN FELIPE USILA', NULL, NULL, '20136');
INSERT INTO `cat_municipio` VALUES (1133, '20', '137', 'SAN FRANCISCO CAHUACUÁ', NULL, NULL, '20137');
INSERT INTO `cat_municipio` VALUES (1134, '20', '138', 'SAN FRANCISCO CAJONOS', NULL, NULL, '20138');
INSERT INTO `cat_municipio` VALUES (1135, '20', '139', 'SAN FRANCISCO CHAPULAPA', NULL, NULL, '20139');
INSERT INTO `cat_municipio` VALUES (1136, '20', '140', 'SAN FRANCISCO CHINDÚA', NULL, NULL, '20140');
INSERT INTO `cat_municipio` VALUES (1137, '20', '141', 'SAN FRANCISCO DEL MAR', NULL, NULL, '20141');
INSERT INTO `cat_municipio` VALUES (1138, '20', '142', 'SAN FRANCISCO HUEHUETLÁN', NULL, NULL, '20142');
INSERT INTO `cat_municipio` VALUES (1139, '20', '143', 'SAN FRANCISCO IXHUATÁN', NULL, NULL, '20143');
INSERT INTO `cat_municipio` VALUES (1140, '20', '144', 'SAN FRANCISCO JALTEPETONGO', NULL, NULL, '20144');
INSERT INTO `cat_municipio` VALUES (1141, '20', '145', 'SAN FRANCISCO LACHIGOLÓ', NULL, NULL, '20145');
INSERT INTO `cat_municipio` VALUES (1142, '20', '146', 'SAN FRANCISCO LOGUECHE', NULL, NULL, '20146');
INSERT INTO `cat_municipio` VALUES (1143, '20', '147', 'SAN FRANCISCO NUXAÑO', NULL, NULL, '20147');
INSERT INTO `cat_municipio` VALUES (1144, '20', '148', 'SAN FRANCISCO OZOLOTEPEC', NULL, NULL, '20148');
INSERT INTO `cat_municipio` VALUES (1145, '20', '149', 'SAN FRANCISCO SOLA', NULL, NULL, '20149');
INSERT INTO `cat_municipio` VALUES (1146, '20', '150', 'SAN FRANCISCO TELIXTLAHUACA', NULL, NULL, '20150');
INSERT INTO `cat_municipio` VALUES (1147, '20', '151', 'SAN FRANCISCO TEOPAN', NULL, NULL, '20151');
INSERT INTO `cat_municipio` VALUES (1148, '20', '152', 'SAN FRANCISCO TLAPANCINGO', NULL, NULL, '20152');
INSERT INTO `cat_municipio` VALUES (1149, '20', '153', 'SAN GABRIEL MIXTEPEC', NULL, NULL, '20153');
INSERT INTO `cat_municipio` VALUES (1150, '20', '154', 'SAN ILDEFONSO AMATLÁN', NULL, NULL, '20154');
INSERT INTO `cat_municipio` VALUES (1151, '20', '155', 'SAN ILDEFONSO SOLA', NULL, NULL, '20155');
INSERT INTO `cat_municipio` VALUES (1152, '20', '156', 'SAN ILDEFONSO VILLA ALTA', NULL, NULL, '20156');
INSERT INTO `cat_municipio` VALUES (1153, '20', '157', 'SAN JACINTO AMILPAS', NULL, NULL, '20157');
INSERT INTO `cat_municipio` VALUES (1154, '20', '158', 'SAN JACINTO TLACOTEPEC', NULL, NULL, '20158');
INSERT INTO `cat_municipio` VALUES (1155, '20', '159', 'SAN JERÓNIMO COATLÁN', NULL, NULL, '20159');
INSERT INTO `cat_municipio` VALUES (1156, '20', '160', 'SAN JERÓNIMO SILACAYOAPILLA', NULL, NULL, '20160');
INSERT INTO `cat_municipio` VALUES (1157, '20', '161', 'SAN JERÓNIMO SOSOLA', NULL, NULL, '20161');
INSERT INTO `cat_municipio` VALUES (1158, '20', '162', 'SAN JERÓNIMO TAVICHE', NULL, NULL, '20162');
INSERT INTO `cat_municipio` VALUES (1159, '20', '163', 'SAN JERÓNIMO TECÓATL', NULL, NULL, '20163');
INSERT INTO `cat_municipio` VALUES (1160, '20', '164', 'SAN JORGE NUCHITA', NULL, NULL, '20164');
INSERT INTO `cat_municipio` VALUES (1161, '20', '165', 'SAN JOSÉ AYUQUILA', NULL, NULL, '20165');
INSERT INTO `cat_municipio` VALUES (1162, '20', '166', 'SAN JOSÉ CHILTEPEC', NULL, NULL, '20166');
INSERT INTO `cat_municipio` VALUES (1163, '20', '167', 'SAN JOSÉ DEL PEÑASCO', NULL, NULL, '20167');
INSERT INTO `cat_municipio` VALUES (1164, '20', '168', 'SAN JOSÉ ESTANCIA GRANDE', NULL, NULL, '20168');
INSERT INTO `cat_municipio` VALUES (1165, '20', '169', 'SAN JOSÉ INDEPENDENCIA', NULL, NULL, '20169');
INSERT INTO `cat_municipio` VALUES (1166, '20', '170', 'SAN JOSÉ LACHIGUIRI', NULL, NULL, '20170');
INSERT INTO `cat_municipio` VALUES (1167, '20', '171', 'SAN JOSÉ TENANGO', NULL, NULL, '20171');
INSERT INTO `cat_municipio` VALUES (1168, '20', '172', 'SAN JUAN ACHIUTLA', NULL, NULL, '20172');
INSERT INTO `cat_municipio` VALUES (1169, '20', '173', 'SAN JUAN ATEPEC', NULL, NULL, '20173');
INSERT INTO `cat_municipio` VALUES (1170, '20', '174', 'ÁNIMAS TRUJANO', NULL, NULL, '20174');
INSERT INTO `cat_municipio` VALUES (1171, '20', '175', 'SAN JUAN BAUTISTA ATATLAHUCA', NULL, NULL, '20175');
INSERT INTO `cat_municipio` VALUES (1172, '20', '176', 'SAN JUAN BAUTISTA COIXTLAHUACA', NULL, NULL, '20176');
INSERT INTO `cat_municipio` VALUES (1173, '20', '177', 'SAN JUAN BAUTISTA CUICATLÁN', NULL, NULL, '20177');
INSERT INTO `cat_municipio` VALUES (1174, '20', '178', 'SAN JUAN BAUTISTA GUELACHE', NULL, NULL, '20178');
INSERT INTO `cat_municipio` VALUES (1175, '20', '179', 'SAN JUAN BAUTISTA JAYACATLÁN', NULL, NULL, '20179');
INSERT INTO `cat_municipio` VALUES (1176, '20', '180', 'SAN JUAN BAUTISTA LO DE SOTO', NULL, NULL, '20180');
INSERT INTO `cat_municipio` VALUES (1177, '20', '181', 'SAN JUAN BAUTISTA SUCHITEPEC', NULL, NULL, '20181');
INSERT INTO `cat_municipio` VALUES (1178, '20', '182', 'SAN JUAN BAUTISTA TLACOATZINTEPEC', NULL, NULL, '20182');
INSERT INTO `cat_municipio` VALUES (1179, '20', '183', 'SAN JUAN BAUTISTA TLACHICHILCO', NULL, NULL, '20183');
INSERT INTO `cat_municipio` VALUES (1180, '20', '184', 'SAN JUAN BAUTISTA TUXTEPEC', NULL, NULL, '20184');
INSERT INTO `cat_municipio` VALUES (1181, '20', '185', 'SAN JUAN CACAHUATEPEC', NULL, NULL, '20185');
INSERT INTO `cat_municipio` VALUES (1182, '20', '186', 'SAN JUAN CIENEGUILLA', NULL, NULL, '20186');
INSERT INTO `cat_municipio` VALUES (1183, '20', '187', 'SAN JUAN COATZÓSPAM', NULL, NULL, '20187');
INSERT INTO `cat_municipio` VALUES (1184, '20', '188', 'SAN JUAN COLORADO', NULL, NULL, '20188');
INSERT INTO `cat_municipio` VALUES (1185, '20', '189', 'SAN JUAN COMALTEPEC', NULL, NULL, '20189');
INSERT INTO `cat_municipio` VALUES (1186, '20', '190', 'SAN JUAN COTZOCÓN', NULL, NULL, '20190');
INSERT INTO `cat_municipio` VALUES (1187, '20', '191', 'SAN JUAN CHICOMEZÚCHIL', NULL, NULL, '20191');
INSERT INTO `cat_municipio` VALUES (1188, '20', '192', 'SAN JUAN CHILATECA', NULL, NULL, '20192');
INSERT INTO `cat_municipio` VALUES (1189, '20', '193', 'SAN JUAN DEL ESTADO', NULL, NULL, '20193');
INSERT INTO `cat_municipio` VALUES (1190, '20', '194', 'SAN JUAN DEL RÍO', NULL, NULL, '20194');
INSERT INTO `cat_municipio` VALUES (1191, '20', '195', 'SAN JUAN DIUXI', NULL, NULL, '20195');
INSERT INTO `cat_municipio` VALUES (1192, '20', '196', 'SAN JUAN EVANGELISTA ANALCO', NULL, NULL, '20196');
INSERT INTO `cat_municipio` VALUES (1193, '20', '197', 'SAN JUAN GUELAVÍA', NULL, NULL, '20197');
INSERT INTO `cat_municipio` VALUES (1194, '20', '198', 'SAN JUAN GUICHICOVI', NULL, NULL, '20198');
INSERT INTO `cat_municipio` VALUES (1195, '20', '199', 'SAN JUAN IHUALTEPEC', NULL, NULL, '20199');
INSERT INTO `cat_municipio` VALUES (1196, '20', '200', 'SAN JUAN JUQUILA MIXES', NULL, NULL, '20200');
INSERT INTO `cat_municipio` VALUES (1197, '20', '201', 'SAN JUAN JUQUILA VIJANOS', NULL, NULL, '20201');
INSERT INTO `cat_municipio` VALUES (1198, '20', '202', 'SAN JUAN LACHAO', NULL, NULL, '20202');
INSERT INTO `cat_municipio` VALUES (1199, '20', '203', 'SAN JUAN LACHIGALLA', NULL, NULL, '20203');
INSERT INTO `cat_municipio` VALUES (1200, '20', '204', 'SAN JUAN LAJARCIA', NULL, NULL, '20204');
INSERT INTO `cat_municipio` VALUES (1201, '20', '205', 'SAN JUAN LALANA', NULL, NULL, '20205');
INSERT INTO `cat_municipio` VALUES (1202, '20', '206', 'SAN JUAN DE LOS CUÉS', NULL, NULL, '20206');
INSERT INTO `cat_municipio` VALUES (1203, '20', '207', 'SAN JUAN MAZATLÁN', NULL, NULL, '20207');
INSERT INTO `cat_municipio` VALUES (1204, '20', '210', 'SAN JUAN ÑUMÍ', NULL, NULL, '20210');
INSERT INTO `cat_municipio` VALUES (1205, '20', '211', 'SAN JUAN OZOLOTEPEC', NULL, NULL, '20211');
INSERT INTO `cat_municipio` VALUES (1206, '20', '212', 'SAN JUAN PETLAPA', NULL, NULL, '20212');
INSERT INTO `cat_municipio` VALUES (1207, '20', '213', 'SAN JUAN QUIAHIJE', NULL, NULL, '20213');
INSERT INTO `cat_municipio` VALUES (1208, '20', '214', 'SAN JUAN QUIOTEPEC', NULL, NULL, '20214');
INSERT INTO `cat_municipio` VALUES (1209, '20', '215', 'SAN JUAN SAYULTEPEC', NULL, NULL, '20215');
INSERT INTO `cat_municipio` VALUES (1210, '20', '216', 'SAN JUAN TABAÁ', NULL, NULL, '20216');
INSERT INTO `cat_municipio` VALUES (1211, '20', '217', 'SAN JUAN TAMAZOLA', NULL, NULL, '20217');
INSERT INTO `cat_municipio` VALUES (1212, '20', '218', 'SAN JUAN TEITA', NULL, NULL, '20218');
INSERT INTO `cat_municipio` VALUES (1213, '20', '219', 'SAN JUAN TEITIPAC', NULL, NULL, '20219');
INSERT INTO `cat_municipio` VALUES (1214, '20', '220', 'SAN JUAN TEPEUXILA', NULL, NULL, '20220');
INSERT INTO `cat_municipio` VALUES (1215, '20', '221', 'SAN JUAN TEPOSCOLULA', NULL, NULL, '20221');
INSERT INTO `cat_municipio` VALUES (1216, '20', '222', 'SAN JUAN YAEÉ', NULL, NULL, '20222');
INSERT INTO `cat_municipio` VALUES (1217, '20', '223', 'SAN JUAN YATZONA', NULL, NULL, '20223');
INSERT INTO `cat_municipio` VALUES (1218, '20', '224', 'SAN JUAN YUCUITA', NULL, NULL, '20224');
INSERT INTO `cat_municipio` VALUES (1219, '20', '225', 'SAN LORENZO', NULL, NULL, '20225');
INSERT INTO `cat_municipio` VALUES (1220, '20', '226', 'SAN LORENZO ALBARRADAS', NULL, NULL, '20226');
INSERT INTO `cat_municipio` VALUES (1221, '20', '227', 'SAN LORENZO CACAOTEPEC', NULL, NULL, '20227');
INSERT INTO `cat_municipio` VALUES (1222, '20', '228', 'SAN LORENZO CUAUNECUILTITLA', NULL, NULL, '20228');
INSERT INTO `cat_municipio` VALUES (1223, '20', '229', 'SAN LORENZO TEXMELÚCAN', NULL, NULL, '20229');
INSERT INTO `cat_municipio` VALUES (1224, '20', '230', 'SAN LORENZO VICTORIA', NULL, NULL, '20230');
INSERT INTO `cat_municipio` VALUES (1225, '20', '209', 'SAN JUAN MIXTEPEC', NULL, NULL, '20209');
INSERT INTO `cat_municipio` VALUES (1226, '20', '231', 'SAN LUCAS CAMOTLÁN', NULL, NULL, '20231');
INSERT INTO `cat_municipio` VALUES (1227, '20', '232', 'SAN LUCAS OJITLÁN', NULL, NULL, '20232');
INSERT INTO `cat_municipio` VALUES (1228, '20', '233', 'SAN LUCAS QUIAVINÍ', NULL, NULL, '20233');
INSERT INTO `cat_municipio` VALUES (1229, '20', '234', 'SAN LUCAS ZOQUIÁPAM', NULL, NULL, '20234');
INSERT INTO `cat_municipio` VALUES (1230, '20', '235', 'SAN LUIS AMATLÁN', NULL, NULL, '20235');
INSERT INTO `cat_municipio` VALUES (1231, '20', '236', 'SAN MARCIAL OZOLOTEPEC', NULL, NULL, '20236');
INSERT INTO `cat_municipio` VALUES (1232, '20', '237', 'SAN MARCOS ARTEAGA', NULL, NULL, '20237');
INSERT INTO `cat_municipio` VALUES (1233, '20', '238', 'SAN MARTÍN DE LOS CANSECOS', NULL, NULL, '20238');
INSERT INTO `cat_municipio` VALUES (1234, '20', '239', 'SAN MARTÍN HUAMELÚLPAM', NULL, NULL, '20239');
INSERT INTO `cat_municipio` VALUES (1235, '20', '240', 'SAN MARTÍN ITUNYOSO', NULL, NULL, '20240');
INSERT INTO `cat_municipio` VALUES (1236, '20', '241', 'SAN MARTÍN LACHILÁ', NULL, NULL, '20241');
INSERT INTO `cat_municipio` VALUES (1237, '20', '242', 'SAN MARTÍN PERAS', NULL, NULL, '20242');
INSERT INTO `cat_municipio` VALUES (1238, '20', '243', 'SAN MARTÍN TILCAJETE', NULL, NULL, '20243');
INSERT INTO `cat_municipio` VALUES (1239, '20', '244', 'SAN MARTÍN TOXPALAN', NULL, NULL, '20244');
INSERT INTO `cat_municipio` VALUES (1240, '20', '245', 'SAN MARTÍN ZACATEPEC', NULL, NULL, '20245');
INSERT INTO `cat_municipio` VALUES (1241, '20', '246', 'SAN MATEO CAJONOS', NULL, NULL, '20246');
INSERT INTO `cat_municipio` VALUES (1242, '20', '247', 'CAPULÁLPAM DE MÉNDEZ', NULL, NULL, '20247');
INSERT INTO `cat_municipio` VALUES (1243, '20', '248', 'SAN MATEO DEL MAR', NULL, NULL, '20248');
INSERT INTO `cat_municipio` VALUES (1244, '20', '249', 'SAN MATEO YOLOXOCHITLÁN', NULL, NULL, '20249');
INSERT INTO `cat_municipio` VALUES (1245, '20', '250', 'SAN MATEO ETLATONGO', NULL, NULL, '20250');
INSERT INTO `cat_municipio` VALUES (1246, '20', '251', 'SAN MATEO NEJÁPAM', NULL, NULL, '20251');
INSERT INTO `cat_municipio` VALUES (1247, '20', '252', 'SAN MATEO PEÑASCO', NULL, NULL, '20252');
INSERT INTO `cat_municipio` VALUES (1248, '20', '253', 'SAN MATEO PIÑAS', NULL, NULL, '20253');
INSERT INTO `cat_municipio` VALUES (1249, '20', '254', 'SAN MATEO RÍO HONDO', NULL, NULL, '20254');
INSERT INTO `cat_municipio` VALUES (1250, '20', '255', 'SAN MATEO SINDIHUI', NULL, NULL, '20255');
INSERT INTO `cat_municipio` VALUES (1251, '20', '256', 'SAN MATEO TLAPILTEPEC', NULL, NULL, '20256');
INSERT INTO `cat_municipio` VALUES (1252, '20', '257', 'SAN MELCHOR BETAZA', NULL, NULL, '20257');
INSERT INTO `cat_municipio` VALUES (1253, '20', '258', 'SAN MIGUEL ACHIUTLA', NULL, NULL, '20258');
INSERT INTO `cat_municipio` VALUES (1254, '20', '259', 'SAN MIGUEL AHUEHUETITLÁN', NULL, NULL, '20259');
INSERT INTO `cat_municipio` VALUES (1255, '20', '260', 'SAN MIGUEL ALOÁPAM', NULL, NULL, '20260');
INSERT INTO `cat_municipio` VALUES (1256, '20', '261', 'SAN MIGUEL AMATITLÁN', NULL, NULL, '20261');
INSERT INTO `cat_municipio` VALUES (1257, '20', '262', 'SAN MIGUEL AMATLÁN', NULL, NULL, '20262');
INSERT INTO `cat_municipio` VALUES (1258, '20', '263', 'SAN MIGUEL COATLÁN', NULL, NULL, '20263');
INSERT INTO `cat_municipio` VALUES (1259, '20', '264', 'SAN MIGUEL CHICAHUA', NULL, NULL, '20264');
INSERT INTO `cat_municipio` VALUES (1260, '20', '265', 'SAN MIGUEL CHIMALAPA', NULL, NULL, '20265');
INSERT INTO `cat_municipio` VALUES (1261, '20', '266', 'SAN MIGUEL DEL PUERTO', NULL, NULL, '20266');
INSERT INTO `cat_municipio` VALUES (1262, '20', '267', 'SAN MIGUEL DEL RÍO', NULL, NULL, '20267');
INSERT INTO `cat_municipio` VALUES (1263, '20', '268', 'SAN MIGUEL EJUTLA', NULL, NULL, '20268');
INSERT INTO `cat_municipio` VALUES (1264, '20', '269', 'SAN MIGUEL EL GRANDE', NULL, NULL, '20269');
INSERT INTO `cat_municipio` VALUES (1265, '20', '270', 'SAN MIGUEL HUAUTLA', NULL, NULL, '20270');
INSERT INTO `cat_municipio` VALUES (1266, '20', '271', 'SAN MIGUEL MIXTEPEC', NULL, NULL, '20271');
INSERT INTO `cat_municipio` VALUES (1267, '20', '272', 'SAN MIGUEL PANIXTLAHUACA', NULL, NULL, '20272');
INSERT INTO `cat_municipio` VALUES (1268, '20', '273', 'SAN MIGUEL PERAS', NULL, NULL, '20273');
INSERT INTO `cat_municipio` VALUES (1269, '20', '274', 'SAN MIGUEL PIEDRAS', NULL, NULL, '20274');
INSERT INTO `cat_municipio` VALUES (1270, '20', '275', 'SAN MIGUEL QUETZALTEPEC', NULL, NULL, '20275');
INSERT INTO `cat_municipio` VALUES (1271, '20', '276', 'SAN MIGUEL SANTA FLOR', NULL, NULL, '20276');
INSERT INTO `cat_municipio` VALUES (1272, '20', '277', 'VILLA SOLA DE VEGA', NULL, NULL, '20277');
INSERT INTO `cat_municipio` VALUES (1273, '20', '278', 'SAN MIGUEL SOYALTEPEC', NULL, NULL, '20278');
INSERT INTO `cat_municipio` VALUES (1274, '20', '279', 'SAN MIGUEL SUCHIXTEPEC', NULL, NULL, '20279');
INSERT INTO `cat_municipio` VALUES (1275, '20', '280', 'VILLA TALEA DE CASTRO', NULL, NULL, '20280');
INSERT INTO `cat_municipio` VALUES (1276, '20', '281', 'SAN MIGUEL TECOMATLÁN', NULL, NULL, '20281');
INSERT INTO `cat_municipio` VALUES (1277, '20', '282', 'SAN MIGUEL TENANGO', NULL, NULL, '20282');
INSERT INTO `cat_municipio` VALUES (1278, '20', '283', 'SAN MIGUEL TEQUIXTEPEC', NULL, NULL, '20283');
INSERT INTO `cat_municipio` VALUES (1279, '20', '284', 'SAN MIGUEL TILQUIÁPAM', NULL, NULL, '20284');
INSERT INTO `cat_municipio` VALUES (1280, '20', '285', 'SAN MIGUEL TLACAMAMA', NULL, NULL, '20285');
INSERT INTO `cat_municipio` VALUES (1281, '20', '286', 'SAN MIGUEL TLACOTEPEC', NULL, NULL, '20286');
INSERT INTO `cat_municipio` VALUES (1282, '20', '287', 'SAN MIGUEL TULANCINGO', NULL, NULL, '20287');
INSERT INTO `cat_municipio` VALUES (1283, '20', '288', 'SAN MIGUEL YOTAO', NULL, NULL, '20288');
INSERT INTO `cat_municipio` VALUES (1284, '20', '289', 'SAN NICOLÁS', NULL, NULL, '20289');
INSERT INTO `cat_municipio` VALUES (1285, '20', '290', 'SAN NICOLÁS HIDALGO', NULL, NULL, '20290');
INSERT INTO `cat_municipio` VALUES (1286, '20', '291', 'SAN PABLO COATLÁN', NULL, NULL, '20291');
INSERT INTO `cat_municipio` VALUES (1287, '20', '292', 'SAN PABLO CUATRO VENADOS', NULL, NULL, '20292');
INSERT INTO `cat_municipio` VALUES (1288, '20', '293', 'SAN PABLO ETLA', NULL, NULL, '20293');
INSERT INTO `cat_municipio` VALUES (1289, '20', '294', 'SAN PABLO HUITZO', NULL, NULL, '20294');
INSERT INTO `cat_municipio` VALUES (1290, '20', '295', 'SAN PABLO HUIXTEPEC', NULL, NULL, '20295');
INSERT INTO `cat_municipio` VALUES (1291, '20', '296', 'SAN PABLO MACUILTIANGUIS', NULL, NULL, '20296');
INSERT INTO `cat_municipio` VALUES (1292, '20', '297', 'SAN PABLO TIJALTEPEC', NULL, NULL, '20297');
INSERT INTO `cat_municipio` VALUES (1293, '20', '298', 'SAN PABLO VILLA DE MITLA', NULL, NULL, '20298');
INSERT INTO `cat_municipio` VALUES (1294, '20', '299', 'SAN PABLO YAGANIZA', NULL, NULL, '20299');
INSERT INTO `cat_municipio` VALUES (1295, '20', '300', 'SAN PEDRO AMUZGOS', NULL, NULL, '20300');
INSERT INTO `cat_municipio` VALUES (1296, '20', '301', 'SAN PEDRO APÓSTOL', NULL, NULL, '20301');
INSERT INTO `cat_municipio` VALUES (1297, '20', '302', 'SAN PEDRO ATOYAC', NULL, NULL, '20302');
INSERT INTO `cat_municipio` VALUES (1298, '20', '303', 'SAN PEDRO CAJONOS', NULL, NULL, '20303');
INSERT INTO `cat_municipio` VALUES (1299, '20', '304', 'SAN PEDRO COXCALTEPEC CÁNTAROS', NULL, NULL, '20304');
INSERT INTO `cat_municipio` VALUES (1300, '20', '305', 'SAN PEDRO COMITANCILLO', NULL, NULL, '20305');
INSERT INTO `cat_municipio` VALUES (1301, '20', '306', 'SAN PEDRO EL ALTO', NULL, NULL, '20306');
INSERT INTO `cat_municipio` VALUES (1302, '20', '307', 'SAN PEDRO HUAMELULA', NULL, NULL, '20307');
INSERT INTO `cat_municipio` VALUES (1303, '20', '308', 'SAN PEDRO HUILOTEPEC', NULL, NULL, '20308');
INSERT INTO `cat_municipio` VALUES (1304, '20', '309', 'SAN PEDRO IXCATLÁN', NULL, NULL, '20309');
INSERT INTO `cat_municipio` VALUES (1305, '20', '310', 'SAN PEDRO IXTLAHUACA', NULL, NULL, '20310');
INSERT INTO `cat_municipio` VALUES (1306, '20', '311', 'SAN PEDRO JALTEPETONGO', NULL, NULL, '20311');
INSERT INTO `cat_municipio` VALUES (1307, '20', '312', 'SAN PEDRO JICAYÁN', NULL, NULL, '20312');
INSERT INTO `cat_municipio` VALUES (1308, '20', '313', 'SAN PEDRO JOCOTIPAC', NULL, NULL, '20313');
INSERT INTO `cat_municipio` VALUES (1309, '20', '314', 'SAN PEDRO JUCHATENGO', NULL, NULL, '20314');
INSERT INTO `cat_municipio` VALUES (1310, '20', '315', 'SAN PEDRO MÁRTIR', NULL, NULL, '20315');
INSERT INTO `cat_municipio` VALUES (1311, '20', '316', 'SAN PEDRO MÁRTIR QUIECHAPA', NULL, NULL, '20316');
INSERT INTO `cat_municipio` VALUES (1312, '20', '317', 'SAN PEDRO MÁRTIR YUCUXACO', NULL, NULL, '20317');
INSERT INTO `cat_municipio` VALUES (1313, '20', '320', 'SAN PEDRO MOLINOS', NULL, NULL, '20320');
INSERT INTO `cat_municipio` VALUES (1314, '20', '321', 'SAN PEDRO NOPALA', NULL, NULL, '20321');
INSERT INTO `cat_municipio` VALUES (1315, '20', '322', 'SAN PEDRO OCOPETATILLO', NULL, NULL, '20322');
INSERT INTO `cat_municipio` VALUES (1316, '20', '323', 'SAN PEDRO OCOTEPEC', NULL, NULL, '20323');
INSERT INTO `cat_municipio` VALUES (1317, '20', '324', 'SAN PEDRO POCHUTLA', NULL, NULL, '20324');
INSERT INTO `cat_municipio` VALUES (1318, '20', '325', 'SAN PEDRO QUIATONI', NULL, NULL, '20325');
INSERT INTO `cat_municipio` VALUES (1319, '20', '326', 'SAN PEDRO SOCHIÁPAM', NULL, NULL, '20326');
INSERT INTO `cat_municipio` VALUES (1320, '20', '327', 'SAN PEDRO TAPANATEPEC', NULL, NULL, '20327');
INSERT INTO `cat_municipio` VALUES (1321, '20', '328', 'SAN PEDRO TAVICHE', NULL, NULL, '20328');
INSERT INTO `cat_municipio` VALUES (1322, '20', '329', 'SAN PEDRO TEOZACOALCO', NULL, NULL, '20329');
INSERT INTO `cat_municipio` VALUES (1323, '20', '330', 'SAN PEDRO TEUTILA', NULL, NULL, '20330');
INSERT INTO `cat_municipio` VALUES (1324, '20', '331', 'SAN PEDRO TIDAÁ', NULL, NULL, '20331');
INSERT INTO `cat_municipio` VALUES (1325, '20', '332', 'SAN PEDRO TOPILTEPEC', NULL, NULL, '20332');
INSERT INTO `cat_municipio` VALUES (1326, '20', '333', 'SAN PEDRO TOTOLÁPAM', NULL, NULL, '20333');
INSERT INTO `cat_municipio` VALUES (1327, '20', '335', 'SAN PEDRO YANERI', NULL, NULL, '20335');
INSERT INTO `cat_municipio` VALUES (1328, '20', '336', 'SAN PEDRO YÓLOX', NULL, NULL, '20336');
INSERT INTO `cat_municipio` VALUES (1329, '20', '337', 'SAN PEDRO Y SAN PABLO AYUTLA', NULL, NULL, '20337');
INSERT INTO `cat_municipio` VALUES (1330, '20', '338', 'VILLA DE ETLA', NULL, NULL, '20338');
INSERT INTO `cat_municipio` VALUES (1331, '20', '339', 'SAN PEDRO Y SAN PABLO TEPOSCOLULA', NULL, NULL, '20339');
INSERT INTO `cat_municipio` VALUES (1332, '20', '340', 'SAN PEDRO Y SAN PABLO TEQUIXTEPEC', NULL, NULL, '20340');
INSERT INTO `cat_municipio` VALUES (1333, '20', '341', 'SAN PEDRO YUCUNAMA', NULL, NULL, '20341');
INSERT INTO `cat_municipio` VALUES (1334, '20', '342', 'SAN RAYMUNDO JALPAN', NULL, NULL, '20342');
INSERT INTO `cat_municipio` VALUES (1335, '20', '343', 'SAN SEBASTIÁN ABASOLO', NULL, NULL, '20343');
INSERT INTO `cat_municipio` VALUES (1336, '20', '344', 'SAN SEBASTIÁN COATLÁN', NULL, NULL, '20344');
INSERT INTO `cat_municipio` VALUES (1337, '20', '345', 'SAN SEBASTIÁN IXCAPA', NULL, NULL, '20345');
INSERT INTO `cat_municipio` VALUES (1338, '20', '346', 'SAN SEBASTIÁN NICANANDUTA', NULL, NULL, '20346');
INSERT INTO `cat_municipio` VALUES (1339, '20', '347', 'SAN SEBASTIÁN RÍO HONDO', NULL, NULL, '20347');
INSERT INTO `cat_municipio` VALUES (1340, '20', '348', 'SAN SEBASTIÁN TECOMAXTLAHUACA', NULL, NULL, '20348');
INSERT INTO `cat_municipio` VALUES (1341, '20', '349', 'SAN SEBASTIÁN TEITIPAC', NULL, NULL, '20349');
INSERT INTO `cat_municipio` VALUES (1342, '20', '350', 'SAN SEBASTIÁN TUTLA', NULL, NULL, '20350');
INSERT INTO `cat_municipio` VALUES (1343, '20', '351', 'SAN SIMÓN ALMOLONGAS', NULL, NULL, '20351');
INSERT INTO `cat_municipio` VALUES (1344, '20', '352', 'SAN SIMÓN ZAHUATLÁN', NULL, NULL, '20352');
INSERT INTO `cat_municipio` VALUES (1345, '20', '353', 'SANTA ANA', NULL, NULL, '20353');
INSERT INTO `cat_municipio` VALUES (1346, '20', '354', 'SANTA ANA ATEIXTLAHUACA', NULL, NULL, '20354');
INSERT INTO `cat_municipio` VALUES (1347, '20', '355', 'SANTA ANA CUAUHTÉMOC', NULL, NULL, '20355');
INSERT INTO `cat_municipio` VALUES (1348, '20', '356', 'SANTA ANA DEL VALLE', NULL, NULL, '20356');
INSERT INTO `cat_municipio` VALUES (1349, '20', '357', 'SANTA ANA TAVELA', NULL, NULL, '20357');
INSERT INTO `cat_municipio` VALUES (1350, '20', '358', 'SANTA ANA TLAPACOYAN', NULL, NULL, '20358');
INSERT INTO `cat_municipio` VALUES (1351, '20', '359', 'SANTA ANA YARENI', NULL, NULL, '20359');
INSERT INTO `cat_municipio` VALUES (1352, '20', '360', 'SANTA ANA ZEGACHE', NULL, NULL, '20360');
INSERT INTO `cat_municipio` VALUES (1353, '20', '361', 'SANTA CATALINA QUIERÍ', NULL, NULL, '20361');
INSERT INTO `cat_municipio` VALUES (1354, '20', '362', 'SANTA CATARINA CUIXTLA', NULL, NULL, '20362');
INSERT INTO `cat_municipio` VALUES (1355, '20', '363', 'SANTA CATARINA IXTEPEJI', NULL, NULL, '20363');
INSERT INTO `cat_municipio` VALUES (1356, '20', '364', 'SANTA CATARINA JUQUILA', NULL, NULL, '20364');
INSERT INTO `cat_municipio` VALUES (1357, '20', '365', 'SANTA CATARINA LACHATAO', NULL, NULL, '20365');
INSERT INTO `cat_municipio` VALUES (1358, '20', '319', 'SAN PEDRO MIXTEPEC', NULL, NULL, '20319');
INSERT INTO `cat_municipio` VALUES (1359, '20', '334', 'VILLA DE TUTUTEPEC', NULL, NULL, '20334');
INSERT INTO `cat_municipio` VALUES (1360, '20', '366', 'SANTA CATARINA LOXICHA', NULL, NULL, '20366');
INSERT INTO `cat_municipio` VALUES (1361, '20', '367', 'SANTA CATARINA MECHOACÁN', NULL, NULL, '20367');
INSERT INTO `cat_municipio` VALUES (1362, '20', '368', 'SANTA CATARINA MINAS', NULL, NULL, '20368');
INSERT INTO `cat_municipio` VALUES (1363, '20', '369', 'SANTA CATARINA QUIANÉ', NULL, NULL, '20369');
INSERT INTO `cat_municipio` VALUES (1364, '20', '370', 'SANTA CATARINA TAYATA', NULL, NULL, '20370');
INSERT INTO `cat_municipio` VALUES (1365, '20', '371', 'SANTA CATARINA TICUÁ', NULL, NULL, '20371');
INSERT INTO `cat_municipio` VALUES (1366, '20', '372', 'SANTA CATARINA YOSONOTÚ', NULL, NULL, '20372');
INSERT INTO `cat_municipio` VALUES (1367, '20', '373', 'SANTA CATARINA ZAPOQUILA', NULL, NULL, '20373');
INSERT INTO `cat_municipio` VALUES (1368, '20', '374', 'SANTA CRUZ ACATEPEC', NULL, NULL, '20374');
INSERT INTO `cat_municipio` VALUES (1369, '20', '375', 'SANTA CRUZ AMILPAS', NULL, NULL, '20375');
INSERT INTO `cat_municipio` VALUES (1370, '20', '376', 'SANTA CRUZ DE BRAVO', NULL, NULL, '20376');
INSERT INTO `cat_municipio` VALUES (1371, '20', '377', 'SANTA CRUZ ITUNDUJIA', NULL, NULL, '20377');
INSERT INTO `cat_municipio` VALUES (1372, '20', '378', 'SANTA CRUZ MIXTEPEC', NULL, NULL, '20378');
INSERT INTO `cat_municipio` VALUES (1373, '20', '379', 'SANTA CRUZ NUNDACO', NULL, NULL, '20379');
INSERT INTO `cat_municipio` VALUES (1374, '20', '380', 'SANTA CRUZ PAPALUTLA', NULL, NULL, '20380');
INSERT INTO `cat_municipio` VALUES (1375, '20', '381', 'SANTA CRUZ TACACHE DE MINA', NULL, NULL, '20381');
INSERT INTO `cat_municipio` VALUES (1376, '20', '382', 'SANTA CRUZ TACAHUA', NULL, NULL, '20382');
INSERT INTO `cat_municipio` VALUES (1377, '20', '383', 'SANTA CRUZ TAYATA', NULL, NULL, '20383');
INSERT INTO `cat_municipio` VALUES (1378, '20', '384', 'SANTA CRUZ XITLA', NULL, NULL, '20384');
INSERT INTO `cat_municipio` VALUES (1379, '20', '385', 'SANTA CRUZ XOXOCOTLÁN', NULL, NULL, '20385');
INSERT INTO `cat_municipio` VALUES (1380, '20', '386', 'SANTA CRUZ ZENZONTEPEC', NULL, NULL, '20386');
INSERT INTO `cat_municipio` VALUES (1381, '20', '387', 'SANTA GERTRUDIS', NULL, NULL, '20387');
INSERT INTO `cat_municipio` VALUES (1382, '20', '388', 'SANTA INÉS DEL MONTE', NULL, NULL, '20388');
INSERT INTO `cat_municipio` VALUES (1383, '20', '389', 'SANTA INÉS YATZECHE', NULL, NULL, '20389');
INSERT INTO `cat_municipio` VALUES (1384, '20', '390', 'SANTA LUCÍA DEL CAMINO', NULL, NULL, '20390');
INSERT INTO `cat_municipio` VALUES (1385, '20', '391', 'SANTA LUCÍA MIAHUATLÁN', NULL, NULL, '20391');
INSERT INTO `cat_municipio` VALUES (1386, '20', '392', 'SANTA LUCÍA MONTEVERDE', NULL, NULL, '20392');
INSERT INTO `cat_municipio` VALUES (1387, '20', '393', 'SANTA LUCÍA OCOTLÁN', NULL, NULL, '20393');
INSERT INTO `cat_municipio` VALUES (1388, '20', '394', 'SANTA MARÍA ALOTEPEC', NULL, NULL, '20394');
INSERT INTO `cat_municipio` VALUES (1389, '20', '395', 'SANTA MARÍA APAZCO', NULL, NULL, '20395');
INSERT INTO `cat_municipio` VALUES (1390, '20', '396', 'SANTA MARÍA LA ASUNCIÓN', NULL, NULL, '20396');
INSERT INTO `cat_municipio` VALUES (1391, '20', '397', 'HEROICA CIUDAD DE TLAXIACO', NULL, NULL, '20397');
INSERT INTO `cat_municipio` VALUES (1392, '20', '398', 'AYOQUEZCO DE ALDAMA', NULL, NULL, '20398');
INSERT INTO `cat_municipio` VALUES (1393, '20', '399', 'SANTA MARÍA ATZOMPA', NULL, NULL, '20399');
INSERT INTO `cat_municipio` VALUES (1394, '20', '400', 'SANTA MARÍA CAMOTLÁN', NULL, NULL, '20400');
INSERT INTO `cat_municipio` VALUES (1395, '20', '401', 'SANTA MARÍA COLOTEPEC', NULL, NULL, '20401');
INSERT INTO `cat_municipio` VALUES (1396, '20', '402', 'SANTA MARÍA CORTIJO', NULL, NULL, '20402');
INSERT INTO `cat_municipio` VALUES (1397, '20', '403', 'SANTA MARÍA COYOTEPEC', NULL, NULL, '20403');
INSERT INTO `cat_municipio` VALUES (1398, '20', '404', 'SANTA MARÍA CHACHOÁPAM', NULL, NULL, '20404');
INSERT INTO `cat_municipio` VALUES (1399, '20', '405', 'VILLA DE CHILAPA DE DÍAZ', NULL, NULL, '20405');
INSERT INTO `cat_municipio` VALUES (1400, '20', '406', 'SANTA MARÍA CHILCHOTLA', NULL, NULL, '20406');
INSERT INTO `cat_municipio` VALUES (1401, '20', '407', 'SANTA MARÍA CHIMALAPA', NULL, NULL, '20407');
INSERT INTO `cat_municipio` VALUES (1402, '20', '408', 'SANTA MARÍA DEL ROSARIO', NULL, NULL, '20408');
INSERT INTO `cat_municipio` VALUES (1403, '20', '409', 'SANTA MARÍA DEL TULE', NULL, NULL, '20409');
INSERT INTO `cat_municipio` VALUES (1404, '20', '410', 'SANTA MARÍA ECATEPEC', NULL, NULL, '20410');
INSERT INTO `cat_municipio` VALUES (1405, '20', '411', 'SANTA MARÍA GUELACÉ', NULL, NULL, '20411');
INSERT INTO `cat_municipio` VALUES (1406, '20', '412', 'SANTA MARÍA GUIENAGATI', NULL, NULL, '20412');
INSERT INTO `cat_municipio` VALUES (1407, '20', '413', 'SANTA MARÍA HUATULCO', NULL, NULL, '20413');
INSERT INTO `cat_municipio` VALUES (1408, '20', '414', 'SANTA MARÍA HUAZOLOTITLÁN', NULL, NULL, '20414');
INSERT INTO `cat_municipio` VALUES (1409, '20', '415', 'SANTA MARÍA IPALAPA', NULL, NULL, '20415');
INSERT INTO `cat_municipio` VALUES (1410, '20', '416', 'SANTA MARÍA IXCATLÁN', NULL, NULL, '20416');
INSERT INTO `cat_municipio` VALUES (1411, '20', '417', 'SANTA MARÍA JACATEPEC', NULL, NULL, '20417');
INSERT INTO `cat_municipio` VALUES (1412, '20', '418', 'SANTA MARÍA JALAPA DEL MARQUÉS', NULL, NULL, '20418');
INSERT INTO `cat_municipio` VALUES (1413, '20', '419', 'SANTA MARÍA JALTIANGUIS', NULL, NULL, '20419');
INSERT INTO `cat_municipio` VALUES (1414, '20', '420', 'SANTA MARÍA LACHIXÍO', NULL, NULL, '20420');
INSERT INTO `cat_municipio` VALUES (1415, '20', '421', 'SANTA MARÍA MIXTEQUILLA', NULL, NULL, '20421');
INSERT INTO `cat_municipio` VALUES (1416, '20', '422', 'SANTA MARÍA NATIVITAS', NULL, NULL, '20422');
INSERT INTO `cat_municipio` VALUES (1417, '20', '423', 'SANTA MARÍA NDUAYACO', NULL, NULL, '20423');
INSERT INTO `cat_municipio` VALUES (1418, '20', '424', 'SANTA MARÍA OZOLOTEPEC', NULL, NULL, '20424');
INSERT INTO `cat_municipio` VALUES (1419, '20', '425', 'SANTA MARÍA PÁPALO', NULL, NULL, '20425');
INSERT INTO `cat_municipio` VALUES (1420, '20', '426', 'SANTA MARÍA PEÑOLES', NULL, NULL, '20426');
INSERT INTO `cat_municipio` VALUES (1421, '20', '427', 'SANTA MARÍA PETAPA', NULL, NULL, '20427');
INSERT INTO `cat_municipio` VALUES (1422, '20', '428', 'SANTA MARÍA QUIEGOLANI', NULL, NULL, '20428');
INSERT INTO `cat_municipio` VALUES (1423, '20', '429', 'SANTA MARÍA SOLA', NULL, NULL, '20429');
INSERT INTO `cat_municipio` VALUES (1424, '20', '430', 'SANTA MARÍA TATALTEPEC', NULL, NULL, '20430');
INSERT INTO `cat_municipio` VALUES (1425, '20', '431', 'SANTA MARÍA TECOMAVACA', NULL, NULL, '20431');
INSERT INTO `cat_municipio` VALUES (1426, '20', '432', 'SANTA MARÍA TEMAXCALAPA', NULL, NULL, '20432');
INSERT INTO `cat_municipio` VALUES (1427, '20', '433', 'SANTA MARÍA TEMAXCALTEPEC', NULL, NULL, '20433');
INSERT INTO `cat_municipio` VALUES (1428, '20', '434', 'SANTA MARÍA TEOPOXCO', NULL, NULL, '20434');
INSERT INTO `cat_municipio` VALUES (1429, '20', '435', 'SANTA MARÍA TEPANTLALI', NULL, NULL, '20435');
INSERT INTO `cat_municipio` VALUES (1430, '20', '436', 'SANTA MARÍA TEXCATITLÁN', NULL, NULL, '20436');
INSERT INTO `cat_municipio` VALUES (1431, '20', '437', 'SANTA MARÍA TLAHUITOLTEPEC', NULL, NULL, '20437');
INSERT INTO `cat_municipio` VALUES (1432, '20', '438', 'SANTA MARÍA TLALIXTAC', NULL, NULL, '20438');
INSERT INTO `cat_municipio` VALUES (1433, '20', '439', 'SANTA MARÍA TONAMECA', NULL, NULL, '20439');
INSERT INTO `cat_municipio` VALUES (1434, '20', '440', 'SANTA MARÍA TOTOLAPILLA', NULL, NULL, '20440');
INSERT INTO `cat_municipio` VALUES (1435, '20', '441', 'SANTA MARÍA XADANI', NULL, NULL, '20441');
INSERT INTO `cat_municipio` VALUES (1436, '20', '442', 'SANTA MARÍA YALINA', NULL, NULL, '20442');
INSERT INTO `cat_municipio` VALUES (1437, '20', '443', 'SANTA MARÍA YAVESÍA', NULL, NULL, '20443');
INSERT INTO `cat_municipio` VALUES (1438, '20', '444', 'SANTA MARÍA YOLOTEPEC', NULL, NULL, '20444');
INSERT INTO `cat_municipio` VALUES (1439, '20', '445', 'SANTA MARÍA YOSOYÚA', NULL, NULL, '20445');
INSERT INTO `cat_municipio` VALUES (1440, '20', '446', 'SANTA MARÍA YUCUHITI', NULL, NULL, '20446');
INSERT INTO `cat_municipio` VALUES (1441, '20', '447', 'SANTA MARÍA ZACATEPEC', NULL, NULL, '20447');
INSERT INTO `cat_municipio` VALUES (1442, '20', '448', 'SANTA MARÍA ZANIZA', NULL, NULL, '20448');
INSERT INTO `cat_municipio` VALUES (1443, '20', '449', 'SANTA MARÍA ZOQUITLÁN', NULL, NULL, '20449');
INSERT INTO `cat_municipio` VALUES (1444, '20', '450', 'SANTIAGO AMOLTEPEC', NULL, NULL, '20450');
INSERT INTO `cat_municipio` VALUES (1445, '20', '451', 'SANTIAGO APOALA', NULL, NULL, '20451');
INSERT INTO `cat_municipio` VALUES (1446, '20', '452', 'SANTIAGO APÓSTOL', NULL, NULL, '20452');
INSERT INTO `cat_municipio` VALUES (1447, '20', '453', 'SANTIAGO ASTATA', NULL, NULL, '20453');
INSERT INTO `cat_municipio` VALUES (1448, '20', '454', 'SANTIAGO ATITLÁN', NULL, NULL, '20454');
INSERT INTO `cat_municipio` VALUES (1449, '20', '455', 'SANTIAGO AYUQUILILLA', NULL, NULL, '20455');
INSERT INTO `cat_municipio` VALUES (1450, '20', '456', 'SANTIAGO CACALOXTEPEC', NULL, NULL, '20456');
INSERT INTO `cat_municipio` VALUES (1451, '20', '457', 'SANTIAGO CAMOTLÁN', NULL, NULL, '20457');
INSERT INTO `cat_municipio` VALUES (1452, '20', '458', 'SANTIAGO COMALTEPEC', NULL, NULL, '20458');
INSERT INTO `cat_municipio` VALUES (1453, '20', '459', 'SANTIAGO CHAZUMBA', NULL, NULL, '20459');
INSERT INTO `cat_municipio` VALUES (1454, '20', '460', 'SANTIAGO CHOÁPAM', NULL, NULL, '20460');
INSERT INTO `cat_municipio` VALUES (1455, '20', '461', 'SANTIAGO DEL RÍO', NULL, NULL, '20461');
INSERT INTO `cat_municipio` VALUES (1456, '20', '462', 'SANTIAGO HUAJOLOTITLÁN', NULL, NULL, '20462');
INSERT INTO `cat_municipio` VALUES (1457, '20', '463', 'SANTIAGO HUAUCLILLA', NULL, NULL, '20463');
INSERT INTO `cat_municipio` VALUES (1458, '20', '464', 'SANTIAGO IHUITLÁN PLUMAS', NULL, NULL, '20464');
INSERT INTO `cat_municipio` VALUES (1459, '20', '465', 'SANTIAGO IXCUINTEPEC', NULL, NULL, '20465');
INSERT INTO `cat_municipio` VALUES (1460, '20', '466', 'SANTIAGO IXTAYUTLA', NULL, NULL, '20466');
INSERT INTO `cat_municipio` VALUES (1461, '20', '467', 'SANTIAGO JAMILTEPEC', NULL, NULL, '20467');
INSERT INTO `cat_municipio` VALUES (1462, '20', '468', 'SANTIAGO JOCOTEPEC', NULL, NULL, '20468');
INSERT INTO `cat_municipio` VALUES (1463, '20', '469', 'SANTIAGO JUXTLAHUACA', NULL, NULL, '20469');
INSERT INTO `cat_municipio` VALUES (1464, '20', '470', 'SANTIAGO LACHIGUIRI', NULL, NULL, '20470');
INSERT INTO `cat_municipio` VALUES (1465, '20', '471', 'SANTIAGO LALOPA', NULL, NULL, '20471');
INSERT INTO `cat_municipio` VALUES (1466, '20', '472', 'SANTIAGO LAOLLAGA', NULL, NULL, '20472');
INSERT INTO `cat_municipio` VALUES (1467, '20', '473', 'SANTIAGO LAXOPA', NULL, NULL, '20473');
INSERT INTO `cat_municipio` VALUES (1468, '20', '474', 'SANTIAGO LLANO GRANDE', NULL, NULL, '20474');
INSERT INTO `cat_municipio` VALUES (1469, '20', '475', 'SANTIAGO MATATLÁN', NULL, NULL, '20475');
INSERT INTO `cat_municipio` VALUES (1470, '20', '476', 'SANTIAGO MILTEPEC', NULL, NULL, '20476');
INSERT INTO `cat_municipio` VALUES (1471, '20', '477', 'SANTIAGO MINAS', NULL, NULL, '20477');
INSERT INTO `cat_municipio` VALUES (1472, '20', '478', 'SANTIAGO NACALTEPEC', NULL, NULL, '20478');
INSERT INTO `cat_municipio` VALUES (1473, '20', '479', 'SANTIAGO NEJAPILLA', NULL, NULL, '20479');
INSERT INTO `cat_municipio` VALUES (1474, '20', '480', 'SANTIAGO NUNDICHE', NULL, NULL, '20480');
INSERT INTO `cat_municipio` VALUES (1475, '20', '481', 'SANTIAGO NUYOÓ', NULL, NULL, '20481');
INSERT INTO `cat_municipio` VALUES (1476, '20', '482', 'SANTIAGO PINOTEPA NACIONAL', NULL, NULL, '20482');
INSERT INTO `cat_municipio` VALUES (1477, '20', '483', 'SANTIAGO SUCHILQUITONGO', NULL, NULL, '20483');
INSERT INTO `cat_municipio` VALUES (1478, '20', '484', 'SANTIAGO TAMAZOLA', NULL, NULL, '20484');
INSERT INTO `cat_municipio` VALUES (1479, '20', '485', 'SANTIAGO TAPEXTLA', NULL, NULL, '20485');
INSERT INTO `cat_municipio` VALUES (1480, '20', '486', 'VILLA TEJÚPAM DE LA UNIÓN', NULL, NULL, '20486');
INSERT INTO `cat_municipio` VALUES (1481, '20', '487', 'SANTIAGO TENANGO', NULL, NULL, '20487');
INSERT INTO `cat_municipio` VALUES (1482, '20', '488', 'SANTIAGO TEPETLAPA', NULL, NULL, '20488');
INSERT INTO `cat_municipio` VALUES (1483, '20', '489', 'SANTIAGO TETEPEC', NULL, NULL, '20489');
INSERT INTO `cat_municipio` VALUES (1484, '20', '490', 'SANTIAGO TEXCALCINGO', NULL, NULL, '20490');
INSERT INTO `cat_municipio` VALUES (1485, '20', '491', 'SANTIAGO TEXTITLÁN', NULL, NULL, '20491');
INSERT INTO `cat_municipio` VALUES (1486, '20', '492', 'SANTIAGO TILANTONGO', NULL, NULL, '20492');
INSERT INTO `cat_municipio` VALUES (1487, '20', '493', 'SANTIAGO TILLO', NULL, NULL, '20493');
INSERT INTO `cat_municipio` VALUES (1488, '20', '494', 'SANTIAGO TLAZOYALTEPEC', NULL, NULL, '20494');
INSERT INTO `cat_municipio` VALUES (1489, '20', '495', 'SANTIAGO XANICA', NULL, NULL, '20495');
INSERT INTO `cat_municipio` VALUES (1490, '20', '496', 'SANTIAGO XIACUÍ', NULL, NULL, '20496');
INSERT INTO `cat_municipio` VALUES (1491, '20', '497', 'SANTIAGO YAITEPEC', NULL, NULL, '20497');
INSERT INTO `cat_municipio` VALUES (1492, '20', '498', 'SANTIAGO YAVEO', NULL, NULL, '20498');
INSERT INTO `cat_municipio` VALUES (1493, '20', '499', 'SANTIAGO YOLOMÉCATL', NULL, NULL, '20499');
INSERT INTO `cat_municipio` VALUES (1494, '20', '500', 'SANTIAGO YOSONDÚA', NULL, NULL, '20500');
INSERT INTO `cat_municipio` VALUES (1495, '20', '501', 'SANTIAGO YUCUYACHI', NULL, NULL, '20501');
INSERT INTO `cat_municipio` VALUES (1496, '20', '502', 'SANTIAGO ZACATEPEC', NULL, NULL, '20502');
INSERT INTO `cat_municipio` VALUES (1497, '20', '503', 'SANTIAGO ZOOCHILA', NULL, NULL, '20503');
INSERT INTO `cat_municipio` VALUES (1498, '20', '504', 'NUEVO ZOQUIÁPAM', NULL, NULL, '20504');
INSERT INTO `cat_municipio` VALUES (1499, '20', '505', 'SANTO DOMINGO INGENIO', NULL, NULL, '20505');
INSERT INTO `cat_municipio` VALUES (1500, '20', '506', 'SANTO DOMINGO ALBARRADAS', NULL, NULL, '20506');
INSERT INTO `cat_municipio` VALUES (1501, '20', '507', 'SANTO DOMINGO ARMENTA', NULL, NULL, '20507');
INSERT INTO `cat_municipio` VALUES (1502, '20', '508', 'SANTO DOMINGO CHIHUITÁN', NULL, NULL, '20508');
INSERT INTO `cat_municipio` VALUES (1503, '20', '509', 'SANTO DOMINGO DE MORELOS', NULL, NULL, '20509');
INSERT INTO `cat_municipio` VALUES (1504, '20', '510', 'SANTO DOMINGO IXCATLÁN', NULL, NULL, '20510');
INSERT INTO `cat_municipio` VALUES (1505, '20', '511', 'SANTO DOMINGO NUXAÁ', NULL, NULL, '20511');
INSERT INTO `cat_municipio` VALUES (1506, '20', '512', 'SANTO DOMINGO OZOLOTEPEC', NULL, NULL, '20512');
INSERT INTO `cat_municipio` VALUES (1507, '20', '513', 'SANTO DOMINGO PETAPA', NULL, NULL, '20513');
INSERT INTO `cat_municipio` VALUES (1508, '20', '514', 'SANTO DOMINGO ROAYAGA', NULL, NULL, '20514');
INSERT INTO `cat_municipio` VALUES (1509, '20', '515', 'SANTO DOMINGO TEHUANTEPEC', NULL, NULL, '20515');
INSERT INTO `cat_municipio` VALUES (1510, '20', '516', 'SANTO DOMINGO TEOJOMULCO', NULL, NULL, '20516');
INSERT INTO `cat_municipio` VALUES (1511, '20', '517', 'SANTO DOMINGO TEPUXTEPEC', NULL, NULL, '20517');
INSERT INTO `cat_municipio` VALUES (1512, '20', '518', 'SANTO DOMINGO TLATAYÁPAM', NULL, NULL, '20518');
INSERT INTO `cat_municipio` VALUES (1513, '20', '519', 'SANTO DOMINGO TOMALTEPEC', NULL, NULL, '20519');
INSERT INTO `cat_municipio` VALUES (1514, '20', '520', 'SANTO DOMINGO TONALÁ', NULL, NULL, '20520');
INSERT INTO `cat_municipio` VALUES (1515, '20', '521', 'SANTO DOMINGO TONALTEPEC', NULL, NULL, '20521');
INSERT INTO `cat_municipio` VALUES (1516, '20', '522', 'SANTO DOMINGO XAGACÍA', NULL, NULL, '20522');
INSERT INTO `cat_municipio` VALUES (1517, '20', '523', 'SANTO DOMINGO YANHUITLÁN', NULL, NULL, '20523');
INSERT INTO `cat_municipio` VALUES (1518, '20', '524', 'SANTO DOMINGO YODOHINO', NULL, NULL, '20524');
INSERT INTO `cat_municipio` VALUES (1519, '20', '525', 'SANTO DOMINGO ZANATEPEC', NULL, NULL, '20525');
INSERT INTO `cat_municipio` VALUES (1520, '20', '526', 'SANTOS REYES NOPALA', NULL, NULL, '20526');
INSERT INTO `cat_municipio` VALUES (1521, '20', '527', 'SANTOS REYES PÁPALO', NULL, NULL, '20527');
INSERT INTO `cat_municipio` VALUES (1522, '20', '528', 'SANTOS REYES TEPEJILLO', NULL, NULL, '20528');
INSERT INTO `cat_municipio` VALUES (1523, '20', '529', 'SANTOS REYES YUCUNÁ', NULL, NULL, '20529');
INSERT INTO `cat_municipio` VALUES (1524, '20', '530', 'SANTO TOMÁS JALIEZA', NULL, NULL, '20530');
INSERT INTO `cat_municipio` VALUES (1525, '20', '531', 'SANTO TOMÁS MAZALTEPEC', NULL, NULL, '20531');
INSERT INTO `cat_municipio` VALUES (1526, '20', '532', 'SANTO TOMÁS OCOTEPEC', NULL, NULL, '20532');
INSERT INTO `cat_municipio` VALUES (1527, '20', '533', 'SANTO TOMÁS TAMAZULAPAN', NULL, NULL, '20533');
INSERT INTO `cat_municipio` VALUES (1528, '20', '534', 'SAN VICENTE COATLÁN', NULL, NULL, '20534');
INSERT INTO `cat_municipio` VALUES (1529, '20', '535', 'SAN VICENTE LACHIXÍO', NULL, NULL, '20535');
INSERT INTO `cat_municipio` VALUES (1530, '20', '536', 'SAN VICENTE NUÑÚ', NULL, NULL, '20536');
INSERT INTO `cat_municipio` VALUES (1531, '20', '537', 'SILACAYOÁPAM', NULL, NULL, '20537');
INSERT INTO `cat_municipio` VALUES (1532, '20', '538', 'SITIO DE XITLAPEHUA', NULL, NULL, '20538');
INSERT INTO `cat_municipio` VALUES (1533, '20', '539', 'SOLEDAD ETLA', NULL, NULL, '20539');
INSERT INTO `cat_municipio` VALUES (1534, '20', '540', 'VILLA DE TAMAZULÁPAM DEL PROGRESO', NULL, NULL, '20540');
INSERT INTO `cat_municipio` VALUES (1535, '20', '541', 'TANETZE DE ZARAGOZA', NULL, NULL, '20541');
INSERT INTO `cat_municipio` VALUES (1536, '20', '542', 'TANICHE', NULL, NULL, '20542');
INSERT INTO `cat_municipio` VALUES (1537, '20', '543', 'TATALTEPEC DE VALDÉS', NULL, NULL, '20543');
INSERT INTO `cat_municipio` VALUES (1538, '20', '544', 'TEOCOCUILCO DE MARCOS PÉREZ', NULL, NULL, '20544');
INSERT INTO `cat_municipio` VALUES (1539, '20', '545', 'TEOTITLÁN DE FLORES MAGÓN', NULL, NULL, '20545');
INSERT INTO `cat_municipio` VALUES (1540, '20', '546', 'TEOTITLÁN DEL VALLE', NULL, NULL, '20546');
INSERT INTO `cat_municipio` VALUES (1541, '20', '547', 'TEOTONGO', NULL, NULL, '20547');
INSERT INTO `cat_municipio` VALUES (1542, '20', '548', 'TEPELMEME VILLA DE MORELOS', NULL, NULL, '20548');
INSERT INTO `cat_municipio` VALUES (1543, '20', '549', 'HEROICA VILLA TEZOATLÁN DE SEGURA Y LUNA, CUNA DE LA INDEPENDENCIA DE OAXACA', NULL, NULL, '20549');
INSERT INTO `cat_municipio` VALUES (1544, '20', '550', 'SAN JERÓNIMO TLACOCHAHUAYA', NULL, NULL, '20550');
INSERT INTO `cat_municipio` VALUES (1545, '20', '551', 'TLACOLULA DE MATAMOROS', NULL, NULL, '20551');
INSERT INTO `cat_municipio` VALUES (1546, '20', '552', 'TLACOTEPEC PLUMAS', NULL, NULL, '20552');
INSERT INTO `cat_municipio` VALUES (1547, '20', '553', 'TLALIXTAC DE CABRERA', NULL, NULL, '20553');
INSERT INTO `cat_municipio` VALUES (1548, '20', '554', 'TOTONTEPEC VILLA DE MORELOS', NULL, NULL, '20554');
INSERT INTO `cat_municipio` VALUES (1549, '20', '555', 'TRINIDAD ZAACHILA', NULL, NULL, '20555');
INSERT INTO `cat_municipio` VALUES (1550, '20', '556', 'LA TRINIDAD VISTA HERMOSA', NULL, NULL, '20556');
INSERT INTO `cat_municipio` VALUES (1551, '20', '557', 'UNIÓN HIDALGO', NULL, NULL, '20557');
INSERT INTO `cat_municipio` VALUES (1552, '20', '558', 'VALERIO TRUJANO', NULL, NULL, '20558');
INSERT INTO `cat_municipio` VALUES (1553, '20', '559', 'SAN JUAN BAUTISTA VALLE NACIONAL', NULL, NULL, '20559');
INSERT INTO `cat_municipio` VALUES (1554, '20', '560', 'VILLA DÍAZ ORDAZ', NULL, NULL, '20560');
INSERT INTO `cat_municipio` VALUES (1555, '20', '561', 'YAXE', NULL, NULL, '20561');
INSERT INTO `cat_municipio` VALUES (1556, '20', '562', 'MAGDALENA YODOCONO DE PORFIRIO DÍAZ', NULL, NULL, '20562');
INSERT INTO `cat_municipio` VALUES (1557, '20', '563', 'YOGANA', NULL, NULL, '20563');
INSERT INTO `cat_municipio` VALUES (1558, '20', '564', 'YUTANDUCHI DE GUERRERO', NULL, NULL, '20564');
INSERT INTO `cat_municipio` VALUES (1559, '20', '565', 'VILLA DE ZAACHILA', NULL, NULL, '20565');
INSERT INTO `cat_municipio` VALUES (1560, '20', '566', 'SAN MATEO YUCUTINDOO', NULL, NULL, '20566');
INSERT INTO `cat_municipio` VALUES (1561, '20', '567', 'ZAPOTITLÁN LAGUNAS', NULL, NULL, '20567');
INSERT INTO `cat_municipio` VALUES (1562, '20', '568', 'ZAPOTITLÁN PALMAS', NULL, NULL, '20568');
INSERT INTO `cat_municipio` VALUES (1563, '20', '569', 'SANTA INÉS DE ZARAGOZA', NULL, NULL, '20569');
INSERT INTO `cat_municipio` VALUES (1564, '20', '570', 'ZIMATLÁN DE ÁLVAREZ', NULL, NULL, '20570');
INSERT INTO `cat_municipio` VALUES (1565, '21', '001', 'ACAJETE', NULL, NULL, '21001');
INSERT INTO `cat_municipio` VALUES (1566, '21', '002', 'ACATENO', NULL, NULL, '21002');
INSERT INTO `cat_municipio` VALUES (1567, '21', '003', 'ACATLÁN', NULL, NULL, '21003');
INSERT INTO `cat_municipio` VALUES (1568, '21', '004', 'ACATZINGO', NULL, NULL, '21004');
INSERT INTO `cat_municipio` VALUES (1569, '21', '005', 'ACTEOPAN', NULL, NULL, '21005');
INSERT INTO `cat_municipio` VALUES (1570, '21', '006', 'AHUACATLÁN', NULL, NULL, '21006');
INSERT INTO `cat_municipio` VALUES (1571, '21', '007', 'AHUATLÁN', NULL, NULL, '21007');
INSERT INTO `cat_municipio` VALUES (1572, '21', '008', 'AHUAZOTEPEC', NULL, NULL, '21008');
INSERT INTO `cat_municipio` VALUES (1573, '21', '009', 'AHUEHUETITLA', NULL, NULL, '21009');
INSERT INTO `cat_municipio` VALUES (1574, '21', '010', 'AJALPAN', NULL, NULL, '21010');
INSERT INTO `cat_municipio` VALUES (1575, '21', '011', 'ALBINO ZERTUCHE', NULL, NULL, '21011');
INSERT INTO `cat_municipio` VALUES (1576, '21', '012', 'ALJOJUCA', NULL, NULL, '21012');
INSERT INTO `cat_municipio` VALUES (1577, '21', '013', 'ALTEPEXI', NULL, NULL, '21013');
INSERT INTO `cat_municipio` VALUES (1578, '21', '014', 'AMIXTLÁN', NULL, NULL, '21014');
INSERT INTO `cat_municipio` VALUES (1579, '21', '015', 'AMOZOC', NULL, NULL, '21015');
INSERT INTO `cat_municipio` VALUES (1580, '21', '016', 'AQUIXTLA', NULL, NULL, '21016');
INSERT INTO `cat_municipio` VALUES (1581, '21', '017', 'ATEMPAN', NULL, NULL, '21017');
INSERT INTO `cat_municipio` VALUES (1582, '21', '018', 'ATEXCAL', NULL, NULL, '21018');
INSERT INTO `cat_municipio` VALUES (1583, '21', '019', 'ATLIXCO', NULL, NULL, '21019');
INSERT INTO `cat_municipio` VALUES (1584, '21', '020', 'ATOYATEMPAN', NULL, NULL, '21020');
INSERT INTO `cat_municipio` VALUES (1585, '21', '021', 'ATZALA', NULL, NULL, '21021');
INSERT INTO `cat_municipio` VALUES (1586, '21', '022', 'ATZITZIHUACÁN', NULL, NULL, '21022');
INSERT INTO `cat_municipio` VALUES (1587, '21', '023', 'ATZITZINTLA', NULL, NULL, '21023');
INSERT INTO `cat_municipio` VALUES (1588, '21', '024', 'AXUTLA', NULL, NULL, '21024');
INSERT INTO `cat_municipio` VALUES (1589, '21', '025', 'AYOTOXCO DE GUERRERO', NULL, NULL, '21025');
INSERT INTO `cat_municipio` VALUES (1590, '21', '026', 'CALPAN', NULL, NULL, '21026');
INSERT INTO `cat_municipio` VALUES (1591, '21', '027', 'CALTEPEC', NULL, NULL, '21027');
INSERT INTO `cat_municipio` VALUES (1592, '21', '028', 'CAMOCUAUTLA', NULL, NULL, '21028');
INSERT INTO `cat_municipio` VALUES (1593, '21', '029', 'CAXHUACAN', NULL, NULL, '21029');
INSERT INTO `cat_municipio` VALUES (1594, '21', '030', 'COATEPEC', NULL, NULL, '21030');
INSERT INTO `cat_municipio` VALUES (1595, '21', '031', 'COATZINGO', NULL, NULL, '21031');
INSERT INTO `cat_municipio` VALUES (1596, '21', '032', 'COHETZALA', NULL, NULL, '21032');
INSERT INTO `cat_municipio` VALUES (1597, '21', '033', 'COHUECAN', NULL, NULL, '21033');
INSERT INTO `cat_municipio` VALUES (1598, '21', '034', 'CORONANGO', NULL, NULL, '21034');
INSERT INTO `cat_municipio` VALUES (1599, '21', '035', 'COXCATLÁN', NULL, NULL, '21035');
INSERT INTO `cat_municipio` VALUES (1600, '21', '036', 'COYOMEAPAN', NULL, NULL, '21036');
INSERT INTO `cat_municipio` VALUES (1601, '21', '037', 'COYOTEPEC', NULL, NULL, '21037');
INSERT INTO `cat_municipio` VALUES (1602, '21', '038', 'CUAPIAXTLA DE MADERO', NULL, NULL, '21038');
INSERT INTO `cat_municipio` VALUES (1603, '21', '039', 'CUAUTEMPAN', NULL, NULL, '21039');
INSERT INTO `cat_municipio` VALUES (1604, '21', '040', 'CUAUTINCHÁN', NULL, NULL, '21040');
INSERT INTO `cat_municipio` VALUES (1605, '21', '041', 'CUAUTLANCINGO', NULL, NULL, '21041');
INSERT INTO `cat_municipio` VALUES (1606, '21', '042', 'CUAYUCA DE ANDRADE', NULL, NULL, '21042');
INSERT INTO `cat_municipio` VALUES (1607, '21', '043', 'CUETZALAN DEL PROGRESO', NULL, NULL, '21043');
INSERT INTO `cat_municipio` VALUES (1608, '21', '044', 'CUYOACO', NULL, NULL, '21044');
INSERT INTO `cat_municipio` VALUES (1609, '21', '045', 'CHALCHICOMULA DE SESMA', NULL, NULL, '21045');
INSERT INTO `cat_municipio` VALUES (1610, '21', '046', 'CHAPULCO', NULL, NULL, '21046');
INSERT INTO `cat_municipio` VALUES (1611, '21', '047', 'CHIAUTLA', NULL, NULL, '21047');
INSERT INTO `cat_municipio` VALUES (1612, '21', '048', 'CHIAUTZINGO', NULL, NULL, '21048');
INSERT INTO `cat_municipio` VALUES (1613, '21', '049', 'CHICONCUAUTLA', NULL, NULL, '21049');
INSERT INTO `cat_municipio` VALUES (1614, '21', '050', 'CHICHIQUILA', NULL, NULL, '21050');
INSERT INTO `cat_municipio` VALUES (1615, '21', '051', 'CHIETLA', NULL, NULL, '21051');
INSERT INTO `cat_municipio` VALUES (1616, '21', '052', 'CHIGMECATITLÁN', NULL, NULL, '21052');
INSERT INTO `cat_municipio` VALUES (1617, '21', '053', 'CHIGNAHUAPAN', NULL, NULL, '21053');
INSERT INTO `cat_municipio` VALUES (1618, '21', '054', 'CHIGNAUTLA', NULL, NULL, '21054');
INSERT INTO `cat_municipio` VALUES (1619, '21', '055', 'CHILA', NULL, NULL, '21055');
INSERT INTO `cat_municipio` VALUES (1620, '21', '056', 'CHILA DE LA SAL', NULL, NULL, '21056');
INSERT INTO `cat_municipio` VALUES (1621, '21', '057', 'HONEY', NULL, NULL, '21057');
INSERT INTO `cat_municipio` VALUES (1622, '21', '058', 'CHILCHOTLA', NULL, NULL, '21058');
INSERT INTO `cat_municipio` VALUES (1623, '21', '059', 'CHINANTLA', NULL, NULL, '21059');
INSERT INTO `cat_municipio` VALUES (1624, '21', '060', 'DOMINGO ARENAS', NULL, NULL, '21060');
INSERT INTO `cat_municipio` VALUES (1625, '21', '061', 'ELOXOCHITLÁN', NULL, NULL, '21061');
INSERT INTO `cat_municipio` VALUES (1626, '21', '062', 'EPATLÁN', NULL, NULL, '21062');
INSERT INTO `cat_municipio` VALUES (1627, '21', '063', 'ESPERANZA', NULL, NULL, '21063');
INSERT INTO `cat_municipio` VALUES (1628, '21', '064', 'FRANCISCO Z. MENA', NULL, NULL, '21064');
INSERT INTO `cat_municipio` VALUES (1629, '21', '065', 'GENERAL FELIPE ÁNGELES', NULL, NULL, '21065');
INSERT INTO `cat_municipio` VALUES (1630, '21', '066', 'GUADALUPE', NULL, NULL, '21066');
INSERT INTO `cat_municipio` VALUES (1631, '21', '067', 'GUADALUPE VICTORIA', NULL, NULL, '21067');
INSERT INTO `cat_municipio` VALUES (1632, '21', '068', 'HERMENEGILDO GALEANA', NULL, NULL, '21068');
INSERT INTO `cat_municipio` VALUES (1633, '21', '069', 'HUAQUECHULA', NULL, NULL, '21069');
INSERT INTO `cat_municipio` VALUES (1634, '21', '070', 'HUATLATLAUCA', NULL, NULL, '21070');
INSERT INTO `cat_municipio` VALUES (1635, '21', '071', 'HUAUCHINANGO', NULL, NULL, '21071');
INSERT INTO `cat_municipio` VALUES (1636, '21', '072', 'HUEHUETLA', NULL, NULL, '21072');
INSERT INTO `cat_municipio` VALUES (1637, '21', '073', 'HUEHUETLÁN EL CHICO', NULL, NULL, '21073');
INSERT INTO `cat_municipio` VALUES (1638, '21', '074', 'HUEJOTZINGO', NULL, NULL, '21074');
INSERT INTO `cat_municipio` VALUES (1639, '21', '075', 'HUEYAPAN', NULL, NULL, '21075');
INSERT INTO `cat_municipio` VALUES (1640, '21', '076', 'HUEYTAMALCO', NULL, NULL, '21076');
INSERT INTO `cat_municipio` VALUES (1641, '21', '077', 'HUEYTLALPAN', NULL, NULL, '21077');
INSERT INTO `cat_municipio` VALUES (1642, '21', '078', 'HUITZILAN DE SERDÁN', NULL, NULL, '21078');
INSERT INTO `cat_municipio` VALUES (1643, '21', '079', 'HUITZILTEPEC', NULL, NULL, '21079');
INSERT INTO `cat_municipio` VALUES (1644, '21', '080', 'ATLEQUIZAYAN', NULL, NULL, '21080');
INSERT INTO `cat_municipio` VALUES (1645, '21', '081', 'IXCAMILPA DE GUERRERO', NULL, NULL, '21081');
INSERT INTO `cat_municipio` VALUES (1646, '21', '082', 'IXCAQUIXTLA', NULL, NULL, '21082');
INSERT INTO `cat_municipio` VALUES (1647, '21', '083', 'IXTACAMAXTITLÁN', NULL, NULL, '21083');
INSERT INTO `cat_municipio` VALUES (1648, '21', '084', 'IXTEPEC', NULL, NULL, '21084');
INSERT INTO `cat_municipio` VALUES (1649, '21', '085', 'IZÚCAR DE MATAMOROS', NULL, NULL, '21085');
INSERT INTO `cat_municipio` VALUES (1650, '21', '086', 'JALPAN', NULL, NULL, '21086');
INSERT INTO `cat_municipio` VALUES (1651, '21', '087', 'JOLALPAN', NULL, NULL, '21087');
INSERT INTO `cat_municipio` VALUES (1652, '21', '088', 'JONOTLA', NULL, NULL, '21088');
INSERT INTO `cat_municipio` VALUES (1653, '21', '089', 'JOPALA', NULL, NULL, '21089');
INSERT INTO `cat_municipio` VALUES (1654, '21', '090', 'JUAN C. BONILLA', NULL, NULL, '21090');
INSERT INTO `cat_municipio` VALUES (1655, '21', '091', 'JUAN GALINDO', NULL, NULL, '21091');
INSERT INTO `cat_municipio` VALUES (1656, '21', '092', 'JUAN N. MÉNDEZ', NULL, NULL, '21092');
INSERT INTO `cat_municipio` VALUES (1657, '21', '093', 'LAFRAGUA', NULL, NULL, '21093');
INSERT INTO `cat_municipio` VALUES (1658, '21', '094', 'LIBRES', NULL, NULL, '21094');
INSERT INTO `cat_municipio` VALUES (1659, '21', '095', 'LA MAGDALENA TLATLAUQUITEPEC', NULL, NULL, '21095');
INSERT INTO `cat_municipio` VALUES (1660, '21', '096', 'MAZAPILTEPEC DE JUÁREZ', NULL, NULL, '21096');
INSERT INTO `cat_municipio` VALUES (1661, '21', '097', 'MIXTLA', NULL, NULL, '21097');
INSERT INTO `cat_municipio` VALUES (1662, '21', '098', 'MOLCAXAC', NULL, NULL, '21098');
INSERT INTO `cat_municipio` VALUES (1663, '21', '099', 'CAÑADA MORELOS', NULL, NULL, '21099');
INSERT INTO `cat_municipio` VALUES (1664, '21', '100', 'NAUPAN', NULL, NULL, '21100');
INSERT INTO `cat_municipio` VALUES (1665, '21', '101', 'NAUZONTLA', NULL, NULL, '21101');
INSERT INTO `cat_municipio` VALUES (1666, '21', '102', 'NEALTICAN', NULL, NULL, '21102');
INSERT INTO `cat_municipio` VALUES (1667, '21', '103', 'NICOLÁS BRAVO', NULL, NULL, '21103');
INSERT INTO `cat_municipio` VALUES (1668, '21', '104', 'NOPALUCAN', NULL, NULL, '21104');
INSERT INTO `cat_municipio` VALUES (1669, '21', '105', 'OCOTEPEC', NULL, NULL, '21105');
INSERT INTO `cat_municipio` VALUES (1670, '21', '106', 'OCOYUCAN', NULL, NULL, '21106');
INSERT INTO `cat_municipio` VALUES (1671, '21', '107', 'OLINTLA', NULL, NULL, '21107');
INSERT INTO `cat_municipio` VALUES (1672, '21', '108', 'ORIENTAL', NULL, NULL, '21108');
INSERT INTO `cat_municipio` VALUES (1673, '21', '109', 'PAHUATLÁN', NULL, NULL, '21109');
INSERT INTO `cat_municipio` VALUES (1674, '21', '110', 'PALMAR DE BRAVO', NULL, NULL, '21110');
INSERT INTO `cat_municipio` VALUES (1675, '21', '111', 'PANTEPEC', NULL, NULL, '21111');
INSERT INTO `cat_municipio` VALUES (1676, '21', '112', 'PETLALCINGO', NULL, NULL, '21112');
INSERT INTO `cat_municipio` VALUES (1677, '21', '113', 'PIAXTLA', NULL, NULL, '21113');
INSERT INTO `cat_municipio` VALUES (1678, '21', '114', 'PUEBLA', NULL, NULL, '21114');
INSERT INTO `cat_municipio` VALUES (1679, '21', '115', 'QUECHOLAC', NULL, NULL, '21115');
INSERT INTO `cat_municipio` VALUES (1680, '21', '116', 'QUIMIXTLÁN', NULL, NULL, '21116');
INSERT INTO `cat_municipio` VALUES (1681, '21', '117', 'RAFAEL LARA GRAJALES', NULL, NULL, '21117');
INSERT INTO `cat_municipio` VALUES (1682, '21', '118', 'LOS REYES DE JUÁREZ', NULL, NULL, '21118');
INSERT INTO `cat_municipio` VALUES (1683, '21', '119', 'SAN ANDRÉS CHOLULA', NULL, NULL, '21119');
INSERT INTO `cat_municipio` VALUES (1684, '21', '120', 'SAN ANTONIO CAÑADA', NULL, NULL, '21120');
INSERT INTO `cat_municipio` VALUES (1685, '21', '121', 'SAN DIEGO LA MESA TOCHIMILTZINGO', NULL, NULL, '21121');
INSERT INTO `cat_municipio` VALUES (1686, '21', '122', 'SAN FELIPE TEOTLALCINGO', NULL, NULL, '21122');
INSERT INTO `cat_municipio` VALUES (1687, '21', '123', 'SAN FELIPE TEPATLÁN', NULL, NULL, '21123');
INSERT INTO `cat_municipio` VALUES (1688, '21', '124', 'SAN GABRIEL CHILAC', NULL, NULL, '21124');
INSERT INTO `cat_municipio` VALUES (1689, '21', '125', 'SAN GREGORIO ATZOMPA', NULL, NULL, '21125');
INSERT INTO `cat_municipio` VALUES (1690, '21', '126', 'SAN JERÓNIMO TECUANIPAN', NULL, NULL, '21126');
INSERT INTO `cat_municipio` VALUES (1691, '21', '127', 'SAN JERÓNIMO XAYACATLÁN', NULL, NULL, '21127');
INSERT INTO `cat_municipio` VALUES (1692, '21', '128', 'SAN JOSÉ CHIAPA', NULL, NULL, '21128');
INSERT INTO `cat_municipio` VALUES (1693, '21', '129', 'SAN JOSÉ MIAHUATLÁN', NULL, NULL, '21129');
INSERT INTO `cat_municipio` VALUES (1694, '21', '130', 'SAN JUAN ATENCO', NULL, NULL, '21130');
INSERT INTO `cat_municipio` VALUES (1695, '21', '131', 'SAN JUAN ATZOMPA', NULL, NULL, '21131');
INSERT INTO `cat_municipio` VALUES (1696, '21', '132', 'SAN MARTÍN TEXMELUCAN', NULL, NULL, '21132');
INSERT INTO `cat_municipio` VALUES (1697, '21', '133', 'SAN MARTÍN TOTOLTEPEC', NULL, NULL, '21133');
INSERT INTO `cat_municipio` VALUES (1698, '21', '134', 'SAN MATÍAS TLALANCALECA', NULL, NULL, '21134');
INSERT INTO `cat_municipio` VALUES (1699, '21', '135', 'SAN MIGUEL IXITLÁN', NULL, NULL, '21135');
INSERT INTO `cat_municipio` VALUES (1700, '21', '136', 'SAN MIGUEL XOXTLA', NULL, NULL, '21136');
INSERT INTO `cat_municipio` VALUES (1701, '21', '137', 'SAN NICOLÁS BUENOS AIRES', NULL, NULL, '21137');
INSERT INTO `cat_municipio` VALUES (1702, '21', '138', 'SAN NICOLÁS DE LOS RANCHOS', NULL, NULL, '21138');
INSERT INTO `cat_municipio` VALUES (1703, '21', '139', 'SAN PABLO ANICANO', NULL, NULL, '21139');
INSERT INTO `cat_municipio` VALUES (1704, '21', '140', 'SAN PEDRO CHOLULA', NULL, NULL, '21140');
INSERT INTO `cat_municipio` VALUES (1705, '21', '141', 'SAN PEDRO YELOIXTLAHUACA', NULL, NULL, '21141');
INSERT INTO `cat_municipio` VALUES (1706, '21', '142', 'SAN SALVADOR EL SECO', NULL, NULL, '21142');
INSERT INTO `cat_municipio` VALUES (1707, '21', '143', 'SAN SALVADOR EL VERDE', NULL, NULL, '21143');
INSERT INTO `cat_municipio` VALUES (1708, '21', '144', 'SAN SALVADOR HUIXCOLOTLA', NULL, NULL, '21144');
INSERT INTO `cat_municipio` VALUES (1709, '21', '145', 'SAN SEBASTIÁN TLACOTEPEC', NULL, NULL, '21145');
INSERT INTO `cat_municipio` VALUES (1710, '21', '146', 'SANTA CATARINA TLALTEMPAN', NULL, NULL, '21146');
INSERT INTO `cat_municipio` VALUES (1711, '21', '147', 'SANTA INÉS AHUATEMPAN', NULL, NULL, '21147');
INSERT INTO `cat_municipio` VALUES (1712, '21', '148', 'SANTA ISABEL CHOLULA', NULL, NULL, '21148');
INSERT INTO `cat_municipio` VALUES (1713, '21', '149', 'SANTIAGO MIAHUATLÁN', NULL, NULL, '21149');
INSERT INTO `cat_municipio` VALUES (1714, '21', '150', 'HUEHUETLÁN EL GRANDE', NULL, NULL, '21150');
INSERT INTO `cat_municipio` VALUES (1715, '21', '151', 'SANTO TOMÁS HUEYOTLIPAN', NULL, NULL, '21151');
INSERT INTO `cat_municipio` VALUES (1716, '21', '152', 'SOLTEPEC', NULL, NULL, '21152');
INSERT INTO `cat_municipio` VALUES (1717, '21', '153', 'TECALI DE HERRERA', NULL, NULL, '21153');
INSERT INTO `cat_municipio` VALUES (1718, '21', '154', 'TECAMACHALCO', NULL, NULL, '21154');
INSERT INTO `cat_municipio` VALUES (1719, '21', '155', 'TECOMATLÁN', NULL, NULL, '21155');
INSERT INTO `cat_municipio` VALUES (1720, '21', '156', 'TEHUACÁN', NULL, NULL, '21156');
INSERT INTO `cat_municipio` VALUES (1721, '21', '157', 'TEHUITZINGO', NULL, NULL, '21157');
INSERT INTO `cat_municipio` VALUES (1722, '21', '158', 'TENAMPULCO', NULL, NULL, '21158');
INSERT INTO `cat_municipio` VALUES (1723, '21', '159', 'TEOPANTLÁN', NULL, NULL, '21159');
INSERT INTO `cat_municipio` VALUES (1724, '21', '160', 'TEOTLALCO', NULL, NULL, '21160');
INSERT INTO `cat_municipio` VALUES (1725, '21', '161', 'TEPANCO DE LÓPEZ', NULL, NULL, '21161');
INSERT INTO `cat_municipio` VALUES (1726, '21', '162', 'TEPANGO DE RODRÍGUEZ', NULL, NULL, '21162');
INSERT INTO `cat_municipio` VALUES (1727, '21', '163', 'TEPATLAXCO DE HIDALGO', NULL, NULL, '21163');
INSERT INTO `cat_municipio` VALUES (1728, '21', '164', 'TEPEACA', NULL, NULL, '21164');
INSERT INTO `cat_municipio` VALUES (1729, '21', '165', 'TEPEMAXALCO', NULL, NULL, '21165');
INSERT INTO `cat_municipio` VALUES (1730, '21', '166', 'TEPEOJUMA', NULL, NULL, '21166');
INSERT INTO `cat_municipio` VALUES (1731, '21', '167', 'TEPETZINTLA', NULL, NULL, '21167');
INSERT INTO `cat_municipio` VALUES (1732, '21', '168', 'TEPEXCO', NULL, NULL, '21168');
INSERT INTO `cat_municipio` VALUES (1733, '21', '169', 'TEPEXI DE RODRÍGUEZ', NULL, NULL, '21169');
INSERT INTO `cat_municipio` VALUES (1734, '21', '170', 'TEPEYAHUALCO', NULL, NULL, '21170');
INSERT INTO `cat_municipio` VALUES (1735, '21', '171', 'TEPEYAHUALCO DE CUAUHTÉMOC', NULL, NULL, '21171');
INSERT INTO `cat_municipio` VALUES (1736, '21', '172', 'TETELA DE OCAMPO', NULL, NULL, '21172');
INSERT INTO `cat_municipio` VALUES (1737, '21', '173', 'TETELES DE AVILA CASTILLO', NULL, NULL, '21173');
INSERT INTO `cat_municipio` VALUES (1738, '21', '174', 'TEZIUTLÁN', NULL, NULL, '21174');
INSERT INTO `cat_municipio` VALUES (1739, '21', '175', 'TIANGUISMANALCO', NULL, NULL, '21175');
INSERT INTO `cat_municipio` VALUES (1740, '21', '176', 'TILAPA', NULL, NULL, '21176');
INSERT INTO `cat_municipio` VALUES (1741, '21', '177', 'TLACOTEPEC DE BENITO JUÁREZ', NULL, NULL, '21177');
INSERT INTO `cat_municipio` VALUES (1742, '21', '178', 'TLACUILOTEPEC', NULL, NULL, '21178');
INSERT INTO `cat_municipio` VALUES (1743, '21', '179', 'TLACHICHUCA', NULL, NULL, '21179');
INSERT INTO `cat_municipio` VALUES (1744, '21', '180', 'TLAHUAPAN', NULL, NULL, '21180');
INSERT INTO `cat_municipio` VALUES (1745, '21', '181', 'TLALTENANGO', NULL, NULL, '21181');
INSERT INTO `cat_municipio` VALUES (1746, '21', '182', 'TLANEPANTLA', NULL, NULL, '21182');
INSERT INTO `cat_municipio` VALUES (1747, '21', '183', 'TLAOLA', NULL, NULL, '21183');
INSERT INTO `cat_municipio` VALUES (1748, '21', '184', 'TLAPACOYA', NULL, NULL, '21184');
INSERT INTO `cat_municipio` VALUES (1749, '21', '185', 'TLAPANALÁ', NULL, NULL, '21185');
INSERT INTO `cat_municipio` VALUES (1750, '21', '186', 'TLATLAUQUITEPEC', NULL, NULL, '21186');
INSERT INTO `cat_municipio` VALUES (1751, '21', '187', 'TLAXCO', NULL, NULL, '21187');
INSERT INTO `cat_municipio` VALUES (1752, '21', '188', 'TOCHIMILCO', NULL, NULL, '21188');
INSERT INTO `cat_municipio` VALUES (1753, '21', '189', 'TOCHTEPEC', NULL, NULL, '21189');
INSERT INTO `cat_municipio` VALUES (1754, '21', '190', 'TOTOLTEPEC DE GUERRERO', NULL, NULL, '21190');
INSERT INTO `cat_municipio` VALUES (1755, '21', '191', 'TULCINGO', NULL, NULL, '21191');
INSERT INTO `cat_municipio` VALUES (1756, '21', '192', 'TUZAMAPAN DE GALEANA', NULL, NULL, '21192');
INSERT INTO `cat_municipio` VALUES (1757, '21', '193', 'TZICATLACOYAN', NULL, NULL, '21193');
INSERT INTO `cat_municipio` VALUES (1758, '21', '194', 'VENUSTIANO CARRANZA', NULL, NULL, '21194');
INSERT INTO `cat_municipio` VALUES (1759, '21', '195', 'VICENTE GUERRERO', NULL, NULL, '21195');
INSERT INTO `cat_municipio` VALUES (1760, '21', '196', 'XAYACATLÁN DE BRAVO', NULL, NULL, '21196');
INSERT INTO `cat_municipio` VALUES (1761, '21', '197', 'XICOTEPEC', NULL, NULL, '21197');
INSERT INTO `cat_municipio` VALUES (1762, '21', '198', 'XICOTLÁN', NULL, NULL, '21198');
INSERT INTO `cat_municipio` VALUES (1763, '21', '199', 'XIUTETELCO', NULL, NULL, '21199');
INSERT INTO `cat_municipio` VALUES (1764, '21', '200', 'XOCHIAPULCO', NULL, NULL, '21200');
INSERT INTO `cat_municipio` VALUES (1765, '21', '201', 'XOCHILTEPEC', NULL, NULL, '21201');
INSERT INTO `cat_municipio` VALUES (1766, '21', '202', 'XOCHITLÁN DE VICENTE SUÁREZ', NULL, NULL, '21202');
INSERT INTO `cat_municipio` VALUES (1767, '21', '203', 'XOCHITLÁN TODOS SANTOS', NULL, NULL, '21203');
INSERT INTO `cat_municipio` VALUES (1768, '21', '204', 'YAONÁHUAC', NULL, NULL, '21204');
INSERT INTO `cat_municipio` VALUES (1769, '21', '205', 'YEHUALTEPEC', NULL, NULL, '21205');
INSERT INTO `cat_municipio` VALUES (1770, '21', '206', 'ZACAPALA', NULL, NULL, '21206');
INSERT INTO `cat_municipio` VALUES (1771, '21', '207', 'ZACAPOAXTLA', NULL, NULL, '21207');
INSERT INTO `cat_municipio` VALUES (1772, '21', '208', 'ZACATLÁN', NULL, NULL, '21208');
INSERT INTO `cat_municipio` VALUES (1773, '21', '209', 'ZAPOTITLÁN', NULL, NULL, '21209');
INSERT INTO `cat_municipio` VALUES (1774, '21', '210', 'ZAPOTITLÁN DE MÉNDEZ', NULL, NULL, '21210');
INSERT INTO `cat_municipio` VALUES (1775, '21', '211', 'ZARAGOZA', NULL, NULL, '21211');
INSERT INTO `cat_municipio` VALUES (1776, '21', '212', 'ZAUTLA', NULL, NULL, '21212');
INSERT INTO `cat_municipio` VALUES (1777, '21', '213', 'ZIHUATEUTLA', NULL, NULL, '21213');
INSERT INTO `cat_municipio` VALUES (1778, '21', '214', 'ZINACATEPEC', NULL, NULL, '21214');
INSERT INTO `cat_municipio` VALUES (1779, '21', '215', 'ZONGOZOTLA', NULL, NULL, '21215');
INSERT INTO `cat_municipio` VALUES (1780, '21', '216', 'ZOQUIAPAN', NULL, NULL, '21216');
INSERT INTO `cat_municipio` VALUES (1781, '21', '217', 'ZOQUITLÁN', NULL, NULL, '21217');
INSERT INTO `cat_municipio` VALUES (1782, '22', '001', 'AMEALCO DE BONFIL', NULL, NULL, '22001');
INSERT INTO `cat_municipio` VALUES (1783, '22', '002', 'PINAL DE AMOLES', NULL, NULL, '22002');
INSERT INTO `cat_municipio` VALUES (1784, '22', '003', 'ARROYO SECO', NULL, NULL, '22003');
INSERT INTO `cat_municipio` VALUES (1785, '22', '004', 'CADEREYTA DE MONTES', NULL, NULL, '22004');
INSERT INTO `cat_municipio` VALUES (1786, '22', '005', 'COLÓN', NULL, NULL, '22005');
INSERT INTO `cat_municipio` VALUES (1787, '22', '006', 'CORREGIDORA', NULL, NULL, '22006');
INSERT INTO `cat_municipio` VALUES (1788, '22', '007', 'EZEQUIEL MONTES', NULL, NULL, '22007');
INSERT INTO `cat_municipio` VALUES (1789, '22', '008', 'HUIMILPAN', NULL, NULL, '22008');
INSERT INTO `cat_municipio` VALUES (1790, '22', '009', 'JALPAN DE SERRA', NULL, NULL, '22009');
INSERT INTO `cat_municipio` VALUES (1791, '22', '010', 'LANDA DE MATAMOROS', NULL, NULL, '22010');
INSERT INTO `cat_municipio` VALUES (1792, '22', '011', 'EL MARQUÉS', NULL, NULL, '22011');
INSERT INTO `cat_municipio` VALUES (1793, '22', '012', 'PEDRO ESCOBEDO', NULL, NULL, '22012');
INSERT INTO `cat_municipio` VALUES (1794, '22', '013', 'PEÑAMILLER', NULL, NULL, '22013');
INSERT INTO `cat_municipio` VALUES (1795, '22', '014', 'QUERÉTARO', NULL, NULL, '22014');
INSERT INTO `cat_municipio` VALUES (1796, '22', '015', 'SAN JOAQUÍN', NULL, NULL, '22015');
INSERT INTO `cat_municipio` VALUES (1797, '22', '016', 'SAN JUAN DEL RÍO', NULL, NULL, '22016');
INSERT INTO `cat_municipio` VALUES (1798, '22', '017', 'TEQUISQUIAPAN', NULL, NULL, '22017');
INSERT INTO `cat_municipio` VALUES (1799, '22', '018', 'TOLIMÁN', NULL, NULL, '22018');
INSERT INTO `cat_municipio` VALUES (1800, '23', '001', 'COZUMEL', NULL, NULL, '23001');
INSERT INTO `cat_municipio` VALUES (1801, '23', '002', 'FELIPE CARRILLO PUERTO', NULL, NULL, '23002');
INSERT INTO `cat_municipio` VALUES (1802, '23', '003', 'ISLA MUJERES', NULL, NULL, '23003');
INSERT INTO `cat_municipio` VALUES (1803, '23', '004', 'OTHÓN P. BLANCO', NULL, NULL, '23004');
INSERT INTO `cat_municipio` VALUES (1804, '23', '005', 'BENITO JUÁREZ', NULL, NULL, '23005');
INSERT INTO `cat_municipio` VALUES (1805, '23', '006', 'JOSÉ MARÍA MORELOS', NULL, NULL, '23006');
INSERT INTO `cat_municipio` VALUES (1806, '23', '007', 'LÁZARO CÁRDENAS', NULL, NULL, '23007');
INSERT INTO `cat_municipio` VALUES (1807, '23', '008', 'SOLIDARIDAD', NULL, NULL, '23008');
INSERT INTO `cat_municipio` VALUES (1808, '23', '009', 'TULUM', NULL, NULL, '23009');
INSERT INTO `cat_municipio` VALUES (1809, '23', '010', 'BACALAR', NULL, NULL, '23010');
INSERT INTO `cat_municipio` VALUES (1810, '24', '001', 'AHUALULCO', NULL, NULL, '24001');
INSERT INTO `cat_municipio` VALUES (1811, '24', '002', 'ALAQUINES', NULL, NULL, '24002');
INSERT INTO `cat_municipio` VALUES (1812, '24', '003', 'AQUISMÓN', NULL, NULL, '24003');
INSERT INTO `cat_municipio` VALUES (1813, '24', '004', 'ARMADILLO DE LOS INFANTE', NULL, NULL, '24004');
INSERT INTO `cat_municipio` VALUES (1814, '24', '005', 'CÁRDENAS', NULL, NULL, '24005');
INSERT INTO `cat_municipio` VALUES (1815, '24', '006', 'CATORCE', NULL, NULL, '24006');
INSERT INTO `cat_municipio` VALUES (1816, '24', '007', 'CEDRAL', NULL, NULL, '24007');
INSERT INTO `cat_municipio` VALUES (1817, '24', '008', 'CERRITOS', NULL, NULL, '24008');
INSERT INTO `cat_municipio` VALUES (1818, '24', '009', 'CERRO DE SAN PEDRO', NULL, NULL, '24009');
INSERT INTO `cat_municipio` VALUES (1819, '24', '010', 'CIUDAD DEL MAÍZ', NULL, NULL, '24010');
INSERT INTO `cat_municipio` VALUES (1820, '24', '011', 'CIUDAD FERNÁNDEZ', NULL, NULL, '24011');
INSERT INTO `cat_municipio` VALUES (1821, '24', '012', 'TANCANHUITZ', NULL, NULL, '24012');
INSERT INTO `cat_municipio` VALUES (1822, '24', '013', 'CIUDAD VALLES', NULL, NULL, '24013');
INSERT INTO `cat_municipio` VALUES (1823, '24', '014', 'COXCATLÁN', NULL, NULL, '24014');
INSERT INTO `cat_municipio` VALUES (1824, '24', '015', 'CHARCAS', NULL, NULL, '24015');
INSERT INTO `cat_municipio` VALUES (1825, '24', '016', 'EBANO', NULL, NULL, '24016');
INSERT INTO `cat_municipio` VALUES (1826, '24', '017', 'GUADALCÁZAR', NULL, NULL, '24017');
INSERT INTO `cat_municipio` VALUES (1827, '24', '018', 'HUEHUETLÁN', NULL, NULL, '24018');
INSERT INTO `cat_municipio` VALUES (1828, '24', '019', 'LAGUNILLAS', NULL, NULL, '24019');
INSERT INTO `cat_municipio` VALUES (1829, '24', '020', 'MATEHUALA', NULL, NULL, '24020');
INSERT INTO `cat_municipio` VALUES (1830, '24', '021', 'MEXQUITIC DE CARMONA', NULL, NULL, '24021');
INSERT INTO `cat_municipio` VALUES (1831, '24', '022', 'MOCTEZUMA', NULL, NULL, '24022');
INSERT INTO `cat_municipio` VALUES (1832, '24', '023', 'RAYÓN', NULL, NULL, '24023');
INSERT INTO `cat_municipio` VALUES (1833, '24', '024', 'RIOVERDE', NULL, NULL, '24024');
INSERT INTO `cat_municipio` VALUES (1834, '24', '025', 'SALINAS', NULL, NULL, '24025');
INSERT INTO `cat_municipio` VALUES (1835, '24', '026', 'SAN ANTONIO', NULL, NULL, '24026');
INSERT INTO `cat_municipio` VALUES (1836, '24', '027', 'SAN CIRO DE ACOSTA', NULL, NULL, '24027');
INSERT INTO `cat_municipio` VALUES (1837, '24', '028', 'SAN LUIS POTOSÍ', NULL, NULL, '24028');
INSERT INTO `cat_municipio` VALUES (1838, '24', '029', 'SAN MARTÍN CHALCHICUAUTLA', NULL, NULL, '24029');
INSERT INTO `cat_municipio` VALUES (1839, '24', '030', 'SAN NICOLÁS TOLENTINO', NULL, NULL, '24030');
INSERT INTO `cat_municipio` VALUES (1840, '24', '031', 'SANTA CATARINA', NULL, NULL, '24031');
INSERT INTO `cat_municipio` VALUES (1841, '24', '032', 'SANTA MARÍA DEL RÍO', NULL, NULL, '24032');
INSERT INTO `cat_municipio` VALUES (1842, '24', '033', 'SANTO DOMINGO', NULL, NULL, '24033');
INSERT INTO `cat_municipio` VALUES (1843, '24', '034', 'SAN VICENTE TANCUAYALAB', NULL, NULL, '24034');
INSERT INTO `cat_municipio` VALUES (1844, '24', '035', 'SOLEDAD DE GRACIANO SÁNCHEZ', NULL, NULL, '24035');
INSERT INTO `cat_municipio` VALUES (1845, '24', '036', 'TAMASOPO', NULL, NULL, '24036');
INSERT INTO `cat_municipio` VALUES (1846, '24', '037', 'TAMAZUNCHALE', NULL, NULL, '24037');
INSERT INTO `cat_municipio` VALUES (1847, '24', '038', 'TAMPACÁN', NULL, NULL, '24038');
INSERT INTO `cat_municipio` VALUES (1848, '24', '039', 'TAMPAMOLÓN CORONA', NULL, NULL, '24039');
INSERT INTO `cat_municipio` VALUES (1849, '24', '040', 'TAMUÍN', NULL, NULL, '24040');
INSERT INTO `cat_municipio` VALUES (1850, '24', '041', 'TANLAJÁS', NULL, NULL, '24041');
INSERT INTO `cat_municipio` VALUES (1851, '24', '042', 'TANQUIÁN DE ESCOBEDO', NULL, NULL, '24042');
INSERT INTO `cat_municipio` VALUES (1852, '24', '043', 'TIERRA NUEVA', NULL, NULL, '24043');
INSERT INTO `cat_municipio` VALUES (1853, '24', '044', 'VANEGAS', NULL, NULL, '24044');
INSERT INTO `cat_municipio` VALUES (1854, '24', '045', 'VENADO', NULL, NULL, '24045');
INSERT INTO `cat_municipio` VALUES (1855, '24', '046', 'VILLA DE ARRIAGA', NULL, NULL, '24046');
INSERT INTO `cat_municipio` VALUES (1856, '24', '047', 'VILLA DE GUADALUPE', NULL, NULL, '24047');
INSERT INTO `cat_municipio` VALUES (1857, '24', '048', 'VILLA DE LA PAZ', NULL, NULL, '24048');
INSERT INTO `cat_municipio` VALUES (1858, '24', '049', 'VILLA DE RAMOS', NULL, NULL, '24049');
INSERT INTO `cat_municipio` VALUES (1859, '24', '050', 'VILLA DE REYES', NULL, NULL, '24050');
INSERT INTO `cat_municipio` VALUES (1860, '24', '051', 'VILLA HIDALGO', NULL, NULL, '24051');
INSERT INTO `cat_municipio` VALUES (1861, '24', '052', 'VILLA JUÁREZ', NULL, NULL, '24052');
INSERT INTO `cat_municipio` VALUES (1862, '24', '053', 'AXTLA DE TERRAZAS', NULL, NULL, '24053');
INSERT INTO `cat_municipio` VALUES (1863, '24', '054', 'XILITLA', NULL, NULL, '24054');
INSERT INTO `cat_municipio` VALUES (1864, '24', '055', 'ZARAGOZA', NULL, NULL, '24055');
INSERT INTO `cat_municipio` VALUES (1865, '24', '056', 'VILLA DE ARISTA', NULL, NULL, '24056');
INSERT INTO `cat_municipio` VALUES (1866, '24', '057', 'MATLAPA', NULL, NULL, '24057');
INSERT INTO `cat_municipio` VALUES (1867, '24', '058', 'EL NARANJO', NULL, NULL, '24058');
INSERT INTO `cat_municipio` VALUES (1868, '25', '001', 'AHOME', NULL, NULL, '25001');
INSERT INTO `cat_municipio` VALUES (1869, '25', '002', 'ANGOSTURA', NULL, NULL, '25002');
INSERT INTO `cat_municipio` VALUES (1870, '25', '003', 'BADIRAGUATO', NULL, NULL, '25003');
INSERT INTO `cat_municipio` VALUES (1871, '25', '004', 'CONCORDIA', NULL, NULL, '25004');
INSERT INTO `cat_municipio` VALUES (1872, '25', '005', 'COSALÁ', NULL, NULL, '25005');
INSERT INTO `cat_municipio` VALUES (1873, '25', '006', 'CULIACÁN', NULL, NULL, '25006');
INSERT INTO `cat_municipio` VALUES (1874, '25', '007', 'CHOIX', NULL, NULL, '25007');
INSERT INTO `cat_municipio` VALUES (1875, '25', '008', 'ELOTA', NULL, NULL, '25008');
INSERT INTO `cat_municipio` VALUES (1876, '25', '009', 'ESCUINAPA', NULL, NULL, '25009');
INSERT INTO `cat_municipio` VALUES (1877, '25', '010', 'EL FUERTE', NULL, NULL, '25010');
INSERT INTO `cat_municipio` VALUES (1878, '25', '011', 'GUASAVE', NULL, NULL, '25011');
INSERT INTO `cat_municipio` VALUES (1879, '25', '012', 'MAZATLÁN', NULL, NULL, '25012');
INSERT INTO `cat_municipio` VALUES (1880, '25', '013', 'MOCORITO', NULL, NULL, '25013');
INSERT INTO `cat_municipio` VALUES (1881, '25', '014', 'ROSARIO', NULL, NULL, '25014');
INSERT INTO `cat_municipio` VALUES (1882, '25', '015', 'SALVADOR ALVARADO', NULL, NULL, '25015');
INSERT INTO `cat_municipio` VALUES (1883, '25', '016', 'SAN IGNACIO', NULL, NULL, '25016');
INSERT INTO `cat_municipio` VALUES (1884, '25', '017', 'SINALOA', NULL, NULL, '25017');
INSERT INTO `cat_municipio` VALUES (1885, '25', '018', 'NAVOLATO', NULL, NULL, '25018');
INSERT INTO `cat_municipio` VALUES (1886, '26', '001', 'ACONCHI', NULL, NULL, '26001');
INSERT INTO `cat_municipio` VALUES (1887, '26', '002', 'AGUA PRIETA', NULL, NULL, '26002');
INSERT INTO `cat_municipio` VALUES (1888, '26', '003', 'ALAMOS', NULL, NULL, '26003');
INSERT INTO `cat_municipio` VALUES (1889, '26', '004', 'ALTAR', NULL, NULL, '26004');
INSERT INTO `cat_municipio` VALUES (1890, '26', '005', 'ARIVECHI', NULL, NULL, '26005');
INSERT INTO `cat_municipio` VALUES (1891, '26', '006', 'ARIZPE', NULL, NULL, '26006');
INSERT INTO `cat_municipio` VALUES (1892, '26', '007', 'ATIL', NULL, NULL, '26007');
INSERT INTO `cat_municipio` VALUES (1893, '26', '008', 'BACADÉHUACHI', NULL, NULL, '26008');
INSERT INTO `cat_municipio` VALUES (1894, '26', '009', 'BACANORA', NULL, NULL, '26009');
INSERT INTO `cat_municipio` VALUES (1895, '26', '010', 'BACERAC', NULL, NULL, '26010');
INSERT INTO `cat_municipio` VALUES (1896, '26', '011', 'BACOACHI', NULL, NULL, '26011');
INSERT INTO `cat_municipio` VALUES (1897, '26', '012', 'BÁCUM', NULL, NULL, '26012');
INSERT INTO `cat_municipio` VALUES (1898, '26', '013', 'BANÁMICHI', NULL, NULL, '26013');
INSERT INTO `cat_municipio` VALUES (1899, '26', '014', 'BAVIÁCORA', NULL, NULL, '26014');
INSERT INTO `cat_municipio` VALUES (1900, '26', '015', 'BAVISPE', NULL, NULL, '26015');
INSERT INTO `cat_municipio` VALUES (1901, '26', '016', 'BENJAMÍN HILL', NULL, NULL, '26016');
INSERT INTO `cat_municipio` VALUES (1902, '26', '017', 'CABORCA', NULL, NULL, '26017');
INSERT INTO `cat_municipio` VALUES (1903, '26', '018', 'CAJEME', NULL, NULL, '26018');
INSERT INTO `cat_municipio` VALUES (1904, '26', '019', 'CANANEA', NULL, NULL, '26019');
INSERT INTO `cat_municipio` VALUES (1905, '26', '020', 'CARBÓ', NULL, NULL, '26020');
INSERT INTO `cat_municipio` VALUES (1906, '26', '021', 'LA COLORADA', NULL, NULL, '26021');
INSERT INTO `cat_municipio` VALUES (1907, '26', '022', 'CUCURPE', NULL, NULL, '26022');
INSERT INTO `cat_municipio` VALUES (1908, '26', '023', 'CUMPAS', NULL, NULL, '26023');
INSERT INTO `cat_municipio` VALUES (1909, '26', '024', 'DIVISADEROS', NULL, NULL, '26024');
INSERT INTO `cat_municipio` VALUES (1910, '26', '025', 'EMPALME', NULL, NULL, '26025');
INSERT INTO `cat_municipio` VALUES (1911, '26', '026', 'ETCHOJOA', NULL, NULL, '26026');
INSERT INTO `cat_municipio` VALUES (1912, '26', '027', 'FRONTERAS', NULL, NULL, '26027');
INSERT INTO `cat_municipio` VALUES (1913, '26', '028', 'GRANADOS', NULL, NULL, '26028');
INSERT INTO `cat_municipio` VALUES (1914, '26', '029', 'GUAYMAS', NULL, NULL, '26029');
INSERT INTO `cat_municipio` VALUES (1915, '26', '030', 'HERMOSILLO', NULL, NULL, '26030');
INSERT INTO `cat_municipio` VALUES (1916, '26', '031', 'HUACHINERA', NULL, NULL, '26031');
INSERT INTO `cat_municipio` VALUES (1917, '26', '032', 'HUÁSABAS', NULL, NULL, '26032');
INSERT INTO `cat_municipio` VALUES (1918, '26', '033', 'HUATABAMPO', NULL, NULL, '26033');
INSERT INTO `cat_municipio` VALUES (1919, '26', '034', 'HUÉPAC', NULL, NULL, '26034');
INSERT INTO `cat_municipio` VALUES (1920, '26', '035', 'IMURIS', NULL, NULL, '26035');
INSERT INTO `cat_municipio` VALUES (1921, '26', '036', 'MAGDALENA', NULL, NULL, '26036');
INSERT INTO `cat_municipio` VALUES (1922, '26', '037', 'MAZATÁN', NULL, NULL, '26037');
INSERT INTO `cat_municipio` VALUES (1923, '26', '038', 'MOCTEZUMA', NULL, NULL, '26038');
INSERT INTO `cat_municipio` VALUES (1924, '26', '039', 'NACO', NULL, NULL, '26039');
INSERT INTO `cat_municipio` VALUES (1925, '26', '040', 'NÁCORI CHICO', NULL, NULL, '26040');
INSERT INTO `cat_municipio` VALUES (1926, '26', '041', 'NACOZARI DE GARCÍA', NULL, NULL, '26041');
INSERT INTO `cat_municipio` VALUES (1927, '26', '042', 'NAVOJOA', NULL, NULL, '26042');
INSERT INTO `cat_municipio` VALUES (1928, '26', '043', 'NOGALES', NULL, NULL, '26043');
INSERT INTO `cat_municipio` VALUES (1929, '26', '044', 'ONAVAS', NULL, NULL, '26044');
INSERT INTO `cat_municipio` VALUES (1930, '26', '045', 'OPODEPE', NULL, NULL, '26045');
INSERT INTO `cat_municipio` VALUES (1931, '26', '046', 'OQUITOA', NULL, NULL, '26046');
INSERT INTO `cat_municipio` VALUES (1932, '26', '047', 'PITIQUITO', NULL, NULL, '26047');
INSERT INTO `cat_municipio` VALUES (1933, '26', '048', 'PUERTO PEÑASCO', NULL, NULL, '26048');
INSERT INTO `cat_municipio` VALUES (1934, '26', '049', 'QUIRIEGO', NULL, NULL, '26049');
INSERT INTO `cat_municipio` VALUES (1935, '26', '050', 'RAYÓN', NULL, NULL, '26050');
INSERT INTO `cat_municipio` VALUES (1936, '26', '051', 'ROSARIO', NULL, NULL, '26051');
INSERT INTO `cat_municipio` VALUES (1937, '26', '052', 'SAHUARIPA', NULL, NULL, '26052');
INSERT INTO `cat_municipio` VALUES (1938, '26', '053', 'SAN FELIPE DE JESÚS', NULL, NULL, '26053');
INSERT INTO `cat_municipio` VALUES (1939, '26', '054', 'SAN JAVIER', NULL, NULL, '26054');
INSERT INTO `cat_municipio` VALUES (1940, '26', '055', 'SAN LUIS RÍO COLORADO', NULL, NULL, '26055');
INSERT INTO `cat_municipio` VALUES (1941, '26', '056', 'SAN MIGUEL DE HORCASITAS', NULL, NULL, '26056');
INSERT INTO `cat_municipio` VALUES (1942, '26', '057', 'SAN PEDRO DE LA CUEVA', NULL, NULL, '26057');
INSERT INTO `cat_municipio` VALUES (1943, '26', '058', 'SANTA ANA', NULL, NULL, '26058');
INSERT INTO `cat_municipio` VALUES (1944, '26', '059', 'SANTA CRUZ', NULL, NULL, '26059');
INSERT INTO `cat_municipio` VALUES (1945, '26', '060', 'SÁRIC', NULL, NULL, '26060');
INSERT INTO `cat_municipio` VALUES (1946, '26', '061', 'SOYOPA', NULL, NULL, '26061');
INSERT INTO `cat_municipio` VALUES (1947, '26', '062', 'SUAQUI GRANDE', NULL, NULL, '26062');
INSERT INTO `cat_municipio` VALUES (1948, '26', '063', 'TEPACHE', NULL, NULL, '26063');
INSERT INTO `cat_municipio` VALUES (1949, '26', '064', 'TRINCHERAS', NULL, NULL, '26064');
INSERT INTO `cat_municipio` VALUES (1950, '26', '065', 'TUBUTAMA', NULL, NULL, '26065');
INSERT INTO `cat_municipio` VALUES (1951, '26', '066', 'URES', NULL, NULL, '26066');
INSERT INTO `cat_municipio` VALUES (1952, '26', '067', 'VILLA HIDALGO', NULL, NULL, '26067');
INSERT INTO `cat_municipio` VALUES (1953, '26', '068', 'VILLA PESQUEIRA', NULL, NULL, '26068');
INSERT INTO `cat_municipio` VALUES (1954, '26', '069', 'YÉCORA', NULL, NULL, '26069');
INSERT INTO `cat_municipio` VALUES (1955, '26', '070', 'GENERAL PLUTARCO ELÍAS CALLES', NULL, NULL, '26070');
INSERT INTO `cat_municipio` VALUES (1956, '26', '071', 'BENITO JUÁREZ', NULL, NULL, '26071');
INSERT INTO `cat_municipio` VALUES (1957, '26', '072', 'SAN IGNACIO RÍO MUERTO', NULL, NULL, '26072');
INSERT INTO `cat_municipio` VALUES (1958, '27', '001', 'BALANCÁN', NULL, NULL, '27001');
INSERT INTO `cat_municipio` VALUES (1959, '27', '002', 'CÁRDENAS', NULL, NULL, '27002');
INSERT INTO `cat_municipio` VALUES (1960, '27', '003', 'CENTLA', NULL, NULL, '27003');
INSERT INTO `cat_municipio` VALUES (1961, '27', '004', 'CENTRO', NULL, NULL, '27004');
INSERT INTO `cat_municipio` VALUES (1962, '27', '005', 'COMALCALCO', NULL, NULL, '27005');
INSERT INTO `cat_municipio` VALUES (1963, '27', '006', 'CUNDUACÁN', NULL, NULL, '27006');
INSERT INTO `cat_municipio` VALUES (1964, '27', '007', 'EMILIANO ZAPATA', NULL, NULL, '27007');
INSERT INTO `cat_municipio` VALUES (1965, '27', '008', 'HUIMANGUILLO', NULL, NULL, '27008');
INSERT INTO `cat_municipio` VALUES (1966, '27', '009', 'JALAPA', NULL, NULL, '27009');
INSERT INTO `cat_municipio` VALUES (1967, '27', '010', 'JALPA DE MÉNDEZ', NULL, NULL, '27010');
INSERT INTO `cat_municipio` VALUES (1968, '27', '011', 'JONUTA', NULL, NULL, '27011');
INSERT INTO `cat_municipio` VALUES (1969, '27', '012', 'MACUSPANA', NULL, NULL, '27012');
INSERT INTO `cat_municipio` VALUES (1970, '27', '013', 'NACAJUCA', NULL, NULL, '27013');
INSERT INTO `cat_municipio` VALUES (1971, '27', '014', 'PARAÍSO', NULL, NULL, '27014');
INSERT INTO `cat_municipio` VALUES (1972, '27', '015', 'TACOTALPA', NULL, NULL, '27015');
INSERT INTO `cat_municipio` VALUES (1973, '27', '016', 'TEAPA', NULL, NULL, '27016');
INSERT INTO `cat_municipio` VALUES (1974, '27', '017', 'TENOSIQUE', NULL, NULL, '27017');
INSERT INTO `cat_municipio` VALUES (1975, '28', '001', 'ABASOLO', NULL, NULL, '28001');
INSERT INTO `cat_municipio` VALUES (1976, '28', '002', 'ALDAMA', NULL, NULL, '28002');
INSERT INTO `cat_municipio` VALUES (1977, '28', '003', 'ALTAMIRA', NULL, NULL, '28003');
INSERT INTO `cat_municipio` VALUES (1978, '28', '004', 'ANTIGUO MORELOS', NULL, NULL, '28004');
INSERT INTO `cat_municipio` VALUES (1979, '28', '005', 'BURGOS', NULL, NULL, '28005');
INSERT INTO `cat_municipio` VALUES (1980, '28', '006', 'BUSTAMANTE', NULL, NULL, '28006');
INSERT INTO `cat_municipio` VALUES (1981, '28', '007', 'CAMARGO', NULL, NULL, '28007');
INSERT INTO `cat_municipio` VALUES (1982, '28', '008', 'CASAS', NULL, NULL, '28008');
INSERT INTO `cat_municipio` VALUES (1983, '28', '009', 'CIUDAD MADERO', NULL, NULL, '28009');
INSERT INTO `cat_municipio` VALUES (1984, '28', '010', 'CRUILLAS', NULL, NULL, '28010');
INSERT INTO `cat_municipio` VALUES (1985, '28', '011', 'GÓMEZ FARÍAS', NULL, NULL, '28011');
INSERT INTO `cat_municipio` VALUES (1986, '28', '012', 'GONZÁLEZ', NULL, NULL, '28012');
INSERT INTO `cat_municipio` VALUES (1987, '28', '013', 'GÜÉMEZ', NULL, NULL, '28013');
INSERT INTO `cat_municipio` VALUES (1988, '28', '014', 'GUERRERO', NULL, NULL, '28014');
INSERT INTO `cat_municipio` VALUES (1989, '28', '015', 'GUSTAVO DÍAZ ORDAZ', NULL, NULL, '28015');
INSERT INTO `cat_municipio` VALUES (1990, '28', '016', 'HIDALGO', NULL, NULL, '28016');
INSERT INTO `cat_municipio` VALUES (1991, '28', '017', 'JAUMAVE', NULL, NULL, '28017');
INSERT INTO `cat_municipio` VALUES (1992, '28', '018', 'JIMÉNEZ', NULL, NULL, '28018');
INSERT INTO `cat_municipio` VALUES (1993, '28', '019', 'LLERA', NULL, NULL, '28019');
INSERT INTO `cat_municipio` VALUES (1994, '28', '020', 'MAINERO', NULL, NULL, '28020');
INSERT INTO `cat_municipio` VALUES (1995, '28', '021', 'EL MANTE', NULL, NULL, '28021');
INSERT INTO `cat_municipio` VALUES (1996, '28', '022', 'MATAMOROS', NULL, NULL, '28022');
INSERT INTO `cat_municipio` VALUES (1997, '28', '023', 'MÉNDEZ', NULL, NULL, '28023');
INSERT INTO `cat_municipio` VALUES (1998, '28', '024', 'MIER', NULL, NULL, '28024');
INSERT INTO `cat_municipio` VALUES (1999, '28', '025', 'MIGUEL ALEMÁN', NULL, NULL, '28025');
INSERT INTO `cat_municipio` VALUES (2000, '28', '026', 'MIQUIHUANA', NULL, NULL, '28026');
INSERT INTO `cat_municipio` VALUES (2001, '28', '027', 'NUEVO LAREDO', NULL, NULL, '28027');
INSERT INTO `cat_municipio` VALUES (2002, '28', '028', 'NUEVO MORELOS', NULL, NULL, '28028');
INSERT INTO `cat_municipio` VALUES (2003, '28', '029', 'OCAMPO', NULL, NULL, '28029');
INSERT INTO `cat_municipio` VALUES (2004, '28', '030', 'PADILLA', NULL, NULL, '28030');
INSERT INTO `cat_municipio` VALUES (2005, '28', '031', 'PALMILLAS', NULL, NULL, '28031');
INSERT INTO `cat_municipio` VALUES (2006, '28', '032', 'REYNOSA', NULL, NULL, '28032');
INSERT INTO `cat_municipio` VALUES (2007, '28', '033', 'RÍO BRAVO', NULL, NULL, '28033');
INSERT INTO `cat_municipio` VALUES (2008, '28', '034', 'SAN CARLOS', NULL, NULL, '28034');
INSERT INTO `cat_municipio` VALUES (2009, '28', '035', 'SAN FERNANDO', NULL, NULL, '28035');
INSERT INTO `cat_municipio` VALUES (2010, '28', '036', 'SAN NICOLÁS', NULL, NULL, '28036');
INSERT INTO `cat_municipio` VALUES (2011, '28', '037', 'SOTO LA MARINA', NULL, NULL, '28037');
INSERT INTO `cat_municipio` VALUES (2012, '28', '038', 'TAMPICO', NULL, NULL, '28038');
INSERT INTO `cat_municipio` VALUES (2013, '28', '039', 'TULA', NULL, NULL, '28039');
INSERT INTO `cat_municipio` VALUES (2014, '28', '040', 'VALLE HERMOSO', NULL, NULL, '28040');
INSERT INTO `cat_municipio` VALUES (2015, '28', '041', 'VICTORIA', NULL, NULL, '28041');
INSERT INTO `cat_municipio` VALUES (2016, '28', '042', 'VILLAGRÁN', NULL, NULL, '28042');
INSERT INTO `cat_municipio` VALUES (2017, '28', '043', 'XICOTÉNCATL', NULL, NULL, '28043');
INSERT INTO `cat_municipio` VALUES (2018, '29', '001', 'AMAXAC DE GUERRERO', NULL, NULL, '29001');
INSERT INTO `cat_municipio` VALUES (2019, '29', '002', 'APETATITLÁN DE ANTONIO CARVAJAL', NULL, NULL, '29002');
INSERT INTO `cat_municipio` VALUES (2020, '29', '003', 'ATLANGATEPEC', NULL, NULL, '29003');
INSERT INTO `cat_municipio` VALUES (2021, '29', '004', 'ATLTZAYANCA', NULL, NULL, '29004');
INSERT INTO `cat_municipio` VALUES (2022, '29', '005', 'APIZACO', NULL, NULL, '29005');
INSERT INTO `cat_municipio` VALUES (2023, '29', '006', 'CALPULALPAN', NULL, NULL, '29006');
INSERT INTO `cat_municipio` VALUES (2024, '29', '007', 'EL CARMEN TEQUEXQUITLA', NULL, NULL, '29007');
INSERT INTO `cat_municipio` VALUES (2025, '29', '008', 'CUAPIAXTLA', NULL, NULL, '29008');
INSERT INTO `cat_municipio` VALUES (2026, '29', '009', 'CUAXOMULCO', NULL, NULL, '29009');
INSERT INTO `cat_municipio` VALUES (2027, '29', '010', 'CHIAUTEMPAN', NULL, NULL, '29010');
INSERT INTO `cat_municipio` VALUES (2028, '29', '011', 'MUÑOZ DE DOMINGO ARENAS', NULL, NULL, '29011');
INSERT INTO `cat_municipio` VALUES (2029, '29', '012', 'ESPAÑITA', NULL, NULL, '29012');
INSERT INTO `cat_municipio` VALUES (2030, '29', '013', 'HUAMANTLA', NULL, NULL, '29013');
INSERT INTO `cat_municipio` VALUES (2031, '29', '014', 'HUEYOTLIPAN', NULL, NULL, '29014');
INSERT INTO `cat_municipio` VALUES (2032, '29', '015', 'IXTACUIXTLA DE MARIANO MATAMOROS', NULL, NULL, '29015');
INSERT INTO `cat_municipio` VALUES (2033, '29', '016', 'IXTENCO', NULL, NULL, '29016');
INSERT INTO `cat_municipio` VALUES (2034, '29', '017', 'MAZATECOCHCO DE JOSÉ MARÍA MORELOS', NULL, NULL, '29017');
INSERT INTO `cat_municipio` VALUES (2035, '29', '018', 'CONTLA DE JUAN CUAMATZI', NULL, NULL, '29018');
INSERT INTO `cat_municipio` VALUES (2036, '29', '019', 'TEPETITLA DE LARDIZÁBAL', NULL, NULL, '29019');
INSERT INTO `cat_municipio` VALUES (2037, '29', '020', 'SANCTÓRUM DE LÁZARO CÁRDENAS', NULL, NULL, '29020');
INSERT INTO `cat_municipio` VALUES (2038, '29', '021', 'NANACAMILPA DE MARIANO ARISTA', NULL, NULL, '29021');
INSERT INTO `cat_municipio` VALUES (2039, '29', '022', 'ACUAMANALA DE MIGUEL HIDALGO', NULL, NULL, '29022');
INSERT INTO `cat_municipio` VALUES (2040, '29', '023', 'NATÍVITAS', NULL, NULL, '29023');
INSERT INTO `cat_municipio` VALUES (2041, '29', '024', 'PANOTLA', NULL, NULL, '29024');
INSERT INTO `cat_municipio` VALUES (2042, '29', '025', 'SAN PABLO DEL MONTE', NULL, NULL, '29025');
INSERT INTO `cat_municipio` VALUES (2043, '29', '026', 'SANTA CRUZ TLAXCALA', NULL, NULL, '29026');
INSERT INTO `cat_municipio` VALUES (2044, '29', '027', 'TENANCINGO', NULL, NULL, '29027');
INSERT INTO `cat_municipio` VALUES (2045, '29', '028', 'TEOLOCHOLCO', NULL, NULL, '29028');
INSERT INTO `cat_municipio` VALUES (2046, '29', '029', 'TEPEYANCO', NULL, NULL, '29029');
INSERT INTO `cat_municipio` VALUES (2047, '29', '030', 'TERRENATE', NULL, NULL, '29030');
INSERT INTO `cat_municipio` VALUES (2048, '29', '031', 'TETLA DE LA SOLIDARIDAD', NULL, NULL, '29031');
INSERT INTO `cat_municipio` VALUES (2049, '29', '032', 'TETLATLAHUCA', NULL, NULL, '29032');
INSERT INTO `cat_municipio` VALUES (2050, '29', '033', 'TLAXCALA', NULL, NULL, '29033');
INSERT INTO `cat_municipio` VALUES (2051, '29', '034', 'TLAXCO', NULL, NULL, '29034');
INSERT INTO `cat_municipio` VALUES (2052, '29', '035', 'TOCATLÁN', NULL, NULL, '29035');
INSERT INTO `cat_municipio` VALUES (2053, '29', '036', 'TOTOLAC', NULL, NULL, '29036');
INSERT INTO `cat_municipio` VALUES (2054, '29', '037', 'ZILTLALTÉPEC DE TRINIDAD SÁNCHEZ SANTOS', NULL, NULL, '29037');
INSERT INTO `cat_municipio` VALUES (2055, '29', '038', 'TZOMPANTEPEC', NULL, NULL, '29038');
INSERT INTO `cat_municipio` VALUES (2056, '29', '039', 'XALOZTOC', NULL, NULL, '29039');
INSERT INTO `cat_municipio` VALUES (2057, '29', '040', 'XALTOCAN', NULL, NULL, '29040');
INSERT INTO `cat_municipio` VALUES (2058, '29', '041', 'PAPALOTLA DE XICOHTÉNCATL', NULL, NULL, '29041');
INSERT INTO `cat_municipio` VALUES (2059, '29', '042', 'XICOHTZINCO', NULL, NULL, '29042');
INSERT INTO `cat_municipio` VALUES (2060, '29', '043', 'YAUHQUEMEHCAN', NULL, NULL, '29043');
INSERT INTO `cat_municipio` VALUES (2061, '29', '044', 'ZACATELCO', NULL, NULL, '29044');
INSERT INTO `cat_municipio` VALUES (2062, '29', '045', 'BENITO JUÁREZ', NULL, NULL, '29045');
INSERT INTO `cat_municipio` VALUES (2063, '29', '046', 'EMILIANO ZAPATA', NULL, NULL, '29046');
INSERT INTO `cat_municipio` VALUES (2064, '29', '047', 'LÁZARO CÁRDENAS', NULL, NULL, '29047');
INSERT INTO `cat_municipio` VALUES (2065, '29', '048', 'LA MAGDALENA TLALTELULCO', NULL, NULL, '29048');
INSERT INTO `cat_municipio` VALUES (2066, '29', '049', 'SAN DAMIÁN TEXÓLOC', NULL, NULL, '29049');
INSERT INTO `cat_municipio` VALUES (2067, '29', '050', 'SAN FRANCISCO TETLANOHCAN', NULL, NULL, '29050');
INSERT INTO `cat_municipio` VALUES (2068, '29', '051', 'SAN JERÓNIMO ZACUALPAN', NULL, NULL, '29051');
INSERT INTO `cat_municipio` VALUES (2069, '29', '052', 'SAN JOSÉ TEACALCO', NULL, NULL, '29052');
INSERT INTO `cat_municipio` VALUES (2070, '29', '053', 'SAN JUAN HUACTZINCO', NULL, NULL, '29053');
INSERT INTO `cat_municipio` VALUES (2071, '29', '054', 'SAN LORENZO AXOCOMANITLA', NULL, NULL, '29054');
INSERT INTO `cat_municipio` VALUES (2072, '29', '055', 'SAN LUCAS TECOPILCO', NULL, NULL, '29055');
INSERT INTO `cat_municipio` VALUES (2073, '29', '056', 'SANTA ANA NOPALUCAN', NULL, NULL, '29056');
INSERT INTO `cat_municipio` VALUES (2074, '29', '057', 'SANTA APOLONIA TEACALCO', NULL, NULL, '29057');
INSERT INTO `cat_municipio` VALUES (2075, '29', '058', 'SANTA CATARINA AYOMETLA', NULL, NULL, '29058');
INSERT INTO `cat_municipio` VALUES (2076, '29', '059', 'SANTA CRUZ QUILEHTLA', NULL, NULL, '29059');
INSERT INTO `cat_municipio` VALUES (2077, '29', '060', 'SANTA ISABEL XILOXOXTLA', NULL, NULL, '29060');
INSERT INTO `cat_municipio` VALUES (2078, '30', '001', 'ACAJETE', NULL, NULL, '30001');
INSERT INTO `cat_municipio` VALUES (2079, '30', '002', 'ACATLÁN', NULL, NULL, '30002');
INSERT INTO `cat_municipio` VALUES (2080, '30', '003', 'ACAYUCAN', NULL, NULL, '30003');
INSERT INTO `cat_municipio` VALUES (2081, '30', '004', 'ACTOPAN', NULL, NULL, '30004');
INSERT INTO `cat_municipio` VALUES (2082, '30', '005', 'ACULA', NULL, NULL, '30005');
INSERT INTO `cat_municipio` VALUES (2083, '30', '006', 'ACULTZINGO', NULL, NULL, '30006');
INSERT INTO `cat_municipio` VALUES (2084, '30', '007', 'CAMARÓN DE TEJEDA', NULL, NULL, '30007');
INSERT INTO `cat_municipio` VALUES (2085, '30', '008', 'ALPATLÁHUAC', NULL, NULL, '30008');
INSERT INTO `cat_municipio` VALUES (2086, '30', '009', 'ALTO LUCERO DE GUTIÉRREZ BARRIOS', NULL, NULL, '30009');
INSERT INTO `cat_municipio` VALUES (2087, '30', '010', 'ALTOTONGA', NULL, NULL, '30010');
INSERT INTO `cat_municipio` VALUES (2088, '30', '011', 'ALVARADO', NULL, NULL, '30011');
INSERT INTO `cat_municipio` VALUES (2089, '30', '012', 'AMATITLÁN', NULL, NULL, '30012');
INSERT INTO `cat_municipio` VALUES (2090, '30', '013', 'NARANJOS AMATLÁN', NULL, NULL, '30013');
INSERT INTO `cat_municipio` VALUES (2091, '30', '014', 'AMATLÁN DE LOS REYES', NULL, NULL, '30014');
INSERT INTO `cat_municipio` VALUES (2092, '30', '015', 'ANGEL R. CABADA', NULL, NULL, '30015');
INSERT INTO `cat_municipio` VALUES (2093, '30', '016', 'LA ANTIGUA', NULL, NULL, '30016');
INSERT INTO `cat_municipio` VALUES (2094, '30', '017', 'APAZAPAN', NULL, NULL, '30017');
INSERT INTO `cat_municipio` VALUES (2095, '30', '018', 'AQUILA', NULL, NULL, '30018');
INSERT INTO `cat_municipio` VALUES (2096, '30', '019', 'ASTACINGA', NULL, NULL, '30019');
INSERT INTO `cat_municipio` VALUES (2097, '30', '020', 'ATLAHUILCO', NULL, NULL, '30020');
INSERT INTO `cat_municipio` VALUES (2098, '30', '021', 'ATOYAC', NULL, NULL, '30021');
INSERT INTO `cat_municipio` VALUES (2099, '30', '022', 'ATZACAN', NULL, NULL, '30022');
INSERT INTO `cat_municipio` VALUES (2100, '30', '023', 'ATZALAN', NULL, NULL, '30023');
INSERT INTO `cat_municipio` VALUES (2101, '30', '024', 'TLALTETELA', NULL, NULL, '30024');
INSERT INTO `cat_municipio` VALUES (2102, '30', '025', 'AYAHUALULCO', NULL, NULL, '30025');
INSERT INTO `cat_municipio` VALUES (2103, '30', '026', 'BANDERILLA', NULL, NULL, '30026');
INSERT INTO `cat_municipio` VALUES (2104, '30', '027', 'BENITO JUÁREZ', NULL, NULL, '30027');
INSERT INTO `cat_municipio` VALUES (2105, '30', '028', 'BOCA DEL RÍO', NULL, NULL, '30028');
INSERT INTO `cat_municipio` VALUES (2106, '30', '029', 'CALCAHUALCO', NULL, NULL, '30029');
INSERT INTO `cat_municipio` VALUES (2107, '30', '030', 'CAMERINO Z. MENDOZA', NULL, NULL, '30030');
INSERT INTO `cat_municipio` VALUES (2108, '30', '031', 'CARRILLO PUERTO', NULL, NULL, '30031');
INSERT INTO `cat_municipio` VALUES (2109, '30', '032', 'CATEMACO', NULL, NULL, '30032');
INSERT INTO `cat_municipio` VALUES (2110, '30', '033', 'CAZONES DE HERRERA', NULL, NULL, '30033');
INSERT INTO `cat_municipio` VALUES (2111, '30', '034', 'CERRO AZUL', NULL, NULL, '30034');
INSERT INTO `cat_municipio` VALUES (2112, '30', '035', 'CITLALTÉPETL', NULL, NULL, '30035');
INSERT INTO `cat_municipio` VALUES (2113, '30', '036', 'COACOATZINTLA', NULL, NULL, '30036');
INSERT INTO `cat_municipio` VALUES (2114, '30', '037', 'COAHUITLÁN', NULL, NULL, '30037');
INSERT INTO `cat_municipio` VALUES (2115, '30', '038', 'COATEPEC', NULL, NULL, '30038');
INSERT INTO `cat_municipio` VALUES (2116, '30', '039', 'COATZACOALCOS', NULL, NULL, '30039');
INSERT INTO `cat_municipio` VALUES (2117, '30', '040', 'COATZINTLA', NULL, NULL, '30040');
INSERT INTO `cat_municipio` VALUES (2118, '30', '041', 'COETZALA', NULL, NULL, '30041');
INSERT INTO `cat_municipio` VALUES (2119, '30', '042', 'COLIPA', NULL, NULL, '30042');
INSERT INTO `cat_municipio` VALUES (2120, '30', '043', 'COMAPA', NULL, NULL, '30043');
INSERT INTO `cat_municipio` VALUES (2121, '30', '044', 'CÓRDOBA', NULL, NULL, '30044');
INSERT INTO `cat_municipio` VALUES (2122, '30', '045', 'COSAMALOAPAN DE CARPIO', NULL, NULL, '30045');
INSERT INTO `cat_municipio` VALUES (2123, '30', '046', 'COSAUTLÁN DE CARVAJAL', NULL, NULL, '30046');
INSERT INTO `cat_municipio` VALUES (2124, '30', '047', 'COSCOMATEPEC', NULL, NULL, '30047');
INSERT INTO `cat_municipio` VALUES (2125, '30', '048', 'COSOLEACAQUE', NULL, NULL, '30048');
INSERT INTO `cat_municipio` VALUES (2126, '30', '049', 'COTAXTLA', NULL, NULL, '30049');
INSERT INTO `cat_municipio` VALUES (2127, '30', '050', 'COXQUIHUI', NULL, NULL, '30050');
INSERT INTO `cat_municipio` VALUES (2128, '30', '051', 'COYUTLA', NULL, NULL, '30051');
INSERT INTO `cat_municipio` VALUES (2129, '30', '052', 'CUICHAPA', NULL, NULL, '30052');
INSERT INTO `cat_municipio` VALUES (2130, '30', '053', 'CUITLÁHUAC', NULL, NULL, '30053');
INSERT INTO `cat_municipio` VALUES (2131, '30', '054', 'CHACALTIANGUIS', NULL, NULL, '30054');
INSERT INTO `cat_municipio` VALUES (2132, '30', '055', 'CHALMA', NULL, NULL, '30055');
INSERT INTO `cat_municipio` VALUES (2133, '30', '056', 'CHICONAMEL', NULL, NULL, '30056');
INSERT INTO `cat_municipio` VALUES (2134, '30', '057', 'CHICONQUIACO', NULL, NULL, '30057');
INSERT INTO `cat_municipio` VALUES (2135, '30', '058', 'CHICONTEPEC', NULL, NULL, '30058');
INSERT INTO `cat_municipio` VALUES (2136, '30', '059', 'CHINAMECA', NULL, NULL, '30059');
INSERT INTO `cat_municipio` VALUES (2137, '30', '060', 'CHINAMPA DE GOROSTIZA', NULL, NULL, '30060');
INSERT INTO `cat_municipio` VALUES (2138, '30', '061', 'LAS CHOAPAS', NULL, NULL, '30061');
INSERT INTO `cat_municipio` VALUES (2139, '30', '062', 'CHOCAMÁN', NULL, NULL, '30062');
INSERT INTO `cat_municipio` VALUES (2140, '30', '063', 'CHONTLA', NULL, NULL, '30063');
INSERT INTO `cat_municipio` VALUES (2141, '30', '064', 'CHUMATLÁN', NULL, NULL, '30064');
INSERT INTO `cat_municipio` VALUES (2142, '30', '065', 'EMILIANO ZAPATA', NULL, NULL, '30065');
INSERT INTO `cat_municipio` VALUES (2143, '30', '066', 'ESPINAL', NULL, NULL, '30066');
INSERT INTO `cat_municipio` VALUES (2144, '30', '067', 'FILOMENO MATA', NULL, NULL, '30067');
INSERT INTO `cat_municipio` VALUES (2145, '30', '068', 'FORTÍN', NULL, NULL, '30068');
INSERT INTO `cat_municipio` VALUES (2146, '30', '069', 'GUTIÉRREZ ZAMORA', NULL, NULL, '30069');
INSERT INTO `cat_municipio` VALUES (2147, '30', '070', 'HIDALGOTITLÁN', NULL, NULL, '30070');
INSERT INTO `cat_municipio` VALUES (2148, '30', '071', 'HUATUSCO', NULL, NULL, '30071');
INSERT INTO `cat_municipio` VALUES (2149, '30', '072', 'HUAYACOCOTLA', NULL, NULL, '30072');
INSERT INTO `cat_municipio` VALUES (2150, '30', '073', 'HUEYAPAN DE OCAMPO', NULL, NULL, '30073');
INSERT INTO `cat_municipio` VALUES (2151, '30', '074', 'HUILOAPAN DE CUAUHTÉMOC', NULL, NULL, '30074');
INSERT INTO `cat_municipio` VALUES (2152, '30', '075', 'IGNACIO DE LA LLAVE', NULL, NULL, '30075');
INSERT INTO `cat_municipio` VALUES (2153, '30', '076', 'ILAMATLÁN', NULL, NULL, '30076');
INSERT INTO `cat_municipio` VALUES (2154, '30', '077', 'ISLA', NULL, NULL, '30077');
INSERT INTO `cat_municipio` VALUES (2155, '30', '078', 'IXCATEPEC', NULL, NULL, '30078');
INSERT INTO `cat_municipio` VALUES (2156, '30', '079', 'IXHUACÁN DE LOS REYES', NULL, NULL, '30079');
INSERT INTO `cat_municipio` VALUES (2157, '30', '080', 'IXHUATLÁN DEL CAFÉ', NULL, NULL, '30080');
INSERT INTO `cat_municipio` VALUES (2158, '30', '081', 'IXHUATLANCILLO', NULL, NULL, '30081');
INSERT INTO `cat_municipio` VALUES (2159, '30', '082', 'IXHUATLÁN DEL SURESTE', NULL, NULL, '30082');
INSERT INTO `cat_municipio` VALUES (2160, '30', '083', 'IXHUATLÁN DE MADERO', NULL, NULL, '30083');
INSERT INTO `cat_municipio` VALUES (2161, '30', '084', 'IXMATLAHUACAN', NULL, NULL, '30084');
INSERT INTO `cat_municipio` VALUES (2162, '30', '085', 'IXTACZOQUITLÁN', NULL, NULL, '30085');
INSERT INTO `cat_municipio` VALUES (2163, '30', '086', 'JALACINGO', NULL, NULL, '30086');
INSERT INTO `cat_municipio` VALUES (2164, '30', '087', 'XALAPA', NULL, NULL, '30087');
INSERT INTO `cat_municipio` VALUES (2165, '30', '088', 'JALCOMULCO', NULL, NULL, '30088');
INSERT INTO `cat_municipio` VALUES (2166, '30', '089', 'JÁLTIPAN', NULL, NULL, '30089');
INSERT INTO `cat_municipio` VALUES (2167, '30', '090', 'JAMAPA', NULL, NULL, '30090');
INSERT INTO `cat_municipio` VALUES (2168, '30', '091', 'JESÚS CARRANZA', NULL, NULL, '30091');
INSERT INTO `cat_municipio` VALUES (2169, '30', '092', 'XICO', NULL, NULL, '30092');
INSERT INTO `cat_municipio` VALUES (2170, '30', '093', 'JILOTEPEC', NULL, NULL, '30093');
INSERT INTO `cat_municipio` VALUES (2171, '30', '094', 'JUAN RODRÍGUEZ CLARA', NULL, NULL, '30094');
INSERT INTO `cat_municipio` VALUES (2172, '30', '095', 'JUCHIQUE DE FERRER', NULL, NULL, '30095');
INSERT INTO `cat_municipio` VALUES (2173, '30', '096', 'LANDERO Y COSS', NULL, NULL, '30096');
INSERT INTO `cat_municipio` VALUES (2174, '30', '097', 'LERDO DE TEJADA', NULL, NULL, '30097');
INSERT INTO `cat_municipio` VALUES (2175, '30', '098', 'MAGDALENA', NULL, NULL, '30098');
INSERT INTO `cat_municipio` VALUES (2176, '30', '099', 'MALTRATA', NULL, NULL, '30099');
INSERT INTO `cat_municipio` VALUES (2177, '30', '100', 'MANLIO FABIO ALTAMIRANO', NULL, NULL, '30100');
INSERT INTO `cat_municipio` VALUES (2178, '30', '101', 'MARIANO ESCOBEDO', NULL, NULL, '30101');
INSERT INTO `cat_municipio` VALUES (2179, '30', '102', 'MARTÍNEZ DE LA TORRE', NULL, NULL, '30102');
INSERT INTO `cat_municipio` VALUES (2180, '30', '103', 'MECATLÁN', NULL, NULL, '30103');
INSERT INTO `cat_municipio` VALUES (2181, '30', '104', 'MECAYAPAN', NULL, NULL, '30104');
INSERT INTO `cat_municipio` VALUES (2182, '30', '106', 'MIAHUATLÁN', NULL, NULL, '30106');
INSERT INTO `cat_municipio` VALUES (2183, '30', '107', 'LAS MINAS', NULL, NULL, '30107');
INSERT INTO `cat_municipio` VALUES (2184, '30', '108', 'MINATITLÁN', NULL, NULL, '30108');
INSERT INTO `cat_municipio` VALUES (2185, '30', '109', 'MISANTLA', NULL, NULL, '30109');
INSERT INTO `cat_municipio` VALUES (2186, '30', '110', 'MIXTLA DE ALTAMIRANO', NULL, NULL, '30110');
INSERT INTO `cat_municipio` VALUES (2187, '30', '111', 'MOLOACÁN', NULL, NULL, '30111');
INSERT INTO `cat_municipio` VALUES (2188, '30', '112', 'NAOLINCO', NULL, NULL, '30112');
INSERT INTO `cat_municipio` VALUES (2189, '30', '113', 'NARANJAL', NULL, NULL, '30113');
INSERT INTO `cat_municipio` VALUES (2190, '30', '114', 'NAUTLA', NULL, NULL, '30114');
INSERT INTO `cat_municipio` VALUES (2191, '30', '115', 'NOGALES', NULL, NULL, '30115');
INSERT INTO `cat_municipio` VALUES (2192, '30', '116', 'OLUTA', NULL, NULL, '30116');
INSERT INTO `cat_municipio` VALUES (2193, '30', '117', 'OMEALCA', NULL, NULL, '30117');
INSERT INTO `cat_municipio` VALUES (2194, '30', '118', 'ORIZABA', NULL, NULL, '30118');
INSERT INTO `cat_municipio` VALUES (2195, '30', '119', 'OTATITLÁN', NULL, NULL, '30119');
INSERT INTO `cat_municipio` VALUES (2196, '30', '120', 'OTEAPAN', NULL, NULL, '30120');
INSERT INTO `cat_municipio` VALUES (2197, '30', '121', 'OZULUAMA DE MASCAREÑAS', NULL, NULL, '30121');
INSERT INTO `cat_municipio` VALUES (2198, '30', '122', 'PAJAPAN', NULL, NULL, '30122');
INSERT INTO `cat_municipio` VALUES (2199, '30', '123', 'PÁNUCO', NULL, NULL, '30123');
INSERT INTO `cat_municipio` VALUES (2200, '30', '124', 'PAPANTLA', NULL, NULL, '30124');
INSERT INTO `cat_municipio` VALUES (2201, '30', '125', 'PASO DEL MACHO', NULL, NULL, '30125');
INSERT INTO `cat_municipio` VALUES (2202, '30', '126', 'PASO DE OVEJAS', NULL, NULL, '30126');
INSERT INTO `cat_municipio` VALUES (2203, '30', '127', 'LA PERLA', NULL, NULL, '30127');
INSERT INTO `cat_municipio` VALUES (2204, '30', '128', 'PEROTE', NULL, NULL, '30128');
INSERT INTO `cat_municipio` VALUES (2205, '30', '129', 'PLATÓN SÁNCHEZ', NULL, NULL, '30129');
INSERT INTO `cat_municipio` VALUES (2206, '30', '130', 'PLAYA VICENTE', NULL, NULL, '30130');
INSERT INTO `cat_municipio` VALUES (2207, '30', '131', 'POZA RICA DE HIDALGO', NULL, NULL, '30131');
INSERT INTO `cat_municipio` VALUES (2208, '30', '132', 'LAS VIGAS DE RAMÍREZ', NULL, NULL, '30132');
INSERT INTO `cat_municipio` VALUES (2209, '30', '133', 'PUEBLO VIEJO', NULL, NULL, '30133');
INSERT INTO `cat_municipio` VALUES (2210, '30', '134', 'PUENTE NACIONAL', NULL, NULL, '30134');
INSERT INTO `cat_municipio` VALUES (2211, '30', '135', 'RAFAEL DELGADO', NULL, NULL, '30135');
INSERT INTO `cat_municipio` VALUES (2212, '30', '136', 'RAFAEL LUCIO', NULL, NULL, '30136');
INSERT INTO `cat_municipio` VALUES (2213, '30', '137', 'LOS REYES', NULL, NULL, '30137');
INSERT INTO `cat_municipio` VALUES (2214, '30', '138', 'RÍO BLANCO', NULL, NULL, '30138');
INSERT INTO `cat_municipio` VALUES (2215, '30', '139', 'SALTABARRANCA', NULL, NULL, '30139');
INSERT INTO `cat_municipio` VALUES (2216, '30', '140', 'SAN ANDRÉS TENEJAPAN', NULL, NULL, '30140');
INSERT INTO `cat_municipio` VALUES (2217, '30', '141', 'SAN ANDRÉS TUXTLA', NULL, NULL, '30141');
INSERT INTO `cat_municipio` VALUES (2218, '30', '142', 'SAN JUAN EVANGELISTA', NULL, NULL, '30142');
INSERT INTO `cat_municipio` VALUES (2219, '30', '143', 'SANTIAGO TUXTLA', NULL, NULL, '30143');
INSERT INTO `cat_municipio` VALUES (2220, '30', '144', 'SAYULA DE ALEMÁN', NULL, NULL, '30144');
INSERT INTO `cat_municipio` VALUES (2221, '30', '145', 'SOCONUSCO', NULL, NULL, '30145');
INSERT INTO `cat_municipio` VALUES (2222, '30', '146', 'SOCHIAPA', NULL, NULL, '30146');
INSERT INTO `cat_municipio` VALUES (2223, '30', '147', 'SOLEDAD ATZOMPA', NULL, NULL, '30147');
INSERT INTO `cat_municipio` VALUES (2224, '30', '148', 'SOLEDAD DE DOBLADO', NULL, NULL, '30148');
INSERT INTO `cat_municipio` VALUES (2225, '30', '149', 'SOTEAPAN', NULL, NULL, '30149');
INSERT INTO `cat_municipio` VALUES (2226, '30', '150', 'TAMALÍN', NULL, NULL, '30150');
INSERT INTO `cat_municipio` VALUES (2227, '30', '151', 'TAMIAHUA', NULL, NULL, '30151');
INSERT INTO `cat_municipio` VALUES (2228, '30', '152', 'TAMPICO ALTO', NULL, NULL, '30152');
INSERT INTO `cat_municipio` VALUES (2229, '30', '153', 'TANCOCO', NULL, NULL, '30153');
INSERT INTO `cat_municipio` VALUES (2230, '30', '154', 'TANTIMA', NULL, NULL, '30154');
INSERT INTO `cat_municipio` VALUES (2231, '30', '155', 'TANTOYUCA', NULL, NULL, '30155');
INSERT INTO `cat_municipio` VALUES (2232, '30', '156', 'TATATILA', NULL, NULL, '30156');
INSERT INTO `cat_municipio` VALUES (2233, '30', '157', 'CASTILLO DE TEAYO', NULL, NULL, '30157');
INSERT INTO `cat_municipio` VALUES (2234, '30', '158', 'TECOLUTLA', NULL, NULL, '30158');
INSERT INTO `cat_municipio` VALUES (2235, '30', '159', 'TEHUIPANGO', NULL, NULL, '30159');
INSERT INTO `cat_municipio` VALUES (2236, '30', '160', 'ÁLAMO TEMAPACHE', NULL, NULL, '30160');
INSERT INTO `cat_municipio` VALUES (2237, '30', '161', 'TEMPOAL', NULL, NULL, '30161');
INSERT INTO `cat_municipio` VALUES (2238, '30', '162', 'TENAMPA', NULL, NULL, '30162');
INSERT INTO `cat_municipio` VALUES (2239, '30', '163', 'TENOCHTITLÁN', NULL, NULL, '30163');
INSERT INTO `cat_municipio` VALUES (2240, '30', '164', 'TEOCELO', NULL, NULL, '30164');
INSERT INTO `cat_municipio` VALUES (2241, '30', '165', 'TEPATLAXCO', NULL, NULL, '30165');
INSERT INTO `cat_municipio` VALUES (2242, '30', '166', 'TEPETLÁN', NULL, NULL, '30166');
INSERT INTO `cat_municipio` VALUES (2243, '30', '167', 'TEPETZINTLA', NULL, NULL, '30167');
INSERT INTO `cat_municipio` VALUES (2244, '30', '168', 'TEQUILA', NULL, NULL, '30168');
INSERT INTO `cat_municipio` VALUES (2245, '30', '169', 'JOSÉ AZUETA', NULL, NULL, '30169');
INSERT INTO `cat_municipio` VALUES (2246, '30', '170', 'TEXCATEPEC', NULL, NULL, '30170');
INSERT INTO `cat_municipio` VALUES (2247, '30', '171', 'TEXHUACÁN', NULL, NULL, '30171');
INSERT INTO `cat_municipio` VALUES (2248, '30', '172', 'TEXISTEPEC', NULL, NULL, '30172');
INSERT INTO `cat_municipio` VALUES (2249, '30', '173', 'TEZONAPA', NULL, NULL, '30173');
INSERT INTO `cat_municipio` VALUES (2250, '30', '174', 'TIERRA BLANCA', NULL, NULL, '30174');
INSERT INTO `cat_municipio` VALUES (2251, '30', '175', 'TIHUATLÁN', NULL, NULL, '30175');
INSERT INTO `cat_municipio` VALUES (2252, '30', '176', 'TLACOJALPAN', NULL, NULL, '30176');
INSERT INTO `cat_municipio` VALUES (2253, '30', '177', 'TLACOLULAN', NULL, NULL, '30177');
INSERT INTO `cat_municipio` VALUES (2254, '30', '178', 'TLACOTALPAN', NULL, NULL, '30178');
INSERT INTO `cat_municipio` VALUES (2255, '30', '179', 'TLACOTEPEC DE MEJÍA', NULL, NULL, '30179');
INSERT INTO `cat_municipio` VALUES (2256, '30', '180', 'TLACHICHILCO', NULL, NULL, '30180');
INSERT INTO `cat_municipio` VALUES (2257, '30', '181', 'TLALIXCOYAN', NULL, NULL, '30181');
INSERT INTO `cat_municipio` VALUES (2258, '30', '182', 'TLALNELHUAYOCAN', NULL, NULL, '30182');
INSERT INTO `cat_municipio` VALUES (2259, '30', '183', 'TLAPACOYAN', NULL, NULL, '30183');
INSERT INTO `cat_municipio` VALUES (2260, '30', '184', 'TLAQUILPA', NULL, NULL, '30184');
INSERT INTO `cat_municipio` VALUES (2261, '30', '185', 'TLILAPAN', NULL, NULL, '30185');
INSERT INTO `cat_municipio` VALUES (2262, '30', '186', 'TOMATLÁN', NULL, NULL, '30186');
INSERT INTO `cat_municipio` VALUES (2263, '30', '187', 'TONAYÁN', NULL, NULL, '30187');
INSERT INTO `cat_municipio` VALUES (2264, '30', '188', 'TOTUTLA', NULL, NULL, '30188');
INSERT INTO `cat_municipio` VALUES (2265, '30', '189', 'TUXPAN', NULL, NULL, '30189');
INSERT INTO `cat_municipio` VALUES (2266, '30', '190', 'TUXTILLA', NULL, NULL, '30190');
INSERT INTO `cat_municipio` VALUES (2267, '30', '191', 'URSULO GALVÁN', NULL, NULL, '30191');
INSERT INTO `cat_municipio` VALUES (2268, '30', '192', 'VEGA DE ALATORRE', NULL, NULL, '30192');
INSERT INTO `cat_municipio` VALUES (2269, '30', '193', 'VERACRUZ', NULL, NULL, '30193');
INSERT INTO `cat_municipio` VALUES (2270, '30', '194', 'VILLA ALDAMA', NULL, NULL, '30194');
INSERT INTO `cat_municipio` VALUES (2271, '30', '195', 'XOXOCOTLA', NULL, NULL, '30195');
INSERT INTO `cat_municipio` VALUES (2272, '30', '196', 'YANGA', NULL, NULL, '30196');
INSERT INTO `cat_municipio` VALUES (2273, '30', '197', 'YECUATLA', NULL, NULL, '30197');
INSERT INTO `cat_municipio` VALUES (2274, '30', '198', 'ZACUALPAN', NULL, NULL, '30198');
INSERT INTO `cat_municipio` VALUES (2275, '30', '199', 'ZARAGOZA', NULL, NULL, '30199');
INSERT INTO `cat_municipio` VALUES (2276, '30', '200', 'ZENTLA', NULL, NULL, '30200');
INSERT INTO `cat_municipio` VALUES (2277, '30', '201', 'ZONGOLICA', NULL, NULL, '30201');
INSERT INTO `cat_municipio` VALUES (2278, '30', '202', 'ZONTECOMATLÁN DE LÓPEZ Y FUENTES', NULL, NULL, '30202');
INSERT INTO `cat_municipio` VALUES (2279, '30', '203', 'ZOZOCOLCO DE HIDALGO', NULL, NULL, '30203');
INSERT INTO `cat_municipio` VALUES (2280, '30', '204', 'AGUA DULCE', NULL, NULL, '30204');
INSERT INTO `cat_municipio` VALUES (2281, '30', '205', 'EL HIGO', NULL, NULL, '30205');
INSERT INTO `cat_municipio` VALUES (2282, '30', '206', 'NANCHITAL DE LÁZARO CÁRDENAS DEL RÍO', NULL, NULL, '30206');
INSERT INTO `cat_municipio` VALUES (2283, '30', '207', 'TRES VALLES', NULL, NULL, '30207');
INSERT INTO `cat_municipio` VALUES (2284, '30', '208', 'CARLOS A. CARRILLO', NULL, NULL, '30208');
INSERT INTO `cat_municipio` VALUES (2285, '30', '209', 'TATAHUICAPAN DE JUÁREZ', NULL, NULL, '30209');
INSERT INTO `cat_municipio` VALUES (2286, '30', '210', 'UXPANAPA', NULL, NULL, '30210');
INSERT INTO `cat_municipio` VALUES (2287, '30', '211', 'SAN RAFAEL', NULL, NULL, '30211');
INSERT INTO `cat_municipio` VALUES (2288, '30', '212', 'SANTIAGO SOCHIAPAN', NULL, NULL, '30212');
INSERT INTO `cat_municipio` VALUES (2289, '31', '001', 'ABALÁ', NULL, NULL, '31001');
INSERT INTO `cat_municipio` VALUES (2290, '31', '002', 'ACANCEH', NULL, NULL, '31002');
INSERT INTO `cat_municipio` VALUES (2291, '31', '003', 'AKIL', NULL, NULL, '31003');
INSERT INTO `cat_municipio` VALUES (2292, '31', '004', 'BACA', NULL, NULL, '31004');
INSERT INTO `cat_municipio` VALUES (2293, '31', '005', 'BOKOBÁ', NULL, NULL, '31005');
INSERT INTO `cat_municipio` VALUES (2294, '31', '006', 'BUCTZOTZ', NULL, NULL, '31006');
INSERT INTO `cat_municipio` VALUES (2295, '31', '007', 'CACALCHÉN', NULL, NULL, '31007');
INSERT INTO `cat_municipio` VALUES (2296, '31', '008', 'CALOTMUL', NULL, NULL, '31008');
INSERT INTO `cat_municipio` VALUES (2297, '31', '009', 'CANSAHCAB', NULL, NULL, '31009');
INSERT INTO `cat_municipio` VALUES (2298, '31', '010', 'CANTAMAYEC', NULL, NULL, '31010');
INSERT INTO `cat_municipio` VALUES (2299, '31', '011', 'CELESTÚN', NULL, NULL, '31011');
INSERT INTO `cat_municipio` VALUES (2300, '31', '012', 'CENOTILLO', NULL, NULL, '31012');
INSERT INTO `cat_municipio` VALUES (2301, '31', '013', 'CONKAL', NULL, NULL, '31013');
INSERT INTO `cat_municipio` VALUES (2302, '31', '014', 'CUNCUNUL', NULL, NULL, '31014');
INSERT INTO `cat_municipio` VALUES (2303, '31', '015', 'CUZAMÁ', NULL, NULL, '31015');
INSERT INTO `cat_municipio` VALUES (2304, '31', '016', 'CHACSINKÍN', NULL, NULL, '31016');
INSERT INTO `cat_municipio` VALUES (2305, '31', '017', 'CHANKOM', NULL, NULL, '31017');
INSERT INTO `cat_municipio` VALUES (2306, '31', '018', 'CHAPAB', NULL, NULL, '31018');
INSERT INTO `cat_municipio` VALUES (2307, '31', '019', 'CHEMAX', NULL, NULL, '31019');
INSERT INTO `cat_municipio` VALUES (2308, '31', '020', 'CHICXULUB PUEBLO', NULL, NULL, '31020');
INSERT INTO `cat_municipio` VALUES (2309, '31', '021', 'CHICHIMILÁ', NULL, NULL, '31021');
INSERT INTO `cat_municipio` VALUES (2310, '31', '022', 'CHIKINDZONOT', NULL, NULL, '31022');
INSERT INTO `cat_municipio` VALUES (2311, '31', '023', 'CHOCHOLÁ', NULL, NULL, '31023');
INSERT INTO `cat_municipio` VALUES (2312, '31', '024', 'CHUMAYEL', NULL, NULL, '31024');
INSERT INTO `cat_municipio` VALUES (2313, '31', '025', 'DZÁN', NULL, NULL, '31025');
INSERT INTO `cat_municipio` VALUES (2314, '31', '026', 'DZEMUL', NULL, NULL, '31026');
INSERT INTO `cat_municipio` VALUES (2315, '31', '027', 'DZIDZANTÚN', NULL, NULL, '31027');
INSERT INTO `cat_municipio` VALUES (2316, '31', '028', 'DZILAM DE BRAVO', NULL, NULL, '31028');
INSERT INTO `cat_municipio` VALUES (2317, '31', '029', 'DZILAM GONZÁLEZ', NULL, NULL, '31029');
INSERT INTO `cat_municipio` VALUES (2318, '31', '030', 'DZITÁS', NULL, NULL, '31030');
INSERT INTO `cat_municipio` VALUES (2319, '31', '031', 'DZONCAUICH', NULL, NULL, '31031');
INSERT INTO `cat_municipio` VALUES (2320, '31', '032', 'ESPITA', NULL, NULL, '31032');
INSERT INTO `cat_municipio` VALUES (2321, '31', '033', 'HALACHÓ', NULL, NULL, '31033');
INSERT INTO `cat_municipio` VALUES (2322, '31', '034', 'HOCABÁ', NULL, NULL, '31034');
INSERT INTO `cat_municipio` VALUES (2323, '31', '035', 'HOCTÚN', NULL, NULL, '31035');
INSERT INTO `cat_municipio` VALUES (2324, '31', '036', 'HOMÚN', NULL, NULL, '31036');
INSERT INTO `cat_municipio` VALUES (2325, '31', '037', 'HUHÍ', NULL, NULL, '31037');
INSERT INTO `cat_municipio` VALUES (2326, '31', '038', 'HUNUCMÁ', NULL, NULL, '31038');
INSERT INTO `cat_municipio` VALUES (2327, '31', '039', 'IXIL', NULL, NULL, '31039');
INSERT INTO `cat_municipio` VALUES (2328, '31', '040', 'IZAMAL', NULL, NULL, '31040');
INSERT INTO `cat_municipio` VALUES (2329, '31', '041', 'KANASÍN', NULL, NULL, '31041');
INSERT INTO `cat_municipio` VALUES (2330, '31', '042', 'KANTUNIL', NULL, NULL, '31042');
INSERT INTO `cat_municipio` VALUES (2331, '31', '043', 'KAUA', NULL, NULL, '31043');
INSERT INTO `cat_municipio` VALUES (2332, '31', '044', 'KINCHIL', NULL, NULL, '31044');
INSERT INTO `cat_municipio` VALUES (2333, '31', '045', 'KOPOMÁ', NULL, NULL, '31045');
INSERT INTO `cat_municipio` VALUES (2334, '31', '046', 'MAMA', NULL, NULL, '31046');
INSERT INTO `cat_municipio` VALUES (2335, '31', '047', 'MANÍ', NULL, NULL, '31047');
INSERT INTO `cat_municipio` VALUES (2336, '31', '048', 'MAXCANÚ', NULL, NULL, '31048');
INSERT INTO `cat_municipio` VALUES (2337, '31', '049', 'MAYAPÁN', NULL, NULL, '31049');
INSERT INTO `cat_municipio` VALUES (2338, '31', '050', 'MÉRIDA', NULL, NULL, '31050');
INSERT INTO `cat_municipio` VALUES (2339, '31', '051', 'MOCOCHÁ', NULL, NULL, '31051');
INSERT INTO `cat_municipio` VALUES (2340, '31', '052', 'MOTUL', NULL, NULL, '31052');
INSERT INTO `cat_municipio` VALUES (2341, '31', '053', 'MUNA', NULL, NULL, '31053');
INSERT INTO `cat_municipio` VALUES (2342, '31', '054', 'MUXUPIP', NULL, NULL, '31054');
INSERT INTO `cat_municipio` VALUES (2343, '31', '055', 'OPICHÉN', NULL, NULL, '31055');
INSERT INTO `cat_municipio` VALUES (2344, '31', '056', 'OXKUTZCAB', NULL, NULL, '31056');
INSERT INTO `cat_municipio` VALUES (2345, '31', '057', 'PANABÁ', NULL, NULL, '31057');
INSERT INTO `cat_municipio` VALUES (2346, '31', '058', 'PETO', NULL, NULL, '31058');
INSERT INTO `cat_municipio` VALUES (2347, '31', '059', 'PROGRESO', NULL, NULL, '31059');
INSERT INTO `cat_municipio` VALUES (2348, '31', '060', 'QUINTANA ROO', NULL, NULL, '31060');
INSERT INTO `cat_municipio` VALUES (2349, '31', '061', 'RÍO LAGARTOS', NULL, NULL, '31061');
INSERT INTO `cat_municipio` VALUES (2350, '31', '062', 'SACALUM', NULL, NULL, '31062');
INSERT INTO `cat_municipio` VALUES (2351, '31', '063', 'SAMAHIL', NULL, NULL, '31063');
INSERT INTO `cat_municipio` VALUES (2352, '31', '064', 'SANAHCAT', NULL, NULL, '31064');
INSERT INTO `cat_municipio` VALUES (2353, '31', '065', 'SAN FELIPE', NULL, NULL, '31065');
INSERT INTO `cat_municipio` VALUES (2354, '31', '066', 'SANTA ELENA', NULL, NULL, '31066');
INSERT INTO `cat_municipio` VALUES (2355, '31', '067', 'SEYÉ', NULL, NULL, '31067');
INSERT INTO `cat_municipio` VALUES (2356, '31', '068', 'SINANCHÉ', NULL, NULL, '31068');
INSERT INTO `cat_municipio` VALUES (2357, '31', '069', 'SOTUTA', NULL, NULL, '31069');
INSERT INTO `cat_municipio` VALUES (2358, '31', '070', 'SUCILÁ', NULL, NULL, '31070');
INSERT INTO `cat_municipio` VALUES (2359, '31', '071', 'SUDZAL', NULL, NULL, '31071');
INSERT INTO `cat_municipio` VALUES (2360, '31', '072', 'SUMA', NULL, NULL, '31072');
INSERT INTO `cat_municipio` VALUES (2361, '31', '073', 'TAHDZIÚ', NULL, NULL, '31073');
INSERT INTO `cat_municipio` VALUES (2362, '31', '074', 'TAHMEK', NULL, NULL, '31074');
INSERT INTO `cat_municipio` VALUES (2363, '31', '075', 'TEABO', NULL, NULL, '31075');
INSERT INTO `cat_municipio` VALUES (2364, '31', '076', 'TECOH', NULL, NULL, '31076');
INSERT INTO `cat_municipio` VALUES (2365, '31', '077', 'TEKAL DE VENEGAS', NULL, NULL, '31077');
INSERT INTO `cat_municipio` VALUES (2366, '31', '078', 'TEKANTÓ', NULL, NULL, '31078');
INSERT INTO `cat_municipio` VALUES (2367, '31', '079', 'TEKAX', NULL, NULL, '31079');
INSERT INTO `cat_municipio` VALUES (2368, '31', '080', 'TEKIT', NULL, NULL, '31080');
INSERT INTO `cat_municipio` VALUES (2369, '31', '081', 'TEKOM', NULL, NULL, '31081');
INSERT INTO `cat_municipio` VALUES (2370, '31', '082', 'TELCHAC PUEBLO', NULL, NULL, '31082');
INSERT INTO `cat_municipio` VALUES (2371, '31', '083', 'TELCHAC PUERTO', NULL, NULL, '31083');
INSERT INTO `cat_municipio` VALUES (2372, '31', '084', 'TEMAX', NULL, NULL, '31084');
INSERT INTO `cat_municipio` VALUES (2373, '31', '085', 'TEMOZÓN', NULL, NULL, '31085');
INSERT INTO `cat_municipio` VALUES (2374, '31', '086', 'TEPAKÁN', NULL, NULL, '31086');
INSERT INTO `cat_municipio` VALUES (2375, '31', '087', 'TETIZ', NULL, NULL, '31087');
INSERT INTO `cat_municipio` VALUES (2376, '31', '088', 'TEYA', NULL, NULL, '31088');
INSERT INTO `cat_municipio` VALUES (2377, '31', '089', 'TICUL', NULL, NULL, '31089');
INSERT INTO `cat_municipio` VALUES (2378, '31', '090', 'TIMUCUY', NULL, NULL, '31090');
INSERT INTO `cat_municipio` VALUES (2379, '31', '091', 'TINUM', NULL, NULL, '31091');
INSERT INTO `cat_municipio` VALUES (2380, '31', '092', 'TIXCACALCUPUL', NULL, NULL, '31092');
INSERT INTO `cat_municipio` VALUES (2381, '31', '093', 'TIXKOKOB', NULL, NULL, '31093');
INSERT INTO `cat_municipio` VALUES (2382, '31', '094', 'TIXMEHUAC', NULL, NULL, '31094');
INSERT INTO `cat_municipio` VALUES (2383, '31', '095', 'TIXPÉHUAL', NULL, NULL, '31095');
INSERT INTO `cat_municipio` VALUES (2384, '31', '096', 'TIZIMÍN', NULL, NULL, '31096');
INSERT INTO `cat_municipio` VALUES (2385, '31', '097', 'TUNKÁS', NULL, NULL, '31097');
INSERT INTO `cat_municipio` VALUES (2386, '31', '098', 'TZUCACAB', NULL, NULL, '31098');
INSERT INTO `cat_municipio` VALUES (2387, '31', '099', 'UAYMA', NULL, NULL, '31099');
INSERT INTO `cat_municipio` VALUES (2388, '31', '100', 'UCÚ', NULL, NULL, '31100');
INSERT INTO `cat_municipio` VALUES (2389, '31', '101', 'UMÁN', NULL, NULL, '31101');
INSERT INTO `cat_municipio` VALUES (2390, '31', '102', 'VALLADOLID', NULL, NULL, '31102');
INSERT INTO `cat_municipio` VALUES (2391, '31', '103', 'XOCCHEL', NULL, NULL, '31103');
INSERT INTO `cat_municipio` VALUES (2392, '31', '104', 'YAXCABÁ', NULL, NULL, '31104');
INSERT INTO `cat_municipio` VALUES (2393, '31', '105', 'YAXKUKUL', NULL, NULL, '31105');
INSERT INTO `cat_municipio` VALUES (2394, '31', '106', 'YOBAÍN', NULL, NULL, '31106');
INSERT INTO `cat_municipio` VALUES (2395, '32', '001', 'APOZOL', NULL, NULL, '32001');
INSERT INTO `cat_municipio` VALUES (2396, '32', '002', 'APULCO', NULL, NULL, '32002');
INSERT INTO `cat_municipio` VALUES (2397, '32', '003', 'ATOLINGA', NULL, NULL, '32003');
INSERT INTO `cat_municipio` VALUES (2398, '32', '004', 'BENITO JUÁREZ', NULL, NULL, '32004');
INSERT INTO `cat_municipio` VALUES (2399, '32', '005', 'CALERA', NULL, NULL, '32005');
INSERT INTO `cat_municipio` VALUES (2400, '32', '006', 'CAÑITAS DE FELIPE PESCADOR', NULL, NULL, '32006');
INSERT INTO `cat_municipio` VALUES (2401, '32', '007', 'CONCEPCIÓN DEL ORO', NULL, NULL, '32007');
INSERT INTO `cat_municipio` VALUES (2402, '32', '008', 'CUAUHTÉMOC', NULL, NULL, '32008');
INSERT INTO `cat_municipio` VALUES (2403, '32', '009', 'CHALCHIHUITES', NULL, NULL, '32009');
INSERT INTO `cat_municipio` VALUES (2404, '32', '010', 'FRESNILLO', NULL, NULL, '32010');
INSERT INTO `cat_municipio` VALUES (2405, '32', '011', 'TRINIDAD GARCÍA DE LA CADENA', NULL, NULL, '32011');
INSERT INTO `cat_municipio` VALUES (2406, '32', '012', 'GENARO CODINA', NULL, NULL, '32012');
INSERT INTO `cat_municipio` VALUES (2407, '32', '013', 'GENERAL ENRIQUE ESTRADA', NULL, NULL, '32013');
INSERT INTO `cat_municipio` VALUES (2408, '32', '014', 'GENERAL FRANCISCO R. MURGUÍA', NULL, NULL, '32014');
INSERT INTO `cat_municipio` VALUES (2409, '32', '015', 'EL PLATEADO DE JOAQUÍN AMARO', NULL, NULL, '32015');
INSERT INTO `cat_municipio` VALUES (2410, '32', '016', 'GENERAL PÁNFILO NATERA', NULL, NULL, '32016');
INSERT INTO `cat_municipio` VALUES (2411, '32', '017', 'GUADALUPE', NULL, NULL, '32017');
INSERT INTO `cat_municipio` VALUES (2412, '32', '018', 'HUANUSCO', NULL, NULL, '32018');
INSERT INTO `cat_municipio` VALUES (2413, '32', '019', 'JALPA', NULL, NULL, '32019');
INSERT INTO `cat_municipio` VALUES (2414, '32', '020', 'JEREZ', NULL, NULL, '32020');
INSERT INTO `cat_municipio` VALUES (2415, '32', '021', 'JIMÉNEZ DEL TEUL', NULL, NULL, '32021');
INSERT INTO `cat_municipio` VALUES (2416, '32', '022', 'JUAN ALDAMA', NULL, NULL, '32022');
INSERT INTO `cat_municipio` VALUES (2417, '32', '023', 'JUCHIPILA', NULL, NULL, '32023');
INSERT INTO `cat_municipio` VALUES (2418, '32', '024', 'LORETO', NULL, NULL, '32024');
INSERT INTO `cat_municipio` VALUES (2419, '32', '025', 'LUIS MOYA', NULL, NULL, '32025');
INSERT INTO `cat_municipio` VALUES (2420, '32', '026', 'MAZAPIL', NULL, NULL, '32026');
INSERT INTO `cat_municipio` VALUES (2421, '32', '027', 'MELCHOR OCAMPO', NULL, NULL, '32027');
INSERT INTO `cat_municipio` VALUES (2422, '32', '028', 'MEZQUITAL DEL ORO', NULL, NULL, '32028');
INSERT INTO `cat_municipio` VALUES (2423, '32', '029', 'MIGUEL AUZA', NULL, NULL, '32029');
INSERT INTO `cat_municipio` VALUES (2424, '32', '030', 'MOMAX', NULL, NULL, '32030');
INSERT INTO `cat_municipio` VALUES (2425, '32', '031', 'MONTE ESCOBEDO', NULL, NULL, '32031');
INSERT INTO `cat_municipio` VALUES (2426, '32', '032', 'MORELOS', NULL, NULL, '32032');
INSERT INTO `cat_municipio` VALUES (2427, '32', '033', 'MOYAHUA DE ESTRADA', NULL, NULL, '32033');
INSERT INTO `cat_municipio` VALUES (2428, '32', '034', 'NOCHISTLÁN DE MEJÍA', NULL, NULL, '32034');
INSERT INTO `cat_municipio` VALUES (2429, '32', '035', 'NORIA DE ÁNGELES', NULL, NULL, '32035');
INSERT INTO `cat_municipio` VALUES (2430, '32', '036', 'OJOCALIENTE', NULL, NULL, '32036');
INSERT INTO `cat_municipio` VALUES (2431, '32', '037', 'PÁNUCO', NULL, NULL, '32037');
INSERT INTO `cat_municipio` VALUES (2432, '32', '038', 'PINOS', NULL, NULL, '32038');
INSERT INTO `cat_municipio` VALUES (2433, '32', '039', 'RÍO GRANDE', NULL, NULL, '32039');
INSERT INTO `cat_municipio` VALUES (2434, '32', '040', 'SAIN ALTO', NULL, NULL, '32040');
INSERT INTO `cat_municipio` VALUES (2435, '32', '041', 'EL SALVADOR', NULL, NULL, '32041');
INSERT INTO `cat_municipio` VALUES (2436, '32', '042', 'SOMBRERETE', NULL, NULL, '32042');
INSERT INTO `cat_municipio` VALUES (2437, '32', '043', 'SUSTICACÁN', NULL, NULL, '32043');
INSERT INTO `cat_municipio` VALUES (2438, '32', '044', 'TABASCO', NULL, NULL, '32044');
INSERT INTO `cat_municipio` VALUES (2439, '32', '045', 'TEPECHITLÁN', NULL, NULL, '32045');
INSERT INTO `cat_municipio` VALUES (2440, '32', '046', 'TEPETONGO', NULL, NULL, '32046');
INSERT INTO `cat_municipio` VALUES (2441, '32', '047', 'TEÚL DE GONZÁLEZ ORTEGA', NULL, NULL, '32047');
INSERT INTO `cat_municipio` VALUES (2442, '32', '048', 'TLALTENANGO DE SÁNCHEZ ROMÁN', NULL, NULL, '32048');
INSERT INTO `cat_municipio` VALUES (2443, '32', '049', 'VALPARAÍSO', NULL, NULL, '32049');
INSERT INTO `cat_municipio` VALUES (2444, '32', '050', 'VETAGRANDE', NULL, NULL, '32050');
INSERT INTO `cat_municipio` VALUES (2445, '32', '051', 'VILLA DE COS', NULL, NULL, '32051');
INSERT INTO `cat_municipio` VALUES (2446, '32', '052', 'VILLA GARCÍA', NULL, NULL, '32052');
INSERT INTO `cat_municipio` VALUES (2447, '32', '053', 'VILLA GONZÁLEZ ORTEGA', NULL, NULL, '32053');
INSERT INTO `cat_municipio` VALUES (2448, '32', '054', 'VILLA HIDALGO', NULL, NULL, '32054');
INSERT INTO `cat_municipio` VALUES (2449, '32', '055', 'VILLANUEVA', NULL, NULL, '32055');
INSERT INTO `cat_municipio` VALUES (2450, '32', '056', 'ZACATECAS', NULL, NULL, '32056');
INSERT INTO `cat_municipio` VALUES (2451, '32', '057', 'TRANCOSO', NULL, NULL, '32057');
INSERT INTO `cat_municipio` VALUES (2452, '32', '058', 'SANTA MARÍA DE LA PAZ', NULL, NULL, '32058');
INSERT INTO `cat_municipio` VALUES (2453, '08', '008', 'BATOPILAS DE MANUEL GÓMEZ MORÍN', NULL, NULL, '08008');
INSERT INTO `cat_municipio` VALUES (2454, '17', '013', 'JONACATEPEC DE LEANDRO VALLE', NULL, NULL, '17013');
INSERT INTO `cat_municipio` VALUES (2455, '20', '208', 'SAN JUAN MIXTEPEC', NULL, NULL, '20208');
INSERT INTO `cat_municipio` VALUES (2456, '20', '318', 'SAN PEDRO MIXTEPEC', NULL, NULL, '20318');
INSERT INTO `cat_municipio` VALUES (2457, '23', '011', 'PUERTO MORELOS', NULL, NULL, '23011');
INSERT INTO `cat_municipio` VALUES (2458, '30', '105', 'MEDELLÍN DE BRAVO', NULL, NULL, '30105');
INSERT INTO `cat_municipio` VALUES (2459, '07', '120', 'CAPITAN LUIS ANGEL VIDAL', NULL, NULL, '07120');
INSERT INTO `cat_municipio` VALUES (2460, '07', '121', 'RINCÓN CHAMULA SAN PEDRO', NULL, NULL, '07121');
INSERT INTO `cat_municipio` VALUES (2461, '07', '122', 'EL PARRAL', NULL, NULL, '07122');
INSERT INTO `cat_municipio` VALUES (2462, '07', '123', 'EMILIANO ZAPATA', NULL, NULL, '07123');
INSERT INTO `cat_municipio` VALUES (2463, '07', '124', 'MEZCALAPA', NULL, NULL, '07124');
INSERT INTO `cat_municipio` VALUES (2464, '17', '034', 'COATETELCO', NULL, NULL, '17034');
INSERT INTO `cat_municipio` VALUES (2465, '17', '035', 'XOXOCOTLA', NULL, NULL, '17035');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num_ext` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num_int` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `entre_calles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `colonia` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estatus_general_id` int(11) NOT NULL,
  `telefono` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'MANUEL', 'condesa', '1989', '340', 'mANZA Y DURAZNO', '', 44900, '', 2, '33-1098-3942');
INSERT INTO `clientes` VALUES (14, 'MANUEL', 'FRESNO', '1989', '340', 'mANZA', '', 44900, '', 2, '33-1098-3942');
INSERT INTO `clientes` VALUES (15, 'Jose', 'FRESNO', '1989', '340', 'mANZA Y DURAZNO', '', 44900, '', 0, '33-1098-3942');

-- ----------------------------
-- Table structure for empleados
-- ----------------------------
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados`  (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `foto_emp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `tipo_sueldo_id` int(11) NOT NULL,
  `monto_sueldo` float NOT NULL,
  `estatus_general_id` int(11) NOT NULL,
  `usuario_registro_id` int(11) NOT NULL,
  `fecha_registro` datetime(0) NULL DEFAULT NULL,
  `correo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empleados
-- ----------------------------
INSERT INTO `empleados` VALUES (1, 'Matias', 'gdl', '38-4103-5089', '2000-01-04', 'b562fa8651314c23802c37fbb1c3ac88.jpg', 1, 2, 1200, 2, 0, '0000-00-00 00:00:00', 'rikmatt23@gmail.com', 2);
INSERT INTO `empleados` VALUES (5, 'Matias', 'gdl', '', '1993-04-23', '', 1, 0, 100, 0, 0, '2020-10-30 00:00:00', 'rikmatt23@gmail.com', 0);
INSERT INTO `empleados` VALUES (7, 'Jose', 'Guadalajara', '', '0000-00-00', '', 1, 1, 0, 0, 0, NULL, '', 1);

-- ----------------------------
-- Table structure for polizas
-- ----------------------------
DROP TABLE IF EXISTS `polizas`;
CREATE TABLE `polizas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(200) NOT NULL,
  `costo` float NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NULL DEFAULT NULL,
  `empleado_id` int(200) NULL DEFAULT NULL,
  `estatus_general_id` int(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of polizas
-- ----------------------------
INSERT INTO `polizas` VALUES (1, 15, 800, '2020-11-01', '2020-11-04', 1, 2);
INSERT INTO `polizas` VALUES (2, 1, 0, '0000-00-00', '0000-00-00', 1, 0);

-- ----------------------------
-- Table structure for tecnicos
-- ----------------------------
DROP TABLE IF EXISTS `tecnicos`;
CREATE TABLE `tecnicos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(200) NOT NULL,
  `limite_credito` float NOT NULL,
  `estatus_general_id` int(100) NOT NULL,
  `session_estatus` int(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tecnicos
-- ----------------------------
INSERT INTO `tecnicos` VALUES (1, 1, 5000, 2, 1);
INSERT INTO `tecnicos` VALUES (3, 7, 2500, 0, 0);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(200) NOT NULL,
  `usuario` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contraseña` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hora_entrada` int(100) NOT NULL,
  `hora_salida` int(200) NOT NULL,
  `estatus_general_id` int(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------

-- ----------------------------
-- View structure for vw_empleados
-- ----------------------------
DROP VIEW IF EXISTS `vw_empleados`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_empleados` AS SELECT
	emp.id,
	emp.nombre,
	emp.direccion,
	emp.tel,
	emp.fecha_nacimiento,
	emp.foto_emp,
	cper.nombre AS perfil,
	csuel.nombre AS tipo_sueldo,
	emp.monto_sueldo,
	cestatus.nombre AS estatus,
	emp.correo,
	cestados.nombre AS estado
FROM
	empleados emp
	LEFT JOIN c_perfiles cper ON emp.perfil_id = cper.id
	LEFT JOIN c_sueldos csuel ON emp.tipo_sueldo_id = csuel.id
	LEFT JOIN c_estatus_general cestatus ON emp.estatus_general_id = cestatus.id 
	LEFT JOIN c_estados cestados ON emp.estado_id = cestados.id ;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Matias', 'gdl', '38-4103-5089', '2000-01-04', 'b562fa8651314c23802c37fbb1c3ac88.jpg', 'Administrador', 'Comisión', 1200, NULL, 'rikmatt23@gmail.com', 'BAJA CALIFORNIA');
INSERT INTO `usuarios` VALUES (5, 'Matias', 'gdl', '', '1993-04-23', '', 'Administrador', NULL, 100, NULL, 'rikmatt23@gmail.com', NULL);
INSERT INTO `usuarios` VALUES (7, 'Jose', 'Guadalajara', '', '0000-00-00', '', 'Administrador', 'Sueldo Fijo', 0, NULL, '', 'AGUASCALIENTES');

-- ----------------------------
-- View structure for vw_polizas
-- ----------------------------
DROP VIEW IF EXISTS `vw_polizas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_polizas` AS SELECT
	pol.id,
	cln.nombre AS cliente_nom,
	pol.costo,
	pol.fecha_inicio,
	pol.fecha_fin,
	emp.nombre AS emp_nom,
	cestatus.nombre AS statu
FROM
	polizas pol
	LEFT JOIN clientes cln ON pol.cliente_id = cln.id
	LEFT JOIN empleados emp ON pol.empleado_id = emp.id
	LEFT JOIN c_estatus_general cestatus ON pol.estatus_general_id = cestatus.id ;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Jose', 800, '2020-11-01', '2020-11-04', 'Matias', NULL);
INSERT INTO `usuarios` VALUES (2, 'MANUEL', 0, '0000-00-00', '0000-00-00', 'Matias', NULL);

-- ----------------------------
-- View structure for vw_tecnicos
-- ----------------------------
DROP VIEW IF EXISTS `vw_tecnicos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_tecnicos` AS SELECT
	emp.id,
	emp.nombre,
	emp.direccion,
	emp.tel,
	emp.fecha_nacimiento,
	emp.foto_emp,
	cper.nombre AS perfil,
	csuel.nombre AS tipo_sueldo,
	emp.monto_sueldo,
	cestatus.nombre AS estatus,
	emp.correo,
	cestados.nombre AS estado,
	tec.limite_credito,
	tec.estatus_general_id,
	tec.id AS tecnico_id
  
FROM
	empleados emp
	LEFT JOIN c_perfiles cper ON emp.perfil_id = cper.id
	LEFT JOIN c_sueldos csuel ON emp.tipo_sueldo_id = csuel.id
	LEFT JOIN c_estatus_general cestatus ON emp.estatus_general_id = cestatus.id 
	LEFT JOIN c_estados cestados ON emp.estado_id = cestados.id
  JOIN tecnicos tec ON tec.empleado_id = emp.id ;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Matias', 'gdl', '38-4103-5089', '2000-01-04', 'b562fa8651314c23802c37fbb1c3ac88.jpg', 'Administrador', 'Comisión', 1200, NULL, 'rikmatt23@gmail.com', 'BAJA CALIFORNIA', 5000, 2, 1);
INSERT INTO `usuarios` VALUES (7, 'Jose', 'Guadalajara', '', '0000-00-00', '', 'Administrador', 'Sueldo Fijo', 0, NULL, '', 'AGUASCALIENTES', 2500, 0, 3);

SET FOREIGN_KEY_CHECKS = 1;