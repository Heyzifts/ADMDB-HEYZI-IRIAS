/*
 Navicat Premium Data Transfer

 Source Server         : Home
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : universidad

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 22/01/2023 21:11:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detallesordenes
-- ----------------------------
DROP TABLE IF EXISTS `detallesordenes`;
CREATE TABLE `detallesordenes`  (
  `idDetalle` bigint(255) NOT NULL AUTO_INCREMENT,
  `idHorario` bigint(255) NULL DEFAULT NULL,
  `dia` int(255) NULL DEFAULT NULL COMMENT '1= Laborable 2= Sabado 3 = Domingo/Feriado',
  `idPeriodo` bigint(255) NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for horariosatencion
-- ----------------------------
DROP TABLE IF EXISTS `horariosatencion`;
CREATE TABLE `horariosatencion`  (
  `idHorario` bigint(255) NOT NULL AUTO_INCREMENT,
  `horaInicio` int(6) NULL DEFAULT NULL,
  `horaFinal` int(6) NULL DEFAULT NULL,
  PRIMARY KEY (`idHorario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for periodosasignados
-- ----------------------------
DROP TABLE IF EXISTS `periodosasignados`;
CREATE TABLE `periodosasignados`  (
  `idPeriodo` bigint(255) NOT NULL AUTO_INCREMENT,
  `nombrePeriodo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
