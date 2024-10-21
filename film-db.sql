/*
 Navicat Premium Dump SQL

 Source Server         : FILM
 Source Server Type    : MySQL
 Source Server Version : 100209 (10.2.9-MariaDB-10.2.9+maria~jessie)
 Source Host           : localhost:3306
 Source Schema         : film-db

 Target Server Type    : MySQL
 Target Server Version : 100209 (10.2.9-MariaDB-10.2.9+maria~jessie)
 File Encoding         : 65001

 Date: 20/10/2024 22:01:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actors
-- ----------------------------
DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID diễn viên (khóa chính)',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên diễn viên',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actors
-- ----------------------------
INSERT INTO `actors` VALUES (3, 'Chris Evans', '2024-10-20 20:46:56', '2024-10-20 20:46:56');
INSERT INTO `actors` VALUES (4, 'Scarlett Johansson', '2024-10-20 20:46:56', '2024-10-20 20:46:56');
INSERT INTO `actors` VALUES (5, 'Song Joong-ki', '2024-10-20 20:46:56', '2024-10-20 20:46:56');
INSERT INTO `actors` VALUES (6, 'Brad Pitt', '2024-10-20 20:46:56', '2024-10-20 20:46:56');
INSERT INTO `actors` VALUES (10, 'Leonardo 111', '2024-10-20 20:46:56', '2024-10-20 20:46:56');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID quốc gia (khóa chính)',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên quốc gia',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (14, 'Nhật Bản', '2024-10-20 21:19:12', '2024-10-20 21:19:12');
INSERT INTO `countries` VALUES (15, 'Trung Quốc', '2024-10-20 21:19:48', '2024-10-20 21:19:48');
INSERT INTO `countries` VALUES (16, 'Indonesia', '2024-10-20 21:19:48', '2024-10-20 21:19:48');
INSERT INTO `countries` VALUES (17, 'Việt Nam', '2024-10-20 21:19:49', '2024-10-20 21:19:49');
INSERT INTO `countries` VALUES (18, 'Thái Lan', '2024-10-20 21:19:51', '2024-10-20 21:19:51');
INSERT INTO `countries` VALUES (19, 'Âu Mỹ', '2024-10-20 21:19:59', '2024-10-20 21:19:59');
INSERT INTO `countries` VALUES (20, 'Hàn Quốc', '2024-10-20 21:53:25', '2024-10-20 21:53:25');
INSERT INTO `countries` VALUES (21, 'Đức', '2024-10-20 21:53:30', '2024-10-20 21:53:30');
INSERT INTO `countries` VALUES (22, 'Trung Quốc', '2024-10-20 21:53:30', '2024-10-20 21:53:30');
INSERT INTO `countries` VALUES (23, 'Hàn Quốc', '2024-10-20 21:53:31', '2024-10-20 21:53:31');

-- ----------------------------
-- Table structure for episodes
-- ----------------------------
DROP TABLE IF EXISTS `episodes`;
CREATE TABLE `episodes`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID tập phim (khóa chính)',
  `film_id` int NULL DEFAULT NULL COMMENT 'ID phim (liên kết với bảng films)',
  `episode_number` int NULL DEFAULT NULL COMMENT 'Số tập',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `episode_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Tên tập phim (nếu có)',
  `episode_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'URL dẫn tới tập phim',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1570 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of episodes
-- ----------------------------
INSERT INTO `episodes` VALUES (1366, 100, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/fFCq2KWM/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1367, 100, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/OFOXNja5/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1368, 100, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/Lju01bdL/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1369, 100, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/XMM920iu/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1370, 100, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/y9vdD8vP/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1371, 100, NULL, 'tap-06', 'Tập 06', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/nwR6Qv8p/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1372, 100, NULL, 'tap-07', 'Tập 07', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/5SGKUhIg/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1373, 100, NULL, 'tap-08', 'Tập 08', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/GkorlKVP/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1374, 100, NULL, 'tap-09', 'Tập 09', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/CZF54Nex/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1375, 100, NULL, 'tap-10', 'Tập 10', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/MW2nX824/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1376, 100, NULL, 'tap-11', 'Tập 11', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/QYFdgIoc/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1377, 100, NULL, 'tap-12', 'Tập 12', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/lFfJEIE2/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1378, 100, NULL, 'tap-13', 'Tập 13', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241018/9byKBjy9/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1379, 100, NULL, 'tap-14', 'Tập 14', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/yWE5DcVJ/index.m3u8', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `episodes` VALUES (1380, 101, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241019/leqnD1tM/index.m3u8', '2024-10-20 22:00:31', '2024-10-20 22:00:31');
INSERT INTO `episodes` VALUES (1381, 101, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/qEX8tmNi/index.m3u8', '2024-10-20 22:00:31', '2024-10-20 22:00:31');
INSERT INTO `episodes` VALUES (1382, 102, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/yuVKtOTc/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1383, 102, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/VEGx2dWE/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1384, 102, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/8oxDGJki/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1385, 102, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/Ngt9M0nD/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1386, 102, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/Kbe6Ge6S/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1387, 102, NULL, 'tap-06', 'Tập 06', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/7ki90V3u/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1388, 102, NULL, 'tap-07', 'Tập 07', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/wKMAMSBs/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1389, 102, NULL, 'tap-08', 'Tập 08', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/boJ0ZFZW/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1390, 102, NULL, 'tap-09', 'Tập 09', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/8rIwiL1u/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1391, 102, NULL, 'tap-10', 'Tập 10', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/d8nctgnJ/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1392, 102, NULL, 'tap-11', 'Tập 11', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/MRykGNrG/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1393, 102, NULL, 'tap-12', 'Tập 12', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/hmQqrMF8/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1394, 102, NULL, 'tap-13', 'Tập 13', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/ygc9wkDW/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1395, 102, NULL, 'tap-14', 'Tập 14', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241005/mUFdDWxw/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1396, 102, NULL, 'tap-15', 'Tập 15', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241005/XBSc3EHi/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1397, 102, NULL, 'tap-16', 'Tập 16', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241008/CAyr1G8K/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1398, 102, NULL, 'tap-17', 'Tập 17', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241008/myNmV08U/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1399, 102, NULL, 'tap-18', 'Tập 18', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/V8EusHLQ/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1400, 102, NULL, 'tap-19', 'Tập 19', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/YZNHCQAr/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1401, 102, NULL, 'tap-20', 'Tập 20', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/AiRLaLDA/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1402, 102, NULL, 'tap-21', 'Tập 21', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/2Kblncnc/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1403, 102, NULL, 'tap-22', 'Tập 22', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/gyfOjxQ5/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1404, 102, NULL, 'tap-23', 'Tập 23', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/OK0qdsLD/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1405, 102, NULL, 'tap-24', 'Tập 24', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241018/lwURNQa0/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1406, 102, NULL, 'tap-25', 'Tập 25', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/X1PfHfVL/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1407, 103, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241012/ycfq4dU2/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1408, 103, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/mWG0zbzB/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1409, 103, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/g3U8xrDl/index.m3u8', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `episodes` VALUES (1410, 104, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/eXT6WKMR/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1411, 104, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/MkDRKG0X/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1412, 104, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/n0AX8Ov1/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1413, 104, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/3DegjT1L/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1414, 104, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/CLWpDcXf/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1415, 104, NULL, 'tap-06', 'Tập 06', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/yBdX9rzG/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1416, 104, NULL, 'tap-07', 'Tập 07', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/4N4rfiT2/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1417, 104, NULL, 'tap-08', 'Tập 08', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/STqRKMeA/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1418, 104, NULL, 'tap-09', 'Tập 09', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/ul1houuL/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1419, 104, NULL, 'tap-10', 'Tập 10', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/KVDyXh3Z/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1420, 104, NULL, 'tap-11', 'Tập 11', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/datXqXKG/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1421, 104, NULL, 'tap-12', 'Tập 12', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/JNvNodBh/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1422, 104, NULL, 'tap-13', 'Tập 13', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/RNylgAKd/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1423, 104, NULL, 'tap-14', 'Tập 14', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/mOmGi962/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1424, 104, NULL, 'tap-15', 'Tập 15', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/qckNFBBl/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1425, 104, NULL, 'tap-16', 'Tập 16', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/oaqP0g2c/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1426, 104, NULL, 'tap-17', 'Tập 17', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/XuGzx129/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1427, 104, NULL, 'tap-18', 'Tập 18', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/Z22Gg8K0/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1428, 104, NULL, 'tap-19', 'Tập 19', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/dAsGXvuY/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1429, 104, NULL, 'tap-20', 'Tập 20', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/fRj50PGQ/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1430, 104, NULL, 'tap-21', 'Tập 21', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/rDl1qC0a/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1431, 104, NULL, 'tap-22', 'Tập 22', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/rvpwPEVp/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1432, 104, NULL, 'tap-23', 'Tập 23', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/0ddUEnbI/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1433, 104, NULL, 'tap-24', 'Tập 24', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/PhjHKL8T/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1434, 104, NULL, 'tap-25', 'Tập 25', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/94hpveXW/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1435, 104, NULL, 'tap-26', 'Tập 26', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/uMOMquYf/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1436, 104, NULL, 'tap-27', 'Tập 27', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/Aha3E9eT/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1437, 104, NULL, 'tap-28', 'Tập 28', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/HWG0zDs1/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1438, 104, NULL, 'tap-29', 'Tập 29', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/ioQDYpdC/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1439, 104, NULL, 'tap-30', 'Tập 30', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/kcob1PMk/index.m3u8', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `episodes` VALUES (1440, 105, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241012/MoZvOQF8/index.m3u8', '2024-10-20 22:00:34', '2024-10-20 22:00:34');
INSERT INTO `episodes` VALUES (1441, 105, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/6FjyGnEB/index.m3u8', '2024-10-20 22:00:34', '2024-10-20 22:00:34');
INSERT INTO `episodes` VALUES (1442, 105, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/axLmXX4j/index.m3u8', '2024-10-20 22:00:34', '2024-10-20 22:00:34');
INSERT INTO `episodes` VALUES (1443, 105, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/xPQNXKkx/index.m3u8', '2024-10-20 22:00:34', '2024-10-20 22:00:34');
INSERT INTO `episodes` VALUES (1444, 106, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240518/cMPztcjN/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1445, 106, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240518/m6M2w6zz/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1446, 106, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240518/pz2Gzfe6/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1447, 106, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240518/I7UIw5YT/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1448, 106, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240518/lezbjaS4/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1449, 106, NULL, 'tap-06', 'Tập 06', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240520/fLl1HuzZ/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1450, 106, NULL, 'tap-07', 'Tập 07', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240529/aTAewpxE/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1451, 106, NULL, 'tap-08', 'Tập 08', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240603/ql1tmL2X/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1452, 106, NULL, 'tap-09', 'Tập 09', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240609/xlHq6hnw/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1453, 106, NULL, 'tap-10', 'Tập 10', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240616/D848d3CB/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1454, 106, NULL, 'tap-11', 'Tập 11', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240624/lXhC2BM8/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1455, 106, NULL, 'tap-12', 'Tập 12', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240630/HmlbFg1W/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1456, 106, NULL, 'tap-13', 'Tập 13', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240709/rSww2d90/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1457, 106, NULL, 'tap-14', 'Tập 14', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240716/qX7DjJhQ/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1458, 106, NULL, 'tap-15', 'Tập 15', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240722/oaJNNMwy/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1459, 106, NULL, 'tap-16', 'Tập 16', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240728/Jfs7iQs2/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1460, 106, NULL, 'tap-17', 'Tập 17', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240806/5DJtbtqX/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1461, 106, NULL, 'tap-18', 'Tập 18', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240812/TT9GqScb/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1462, 106, NULL, 'tap-19', 'Tập 19', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240818/RoeyqLBj/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1463, 106, NULL, 'tap-20', 'Tập 20', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240827/xSrpbqGn/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1464, 106, NULL, 'tap-21', 'Tập 21', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240904/1xDvxeUr/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1465, 106, NULL, 'tap-22', 'Tập 22', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240910/Dr8kCqr1/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1466, 106, NULL, 'tap-23', 'Tập 23', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240916/rgulhX8E/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1467, 106, NULL, 'tap-24', 'Tập 24', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/BfejuzSy/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1468, 106, NULL, 'tap-25', 'Tập 25', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241001/YVciFvc2/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1469, 106, NULL, 'tap-26', 'Tập 26', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241008/UTF4AG9b/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1470, 106, NULL, 'tap-27', 'Tập 27', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241014/PVjTjJnN/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1471, 106, NULL, 'tap-28', 'Tập 28', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/vWpxVtrf/index.m3u8', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `episodes` VALUES (1472, 107, NULL, 'full', 'Full', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/7385N2zg/index.m3u8', '2024-10-20 22:00:36', '2024-10-20 22:00:36');
INSERT INTO `episodes` VALUES (1473, 108, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/HqyGDEFo/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1474, 108, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/OzHHqGwd/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1475, 108, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/0uzJLYCa/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1476, 108, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/9yG0ohB0/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1477, 108, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/cYQSIZ6Y/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1478, 108, NULL, 'tap-06', 'Tập 06', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/APt7NVGy/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1479, 108, NULL, 'tap-07', 'Tập 07', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/Mj4kEyLO/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1480, 108, NULL, 'tap-08', 'Tập 08', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/Ty0ztCkM/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1481, 108, NULL, 'tap-09', 'Tập 09', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/NHR0538y/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1482, 108, NULL, 'tap-10', 'Tập 10', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/XbbHgy8a/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1483, 108, NULL, 'tap-11', 'Tập 11', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/l5seaDaw/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1484, 108, NULL, 'tap-12', 'Tập 12', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240522/ZCIWZed6/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1485, 108, NULL, 'tap-13', 'Tập 13', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240524/jGShreK8/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1486, 108, NULL, 'tap-14', 'Tập 14', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240524/rcOBayGw/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1487, 108, NULL, 'tap-15', 'Tập 15', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240524/bvUJHCLH/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1488, 108, NULL, 'tap-16', 'Tập 16', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240530/a9OoVda5/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1489, 108, NULL, 'tap-17', 'Tập 17', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240530/Q0N4K7Tw/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1490, 108, NULL, 'tap-18', 'Tập 18', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240602/lmIqVDr2/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1491, 108, NULL, 'tap-19', 'Tập 19', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240607/YzlWCaSu/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1492, 108, NULL, 'tap-20', 'Tập 20', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240607/Dge5sLtW/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1493, 108, NULL, 'tap-21', 'Tập 21', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240607/XskbCYV5/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1494, 108, NULL, 'tap-22', 'Tập 22', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240612/uW5SawIU/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1495, 108, NULL, 'tap-23', 'Tập 23', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240614/VvKndGA2/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1496, 108, NULL, 'tap-24', 'Tập 24', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240614/Xyq9g0qg/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1497, 108, NULL, 'tap-25', 'Tập 25', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240619/zxmE2BQM/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1498, 108, NULL, 'tap-26', 'Tập 26', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240623/a14s5ohJ/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1499, 108, NULL, 'tap-27', 'Tập 27', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240623/QbatEevH/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1500, 108, NULL, 'tap-28', 'Tập 28', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240627/PMtiecz9/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1501, 108, NULL, 'tap-29', 'Tập 29', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240629/bCZ8fTzh/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1502, 108, NULL, 'tap-30', 'Tập 30', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240629/lyvQQKrH/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1503, 108, NULL, 'tap-31', 'Tập 31', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240703/dkduDi36/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1504, 108, NULL, 'tap-32', 'Tập 32', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240709/Ca6WF5y7/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1505, 108, NULL, 'tap-33', 'Tập 33', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240709/vkDMvnUX/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1506, 108, NULL, 'tap-34', 'Tập 34', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240715/jXKwqtyh/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1507, 108, NULL, 'tap-35', 'Tập 35', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240715/BogONMAE/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1508, 108, NULL, 'tap-36', 'Tập 36', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240715/bJxH9ceR/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1509, 108, NULL, 'tap-37', 'Tập 37', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240720/wTrTdpbB/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1510, 108, NULL, 'tap-38', 'Tập 38', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240720/mTWXjdxX/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1511, 108, NULL, 'tap-39', 'Tập 39', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240722/JRIgailp/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1512, 108, NULL, 'tap-40', 'Tập 40', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240726/VoXdWE5i/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1513, 108, NULL, 'tap-41', 'Tập 41', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240726/80t7vNBx/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1514, 108, NULL, 'tap-42', 'Tập 42', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240727/jEv7ArgJ/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1515, 108, NULL, 'tap-43', 'Tập 43', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240801/HtIAcFzj/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1516, 108, NULL, 'tap-44', 'Tập 44', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240803/gyxtazpr/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1517, 108, NULL, 'tap-45', 'Tập 45', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240803/v0WwviHH/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1518, 108, NULL, 'tap-46', 'Tập 46', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240810/Nfn7QJVo/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1519, 108, NULL, 'tap-47', 'Tập 47', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240810/68H8e27G/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1520, 108, NULL, 'tap-48', 'Tập 48', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240810/6PzY7fGG/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1521, 108, NULL, 'tap-49', 'Tập 49', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240815/cfNaXvkM/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1522, 108, NULL, 'tap-50', 'Tập 50', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240815/CL64s76U/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1523, 108, NULL, 'tap-51', 'Tập 51', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240818/ClKiXSMl/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1524, 108, NULL, 'tap-52', 'Tập 52', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240821/yrYgUm7U/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1525, 108, NULL, 'tap-53', 'Tập 53', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240822/N6Fmqvh3/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1526, 108, NULL, 'tap-54', 'Tập 54', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240823/vxn2uhF1/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1527, 108, NULL, 'tap-55', 'Tập 55', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240830/UjQLCYMA/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1528, 108, NULL, 'tap-56', 'Tập 56', 'https://player.phimapi.com/player/?url=https://s3.phim1280.tv/20240830/ROzv9WKl/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1529, 108, NULL, 'tap-57', 'Tập 57', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240901/LTEo41aY/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1530, 108, NULL, 'tap-58', 'Tập 58', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240907/fm5kgXiZ/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1531, 108, NULL, 'tap-59', 'Tập 59', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240907/Lz6PKUL7/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1532, 108, NULL, 'tap-60', 'Tập 60', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240907/1BATFAC6/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1533, 108, NULL, 'tap-61', 'Tập 61', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240915/tOF94YgB/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1534, 108, NULL, 'tap-62', 'Tập 62', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240915/hnYGvgNg/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1535, 108, NULL, 'tap-63', 'Tập 63', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240915/pA7CD9CN/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1536, 108, NULL, 'tap-64', 'Tập 64', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240919/r8ySqV5l/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1537, 108, NULL, 'tap-65', 'Tập 65', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20240919/Qn0FtSX2/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1538, 108, NULL, 'tap-66', 'Tập 66', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240925/CglsV9bC/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1539, 108, NULL, 'tap-67', 'Tập 67', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/xJ8BXjcz/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1540, 108, NULL, 'tap-68', 'Tập 68', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/3c16CCjN/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1541, 108, NULL, 'tap-69', 'Tập 69', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/iMdrAVx1/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1542, 108, NULL, 'tap-70', 'Tập 70', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240929/Tka7ljA8/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1543, 108, NULL, 'tap-71', 'Tập 71', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/f8dukW7C/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1544, 108, NULL, 'tap-72', 'Tập 72', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/o3kTdtps/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1545, 108, NULL, 'tap-73', 'Tập 73', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241002/ATLYjGqc/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1546, 108, NULL, 'tap-74', 'Tập 74', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241004/px5uI5hN/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1547, 108, NULL, 'tap-75', 'Tập 75', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241004/QlWyxdsJ/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1548, 108, NULL, 'tap-76', 'Tập 76', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241005/7rthypL5/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1549, 108, NULL, 'tap-77', 'Tập 77', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241008/DgT89sfy/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1550, 108, NULL, 'tap-78', 'Tập 78', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241008/OAG7lGHo/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1551, 108, NULL, 'tap-79', 'Tập 79', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241008/Qqrd32vw/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1552, 108, NULL, 'tap-80', 'Tập 80', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241008/fhEWnwFM/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1553, 108, NULL, 'tap-81', 'Tập 81', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/aZA8Xdt8/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1554, 108, NULL, 'tap-82', 'Tập 82', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/hIqR5QCV/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1555, 108, NULL, 'tap-83', 'Tập 83', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/Nf6BS0CY/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1556, 108, NULL, 'tap-84', 'Tập 84', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241013/7qaD1sRd/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1557, 108, NULL, 'tap-85', 'Tập 85', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/5PSeOPgp/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1558, 108, NULL, 'tap-86', 'Tập 86', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/2CNd8MKj/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1559, 108, NULL, 'tap-87', 'Tập 87', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241015/8u6bXmT5/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1560, 108, NULL, 'tap-88', 'Tập 88', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241017/g42PVTTs/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1561, 108, NULL, 'tap-89', 'Tập 89', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241018/sl5MEcM6/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1562, 108, NULL, 'tap-90', 'Tập 90', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/AcO884SI/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1563, 108, NULL, 'tap-91', 'Tập 91', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/BpwXTL0e/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1564, 108, NULL, 'tap-92', 'Tập 92', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/mIEfANhd/index.m3u8', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `episodes` VALUES (1565, 109, NULL, 'tap-01', 'Tập 01', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240927/QVDUCt8i/index.m3u8', '2024-10-20 22:00:38', '2024-10-20 22:00:38');
INSERT INTO `episodes` VALUES (1566, 109, NULL, 'tap-02', 'Tập 02', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20240927/wpnuVLPM/index.m3u8', '2024-10-20 22:00:38', '2024-10-20 22:00:38');
INSERT INTO `episodes` VALUES (1567, 109, NULL, 'tap-03', 'Tập 03', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241005/tVwbLWsI/index.m3u8', '2024-10-20 22:00:38', '2024-10-20 22:00:38');
INSERT INTO `episodes` VALUES (1568, 109, NULL, 'tap-04', 'Tập 04', 'https://player.phimapi.com/player/?url=https://s5.phim1280.tv/20241011/u0UlZwHE/index.m3u8', '2024-10-20 22:00:38', '2024-10-20 22:00:38');
INSERT INTO `episodes` VALUES (1569, 109, NULL, 'tap-05', 'Tập 05', 'https://player.phimapi.com/player/?url=https://s4.phim1280.tv/20241020/eCdIMoyl/index.m3u8', '2024-10-20 22:00:38', '2024-10-20 22:00:38');

-- ----------------------------
-- Table structure for film_actors
-- ----------------------------
DROP TABLE IF EXISTS `film_actors`;
CREATE TABLE `film_actors`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID (khóa chính)',
  `film_id` int NULL DEFAULT NULL COMMENT 'ID phim (liên kết với bảng films)',
  `actor_id` int NULL DEFAULT NULL COMMENT 'ID diễn viên (liên kết với bảng actors)',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_actors
-- ----------------------------
INSERT INTO `film_actors` VALUES (1, 1, 3, '2024-10-20 20:47:13', '2024-10-20 20:47:13');
INSERT INTO `film_actors` VALUES (2, 1, 2, '2024-10-20 20:47:13', '2024-10-20 20:47:13');
INSERT INTO `film_actors` VALUES (3, 2, 3, '2024-10-20 20:47:13', '2024-10-20 20:47:13');
INSERT INTO `film_actors` VALUES (4, 3, 4, '2024-10-20 20:47:13', '2024-10-20 20:47:13');
INSERT INTO `film_actors` VALUES (5, 4, 5, '2024-10-20 20:47:13', '2024-10-20 20:47:13');

-- ----------------------------
-- Table structure for film_genres
-- ----------------------------
DROP TABLE IF EXISTS `film_genres`;
CREATE TABLE `film_genres`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID (khóa chính)',
  `film_id` int NULL DEFAULT NULL COMMENT 'ID phim (liên kết với bảng films)',
  `genre_id` int NULL DEFAULT NULL COMMENT 'ID thể loại (liên kết với bảng genres)',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_genres
-- ----------------------------
INSERT INTO `film_genres` VALUES (1, 1, 3, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (2, 1, 2, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (3, 2, 3, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (4, 3, 1, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (5, 4, 4, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (7, 1, 3, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (8, 1, 5, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (9, 1, 6, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (10, 5, 1, '2024-10-20 20:47:18', '2024-10-20 20:47:18');
INSERT INTO `film_genres` VALUES (11, 5, 2, '2024-10-20 20:47:18', '2024-10-20 20:47:18');

-- ----------------------------
-- Table structure for films
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID của phim (khóa chính)',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Tên phim',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Tình trạng phim (hoàn thành, đang chiếu, etc.)',
  `episodes` int NULL DEFAULT NULL COMMENT 'Số tập phim',
  `duration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Thời lượng phim (mỗi tập hoặc tổng)',
  `release_year` year NULL DEFAULT NULL COMMENT 'Năm phát hành phim',
  `quality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Chất lượng phim (Full HD, SD, etc.)',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Ngôn ngữ phim',
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Đạo diễn phim',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'Nội dung phim',
  `poster_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'URL ảnh bìa phim',
  `country_id` int NULL DEFAULT NULL COMMENT 'ID quốc gia (liên kết với bảng countries)',
  `outside_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Id phim bên ngoài',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `outside_id_index`(`outside_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of films
-- ----------------------------
INSERT INTO `films` VALUES (100, 'Những Kẻ Phá Hoại Seoul', 'ongoing', 20, '46 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Ahn Jong Yeon\"]', 'Những kẻ phá hoại Seoul (Seoul Busters) là một bộ phim Hàn Quốc thuộc thể loại hài hước về chủ đề điều tra tội phạm của đạo diễn Ahn Jong Yeon, Shin Joong Hoon. Phim này, sẽ mang đến đội điều tra tội phạm giết người cấp thấp nhất của quốc gia và đội trưởng đội điều tra án giết người tinh nhuệ nhất gặp nhau để trở thành đội mạnh nhất. Ở trong phim này, sẽ có sự tham gia của các diễn viên: Kim Dong Wook, Park Ji Hwan, Seo Hyun Woo, Park Se Wan, Lee Seung Woo,... Phim Những kẻ phá hoại Seoul kể về Dongbang Yu Bin, một người đàn ông cao ráo, thông minh và thể thao, trở thành trưởng nhóm điều tra án mạng tại đồn cảnh sát Songwon. Anh từng được đề nghị làm giáo sư thường trực tại một trường đại học nổi tiếng ở nước ngoài nhưng bất ngờ quay về Hàn Quốc và tình nguyện trở thành trưởng nhóm của Đội 2 Điều tra Án Mạng tại Songwon, đội có tỷ lệ bắt giữ thấp nhất cả nước. Yu Bin quyết tâm thay đổi tình hình, nhưng ngay lập tức anh đối mặt với một loạt thách thức. Đội của anh được xem là “những kẻ phá hoại” do lối làm việc không theo quy chuẩn và những phương pháp điều tra độc đáo nhưng kém hiệu quả. Để chứng minh giá trị của mình, Yu Bin và đội của mình phải giải quyết một vụ án liên hoàn phức tạp mà không một đội nào khác dám nhận. Trong quá trình điều tra, Yu Bin hợp tác với một thủ lĩnh đội điều tra án mạng hàng đầu với phương pháp làm việc hoàn toàn trái ngược. Mối quan hệ giữa hai người từ căng thẳng ban đầu dần trở nên ăn ý hơn qua từng vụ án. Họ bắt đầu hiểu và học hỏi lẫn nhau, từng bước hình thành nên một đội ngũ mạnh mẽ không ai ngờ tới, vừa có khả năng phá án tài tình vừa mang đến tiếng cười sảng khoái cho khán giả.', 'https://phimimg.com/upload/vod/20240911-1/95021bc6148dcab10c57f93ee1ed64e5.jpg', 20, 'bed6efa1f192db7c30ede96dbb9d76ee', '2024-10-20 22:00:30', '2024-10-20 22:00:30');
INSERT INTO `films` VALUES (101, 'Nhà Của Bé Sư Tử', 'ongoing', 11, '45 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Toshio Tsuboi\"]', 'Sự xuất hiện của một cậu bé bí ẩn phá vỡ cuộc sống yên bình, dễ đoán của một nghệ sĩ mắc chứng tự kỷ và người anh chu đáo của anh.', 'https://phimimg.com/upload/vod/20241019-1/a17f600aa9ffd7772c112b028599bb03.jpg', 14, '3350f342187a513cfe28119c59dc9038', '2024-10-20 22:00:31', '2024-10-20 22:00:31');
INSERT INTO `films` VALUES (102, 'Người Hùng Xí Nghiệp', 'completed', 25, '43 phút/tập', 2024, 'FHD', 'Lồng Tiếng', '[\"Marco Wing-Yin Law\"]', 'Xí nghiệp chuyển phát nhanh Hậu cần Thời Đại phát triển thành công ty lên sàn với giá thị trường hơn 100 tỷ đô. Chủ tịch Triệu Khải (do Trần Hào đóng) lấy 20% cổ phần chia cho các nhân viên, khiến các cổ đông bất mãn. Triệu Khải luôn quan niệm “lấy con người làm gốc”, xí nghiệp quan trọng nhất chính là con người, con người chính là linh hồn của mỗi công ty.', 'https://phimimg.com/upload/vod/20240929-1/fad3b675849fbc463d8163b27ef87a2e.jpg', 15, '1d1e62052e90a97409270f31326f5b0e', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `films` VALUES (103, 'Một Nửa Ranma', 'ongoing', 12, '23 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Đang cập nhật\"]', 'Tendo Akane gặp vị hôn phu mới của mình, Saotome Ranma, một thần đồng võ thuật có một bất ngờ: cậu có thể biến thành con gái một cách kỳ diệu khi chạm vào nước lạnh.', 'https://phimimg.com/upload/vod/20241012-1/5319575845b91a92f339fd869d48f9a4.jpg', 14, 'aa2c6857a88b778501aa2d51ae3ccade', '2024-10-20 22:00:32', '2024-10-20 22:00:32');
INSERT INTO `films` VALUES (104, 'Làm Ơn Đó Hoa Nhung Thiếu Nữ', 'ongoing', 48, '8 phút/tập', 2024, 'FHD', 'Vietsub', '[\"刘骐嘉\"]', 'Khi cô gái trẻ mắc bệnh hiếm gặp Thái Tiểu Ái bước vào &quot;Sở Môn&quot; đếm ngược sự sống gặp phải Cụ Ân Triệu lạnh lùng, cô độc và không có chút lòng thương nào với cô. Hai cô gái trẻ dường như bị số phận nguyền rủa bắt đầu cuộc hành trình đấu tranh vì sự sống, tình bạn, tình thân, tình yêu và tương lai, mà không biết rằng một âm mưu đã âm thầm chực chờ xung quanh họ từ lâu.', 'https://phimimg.com/upload/vod/20241011-1/347728e2b34d38766ff630f81f71f58c.jpg', 15, '9786d91e129d1c16bbed55aaa2445c78', '2024-10-20 22:00:33', '2024-10-20 22:00:33');
INSERT INTO `films` VALUES (105, 'Kẻ Phản Bội Thân Mật', 'ongoing', 10, '73 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Đang cập nhật\"]', 'Tình thế tiến thoái lưỡng nan của Jang Tae Soo (Han Suk Kyu) phải đối mặt khi con gái mình liên quan đến một vụ án giết người do chính ông điều tra.', 'https://phimimg.com/upload/vod/20241012-1/837d4c0f7a55cec28771dc58b18b11fa.jpg', 20, '600a4d6403d3914e1e24b13808bd4bd4', '2024-10-20 22:00:34', '2024-10-20 22:00:34');
INSERT INTO `films` VALUES (106, 'Vĩnh Sinh (Phần 3)', 'ongoing', 25, '24 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Đang cập nhật\"]', 'Phương Hàn, thân sinh ra là nô bộc của một đại gia tộc. Không chấp nhận số phận của mình, hắn học lén võ công, sau đó nhờ một đại kỳ ngộ mà dấn thân vào con đường tu tiên đầy trắc trở.', 'https://phimimg.com/upload/vod/20240518-1/2e898da0e7a632308fb51a5569aef063.jpg', 15, '87549e74d3546183365ad3f438a48fc4', '2024-10-20 22:00:35', '2024-10-20 22:00:35');
INSERT INTO `films` VALUES (107, 'Hellboy: Đại Chiến Quỷ Dữ', 'completed', 1, '100 phút', 2024, 'FHD', 'Vietsub', '[\"Brian Taylor\"]', 'The Crooked Man xoay quanh câu chuyện Quỷ đỏ bị mắc kẹt ở vùng nông thôn Appalachia những năm 1950 cùng với một thành viên của đội BPRD. Tại đây, họ phải đối đầu, trốn chạy cuộc truy sát của một nhóm phù thủy được dẫn đầu bởi ác quỷ Crooked Man - người có mối liên hệ rắc rối với quá khứ của Quỷ đỏ.', 'https://phimimg.com/upload/vod/20241009-1/67fb26596e316e12bbfb63a6f0d62030.jpg', 21, 'fbfdab7e3983009e7d488d946a8de066', '2024-10-20 22:00:36', '2024-10-20 22:00:36');
INSERT INTO `films` VALUES (108, 'Gia Đạo Trung Nhị', 'ongoing', 120, '7 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Đang cập nhật\"]', 'Tất cả những người sinh ra trong thế kỷ 20 đều đã bước vào hàng ngũ của tuổi già. Trong tương lai không xa, khi thế hệ sau 80, 90 đã lên chức ông bà, công nghệ sẽ phát triển hơn, 666G sẽ phổ biến trên toàn cầu, cuộc sống sẽ tươi đẹp hơn. rất tiện lợi. Trong một gia đình sáu người mà ai cũng nghiện Chuchu, ông nội của nhân vật chính lần thứ hai trở thành người trì hoãn và quyết tâm trở thành vua trì hoãn trong thế giới truyện tranh! Ngay trước khi thời hạn sắp vượt quá thời hạn của người trì hoãn nổi tiếng trong lịch sử, biên tập viên truyện tranh không chịu nổi đã thực sự cử một &quot;cảnh sát hai chiều&quot; chuyên nghiệp đến chấm dứt dự án của ông nội, và cuối cùng phải đối mặt với tình huống xấu hổ khi gặp chướng ngại vật khắp nơi và không có ai tiếp quản. Khi muốn xuất bản một tác phẩm mới, anh nhận thấy mình đã ở nhà quá lâu và xa lánh xã hội. Để tác phẩm mới đạt được thành công, ông nội anh đã thu thập được với sự giúp đỡ của gia đình. những câu chuyện từ mọi khía cạnh của xã hội để trải nghiệm những khía cạnh khác nhau của cuộc sống trong thời đại mới Từ câu lạc bộ truyện tranh nhỏ ở trường Tôn Tử, anh đã trải qua Những khúc mắc bắt đầu trỗi dậy. Gia đình kết nối mọi khía cạnh của câu chuyện hài và dẫn dắt mọi người vào cuộc sống của học sinh cấp hai trong tương lai gần.', 'https://phimimg.com/upload/vod/20240522-1/2fed507c6e707c0b332d87405b070f47.jpg', 22, '8eb3926a025bb86899f452f3dd675f04', '2024-10-20 22:00:37', '2024-10-20 22:00:37');
INSERT INTO `films` VALUES (109, 'Đường Tới Ngôi Vương (Mùa 2)', 'ongoing', 8, '120 phút/tập', 2024, 'FHD', 'Vietsub', '[\"Đang cập nhật\"]', 'Mùa đầu tiên của &#39;Road to Kingdom&#39; đã tạo tiền đề cho một cuộc thi sinh tồn khó quên của nhóm nhạc nam. Bây giờ, nó trở lại với bảy nhóm nhạc nam mới sẵn sàng thể hiện tài năng của họ. TAEMIN của SHINee sẽ dẫn chương trình, mang đến sự cố vấn vô giá cho làn sóng ngôi sao K-pop tiếp theo.', 'https://phimimg.com/upload/vod/20240928-1/c3c486b2cb8b588df34426b0e1fdc1b5.jpg', 23, '874e32f9341fbd8141c45090f858e30b', '2024-10-20 22:00:37', '2024-10-20 22:00:37');

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID thể loại (khóa chính)',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên thể loại phim',
  `created_at` timestamp NULL DEFAULT current_timestamp COMMENT 'Thời gian tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO `genres` VALUES (1, 'Adventure', '2024-10-20 20:47:24', '2024-10-20 20:47:24');
INSERT INTO `genres` VALUES (2, 'Phiêu lưu', '2024-10-20 20:47:24', '2024-10-20 20:47:24');
INSERT INTO `genres` VALUES (3, 'Khoa học viễn tưởng', '2024-10-20 20:47:24', '2024-10-20 20:47:24');
INSERT INTO `genres` VALUES (4, 'Tình cảm', '2024-10-20 20:47:24', '2024-10-20 20:47:24');
INSERT INTO `genres` VALUES (5, 'Action', '2024-10-20 20:47:24', '2024-10-20 20:47:24');

SET FOREIGN_KEY_CHECKS = 1;
