/*
Navicat MySQL Data Transfer

Source Server         : suaer
Source Server Version : 50540
Source Host           : 188.165.178.240:3306
Source Database       : player

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-02-23 16:14:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item_shop_buy
-- ----------------------------
DROP TABLE IF EXISTS `item_shop_buy`;
CREATE TABLE `item_shop_buy` (
  `id` int(99) NOT NULL,
  `name` varchar(32) NOT NULL,
  `prices` int(32) NOT NULL,
  `descript` varchar(150) NOT NULL,
  `img` varchar(99) NOT NULL,
  `classid` int(99) NOT NULL,
  `descuento` int(99) DEFAULT NULL,
  `count` int(99) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_shop_buy
-- ----------------------------
INSERT INTO `item_shop_buy` VALUES ('14209', 'Brazalete Lagr. Cielo +9', '120', '', 'images/items/0ac6a83c3df9295fb86365bb53248895.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('16209', 'Collar Lagr. de Cielo +9', '120', '', 'images/items/2f0d49c5f26648c04c06ac344c1f63f2.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('11973', 'Armadura Zin-Hwang', '300', 'Defensa 550, ideal para levear.', 'images/items/620ba10d6a9d8d9980f5dd7c71f60cad.png', '2', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('11974', 'Armadura Sang-Hwang', '300', 'Defensa 550, ideal para levear.', 'images/items/9ad36fcb05e6a7ed55293d4f9d10aa30.png', '2', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('13069', 'Escudo Halcón +9', '60', '', 'images/items/385c9694ff49dee0ade67dd6cc60e5f0.png', '36', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('11972', 'Armadura Roja Hwang', '300', 'Defensa 550, ideal para levear.', 'images/items/e6ac93f4c3f29bd2cac6a0e59ae2a8d9.png', '2', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('11971', 'Armadura Hwang', '300', 'Defensa 550, ideal para levear.', 'images/items/11971.png', '2', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('15209', 'Zapatos de Fénix +9', '120', '', 'images/items/7a1ac9c8f9280ce4c606a37e17ae1ac2.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('13089', 'Escudo Tigre +9', '60', '', 'images/items/dfdc0df0e9d9a555859bcf5056e7dc8d.png', '36', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('13109', 'Escudo Límite León +9', '60', '', 'images/items/d7868852d3989512c134bdc65f604466.png', '36', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('13129', 'Escudo Escama Dragón +9', '60', '', 'images/items/2e3ca49612e2d4e3cc1fe9c23e7957bc.png', '36', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('71020', 'Bendición del Dragón', '85', 'Una bendición con la cual tu HP y SP serán recuperados al 100% instantáneamente. 200 uds.', 'images/items/e719b7c391a6a38331cd7921a493254e.png', '32', '10', '200');
INSERT INTO `item_shop_buy` VALUES ('71002', 'Reseteo de Atributos', '100', 'La aplicación de este objeto hace posible que redistribuyas tus atributos, por lo que puedes desarrollar tu personaje de otra manera.', 'images/items/879c28c67ff4425009448c4cf8d81a32.png', '4', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('18039', 'Cinto de sabiduría', '150', 'Des de el nivel: 1  40% Probabilidad de bonus EXP.', 'images/items/10eb23cfb27b03336c58c2f115a14e0a.png', '30', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('18029', 'Cinto elegante', '80', 'Desde el nivel: 60 25% Probabilidad de obtener el doble de Yang.', 'images/items/8c61e803a34770e80dc1e1f3e75dc6d6.png', '30', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('18049', 'Cinto real', '200', 'Desde el nivel: 75 Opción de defensa contra ataques Guerrero : 5%', 'images/items/bd1f2810711c729c8818fa1cdea5bf3b.png', '30', '20', '1');
INSERT INTO `item_shop_buy` VALUES ('11299', 'Arm. de Acero Negro +9', '135', '\r\n<br>Desde el nivel: 70<br>\r\n\r\n<br>Defensa 144<br>\r\n\r\n<br>Veloc.Movim. -6%<br>\r\n\r\n<br>Resistencia de Magia 20%<br>\r\n\r\n<br>[Equipable]<br>\r\n\r\n<br> Gue', 'images/items/b2248345da1b9b3256ae0239cfa1a95c.png', '2', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('12019', 'Armadura Acero Azul +9', '300', 'Desde el nivel: 90 \r\nDefensa:  244\r\nResistencia de magia 20%\r\nRegeneración de HP +40%', 'images/items/b0aa868239972b489bcbbb47926d2adf.png', '31', '0', '1');
INSERT INTO `item_shop_buy` VALUES ('12029', 'Traje Azúl de Dragón +9', '300', 'Desde el nivel: 90 \r\nDefensa:  244\r\nResistencia de magia 20%\r\nRegeneración de HP +40%', 'images/items/7c52899543e2661155325ac8928acb6a.png', '31', '0', '1');
INSERT INTO `item_shop_buy` VALUES ('12039', 'Coraza del Aura +9', '300', 'Desde el nivel: 90 \r\nDefensa:  244\r\nResistencia de magia 20%\r\nRegeneración de HP +40%', 'images/items/1076ed037b8e00e026a23c051c80fa26.png', '31', '0', '1');
INSERT INTO `item_shop_buy` VALUES ('15419', 'Zapatos de Qilin +9', '270', 'Desde el nivel: 75 \r\nDefensa:  10\r\nVeloc. Movim. 25%\r\nProbabilidad de bloquear un ataque cuerpo a cuerpo 20%', 'images/items/99a83091c9c175f320ecfa92143695b5.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('71052', 'Objeto encantado', '8', 'Cambios de bonus 6 & 7 ', 'images/items/366be184838eb9f37f9542c1aab6d6a8.png', '4', '20', '1');
INSERT INTO `item_shop_buy` VALUES ('71107', 'Fruta de la Vida', '10', 'Fruta de la vida, aumenta tus puntos de rank en 2000.', 'images/items/1db0111716e65e8196d9d1e0f82094fa.png', '32', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('71153', 'Botella de EXP', '25', 'Botella de EXP, con esta esta botella obtendras un 100% mas de EXP durante 1 hora,  Articulo no comerciable.', 'images/items/9071feedb88b5c0aee4a0504b63ce82d.png', '33', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('50512', 'Piedra Arco Iris', '110', 'Con esta piedra tienes la opción de subir una magia  de G a P directamente, 1 por cada habilidad.', 'images/items/48427e577986542544f54edef3c651d0.png', '34', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('27994', 'Perla Roja', '75', '10 x Perlas rojas.', 'images/items/5997fc20211b0a311821b52950070ad2.png', '35', '0', '10');
INSERT INTO `item_shop_buy` VALUES ('41030', 'Luchadora Desierto (15 Dias)', '45', 'Luchadora del desierto,  si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras, Articulo no comerciable. ', 'images/items/38ae990e3865702bb28c69275a3bb4f1.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('41129', 'Disfraz de mosquetero (15 Dias)', '45', 'Disfraz de mosquetero, si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras, Articulo no comerciable. ', 'images/items/36f726d4117c39470db741f55f2fb3e7.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('41029', 'Luchador Desierto (15Dias)', '45', 'Luchador del desierto, si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras,  Articulo no comerciable.', 'images/items/6cb6d2c35ecfd7e37cffcb2d43d3b752.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('41130', 'Uniforme de criada (15 Dias)', '45', 'Uniforme de criada, si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras, Articulo no comerciable. ', 'images/items/4a858f8b3e568f471f44a00945d3d833.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('41135', 'Esmoquin de calabaza (15 Dias)', '45', 'Esmoquin de calabaza , si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras, Articulo no comerciable. ', 'images/items/c3be41e8a0a9bbcc1b3c8bed47ecea7d.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('41136', 'Vestido de Calabaza (15 Dias)', '45', 'Vestido de Calabaza, si tienes suerte puedes obtener hasta 4 bonus al extraerlo del almacen de compras, Articulo no comerciable. ', 'images/items/e0710bde62795b9914fef0bca2494634.png', '7', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('12049', 'Ropaje del Dragón +9', '300', 'Desde el nivel: 90 Defensa: 244 Resistencia de magia 20% Regeneración de HP +40% ', 'images/items/93617bacee577008ecebd38e19470fbc.png', '31', '0', '1');
INSERT INTO `item_shop_buy` VALUES ('17109', 'Pendientes de Ébano +9', '120', '', 'images/items/ebedb82ae4093b1831477092362b2c46.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('17169', 'Pendientes de Cristal +9', '120', '', 'images/items/16474a8060bcf9da508edb7c8d8a2a97.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('17209', 'Pendientes Lagrima cielo +9', '120', '', 'images/items/1095688942014d8528823d454c1b0422.png', '3', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('80007', 'Lingotes de Oro 780.000.000 Yang', '180', 'Los puedes vender en cual quier tienda, recibiras a cambio 780kk. (No dar click derecho encima).', 'images/items/17388720472905863d4c734ee607add7.png', '37', '10', '200');
INSERT INTO `item_shop_buy` VALUES ('50002', 'Anillo de Oro', '110', 'Material necesario para evolucionar armas Lv.90.', 'images/items/70b7216511a97bc63d7ab63469c10922.png', '38', '20', '1');
INSERT INTO `item_shop_buy` VALUES ('52026', 'Lobo Valeroso (30 Dias)', '85', 'Lobo valeroso, montado en el obtienes un 5% de fuerza contra monstruos.', 'images/items/6f528f0cbfecc3945e38ac9a1df9bfff.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52029', 'Lobo Valeroso (30 Dias)', '85', 'Lobo valeroso, montado en el obtienes + 150 de defensa.', 'images/items/3bb7d58989e5cdad1f7ba28381f1e806.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52044', 'Léon Valeroso (30 Dias)', '85', 'Léon valeroso, montado en el obtienes + 150 de defensa.', 'images/items/add294cb103c74b72c08086dd1b72749.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52041', 'Léon Valeroso (30 Dias)', '85', 'Léon valeroso,  montado en el obtienes un 5% de fuerza contra monstruos. ', 'images/items/0a1a710105bf6de1b4976982dbeb325d.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52059', 'Tigre Valeroso (30 Dias)', '85', ' Tigre valeroso, montado en el obtienes + 150 de defensa. ', 'images/items/1a9eec704ac44d18e24e4e06eb59deb8.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52060', 'Tigre Valeroso (30 Dias)', '85', 'Tigre Valeroso, montado en el aumenta el valor de ataque en 100.', 'images/items/b5d24f8439c84ea9116a79acba9e16e3.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52074', 'Reno Valeroso (30 Dias)', '85', 'Reno valeroso, montado en el obtienes + 150 de defensa. ', 'images/items/dd8f46c1da7aa174b793ef3f3b19c107.png', '5', '10', '1');
INSERT INTO `item_shop_buy` VALUES ('52071', 'Reno Valeroso (30 Dias)', '85', 'Reno valeroso, montado en el obtienes un 5% de fuerza contra monstruos. ', 'images/items/25847333af72c5b2a0c8173bfa901c3d.png', '5', '10', '1');
