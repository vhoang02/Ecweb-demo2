/*
 Navicat Premium Data Transfer

 Source Server         : VietHoang
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : qlbh

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 03/12/2022 08:18:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `CatID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `CatName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CatID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Áo thun');
INSERT INTO `categories` VALUES (2, 'Áo khoác');
INSERT INTO `categories` VALUES (3, 'Quần short');
INSERT INTO `categories` VALUES (4, 'Quần dài');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ProID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Price` bigint NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `OrderID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderDate` datetime NOT NULL,
  `UserID` int NOT NULL,
  `Total` bigint NOT NULL,
  PRIMARY KEY (`OrderID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `ProID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TinyDes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FullDes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Price` int NOT NULL,
  `CatID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ProID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (2, 'LEVENTS® DREAM COME TRUE TEE/ BLACK', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: Lì ven Original  –  bề mặt vải không đổ lông mang cảm giác thoáng mát\r\n', 390000, 1, 100, 'https://levents.asia/wp-content/uploads/2022/10/z3835473026607_ea8f916ab31db14a9af0853254cdb4ad-2048x2048.jpg');
INSERT INTO `products` VALUES (3, 'LEVENTS® DREAM COME TRUE TEE/ BLUE', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: Lì ven Original  –  bề mặt vải không đổ lông mang cảm giác thoáng mát\r\n', 390000, 1, 86, 'https://levents.asia/wp-content/uploads/2022/10/z3835473206215_dffc0bad68604f08c5b0456d1aa4f91e-2048x2048.jpg');
INSERT INTO `products` VALUES (4, 'LEVENTS® DREAM COME TRUE TEE/ WHITE', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: Lì ven Original  –  bề mặt vải không đổ lông mang cảm giác thoáng mát\r\n', 390000, 1, 63, 'https://levents.asia/wp-content/uploads/2022/10/z3835472846956_84cf2ab834af9b7ddc280a8bc939d703-2048x2048.jpg');
INSERT INTO `products` VALUES (5, 'LEVENTS® SELFLOVE BOXY TEE/ BLACK', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: LÌ VEN ORIGINAL (In dập nổi, form crop)\r\n', 380000, 1, 0, 'https://levents.asia/wp-content/uploads/2022/10/z3870358644447_1d616eafca829a198b851f77f0d7b8a8-2048x2048.jpg');
INSERT INTO `products` VALUES (6, 'LEVENTS® FUNNY CROCODILE TEE/ BLUE', 'Sản phẩm thuộc bộ sưu tập Spring/ Summer 2022', 'MATERIAL: LÌ VEN ORIGINAL – Phiên bản bề mặt vải không đổ lông mang cảm giác thoáng mát', 180000, 1, 62, 'https://levents.asia/wp-content/uploads/2022/06/CA-XAU-TEE-BB1-scaled.jpg');
INSERT INTO `products` VALUES (7, 'LEVENTS® | DORAEMON COLLAB HOODIE/ BLACK', 'Sản phẩm thuộc Special Collection “Make everything popular” DORAEMON | LEVENTS®', 'MATERIAL: LÌ VEN FABRIC –  Phiên bản với chất vải dày dặn, mềm mịn, không bị nhăn.', 625000, 2, 15, 'https://levents.asia/wp-content/uploads/2022/08/z3745139219857_cdbff81efacac75a43301cdffa032de7-2048x2048.jpg');
INSERT INTO `products` VALUES (13, 'LEVENTS® | DORAEMON COLLAB HOODIE/ CREAM', 'Sản phẩm thuộc Special Collection “Make everything popular” DORAEMON | LEVENTS®', 'MATERIAL: LÌ VEN FABRIC –  Phiên bản với chất vải dày dặn, mềm mịn, không bị nhăn.\r\n', 625000, 2, 92, 'https://levents.asia/wp-content/uploads/2022/08/z3745138995010_7d8e8374e7f70477b31759b8f953b87e-999x999.jpg');
INSERT INTO `products` VALUES (14, 'LEVENTS® PUNCH VARSITY BLACK/ RED', 'LEVENTS® | DORAEMON COLLAB ZIPPER HOODIE', 'Sản phẩm thuộc Special Collection “Make everything popular” DORAEMON | LEVENTS®', 1200000, 2, 50, 'https://levents.asia/wp-content/uploads/2022/09/z3791737582412_5c29ef311438918491748f91b52455dc-999x999.jpg');
INSERT INTO `products` VALUES (15, 'LEVENTS® PUNCH VARSITY BLACK/ RED', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: NỈ DẠ', 1925000, 2, 22, 'https://levents.asia/wp-content/uploads/2022/10/z3835473589564_b78c19d7de3deefb60fd2c0b333a46a6_4fd1604a95d642dfa13b757bf46bce34.jpg');
INSERT INTO `products` VALUES (16, 'LEVENTS® CRAYON JEANS/ BLACK', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: JEANS\r\n', 590000, 4, 81, 'https://levents.asia/wp-content/uploads/2022/09/z3734003607494_66150ebfd9ddc4da64ef6e2d908a84e8-1-2048x2048.jpg');
INSERT INTO `products` VALUES (17, 'LEVENTS® CRAYON JEANS/ BLUE', 'Sản phẩm thuộc Collection Fall/Winter 2022', 'MATERIAL: JEANS', 590000, 4, 33, 'https://levents.asia/wp-content/uploads/2022/09/z3734003837021_096e3d52a49bfae4b5d023cd25580ece-2048x2048.jpg');
INSERT INTO `products` VALUES (18, 'LEVENTS® SPACE STRAIGHT PANTS/ CREAM', 'Sản phẩm thuộc bộ sưu tập Spring/ Summer 2021', 'MATERIAL: Parachute (Dù)', 450000, 4, 10, 'https://levents.asia/wp-content/uploads/2022/06/PANT-DU-C1-scaled.jpg');
INSERT INTO `products` VALUES (19, 'LEVENTS® PLAY LOGO SHORTPANT/ BLACK', 'Sản phẩm thuộc bộ sưu tập Spring/ Summer 2022', 'MATERIAL: LÌ VEN FABRIC – Phiên bản chất vải dày dặn, mềm mịn, không bị nhăn.', 390000, 3, 17, 'https://levents.asia/wp-content/uploads/2022/08/z3583815365320_eca261484d84dfab8c817ed34744fa6d-2048x2048.jpg');
INSERT INTO `products` VALUES (20, 'LEVENTS® PLAY LOGO SHORTPANT/ CREAM', 'Sản phẩm thuộc bộ sưu tập Spring/ Summer 2022', 'MATERIAL: LÌ VEN FABRIC – Phiên bản chất vải dày dặn, mềm mịn, không bị nhăn.', 390000, 3, 10, 'https://levents.asia/wp-content/uploads/2022/08/z3583815558466_38ac2594aa5702b5fbc96d2f2cba8faf-2048x2048.jpg');
INSERT INTO `products` VALUES (21, 'LEVENTS® PLAY LOGO SHORTPANT/ GREEN', 'Sản phẩm thuộc bộ sưu tập Spring/ Summer 2022', 'MATERIAL: LÌ VEN FABRIC – Phiên bản chất vải dày dặn, mềm mịn, không bị nhăn.', 390000, 3, 74, 'https://levents.asia/wp-content/uploads/2022/08/z3583815840434_5fa457be268ebef88335a57ce589c613-2048x2048.jpg');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isAdmin` int NULL DEFAULT 0,
  `isSell` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 1, 0);
INSERT INTO `users` VALUES (2, 'viethoang', 'viethoang', 0, 1);
INSERT INTO `users` VALUES (3, 'abc', '123', 0, 0);
INSERT INTO `users` VALUES (4, 'hoang', '123', 0, 0);
INSERT INTO `users` VALUES (5, 'vhoang', '123', 0, 0);
INSERT INTO `users` VALUES (6, 'hihi', '123', 0, 0);
INSERT INTO `users` VALUES (9, NULL, NULL, 0, 0);
INSERT INTO `users` VALUES (10, 'gianguyen', '123', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
