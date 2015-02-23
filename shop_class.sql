/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : player

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-02-23 16:27:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_class
-- ----------------------------
DROP TABLE IF EXISTS `shop_class`;
CREATE TABLE `shop_class` (
  `classid` int(11) NOT NULL auto_increment,
  `classname` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=big5;

-- ----------------------------
-- Records of shop_class
-- ----------------------------
INSERT INTO `shop_class` VALUES ('1', 'Armas');
INSERT INTO `shop_class` VALUES ('2', 'Armaduras');
INSERT INTO `shop_class` VALUES ('3', 'Accesorios');
INSERT INTO `shop_class` VALUES ('4', 'Refinamiento');
INSERT INTO `shop_class` VALUES ('5', 'Monturas');
INSERT INTO `shop_class` VALUES ('6', 'Mascotas');
INSERT INTO `shop_class` VALUES ('7', 'Atuendos con Bonus');
INSERT INTO `shop_class` VALUES ('30', 'Systema Cinturones ');
INSERT INTO `shop_class` VALUES ('31', 'Armaduras Epicas');
INSERT INTO `shop_class` VALUES ('32', 'Pociones');
INSERT INTO `shop_class` VALUES ('33', 'Anillos de EXP');
INSERT INTO `shop_class` VALUES ('34', 'Piedra Arco Iris');
INSERT INTO `shop_class` VALUES ('35', 'Perlas');
INSERT INTO `shop_class` VALUES ('36', 'Escudos');
