/*               
<<<<<<< HEAD
 Navicat Premium Data Transfer 
 
=======
 Navicat Premium Data Transfer

>>>>>>> origin/main
 Source Server         : mysql(root)
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : recruitment

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 28/12/2021 17:16:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for pdf_resume
-- ----------------------------
DROP TABLE IF EXISTS `pdf_resume`;
CREATE TABLE `pdf_resume` (
                              `id` varchar(50) NOT NULL,
                              `user_id` varchar(50) NOT NULL,
                              `file_path` varchar(255) NOT NULL,
                              `text` text NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_business
-- ----------------------------

DROP TABLE IF EXISTS `t_business`;
CREATE TABLE `t_business`  (
                               `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                               `business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Job type',
                               `type_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属类别id',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_business
-- ----------------------------

INSERT INTO `t_business` VALUES ('001b7fbd634846ae97faa7f33b5a65c4', 'Financial Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('038c5cac3182479abf1c2446c42512cf', 'Database', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('04ec4ccb6cf8480092ec84bde69dcbdc', 'Product Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('05edb67851fd4093acf0619b12113335', 'Data Mining', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('0f1681244e7e483abc336c86ba9ea355', 'Interaction Design', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('0fe76978b2154e5b828a0f709c0eac98', 'Algorithm', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('1160279b3850460fb983ac8be4f2a2d6', 'C#/.NET', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('12fc9486edea4d1388c01c4cf97f267c', 'Node.js', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('13fd00bc415944bbb7169f6250ecc6fe', 'E-commerce Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('141e558477e346feb50ab93a6c91e18d', 'Supply Chain Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('2331590d8c1c463fa5ed8192c21d3a72', 'User Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('26bbd303a5a14f7da3e8f36db40bab68', 'PLC', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('27576f1d0c964da5a95192578e200ef4', 'IT Operations', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('27c22cd13c6e4eaf9889a4634f4aa922', 'Ruby/Perl', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('296948d2c6554093907e3f404991f149', 'PHP', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('2bd4b3a5aaff4e8480a895ef6d90f9ea', 'Security Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('2d510f69fac9483aa77211a3cef56710', 'Backend', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('2e869a3718ff4329be16b3e15043935f', 'Cloud/Big Data', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('308aab99bdb041f797947d46b3308d96', 'Product Project Management', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('3617b97ef93243b99f9f1d099f8579c6', 'Technical Management', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('3b192a38029e4e1d8de019ec643cb71f', 'Frontend', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('40e6c6f7775844d8abc52bd302542810', 'Java', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('455c1d2ab5284c669601ccd395a703ad', 'SEO/SEM', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('4b5665fbc539460e868e30b2fda814bb', 'Data Analysis', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('5150a988b11449cf89842cf28789c72b', 'Telecommunications', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('52188d45504547c7989b6ecf50ed26bd', 'Growth Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('5774cfb854b44a63ae88fdd157a1f826', 'Mobile Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('591d19ad56fa4bb5942aef5ce7983a13', 'Strategic Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('5c2e5836a9524bc9884e1f8cfbef6a71', 'New Media Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('5edc6ea3154a4100bfc4fa5f7506459a', 'Sales Technical Support', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('6292be12f9a44ebe8ac17bd9fb1cfa24', 'Content Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('64387b5ea0a444f7b99ab0231b12caa8', 'Testing', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('654127beedbb4b929802fe5f5012bd17', 'Data Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('6f674ed3231c43e99cc4c0dd561685dd', 'Overseas Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('7219635d95fa4f8ba17159882b5e9d66', 'Product Assistant', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('759c83894a1a4f9f96fedfa27b17e718', 'Customer Service', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('7cce9fcaec08498b81d584acbd05eebc', 'Data Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('7f142e064a3e438197df3a8df381ed09', 'IOS', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('889b2c59abd64ff88b91cf28b664fc9a', 'Website Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('8caa078597f24e17bd90f858ffe7c0d9', 'Event Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('906860ab4ce345a082977292ef78aa54', 'Android', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('912cca2b42024f54853d6eb31685aad9', 'User Research', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('944c2388668c4cb6b9c5aa1d8271ae1e', 'Python', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('969b2a73ffcb4180a47f0754f30a00c6', 'Hardware Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('a346cb5af5a6477099ad25ec72cbbe7c', 'Community Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('aab46070fe9e4c71b022bdf19b7777bf', 'C/C++', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('af8abf421c1140d8939bb05316297e54', 'Web Editor', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('b42990d666c54a7788d17d5148ad32de', 'Linux', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('c54970ca3f274937831790c3b684307a', 'Hadoop', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('cd7595bf744e4942b6da0b4926ac28d2', 'Game Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('cfa0c4fd80fc483496c0b8e3bab2e36b', 'E-commerce Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('d569738a3c954cca84bf334868e6aeb8', 'Information Security', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('d6e07dec0aca4d10b9acb59b2907424f', 'Product Design', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('daf5857635a64818ae1adb7aab22c1f1', 'Architect', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('e027babe9b454af3b735bc307b03c968', 'Commercial Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('e4819ef1cfa5478aa3214126ac455fcb', 'COO', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('e805632fa2cc48c2bdaed689138b9297', 'Game Planner', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('eca1914676664c4b9a3fb29046b30123', 'ERP', '858f90fba6584aaa93600a2f5840a6ae');
INSERT INTO `t_business` VALUES ('ef981a88bc3b4d8ab8d50887cc4509d4', 'Mobile Development', '1368546bf3fd4ca79c8f32c21257202d');
INSERT INTO `t_business` VALUES ('f25a1a9eaa2d4cbeb15887e55210bbfe', 'Category Operations', '4ed6e28013d84a26aadd3579f497d901');
INSERT INTO `t_business` VALUES ('f305e944ca254323b0545e9b93cf4984', 'Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('f3ddac31081c4d87b3a01fa2b3c6c6f6', 'Software Product Manager', 'c588f4e197d740bcb465b03358fdb477');
INSERT INTO `t_business` VALUES ('fef40469d5d14a0ea451c50ac4a3b331', 'Web Product Manager', 'c588f4e197d740bcb465b03358fdb477');


-- ----------------------------
-- Table structure for t_chat_link
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_link`;
CREATE TABLE `t_chat_link`  (
                                `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uui',
                                `from_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方id',
                                `to_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收方id',
                                `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chat_link
-- ----------------------------
INSERT INTO `t_chat_link` VALUES ('77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '2024-06-30 01:18:29');
INSERT INTO `t_chat_link` VALUES ('9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '2024-06-30 10:48:11');
INSERT INTO `t_chat_link` VALUES ('d5e38550f2134da1bc8ec7ebcad1c223', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000010', '2024-06-30 10:45:43');
INSERT INTO `t_chat_link` VALUES ('d9f91b978acf460b9ca65893e79d0265', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000001', '2024-06-30 10:48:11');

-- ----------------------------
-- Table structure for t_chat_list
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_list`;
CREATE TABLE `t_chat_list`  (
                                `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                                `link_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关系id',
                                `from_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方id',
                                `to_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收方id',
                                `from_online` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方在线状态',
                                `to_online` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收方在线状态',
                                `unread` int NULL DEFAULT NULL COMMENT '未读信息',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chat_list
-- ----------------------------
INSERT INTO `t_chat_list` VALUES ('0c4b19ceb13e40e293f32fc2e27e9720', '77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '0', '0', 4);
INSERT INTO `t_chat_list` VALUES ('1a0d85c6559d4cf7a7add23b720b7f8f', 'd9f91b978acf460b9ca65893e79d0265', 'a0000000000000000000000000000001', '600b175da8bf45dab008f2442a01f434', '1', '0', 0);
INSERT INTO `t_chat_list` VALUES ('52e629cfb06346db82aedb0f437f4291', 'd5e38550f2134da1bc8ec7ebcad1c223', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000010', '1', '0', 1);
INSERT INTO `t_chat_list` VALUES ('67b6407aaf094b7084ffa3a8225291d1', '9493de0df50747c6b5890820b014cdb1', '00000000000000000000000000000000', '9493de0df50747c6b5890820b014cdbb', '0', '0', 0);
INSERT INTO `t_chat_list` VALUES ('cba0e444a45048f0a08c526f117647d8', '9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '1', '0', 0);
INSERT INTO `t_chat_list` VALUES ('e48ceaa2623a47a7a2669fccfa1d528a', 'd9f91b978acf460b9ca65893e79d0265', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000001', '1', '0', 0);

-- ----------------------------
-- Table structure for t_chat_message
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_message`;
CREATE TABLE `t_chat_message`  (
                                   `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                                   `link_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关系id',
                                   `from_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方id',
                                   `to_user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收方id',
                                   `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
                                   `send_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送时间',
                                   `is_latest` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为最有一条',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chat_message
-- ----------------------------
INSERT INTO `t_chat_message` VALUES ('04135387468c42b4855346f53ec4f9b1', '77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '<a target=\'_blank\' href=\'http://localhost:8080/resume/detail/00000000000000000000000000000000\'>http://localhost:8080/resume/detail/00000000000000000000000000000000</a>', '2024-11-04 14:15:42', '0');
INSERT INTO `t_chat_message` VALUES ('12da91ca8c03449aa555dd1224a89d6d', 'd9f91b978acf460b9ca65893e79d0265', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000001', '12312312', '2024-06-30 10:48:14', '0');
INSERT INTO `t_chat_message` VALUES ('174ba9a12f894dbcac44d100e457fbaa', '77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '<a target=\'_blank\' href=\'http://localhost:8080/resume/detail/00000000000000000000000000000000\'>http://localhost:8080/resume/detail/00000000000000000000000000000000</a>', '2024-06-30 01:18:54', '0');
INSERT INTO `t_chat_message` VALUES ('23931bb52aa74e88a8658ef28e313df4', '9493de0df50747c6b5890820b014cdb1', '00000000000000000000000000000000', '9493de0df50747c6b5890820b014cdbb', '1231241412', '2024-12-25 15:37:30', '0');
INSERT INTO `t_chat_message` VALUES ('7f389d7fe6b847559506ad8268571c1a', '9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '123<br/>', '2024-12-25 15:33:51', '0');
INSERT INTO `t_chat_message` VALUES ('7faa927a9c2a4ab88534359285e5c3db', 'd9f91b978acf460b9ca65893e79d0265', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000001', '213123', '2024-06-30 10:48:20', '0');
INSERT INTO `t_chat_message` VALUES ('a2acf937c7034125914f22b98b905703', '9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '222222222222222222', '2024-12-25 15:39:36', '0');
INSERT INTO `t_chat_message` VALUES ('a53c2cb9177f47358c46b1dc814ba736', '77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '123123123', '2024-06-30 01:18:34', '0');
INSERT INTO `t_chat_message` VALUES ('be30a2804f3d4c3782914b1d5d8c2f69', 'd5e38550f2134da1bc8ec7ebcad1c223', '600b175da8bf45dab008f2442a01f434', 'a0000000000000000000000000000010', '123', '2024-06-30 10:46:09', '1');
INSERT INTO `t_chat_message` VALUES ('ca9c0853fa254a2fa35d59bc3aa7d2a5', '9493de0df50747c6b5890820b014cdb1', '00000000000000000000000000000000', '9493de0df50747c6b5890820b014cdbb', 'lp[l[', '2024-12-25 15:39:44', '1');
INSERT INTO `t_chat_message` VALUES ('cccfee21e6694940bf0c97636b2a2dd3', '9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '1223', '2024-12-25 15:39:16', '0');
INSERT INTO `t_chat_message` VALUES ('d54f40a609444246963aa3697fae8067', '9493de0df50747c6b5890820b014cdb1', '9493de0df50747c6b5890820b014cdbb', '00000000000000000000000000000000', '123123', '2024-12-25 15:37:34', '0');
INSERT INTO `t_chat_message` VALUES ('fcdcb419391e4b8b87fdf1a95696b03c', '77d5bb287f794ca7825bb334073f5fb6', '00000000000000000000000000000000', 'a0000000000000000000000000000010', '123123<br/>', '2024-11-04 14:21:19', '1');
INSERT INTO `t_chat_message` VALUES ('fe8f4c512f704792a7691cbd351fb949', 'd9f91b978acf460b9ca65893e79d0265', 'a0000000000000000000000000000001', '600b175da8bf45dab008f2442a01f434', '23131', '2024-06-30 10:48:21', '1');

-- ----------------------------
-- Table structure for t_city
-- ----------------------------

DROP TABLE IF EXISTS `t_city`; 
CREATE TABLE `t_city`  (
  `id` int NOT NULL,
  `city_no` int NULL DEFAULT NULL,
  `province_id` int NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES (1, 1, 1, 'Liverpool');
INSERT INTO `t_city` VALUES (2, 1, 2, 'Bristol');
INSERT INTO `t_city` VALUES (3, 1, 3, 'Aberdeen');
INSERT INTO `t_city` VALUES (4, 1, 4, 'Coventry');
INSERT INTO `t_city` VALUES (5, 2, 4, 'Birmingham');
INSERT INTO `t_city` VALUES (6, 1, 5, 'Southampton');
INSERT INTO `t_city` VALUES (7, 1, 6, 'Belfast');
INSERT INTO `t_city` VALUES (8, 1, 7, 'London');
INSERT INTO `t_city` VALUES (9, 1, 8, 'Newcastle');
INSERT INTO `t_city` VALUES (10, 1, 9, 'Manchester');
INSERT INTO `t_city` VALUES (11, 1, 10, 'Cardiff');
INSERT INTO `t_city` VALUES (12, 2, 3, 'Edinburgh');
INSERT INTO `t_city` VALUES (13, 3, 3, 'Glasgow');
-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company`  (
                              `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                              `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
                              `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
                              `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
                              `listed_status` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上市状态',
                              `registration_time` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
                              `size` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人数规模',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES
    ('34f11160ff5c4c9481209bfff3cae983', 'AVEVA Group', 'aveva.png',
     '​AVEVA Group plc, headquartered in Cambridge, England, is a global leader in industrial software, providing engineering, design, and information management solutions across various industries, including oil and gas, power, marine, and manufacturing. Founded in 1967 as the Computer-Aided Design Centre (CADCentre) by the UK Ministry of Technology and the University of Cambridge, AVEVA\'s initial mission was to develop computer-aided design (CAD) techniques and promote their adoption within British industry. ​

In 2018, AVEVA merged with Schneider Electric\'s industrial software business, with Schneider Electric acquiring a 60% stake in the company. By January 2023, Schneider Electric completed the full acquisition of AVEVA, making it a wholly-owned subsidiary. ​

AVEVA\'s product portfolio includes solutions like AVEVA E3D Design for 3D engineering design, AVEVA System Platform for real-time operations control, and the AVEVA PI System for data management and analysis. These tools enable businesses to optimize engineering processes, enhance operational efficiency, and drive sustainable growth. ​

As of 2022, AVEVA employed approximately 6,500 people and reported revenues of £1,185.3 million. The company\'s global presence spans over 100 countries, serving more than 20,000 enterprises that rely on AVEVA\'s solutions to deliver essential services such as energy, food, and infrastructure. ​

In 2021, AVEVA acquired OSIsoft for $5 billion, further strengthening its position in industrial data management and analytics. This strategic move expanded AVEVA\'s capabilities in providing end-to-end solutions for industrial operations.​

AVEVA continues to focus on driving responsible use of the world\'s resources by connecting people with trusted information and AI-enhanced insights, fostering innovation, and supporting customers in achieving their sustainability goals.',
     'Listed', '2024-07-02', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('5558969951074ef98108cb15847aba10', 'The Sage Group', '1743559144629.jpg',
     'The Sage Group plc, commonly known as Sage, is a British multinational enterprise software company headquartered in Newcastle upon Tyne, England. Founded in 1981 by David Goldman, Paul Muller, and Graham Wylie, Sage has grown to become the UK\'s second-largest technology company and the world\'s third-largest supplier of enterprise resource planning (ERP) software, following Oracle and SAP. The company specializes in providing integrated business management solutions, including accounting, payroll, human resources, and payment systems, tailored primarily for small and medium-sized enterprises (SMEs). ​

Sage\'s product portfolio encompasses a range of offerings designed to support various business functions. Notable products include Sage Business Cloud Accounting, Sage 50cloud Accounts, Sage Intacct, Sage People, and Sage X3. These solutions are enhanced with artificial intelligence and machine learning capabilities, aiming to streamline operations and provide valuable insights for businesses. ​

As of 2024, Sage employs approximately 11,000 individuals and serves millions of customers across more than 20 countries. The company\'s global presence is supported by offices in 23 countries, reflecting its commitment to delivering localized solutions to a diverse clientele. ​

In recent years, Sage has focused on transitioning from traditional on-premises software to cloud-based solutions, aligning with the evolving needs of modern businesses. This strategic shift has resulted in significant growth in recurring revenue, with cloud and subscription services accounting for nearly 80% of the company\'s income. North America has emerged as Sage\'s fastest-growing market, contributing almost half of its revenue. ​

Sage is also dedicated to corporate social responsibility, actively working to tackle digital and economic inequality, address the climate crisis, and support global communities. The company encourages employee volunteerism, with teams contributing thousands of volunteer days annually, and aims to contribute one million volunteer hours by the end of 2022. ​

Overall, Sage continues to innovate and expand its offerings, reinforcing its position as a leading provider of business management software solutions for SMEs worldwide.',
     'Listed', '2024-01-09', '1,000-9,999 employees');

INSERT INTO `t_company` VALUES
    ('60c96dea711d4b2bb8217e30016cdf94', 'Endava', '1743559188182.jpg',
     'Endava plc is a British public-listed software development company founded in 2000 in London, United Kingdom. The company specializes in providing digital transformation consulting, agile software development services, and various automation solutions. Endava operates close-to-client offices across North America and Western Europe, with nearshore delivery centers in Eastern Europe and Latin America. ​

Endava\'s services encompass strategy consulting, creative and user interface design, data analytics, mobile and Internet of Things solutions, systems architecture, automation, software engineering, test automation, DevOps, cloud computing, advanced application management, and smart desk support. The company serves clients across various industries, including payments, insurance, finance and banking, technology, media and entertainment, telecommunications, retail and consumer goods, supply chain and logistics, healthcare and life sciences, energy and resources, government, automotive, and travel. ​

As of 2023, Endava employed approximately 11,742 individuals. The company\'s global presence spans over 25 countries across six continents, reflecting its commitment to delivering localized solutions to a diverse clientele. ​

In recent years, Endava has focused on transitioning from traditional on-premises software to cloud-based solutions, aligning with the evolving needs of modern businesses. This strategic shift has resulted in significant growth in recurring revenue, with cloud and subscription services accounting for a substantial portion of the company\'s income. North America has emerged as Endava\'s fastest-growing market, contributing significantly to its revenue.​

Endava is also dedicated to corporate social responsibility, actively working to tackle digital and economic inequality, address the climate crisis, and support global communities. The company encourages employee volunteerism, with teams contributing thousands of volunteer days annually, and aims to contribute one million volunteer hours by the end of 2022.​

Overall, Endava continues to innovate and expand its offerings, reinforcing its position as a leading provider of business management software solutions for enterprises worldwide.',
     'Listed', '2024-04-20', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('66d1c3d86bda41a38a67eaa53f75d9c6', 'Renishaw', '1743559223168.jpg',
     '​Renishaw plc, established in 1973 by Sir David McMurtry and John Deer, is a British engineering company renowned for its expertise in precision measurement and healthcare technologies. Headquartered in Wotton-under-Edge, Gloucestershire, Renishaw operates globally, supplying products and services utilized in diverse applications ranging from jet engine and wind turbine manufacturing to dentistry and brain surgery. ​

The company\'s inception was marked by McMurtry\'s invention of the touch-trigger probe, a device that revolutionized coordinate measuring machines (CMMs) by enhancing measurement accuracy and efficiency. This innovation laid the foundation for Renishaw\'s expansive product portfolio, which includes machine tool probes, calibration and optimization equipment, gauging systems, position and motion control devices, additive manufacturing systems, and Raman spectroscopy instruments. ​

Renishaw\'s operations are segmented into manufacturing technologies and analytical instruments and medical devices. The manufacturing technologies division focuses on industrial metrology, additive manufacturing, position measurement, and industrial automation. The analytical instruments and medical devices segment encompasses spectroscopy and neurological products, supplying technologies aimed at improving materials analysis and neurological therapies. ​

As of 2024, Renishaw reported revenues of £691.3 million, an operating income of £108.7 million, and a net income of £96.9 million. The company employs approximately 5,213 individuals worldwide, with a significant portion dedicated to research and development within the UK. Renishaw maintains a global presence with 80 offices across 36 countries, underscoring its commitment to delivering localized solutions to a diverse clientele. ​

In March 2021, founders McMurtry and Deer announced their intention to sell their combined 53% stake in Renishaw, initiating a formal sale process. However, by July 2021, the company concluded the process, determining that none of the proposals met their objectives. In January 2025, Sir David McMurtry passed away at the age of 84, leaving a legacy of innovation in precision engineering. ​

Renishaw continues to be a leader in engineering and scientific technologies, driving advancements in precision measurement and healthcare solutions worldwide.​',
     'Listed', '2024-12-15', '1,000-9,999 employees');

INSERT INTO `t_company` VALUES
    ('68571742767a4c0d9e03320fb02d3f19', 'Softcat', '1743560656017.jpg',
     '​Softcat plc, founded in 1993 by Peter Kelly, is a leading UK-based provider of IT infrastructure solutions and services. Headquartered in Marlow, Buckinghamshire, the company specializes in delivering comprehensive IT services, including software licensing, hardware procurement, networking, security, cloud solutions, and managed services to both corporate and public sector clients. ​

Over the years, Softcat has expanded its operations across the UK and Ireland, with offices in London, Bristol, Birmingham, Leeds, Manchester, Newcastle, Glasgow, Dublin, and the South Coast. This extensive network enables the company to provide localized support and maintain strong relationships with its diverse customer base. ​

Softcat\'s commitment to customer satisfaction is reflected in its impressive 98% customer satisfaction rate. The company attributes this success to its vibrant, people-led culture that emphasizes employee engagement and development. By fostering a supportive and inclusive work environment, Softcat ensures that its team remains motivated to deliver exceptional service. ​

In November 2015, Softcat became a public limited company, listing on the London Stock Exchange and subsequently joining the FTSE 250 Index in March 2016. This transition marked a significant milestone, providing the company with additional capital to fuel its growth initiatives. ​

Financially, Softcat has demonstrated robust performance. For the fiscal year ending July 2024, the company reported revenues of £962.6 million, an operating income of £154.1 million, and a net income of £119.0 million. These figures underscore Softcat\'s effective business model and its ability to adapt to the evolving IT landscape. ​

Softcat\'s service portfolio encompasses a wide range of IT solutions, including virtual desktop and applications, software licensing, security, IT asset management, data center and private cloud, networking and connectivity, and cloud services. By offering tailored solutions, Softcat assists organizations in designing, procuring, implementing, and managing their digital infrastructure effectively. ​

The company\'s leadership team, headed by CEO Graham Charlton, continues to focus on strategic growth and maintaining a customer-centric approach. With a workforce of over 2,300 employees, Softcat remains dedicated to delivering innovative IT solutions and exceptional service to its clients. ​

In summary, Softcat plc stands out as a prominent player in the IT infrastructure sector, known for its strong customer relationships, comprehensive service offerings, and a corporate culture that values employee satisfaction and engagement.',
     'Listed', '2024-04-19', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('7cc7489e4e4344068d3c9d5767a296c5', 'Computacenter', '1743560759709.jpg',
     'Computacenter plc, established in 1981 by Philip Hulme and Peter Ogden, is a prominent British multinational specializing in information technology services. Headquartered in Hatfield, Hertfordshire, the company offers a comprehensive range of IT solutions, including technology sourcing, transformation, and managed services, catering to both public and private sector clients. ​

The company\'s service portfolio encompasses technology sourcing, professional services, and managed services. Technology sourcing assists clients in identifying and procuring suitable technology solutions. Professional services provide structured solutions and resources for deploying and integrating digital technologies. Managed services focus on maintaining and supporting IT infrastructure and operations. ​

As of 2024, Computacenter reported revenues of £6,964.8 million, an operating income of £237.9 million, and a net income of £171.9 million. The company employs approximately 20,000 individuals worldwide, reflecting its significant global presence. ​

Computacenter\'s client base spans various industries, including financial services, retail, manufacturing, and the public sector. The company collaborates with leading technology vendors to deliver tailored solutions that address the unique challenges of its customers. ​

In addition to its core services, Computacenter emphasizes corporate social responsibility, aligning its operations with the ten principles of the United Nations Global Compact. The company actively engages in initiatives aimed at reducing environmental impact and promoting sustainable IT practices. ​

Overall, Computacenter plc stands as a key player in the IT services industry, committed to delivering innovative solutions and maintaining a strong focus on sustainability and ethical business practices.',
     'Listed', '2024-02-24', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('813eb40d05ce423b910144f39527da28', 'Darktrace', '1743560854628.jpg',
     '​Darktrace plc, established in 2013 in Cambridge, UK, is a pioneering cybersecurity firm specializing in artificial intelligence (AI) to autonomously detect, respond to, and prevent cyber threats. Founded by experts in mathematics, machine learning, and cyber intelligence, the company has become a global leader in AI-driven cybersecurity solutions. ​

Darktrace\'s core technology employs unsupervised machine learning to develop a "pattern of life" for every network, device, and user within an organization. This evolving understanding of normal behavior enables the detection of potential threats in real-time. Its autonomous response technology, Antigena, can take immediate action against in-progress cyber-attacks, mitigating risks without human intervention. ​

The company\'s product suite includes Darktrace DETECT, RESPOND, PREVENT, and HEAL, offering comprehensive coverage across various digital environments such as networks, cloud infrastructures, operational technology (OT), and endpoints. These solutions provide full visibility, proactive threat detection, and autonomous response capabilities, enhancing organizations\' cyber resilience. ​

In April 2021, Darktrace listed on the London Stock Exchange with a market valuation of approximately £2.5 billion. The company\'s growth attracted the attention of American private equity firm Thoma Bravo, which acquired Darktrace for $5.3 billion in October 2024. ​

Following the acquisition, co-founder and CEO Poppy Gustafsson stepped down in September 2024, succeeded by former Chief Operating Officer Jill Popelka. Gustafsson later assumed the role of the UK\'s investment minister in October 2024, focusing on attracting long-term overseas investments and promoting economic growth through technology. ​

Darktrace continues to innovate in the cybersecurity landscape, with its AI Research Center in Cambridge, UK, and a second R&D center in The Hague, Netherlands. The company holds over 200 patents and pending applications, underscoring its commitment to advancing AI-driven security solutions. ​

As of 2024, Darktrace employs approximately 2,760 individuals and serves over 10,000 customers across 110 countries, reflecting its significant global presence and influence in the cybersecurity industry.',
     'Listed', '2024-05-16', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('ae2e4cd5c6fe43f0881b55f1cb1333ce', 'Kainos Group', '1743560989167.jpg',
     'Kainos Group plc, founded in 1986 in Belfast, Northern Ireland, is a leading provider of digital technology services and platforms. The company\'s name, derived from the ancient Greek word "kainos," meaning "new" or "fresh," reflects its commitment to innovation. Kainos specializes in delivering digital transformation solutions across various sectors, including government, healthcare, and financial services. ​

Kainos operates through three primary divisions: Digital Services, Workday Services, and Workday Products. The Digital Services division focuses on designing and implementing bespoke IT solutions for public and private sector clients. The Workday Services division assists organizations in deploying and optimizing Workday\'s Finance, Human Resources, and Planning products. The Workday Products division develops complementary software tools, such as Smart Test, Smart Audit, and Smart Shield, enhancing the Workday experience for users. ​

In July 2015, Kainos was listed on the London Stock Exchange, marking a significant milestone in its growth trajectory. As of March 2024, the company reported revenues of £382.4 million, an operating income of £60.8 million, and a net income of £48.7 million. These figures underscore Kainos\'s robust financial performance and its ability to navigate the competitive technology landscape. ​

Kainos has a global presence, with operations in the UK, Ireland, North America, Central Europe, and other international markets. The company employs approximately 2,995 individuals, fostering a culture that emphasizes diversity, inclusion, and sustainability. Kainos is committed to creating a lasting positive impact on society, local communities, and the environment. ​

In December 2024, Brendan Mooney, who had previously served as CEO from 2001 to 2023, returned to lead the company following the resignation of his successor, Russell Sloan. Mooney\'s return aims to provide continuity and reinforce Kainos\'s strategic direction amidst evolving market conditions. ​

Overall, Kainos Group plc stands out as a dynamic and innovative technology company, dedicated to delivering high-quality digital solutions and fostering long-term relationships with its clients worldwide.',
     'Listed', '2024-09-15', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('e51f9b545a774747816e44ec16144777', 'Spirent Communications', '1743561103157.jpg',
     'Spirent Communications plc, founded in 1936 as Goodliffe Electric Supplies and rebranded in 2000, is a British multinational company specializing in automated testing and assurance solutions for networks, cybersecurity, and positioning systems. Headquartered in Crawley, West Sussex, UK, with operational centers in San Jose, California, Spirent serves a diverse clientele across communications, government, enterprise, automotive, and transportation sectors. ​

The company operates through two primary segments: Lifecycle Service Assurance and Networks & Security. The Lifecycle Service Assurance segment offers end-to-end visibility, actionable insights, and automated troubleshooting to simplify the deployment and assurance of technologies like 5G, reducing time and cost. The Networks & Security segment develops test methodologies, tools, and services for virtualized networks, cloud infrastructure, and proactive security validation. ​

Spirent\'s innovative solutions address the challenges of emerging technologies, including 5G, Open RAN, Wi-Fi 6/6E, cloud computing, and autonomous vehicles. Their offerings encompass consulting services, professional services, and managed solutions, with featured services such as 5G network benchmarking, positioning, navigation, and timing (PNT) testing, and SD-WAN and SASE testing. ​

As of 2025, Spirent employs approximately 1,500 individuals worldwide. The company\'s global presence spans the Americas, Europe, the Middle East, Africa, and the Asia-Pacific region, enabling it to support over 1,500 customers annually. ​

In recent years, Spirent has pursued strategic acquisitions to enhance its capabilities. In March 2021, it acquired octoScope, a company specializing in automated Wi-Fi and 5G testing solutions. In September 2023, Spirent acquired the Test Lab Automation business of NetScout Systems, further expanding its portfolio. ​

Financially, Spirent reported revenues of $474.3 million in 2023, reflecting a 21.9% decrease compared to the previous year. Despite this decline, the company maintains a strong position in the market, continually innovating to meet the evolving demands of the technology landscape.​

Overall, Spirent Communications plc stands as a key player in the telecommunications testing industry, committed to delivering cutting-edge solutions that ensure the performance and security of next-generation technologies.',
     'Listed', '2024-03-26', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('f4e6db82aeb7411eb8dee2c441e1bbfd', 'Blue Prism Group', '1743561205158.jpg',
     '​Blue Prism Group Ltd, founded in 2001 by Alastair Bathgate and David Moss, is a British multinational software company specializing in robotic process automation (RPA). Its headquarters are located in Warrington, UK. ​

Blue Prism\'s RPA software enables organizations to create a digital workforce that automates routine, rules-based back-office processes. This technology allows businesses to enhance efficiency and accuracy by automating tasks traditionally performed by human employees. ​

The company\'s product offerings include Blue Prism Cloud, an intelligent RPA platform, along with digital exchange and process discovery tools. These solutions are designed to support various business functions, such as logistics management, sales order processing, communications mining, contact center automation, and employee onboarding. ​

Blue Prism serves clients across multiple industries, including financial services, healthcare, and telecommunications. Notable customers have included O2, Co-operative Bank, and Fidelity Investment Management. ​

In March 2022, Blue Prism was acquired by SS&C Technologies, a global provider of investment and financial software-enabled services. This acquisition aimed to enhance SS&C\'s automation capabilities and expand its portfolio of technology solutions. ​

As of 2021, Blue Prism reported revenues of $214.6 million. The company has maintained a significant presence in the RPA market, competing with firms like UiPath and Automation Anywhere. ​

Overall, Blue Prism has been instrumental in advancing the field of robotic process automation, providing organizations with tools to streamline operations and drive digital transformation.',
     'Not financed', '2024-03-09', 'Over 10,000 employees');

INSERT INTO `t_company` VALUES
    ('f6fa07b2bb154a96bbad8aad4478bcfe', 'Ideagen', '1743561304494.jpg',
     'Ideagen Ltd is a UK-based global software company specializing in providing governance, risk, and compliance (GRC) solutions. Founded in 1993 and headquartered in Nottingham, England, Ideagen has developed into a leading provider of software that helps organizations meet quality, safety, audit, and compliance requirements across highly regulated industries such as aerospace, life sciences, healthcare, finance, and manufacturing.

Ideagen’s product portfolio includes cloud-based and on-premises software platforms designed to improve operational efficiency and ensure adherence to industry-specific regulatory standards. Its core offerings include Q-Pulse (quality, safety, and risk management), Pentana Audit (internal audit and assurance), and PleaseReview (collaborative document review and co-authoring). These tools help businesses manage documentation, track compliance, conduct audits, handle incidents, and automate workflows.

With more than 11,400 customers globally, including prominent names like Airbus, Heineken, Bank of New York Mellon, and the UK NHS, Ideagen supports organizations in over 150 countries. The company\'s software is trusted by 9 of the top 10 global aerospace and defense companies, 75% of the UK’s National Health Service trusts, and numerous financial institutions and pharmaceutical firms.

In recent years, Ideagen has focused on expanding its global footprint and product capabilities through strategic acquisitions. These include major software providers like Qualsys, Workrite, and Medforce Technologies, which have strengthened Ideagen’s position in document control, e-learning, and healthcare compliance markets.

In July 2022, Ideagen was acquired by Hg Capital, a private equity firm, in a deal valued at approximately £1.1 billion. This acquisition marked a significant milestone, providing Ideagen with the resources to accelerate innovation, grow its product offerings, and expand further into international markets.

Ideagen places a strong emphasis on user-friendly interfaces and scalable solutions tailored for both small businesses and large enterprises. The company has also committed to sustainability, cybersecurity, and corporate social responsibility, aligning its growth with broader societal and environmental goals.',
     'Listed', '2024-05-08', 'Over 10,000 employees');




-- new Data

/*
INSERT INTO `t_company` VALUES
('5558969951074ef98108cb15847aba10', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');
INSERT INTO t_company VALUES
('b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('c21e87b6f4a349f5a8c2d3e6b0f7d9a5', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('b89d7e6c5f4a3b2d1f0a9e8c7d5b6f3', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('c21b7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');

INSERT INTO t_company VALUES
('a67c9e5f4d3b2a8c1f0d7b6e9f5c4a3d', 'Pinduoduo', '2024-06-30b39090b4c9ac452cb630eafb49665ef1.jpg',
'Pinduoduo',
'Listed', '2014-01-09', '1,000-9,999 employees');


*/


-- ----------------------------
-- Table structure for t_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_type`;
CREATE TABLE `t_dic_type`  (
                               `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                               `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
                               `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dic_type
-- ----------------------------
INSERT INTO `t_dic_type` VALUES ('93db6c9df2d6426593dc5f5ea76f60b1', 'education', '学历');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996c1234123', 'size', '公司规模');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996c1234567', 'listedStatus', '上市状态');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996ced28c8a', 'sex', '性别');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996ced28c8b', 'marriage', '婚姻状态');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996ced28c8c', 'role', '角色');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996ced28c8d', 'political', '政治面貌');
INSERT INTO `t_dic_type` VALUES ('97d1128f70294f0aac49e996ced28c8e', 'experience', '工作经验');

-- ----------------------------
-- Table structure for t_dic_value
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_value`;
CREATE TABLE `t_dic_value`  (
                                `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                                `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
                                `order_no` int NULL DEFAULT NULL COMMENT '排列序号',
                                `type_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型id',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dic_value
-- ----------------------------
INSERT INTO `t_dic_value` VALUES ('0391c3a8709b4d5b8543fa6b224f6123', 'More than one year', 3, '97d1128f70294f0aac49e996ced28c8e');
INSERT INTO `t_dic_value` VALUES ('0391c3a8709b4d5b8543fa6b224f65fe', 'Student', 1, '97d1128f70294f0aac49e996ced28c8e');
INSERT INTO `t_dic_value` VALUES ('05a9d143e1634b7887f92cc8ed1314eb', 'Associate Degree', 4, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', 'Female', 2, '97d1128f70294f0aac49e996ced28c8a');
INSERT INTO `t_dic_value` VALUES ('08cbadfec89540849e058c00eddabc71', 'Male', 1, '97d1128f70294f0aac49e996ced28c8a');
INSERT INTO `t_dic_value` VALUES ('0cb6dc46b38f427aab85f790c74d9a74', 'Master\'s Degree', 6, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('0fe33840c6d84bf78df55d49b1134245', 'Job seeking', 1, '97d1128f70294f0aac49e996ced28c8c');
INSERT INTO `t_dic_value` VALUES ('0fe33840c6d84bf78df55d49b1611234', 'Hiring', 2, '97d1128f70294f0aac49e996ced28c8c');
INSERT INTO `t_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', 'Confidential', 3, '97d1128f70294f0aac49e996ced28c8a');
INSERT INTO `t_dic_value` VALUES ('1b1d1525df2b4565a6efa5d5275e9de5', 'Doctorate', 7, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('2dd2c0b9e9a346868a4b332124446328', 'More than three years', 4, '97d1128f70294f0aac49e996ced28c8e');
INSERT INTO `t_dic_value` VALUES ('2dd2c0b9e9a346868a4b3407e4446328', 'Fresh Graduate', 2, '97d1128f70294f0aac49e996ced28c8e');
INSERT INTO `t_dic_value` VALUES ('415d46adaecb4158b07e02b97481dadb', 'Over 10,000 employees', 6, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('4447ea6211554befa654725f7b70181e', 'Bachelor\'s Degree', 5, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('594d06e6c35941f78d9bb351bd0f0c88', 'Married', 2, '97d1128f70294f0aac49e996ced28c8b');
INSERT INTO `t_dic_value` VALUES ('5b53e99e16024f6e8de350625bd5fc75', 'Confidential', 3, '97d1128f70294f0aac49e996ced28c8b');
INSERT INTO `t_dic_value` VALUES ('607d32691729459db258dee8ad82e647', 'Series B', 4, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('65b8dfd47664484f848fbc2dbd1ab7b7', 'Confidential', 4, '97d1128f70294f0aac49e996ced28c8d');
INSERT INTO `t_dic_value` VALUES ('6f0035af533f486ab35152d0468a41fd', 'Masses', 1, '97d1128f70294f0aac49e996ced28c8d');
INSERT INTO `t_dic_value` VALUES ('6f41dfc561a948058fcec7367babb5eb', '100-499 employees', 3, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('784324abb952417db736ab818fb9ab12', 'Series D or above', 6, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('7e0bec9563a949c3ba93093c9c7353f1', 'High school', 3, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('8b5fa129e8af4269b60956389203396c', 'No financing', 8, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('97d1128f70294f0aac49e996c1234111', 'Not financed', 1, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('9d4a8bf7fc924137838631a1c91a7c2f', 'Listed', 7, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('a51da6d6111241dc9b45c142385c107e', '1,000-9,999 employees', 5, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('ac00e34db906498a9a2966fde2fc3a04', 'Angel round', 2, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('ac6e6e24fa0847c98786699a5e566966', '20-99 employees', 2, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('b61305eb7206441996eef5b8cf08709c', 'Single', 1, '97d1128f70294f0aac49e996ced28c8b');
INSERT INTO `t_dic_value` VALUES ('b73bd4c91fa34d408e51cf89612d4978', 'Vocational/Technical', 2, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('c08490a8b5794d16b9825931896bafa8', 'Series A', 3, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('c0b263b816f948559aaf698fadf690b4', 'Youth League member', 2, '97d1128f70294f0aac49e996ced28c8d');
INSERT INTO `t_dic_value` VALUES ('c53f8edffc0d43a09c902b959309a794', 'Junior high or below', 1, '93db6c9df2d6426593dc5f5ea76f60b1');
INSERT INTO `t_dic_value` VALUES ('c872e7a459e24418a71e7ec58db3bc44', '0-19 employees', 1, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('d3a8fc8ba81748e6bf3d62aba38f256b', 'Communist Party member', 3, '97d1128f70294f0aac49e996ced28c8d');
INSERT INTO `t_dic_value` VALUES ('da8be333669a42e2a318cd3a1a97223a', '500-999 employees', 4, '97d1128f70294f0aac49e996c1234123');
INSERT INTO `t_dic_value` VALUES ('f24d986d17b7486a92a208ef63022b77', 'Series C', 5, '97d1128f70294f0aac49e996c1234567');
INSERT INTO `t_dic_value` VALUES ('f79d9017a2fc4498a9a53f2a6b9c3232', 'More than five years', 5, '97d1128f70294f0aac49e996ced28c8e');



-- ----------------------------
-- Table structure for t_hr
-- ----------------------------
DROP TABLE IF EXISTS `t_hr`;
CREATE TABLE `t_hr`  (
                         `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                         `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
                         `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
                         `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
                         `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
                         `company_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
                         `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hr
-- ----------------------------
INSERT INTO `t_hr` VALUES ('02d81867eb084822bb9c34522763a50f', 'Peter Herweck', '男', '18', 'CEO', 'f4e6db82aeb7411eb8dee2c441e1bbfd', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('19cef68ec2da4e14aa57977fce948253', 'Steve Hare', '男', '18', 'CEO', '7cc7489e4e4344068d3c9d5767a296c5', 'a0000000000000000000000000000006');
INSERT INTO `t_hr` VALUES ('4ebf43f8229f484ebaa8aa3dcedb3fb3', 'John Cotterell', '男', '18', 'CEO', '60c96dea711d4b2bb8217e30016cdf94', 'a0000000000000000000000000000003');
INSERT INTO `t_hr` VALUES ('624545d2ae744748acdd785d14701f5d', 'William Lee', '男', '18', 'CEO', 'e51f9b545a774747816e44ec16144777', 'a0000000000000000000000000000009');
INSERT INTO `t_hr` VALUES ('a9dc7c4197ee44d5b15b391a1ab2a9b3', 'Graham Charlton', '男', '18', 'CEO', '66d1c3d86bda41a38a67eaa53f75d9c6', 'a0000000000000000000000000000004');
INSERT INTO `t_hr` VALUES ('ba7ec9bd016f4c59ae6c807b8986671e', 'Mike Norris', '男', '18', 'CEO', '68571742767a4c0d9e03320fb02d3f19', 'a0000000000000000000000000000005');
INSERT INTO `t_hr` VALUES ('bb06ef514e8d4f6fb2552dee5215d43b', 'Jill Popelka', '男', '18', 'CEO', '34f11160ff5c4c9481209bfff3cae983', 'a0000000000000000000000000000001');
INSERT INTO `t_hr` VALUES ('c6a74665bbee412986e6c4136f9dbe9f', 'Brendan Mooney', '男', '18', 'CEO', 'ae2e4cd5c6fe43f0881b55f1cb1333ce', 'a0000000000000000000000000000008');
INSERT INTO `t_hr` VALUES ('ca45b94ee3b149718464b11b7058c038', 'Eric Updyke', '男', '18', 'CEO', '813eb40d05ce423b910144f39527da28', 'a0000000000000000000000000000007');
INSERT INTO `t_hr` VALUES ('e785ca9ba1b44d4aade7e383d49dda1b', 'Jason Kingdon', '男', '18', 'CEO', 'f6fa07b2bb154a96bbad8aad4478bcfe', 'a0000000000000000000000000000011');
INSERT INTO `t_hr` VALUES ('f45d524ff263492f9433739af13701c9', 'Ashley Marron', '男', '18', 'CEO', '5558969951074ef98108cb15847aba10', 'a0000000000000000000000000000002');


-- new DATA
/*
INSERT INTO `t_hr` VALUES ('f76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '张伟', '男', '35', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('e53d76c2f9b74da3a8b7c5e4d1b0f6a9', '李娜', '女', '32', 'CEO', 'c21e87b6f4a349f5a8c2d3e6b0f7d9a5', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d98f7b6e5c4a3b2d1f0a9e8c7d5b6f3', '王磊', '男', '38', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '刘敏', '女', '29', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('c76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '陈强', '男', '40', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '赵丽', '女', '33', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '孙浩', '男', '36', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('e53d76c2f9b74da3a8b7c5e4d1b0f6a9', '周婷', '女', '30', 'CEO', 'c21e87b6f4a349f5a8c2d3e6b0f7d9a5', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d98f7b6e5c4a3b2d1f0a9e8c7d5b6f3', '郑伟', '男', '42', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '吴芳', '女', '37', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('c76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '冯军', '男', '39', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '何静', '女', '31', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f76e9d5b4c3a2b1d0b7e6c5f4a9b8d7e', '胡斌', '男', '44', 'CEO', 'b89d7e6c5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('e56f7c9b3a5d2b4a1d0b7e6c5f3a9d8e', '郭艳', '女', '34', 'CEO', 'c21b7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d98f7b6e5c4a3b2d1f0a9e8c7d5b6f3', '蒋波', '男', '41', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('c76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '曹红', '女', '28', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '曾军', '男', '43', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '彭婷', '女', '30', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '谢刚', '男', '36', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('e53d76c2f9b74da3a8b7c5e4d1b0f6a9', '赖媛', '女', '33', 'CEO', 'c21e87b6f4a349f5a8c2d3e6b0f7d9a5', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f92e47c5d8b14f3a9c6a7b0d2e5f3b8a', '邹峰', '男', '38', 'CEO', 'a67c9e5f4d3b2a8c1f0d7b6e9f5c4a3d', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '龙梅', '女', '29', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('c76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', '高翔', '男', '40', 'CEO', 'b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '程丽', '女', '35', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '王凯', '男', '39', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '李静', '女', '34', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f92e47c5d8b14f3a9c6a7b0d2e5f3b8a', '赵峰', '男', '31', 'CEO', 'a67c9e5f4d3b2a8c1f0d7b6e9f5c4a3d', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '王欣', '女', '29', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d43b6e7f5a8c9b2d1f0a7c3d5e4f6a8b', '孙亮', '男', '36', 'CEO', 'e65b9c7d8f4a3b2d1f0a6e5c7d9b3f4', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f92e47c5d8b14f3a9c6a7b0d2e5f3b8a', '杨洋', '女', '33', 'CEO', 'a67c9e5f4d3b2a8c1f0d7b6e9f5c4a3d', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '刘超', '男', '40', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f92e47c5d8b14f3a9c6a7b0d2e5f3b8a', '何倩', '女', '35', 'CEO', 'a67c9e5f4d3b2a8c1f0d7b6e9f5c4a3d', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '罗峰', '男', '42', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('b89c7d6e5f4a3b2d1f0a9e8c7d5b6f3', '郭蕾', '女', '30', 'CEO', 'c76d8e9f5a4b3c2a1d0b7e6f3a9c5d4e', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('d53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '马欣', '女', '38', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');
INSERT INTO `t_hr` VALUES ('f53b7e9f6a4b3c2a1d0b8c7d5f3a9e6', '张晨', '男', '37', 'CEO', 'e78c6d5f4a3b2d1f0a9b7e5c7d9f3a6', 'a0000000000000000000000000000010');

*/

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
                          `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                          `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名',
                          `business` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类型',
                          `education` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历要求',
                          `experience` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作经验要求',
                          `salary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工资',
                          `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地区',
                          `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
                          `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
                          `create_time` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
                          `create_hr_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'HRid',
                          `company_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('0932a7d8c325494b81b5156acae2af36', 'Test Engineer', 'Technology - Testing', 'Bachelor\'s Degree', 'Student', '50K-71K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
                            'Job Responsibilities:\n1. Participate in the full process of product testing, including requirement analysis, design review, test plan formulation, test case design and execution, defect tracking, and software quality analysis.\n2. Execute project testing, including test plan formulation, test resource allocation, test environment setup, integration testing, regression testing, etc.\n3. Ensure the quality of the system under test and strive to improve the quality and efficiency of development through innovation in testing processes and methods.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or a related field.\n2. More than 3 years of testing experience in the internet industry.\n3. Familiar with software testing processes, proficient in software testing theories and methods, and able to use popular testing tools proficiently.\n4. Skilled in database tools and API testing tools.\n5. Familiar with performance testing and automated testing.\n6. Knowledge of at least one development language among Java, C++, and Python, and familiarity with the Linux operating system.\n7. Strong business understanding, good communication skills; responsible and detail-oriented, with a quick learning and exploration ability.', '2024-05-13', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES ('0f6f870581524fa6be8695055336d90d', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'Fresh Graduate', '12K-20K', 'Bristol - Bristol', 'Imperial Building, Tower 1, 1st Floor',
                            'Base Salary 4-7.5K + Commission.\nSocial insurance and housing fund upon employment.\nDouble weekends off.\n\nJob Responsibilities:\n1. The company provides real-time customer resources, and you will contact prospective customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand feedback after meetings and relay information to sales.\n4. Track customer engagement points and collaborate with sales for order processing.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around 1 year of experience in telephone customer service, telesales, or call center work, preferably in the SaaS software industry.\n2. Excellent communication skills, emotional stability, high stress tolerance, and a positive attitude.\n3. Proficiency in using Office software.', '2024-05-31', 'c6a74665bbee412986e6c4136f9dbe9f', 'ae2e4cd5c6fe43f0881b55f1cb1333ce');

INSERT INTO `t_job` VALUES ('15a871874975446b9df84813384d37e3', 'Java Intern Development Engineer', 'Technology - Backend', 'Bachelor\'s Degree', 'Student', '5K-10K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
                            'Job Responsibilities:\n1. Promote the construction of the business unit\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path and training programs for R&D personnel, identifying training resources, organizing execution, monitoring growth status, and evaluating project effectiveness.\n2. Establish an internal lecturer team, develop internal lecturer incentive policies, and assist internal experts in extracting their experience.\n3. Based on company culture and strategic requirements, participate in building competency models, be familiar with assessment tools, promote talent reviews, and establish personal development plans for core personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, 5+ years of experience in training or talent development, extensive experience in talent development projects, preferably in the internet industry.\n2. Unique insights and extensive practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PPT, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-06-05', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');

INSERT INTO `t_job`
VALUES
    ('20b03d3b933b45f1b9ffff738a0c4847', 'Junior Java Development Engineer', 'Technology - Backend', 'Bachelor\'s Degree', 'More than one year', '12K-20K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Participate in the full process of product testing, including requirement analysis, design review, test plan formulation, test case design and execution, defect tracking, and software quality analysis.\n2. Execute project testing, including test plan formulation, test resource allocation, test environment setup, integration testing, regression testing, etc.\n3. Ensure the quality of the system under test and strive to improve the quality and efficiency of development through innovation in testing processes and methods.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or a related field.\n2. More than 3 years of testing experience in the internet industry.\n3. Familiar with software testing processes, proficient in software testing theories and methods, and able to use popular testing tools proficiently.\n4. Skilled in database tools and API testing tools.\n5. Familiar with performance testing and automated testing.\n6. Knowledge of at least one development language among Java, C++, and Python, and familiarity with the Linux operating system.\n7. Strong business understanding, good communication skills; responsible and detail-oriented, with a quick learning and exploration ability.', '2024-05-13', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');


INSERT INTO `t_job` VALUES ('29a1de39782046fd9ca221d98bebbf1b', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'More than one year', '50K-72K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor', 'Job Responsibilities:\r\n1. Participate in the full process of product testing, including requirement analysis, design review, test plan formulation, test case design and execution, defect tracking, and software quality analysis;\r\n2. Execute project testing, including test plan formulation, test resource allocation, test environment setup, integration testing, regression testing, etc.;\r\n3. Ensure the quality of the system under test and strive to improve the quality and efficiency of development through innovation in testing processes and methods.\r\nJob Requirements:\r\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or a related field;\r\n2. More than 3 years of testing experience in the internet industry;\r\n3. Familiar with software testing processes, proficient in software testing theories and methods, and able to use popular testing tools proficiently;\r\n4. Skilled in database tools and API testing tools;\r\n5. Familiar with performance testing and automated testing;\r\n6. Knowledge of at least one development language among Java, C++, and Python, and familiarity with the Linux operating system;\r\n7. Strong business understanding, good communication skills; responsible and detail-oriented, with a quick learning and exploration ability.', '2024-01-26', '4ebf43f8229f484ebaa8aa3dcedb3fb3', '60c96dea711d4b2bb8217e30016cdf94');

INSERT INTO `t_job` VALUES
    ('2c335308f1814a5598618ae6b4758447', 'Senior Java Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'More than one year', '12K-19K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Promote the construction of the department\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path for R&D personnel and training programs, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, formulate lecturer incentive policies, and assist internal experts in knowledge extraction.\n3. Based on company culture and strategic requirements, participate in competency model building, be familiar with evaluation tools, facilitate talent assessment, and establish development plans for key personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, with more than 5 years of experience in training or talent development. Extensive experience in talent development projects, preferably within the internet industry.\n2. Unique insights and practical experience in professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficient in Office software, especially PowerPoint, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-06-13', 'e785ca9ba1b44d4aade7e383d49dda1b', 'f6fa07b2bb154a96bbad8aad4478bcfe');

INSERT INTO `t_job` VALUES
    ('2f27c46521f143c6adfbc76ed24e1ad9', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than five years', '50K-71K', 'Antrim / Down - Belfast', 'Windsor Complex, Block A, 2nd Floor',
     'Job Responsibilities:\n1. Focused on user needs, continuously improving map data quality and user experience, ensuring business objectives are met.\n2. Collect and analyze product requirements, evaluate their rationality, and categorize product demands.\n3. Driven by data quality, deeply explore data characteristics, refine efficient analytical methods, and align business strategies with user scenarios.\n4. Plan and define map data products, specify product features and strategies, assess feasibility, manage risks, and drive implementation.\n5. Research industry trends, conduct user research, monitor competitors, and analyze their product strategies timely.\n\nJob Highlights:\n1. A great opportunity for data mining and data strategy products, leveraging Alibaba\'s big data resources.\n2. Business-driven, rich industry scenarios, and diverse hands-on product opportunities.\n3. High-precision data applications in future intelligent driving, autonomous vehicles, and high-accuracy mapping services.\n\nJob Requirements:\n1. Familiarity with map production, internet product design processes, and ability to oversee the entire product lifecycle from design to development and promotion.\n2. Bachelor\'s degree or above, with at least five years of experience, including two years in strategy product development or data analysis. Strong product knowledge base; background in statistics, mathematics, computer science, GIS, or surveying is preferred.\n3. Strong data insights and logical thinking ability, sensitivity to user experience, and ability to translate data into product value.\n4. Innovative mindset, proactive problem-solving skills, and business-oriented thinking. Strong coordination, execution, and communication skills for internal and external collaboration.\n5. Integrity, positive attitude, strong sense of responsibility, self-driven, with excellent learning and stress management capabilities.', '2024-06-10', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');


INSERT INTO `t_job` VALUES
    ('30690d2058474aba9ccd071d44f83fac', 'Test Engineer', 'Technology - Testing', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-13K', 'Greater London - London', 'Baidu Technology Park, Haidian District, Beijing',
     'Task Responsibilities:\n1. Participate in the entire process of product testing, including requirement analysis, design review, test planning, test case design and execution, defect tracking, and software quality analysis.\n2. Engage in project testing, including planning, resource allocation, test environment setup, integration testing, regression testing, etc.\n3. Ensure the quality of the tested system and strive to enhance R&D quality and efficiency through process and methodology innovations.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or related fields.\n2. More than 3 years of testing experience in the Internet industry.\n3. Proficient in software testing processes, theories, and methods, and adept at using popular testing tools.\n4. Skilled in database tools and API testing tools.\n5. Familiar with performance and automated testing.\n6. Knowledgeable in Java, C++, or Python programming languages and familiar with the Linux operating system.\n7. Strong business acumen, excellent communication skills; responsible, detail-oriented, and quick learner.', '2024-06-14', 'e785ca9ba1b44d4aade7e383d49dda1b', 'f6fa07b2bb154a96bbad8aad4478bcfe');

INSERT INTO `t_job` VALUES
    ('318e61934add4d60905d3e312d41064e', 'Junior Java Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'Fresh Graduate', '12K-18K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Promote the construction of the department\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path for R&D personnel and training programs, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, formulate lecturer incentive policies, and assist internal experts in knowledge extraction.\n3. Based on company culture and strategic requirements, participate in competency model building, be familiar with evaluation tools, facilitate talent assessment, and establish development plans for key personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, with more than 5 years of experience in training or talent development. Extensive experience in talent development projects, preferably within the internet industry.\n2. Unique insights and practical experience in professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficient in Office software, especially PowerPoint, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-05-13', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');

INSERT INTO `t_job` VALUES
    ('3d1d45c8b543408085cdde0c196f2228', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-14K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Responsible for the system architecture and solution design of the in-store business system and accountable for its rationality, scalability, and replicability.\n2. Maintain and upgrade the technology architecture of existing systems to meet new business requirements.\n3. Conduct performance optimization, ensuring system stability and workflow operations under high concurrency and throughput.\n4. Strong technical research capabilities to propose reasonable technology selections for different scenarios, track new technologies, and apply them to products.\n5. Strong sense of responsibility and initiative to quickly locate problems and lead relevant solutions.\n\nJob Requirements:\n- Bachelor\'s degree or above in Computer Science, Software Engineering, or related fields.\n- More than 5 years of experience in J2EE project development; familiar with J2EE design patterns, proficient in Java and Web application development.\n- Deep understanding of frameworks such as SSM, familiar with MySQL, Redis, Dubbo, and proficient in SOA architecture design.\n- Familiar with distributed, multi-threaded, and high-performance design and coding, as well as performance tuning.\n- Familiar with agile development processes, keen insight into technological trends, and a strong pursuit of excellent code and structure.\n- Strong analytical and problem-solving skills, with a high sense of responsibility.\n- Experience in designing and developing large-scale web applications with high concurrent access is preferred.\n- Middleware design and development experience is preferred.\n- Candidates with a background in the catering internet industry are preferred.', '2024-05-29', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');

INSERT INTO `t_job` VALUES
    ('4c5d255db31143da85b6c7bc8a58399a', 'Product Manager', 'Product - Product Manager', 'Master\'s Degree', 'Fresh Graduate', '10K-13K', 'Tyne and Wear - Newcastle', 'Imperial Building, Tower 1, 1st Floor',
     'Job Responsibilities:\n1. Promote the talent training system and talent pipeline development in the business department, plan and implement various talent development projects, including designing the growth path for R&D personnel, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, formulate internal lecturer incentive policies, and assist internal experts in experience extraction.\n3. Based on company culture and strategic requirements, participate in competency model building, be familiar with assessment tools, facilitate talent reviews, and establish individual development plans for key personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, with more than 5 years of experience in training or talent development. Rich experience in talent development projects, preferably in the internet industry.\n2. Unique insights and rich practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PowerPoint, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-05-14', 'ba7ec9bd016f4c59ae6c807b8986671e', '68571742767a4c0d9e03320fb02d3f19');

INSERT INTO `t_job` VALUES
    ('5255c8ab6a4d4eab855a6e02c59d385a', 'Test Engineer', 'Technology - Testing', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-14K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor',
     'Base Salary 4-7.5K + Commission.\nSocial insurance and housing fund upon employment.\nDouble weekends off.\n\nJob Responsibilities:\n1. The company provides real-time customer resources, and you will contact prospective customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand feedback after meetings and relay information to sales.\n4. Track customer engagement points and collaborate with sales for order processing.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around 1 year of experience in telephone customer service, telesales, or call center work, preferably in the SaaS software industry.\n2. Excellent communication skills, emotional stability, high stress tolerance, and a positive attitude.\n3. Proficiency in using Office software.', '2024-06-19', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');

INSERT INTO `t_job` VALUES
    ('537ca0a576a64d8d82c29b5c73e932e1', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'More than one year', '50K-72K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Participate in the full product testing process, including requirement analysis, design review, test plan creation, test case design and execution, defect tracking, and software quality analysis.\n2. Conduct project testing, including test planning, resource allocation, test environment setup, integration testing, and regression testing.\n3. Ensure the quality of the tested system and enhance development efficiency through process and methodological innovations.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science or Software-related majors.\n2. More than 3 years of testing experience in the Internet industry.\n3. Proficiency in software testing processes, theories, and methods, with experience using popular testing tools.\n4. Proficiency in database and API testing tools.\n5. Familiarity with performance and automation testing.\n6. Knowledge of Java, C++, or Python, and familiarity with the Linux operating system.\n7. Strong business acumen, excellent communication skills, and a quick learning ability.', '2024-01-21', '02d81867eb084822bb9c34522763a50f', 'f4e6db82aeb7411eb8dee2c441e1bbfd');

INSERT INTO `t_job` VALUES
    ('5c6282872ede468eac56184e14ff6981', 'Java Intern Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'More than five years', '12K-18K', 'Antrim / Down - Belfast', 'Windsor Complex, Block A, 2nd Floor',
     'Job Responsibilities:\n1. Responsible for the system architecture and solution design of in-store business systems, ensuring rationality, scalability, and replicability.\n2. Maintain and upgrade existing system architectures to support new business needs.\n3. Perform performance optimization to ensure stability under high concurrency and throughput scenarios.\n4. Strong research capabilities to propose appropriate technology selections for different scenarios, track and apply new technologies.\n5. Strong responsibility and initiative to quickly identify and resolve technical issues.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or a related field.\n2. More than 5 years of experience in J2EE project development; familiarity with J2EE design patterns and expertise in Java and Web application development.\n3. Deep understanding of frameworks like SSM, familiarity with MySQL, Redis, Dubbo, and proficiency in SOA architecture design.\n4. Experience in distributed, multi-threaded, high-performance design and coding, as well as performance tuning.\n5. Strong analytical and problem-solving skills, with a high sense of responsibility.\n6. Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n7. Middleware design and development experience is preferred.\n8. Candidates with a background in the catering internet industry are preferred.', '2024-05-29', '624545d2ae744748acdd785d14701f5d', 'e51f9b545a774747816e44ec16144777');

INSERT INTO `t_job` VALUES
    ('658e833c950f40fc90305acfa0392482', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than five years', '50K-72K', 'Greater Manchester - Manchester', 'Windsor Complex, Tower 1, 1st Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-06-15', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');

INSERT INTO `t_job` VALUES
    ('70ef7e8476f64dff9e45c7bba1144837', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than one year', '10K-13K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Base Salary 4-7.5K + Commission.\nSocial insurance and housing fund upon employment.\nDouble weekends off.\n\nJob Responsibilities:\n1. The company provides real-time customer resources, and you will contact prospective customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand feedback after meetings and relay information to sales.\n4. Track customer engagement points and collaborate with sales for order processing.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around 1 year of experience in telephone customer service, telesales, or call center work, preferably in the SaaS software industry.\n2. Excellent communication skills, emotional stability, high stress tolerance, and a positive attitude.\n3. Proficiency in using Office software.', '2024-06-09', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');


INSERT INTO `t_job` VALUES
    ('7a26e1980fc24ecc876e5ca43ecc698a', 'Algorithm Engineer', 'Technology - Algorithm', 'Master\'s Degree', 'More than five years', '50K-72K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Base salary 4-7.5K + commission\nSocial security and housing fund upon employment\nTwo-day weekends\n\nJob Responsibilities:\n1. The company provides real-time customer resources. Contact potential customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand post-meeting feedback and relay it to sales.\n4. Track customer engagement points and work with sales to process orders.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around one year of experience in telephone customer service, telesales, or call center work. SaaS software industry experience is preferred.\n2. Excellent communication skills, emotional stability, ability to handle stress, and a positive attitude.\n3. Proficiency in Office software.', '2024-06-11', '624545d2ae744748acdd785d14701f5d', 'e51f9b545a774747816e44ec16144777');

INSERT INTO `t_job` VALUES
    ('7f48c7666a37419a9dab1606d9b5283d', 'Java Intern Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'Fresh Graduate', '50K-72K', 'Scotland - Edinburgh', 'Diamond Building, Block C, 1st Floor',
     'Job Responsibilities:\n1. Participate in the full product testing process, including requirement analysis, design review, test planning, test case design and execution, defect tracking, and software quality analysis.\n2. Execute project testing, including test planning, resource allocation, test environment setup, integration testing, and regression testing.\n3. Ensure the quality of the tested system and enhance development efficiency through process and methodological innovations.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science or Software-related fields.\n2. More than three years of experience in Internet industry testing.\n3. Proficiency in software testing processes, theories, and methods, with experience using popular testing tools.\n4. Proficiency in database and API testing tools.\n5. Familiarity with performance and automation testing.\n6. Knowledge of Java, C++, or Python, and familiarity with the Linux operating system.\n7. Strong business acumen, excellent communication skills, and a quick learning ability.', '2024-05-15', 'bb06ef514e8d4f6fb2552dee5215d43b', '34f11160ff5c4c9481209bfff3cae983');

INSERT INTO `t_job` VALUES
    ('812716f1ca60448ab0d09c3f8e685e8e', 'Java Intern Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'Student', '5K-8K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Responsible for system architecture and solution design of in-store business sub-products, ensuring rationality, scalability, and replicability.\n2. Maintain and upgrade existing system architectures to support new business needs.\n3. Perform performance optimization to ensure stability under high concurrency and throughput scenarios.\n4. Strong research capabilities to propose appropriate technology selections for different scenarios, track and apply new technologies.\n5. Strong responsibility and initiative to quickly identify and resolve technical issues.\n\nJob Requirements:\n- Bachelor\'s degree or above in Computer Science or related fields.\n- More than five years of experience in J2EE project development.\n- Proficiency in J2EE design patterns, Java, and web application development.\n- In-depth understanding of frameworks such as SSM, familiarity with MySQL, Redis, Dubbo, and proficiency in SOA architecture design.\n- Experience in distributed, multi-threaded, high-performance design and coding, as well as performance tuning.\n- Strong analytical and problem-solving skills, with a high sense of responsibility.\n- Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n- Middleware design and development experience is preferred.\n- Candidates with a background in the catering internet industry are preferred.', '2024-06-05', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');

INSERT INTO `t_job` VALUES
    ('838aa1ecebf54794bb402ddecf2d7dc5', 'Java Intern Developer', 'Technology - Backend', 'Associate Degree', 'Fresh Graduate', '10K-15K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor',
     'Base salary 4-7.5K + commission\nSocial security and housing fund upon employment\nTwo-day weekends\n\nJob Responsibilities:\n1. The company provides real-time customer resources. Contact potential customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand post-meeting feedback and relay it to sales.\n4. Track customer engagement points and work with sales to process orders.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around one year of experience in telephone customer service, telesales, or call center work. SaaS software industry experience is preferred.\n2. Excellent communication skills, emotional stability, ability to handle stress, and a positive attitude.\n3. Proficiency in Office software.', '2024-01-22', '02d81867eb084822bb9c34522763a50f', 'f4e6db82aeb7411eb8dee2c441e1bbfd');


INSERT INTO t_job VALUES
    ('8636e9f116414fada1749baf83378d72', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than five years', '50K-70K', 'Antrim / Down - Belfast', 'Windsor Complex, Block A, 2nd Floor',
     'Base salary 4-7.5K + commission\nSocial security and housing fund upon employment\nTwo-day weekends\n\nJob Responsibilities:\n1. The company provides real-time customer resources. Contact potential customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand post-meeting feedback and relay it to sales.\n4. Track customer engagement points and work with sales to process orders.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around one year of experience in telephone customer service, telesales, or call center work. SaaS software industry experience is preferred.\n2. Excellent communication skills, emotional stability, ability to handle stress, and a positive attitude.\n3. Proficiency in Office software.', '2024-05-07', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');
INSERT INTO t_job VALUES
    ('86fe14acb73e480c88d9a14e2489817d', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'More than one year', '10K-12K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-05-29', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');
INSERT INTO t_job VALUES
    ('8a4c98ec74414df1902bcc3a7f57f9f2', 'Test Engineer', 'Technology - Testing', 'Master\'s Degree', 'Fresh Graduate', '5K-10K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:\n1. Participate in the full product testing process, including requirement analysis, design review, test planning, test case design and execution, defect tracking, and software quality analysis.\n2. Execute project testing, including test planning, resource allocation, test environment setup, integration testing, and regression testing.\n3. Ensure the quality of the tested system and enhance development efficiency through process and methodological innovations.\n\nJob Requirements:\n1. Master\'s degree or above in Computer Science or Software-related fields.\n2. More than three years of experience in Internet industry testing.\n3. Proficiency in software testing processes, theories, and methods, with experience using popular testing tools.\n4. Proficiency in database and API testing tools.\n5. Familiarity with performance and automation testing.\n6. Knowledge of Java, C++, or Python, and familiarity with the Linux operating system.\n7. Strong business acumen, excellent communication skills, and a quick learning ability.', '2024-05-30', 'bb06ef514e8d4f6fb2552dee5215d43b', '34f11160ff5c4c9481209bfff3cae983');

INSERT INTO t_job VALUES
    ('9a77df2959d3451682917fba1b047e24', 'Senior Java Developer', 'Technology - Backend', 'Doctorate', 'More than one year', '10K-15K', 'Scotland - Edinburgh', 'Diamond Building, Block C, 1st Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-01-28', '4ebf43f8229f484ebaa8aa3dcedb3fb3', '60c96dea711d4b2bb8217e30016cdf94');


INSERT INTO `t_job` VALUES
    ('9efb43b6ffd94bed9184abb5e6d9d5d5', 'Junior Java Developer', 'Technology - Backend', 'Doctorate', 'Fresh Graduate', '10K-15K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-01-23', '19cef68ec2da4e14aa57977fce948253', '7cc7489e4e4344068d3c9d5767a296c5');

INSERT INTO `t_job` VALUES
    ('a1fa6ee9b7d04576b133d695f4486773', 'Product Manager', 'Product - Product Manager', 'Doctorate', 'Fresh Graduate', '10K-13K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-06-11', 'e785ca9ba1b44d4aade7e383d49dda1b', 'f6fa07b2bb154a96bbad8aad4478bcfe');

INSERT INTO `t_job` VALUES
    ('aa9ce928b4cd48a493f7b4c335ede1f4', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'Fresh Graduate', '5K-8K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-06-12', '624545d2ae744748acdd785d14701f5d', 'e51f9b545a774747816e44ec16144777');

INSERT INTO `t_job` VALUES
    ('b38750cd824345729481d7ac03313151', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than five years', '50K-73K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-05-29', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');
INSERT INTO `t_job` VALUES
    ('b3b86128dcec4c4281ecec5e67a45d12', 'Java Intern Developer', 'Technology - Backend', 'Associate Degree', 'Student', '5K-9K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Promote the construction of the department\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path for R&D personnel and training programs, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, formulate lecturer incentive policies, and assist internal experts in knowledge extraction.\n3. Based on company culture and strategic requirements, participate in competency model building, be familiar with evaluation tools, facilitate talent assessment, and establish development plans for key personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, with more than 5 years of experience in training or talent development. Extensive experience in talent development projects, preferably within the internet industry.\n2. Unique insights and practical experience in professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficient in Office software, especially PowerPoint, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-06-12', 'e785ca9ba1b44d4aade7e383d49dda1b', 'f6fa07b2bb154a96bbad8aad4478bcfe');

INSERT INTO `t_job` VALUES
    ('b8ed740293cb48c99cabe3752daa5bb3', 'Algorithm Engineer', 'Technology - Algorithm', 'Bachelor\'s Degree', 'Student', '10K-15K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Promote the construction of the business unit\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path and training programs for R&D personnel, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, develop internal lecturer incentive policies, and assist internal experts in extracting their experience.\n3. Based on company culture and strategic requirements, participate in building competency models, be familiar with assessment tools, promote talent reviews, and establish personal development plans for core personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, 5+ years of experience in training or talent development, extensive experience in talent development projects, preferably in the internet industry.\n2. Unique insights and extensive practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PPT, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-05-13', '02d81867eb084822bb9c34522763a50f', 'f4e6db82aeb7411eb8dee2c441e1bbfd');

INSERT INTO `t_job` VALUES
    ('bf8d5bceac6d4f53b56f8a20c2c04b5c', 'Algorithm Engineer', 'Technology - Algorithm', 'Master\'s Degree', 'Fresh Graduate', '50K-72K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Promote the construction of the business unit\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path and training programs for R&D personnel, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, develop internal lecturer incentive policies, and assist internal experts in extracting their experience.\n3. Based on company culture and strategic requirements, participate in building competency models, be familiar with assessment tools, promote talent reviews, and establish personal development plans for core personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, 5+ years of experience in training or talent development, extensive experience in talent development projects, preferably in the internet industry.\n2. Unique insights and extensive practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PPT, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-01-25', '19cef68ec2da4e14aa57977fce948253', '7cc7489e4e4344068d3c9d5767a296c5');


INSERT INTO `t_job` VALUES
    ('cf78526499de4d028e1a03e1a561f224', 'Test Engineer', 'Technology - Testing', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-15K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Responsible for the architecture and solution design of in-store business system sub-products, ensuring their rationality, scalability, and replicability.\n2. Maintain and upgrade the existing system architecture to support new business requirements.\n3. Perform performance tuning to ensure system stability under high concurrency and throughput.\n4. Conduct in-depth research on technologies to make appropriate technology selections, track, and implement new technologies in products.\n5. Strong responsibility and initiative to quickly identify and resolve architecture issues.\n\nJob Requirements:\n- Bachelor\'s degree or above in Computer Science, Software Engineering, or related fields.\n- More than five years of J2EE project development experience; familiarity with J2EE design patterns, proficiency in Java and web application development.\n- Deep understanding of frameworks such as SSM, familiarity with MySQL/Redis, Dubbo, and expertise in SOA architecture design.\n- Experience in distributed, multi-threaded, and high-performance design and coding.\n- Familiarity with agile development processes, keen insight into technology trends, and a strong pursuit of excellent code and outstanding structures.\n- Strong analytical and problem-solving skills, with a high sense of responsibility.\n- Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n- Middleware design and development experience is preferred.\n- Candidates with a background in the internet restaurant industry are preferred.', '2024-01-24', '19cef68ec2da4e14aa57977fce948253', '7cc7489e4e4344068d3c9d5767a296c5');

INSERT INTO `t_job` VALUES
    ('d4cdc5577aa543b4bdeebd4549362c8e', 'Test Engineer', 'Technology - Testing', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-12K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Participate in the full product testing process, including requirement analysis, design review, test planning, test case design and execution, defect tracking, and software quality analysis.\n2. Execute project testing, including test planning, resource allocation, test environment setup, integration testing, and regression testing.\n3. Ensure the quality of the tested system and enhance development efficiency through process and methodological innovations.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science or Software-related fields.\n2. More than three years of experience in Internet industry testing.\n3. Proficiency in software testing processes, theories, and methods, with experience using popular testing tools.\n4. Proficiency in database and API testing tools.\n5. Familiarity with performance and automation testing.\n6. Knowledge of Java, C++, or Python, and familiarity with the Linux operating system.\n7. Strong business acumen, excellent communication skills, and a quick learning ability.', '2024-06-09', 'f45d524ff263492f9433739af13701c9', '5558969951074ef98108cb15847aba10');

INSERT INTO `t_job` VALUES
    ('df4bacae60404dcfb752e4a9c8e5d707', 'Senior Java Developer', 'Technology - Backend', 'Doctorate', 'More than one year', '10K-12K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:\n1. Promote the construction of the business unit\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path and training programs for R&D personnel, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, develop internal lecturer incentive policies, and assist internal experts in extracting their experience.\n3. Based on company culture and strategic requirements, participate in building competency models, be familiar with assessment tools, promote talent reviews, and establish personal development plans for core personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, 5+ years of experience in training or talent development, extensive experience in talent development projects, preferably in the internet industry.\n2. Unique insights and extensive practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PPT, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-06-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('e527ef6b9735432c88feb57146f2039c', 'Algorithm Engineer', 'Technology - Algorithm', 'Bachelor\'s Degree', 'Fresh Graduate', '12K-19K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:\n1. Responsible for the architecture and solution design of in-store business system sub-products, ensuring their rationality, scalability, and replicability.\n2. Maintain and upgrade the existing system architecture to support new business requirements.\n3. Perform performance tuning to ensure system stability under high concurrency and throughput.\n4. Conduct in-depth research on technologies to make appropriate technology selections, track, and implement new technologies in products.\n5. Strong responsibility and initiative to quickly identify and resolve architecture issues.\n\nJob Requirements:\n- Bachelor\'s degree or above in Computer Science, Software Engineering, or related fields.\n- More than five years of J2EE project development experience; familiarity with J2EE design patterns, proficiency in Java and web application development.\n- Deep understanding of frameworks such as SSM, familiarity with MySQL/Redis, Dubbo, and expertise in SOA architecture design.\n- Experience in distributed, multi-threaded, and high-performance design and coding.\n- Familiarity with agile development processes, keen insight into technology trends, and a strong pursuit of excellent code and outstanding structures.\n- Strong analytical and problem-solving skills, with a high sense of responsibility.\n- Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n- Middleware design and development experience is preferred.\n- Candidates with a background in the internet restaurant industry are preferred.', '2024-05-13', 'ba7ec9bd016f4c59ae6c807b8986671e', '68571742767a4c0d9e03320fb02d3f19');


INSERT INTO `t_job` VALUES
    ('eb4249c585a54a11bae5de1f40963ecf', 'Product Manager', 'Product - Product Manager', 'Doctorate', 'Fresh Graduate', '5K-9K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-06-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('f1052241fbae4fc69beb56a05403c4f3', 'Junior Java Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'Fresh Graduate', '10K-14K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Promote the construction of the business unit\'s talent training system and talent pipeline, plan and implement various talent development projects, including designing the growth path and training programs for R&D personnel, identifying training resources, organizing execution, monitoring progress, and evaluating project effectiveness.\n2. Establish an internal lecturer team, develop internal lecturer incentive policies, and assist internal experts in extracting their experience.\n3. Based on company culture and strategic requirements, participate in building competency models, be familiar with assessment tools, promote talent reviews, and establish personal development plans for core personnel.\n4. Implement the group\'s strategic talent projects.\n\nJob Requirements:\n1. Bachelor\'s degree or above from a recognized university, 5+ years of experience in training or talent development, extensive experience in talent development projects, preferably in the internet industry.\n2. Unique insights and extensive practical experience in competency and professional skills training.\n3. Strong systematic thinking, project management, organizational planning, and cross-team communication and coordination skills.\n4. Proficiency in Office software, especially PPT, Excel, Photoshop, and MindManager, with excellent writing skills.\n\nJob Level: Supervisor/Manager.', '2024-05-29', 'bb06ef514e8d4f6fb2552dee5215d43b', '34f11160ff5c4c9481209bfff3cae983');

INSERT INTO `t_job` VALUES
    ('f1e2bc3bf7b64b409dd7b597888e267f', 'Product Manager', 'Product - Product Manager', 'Master\'s Degree', 'More than one year', '10K-15K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:\n1. Responsible for the architecture and solution design of in-store business system sub-products, ensuring their rationality, scalability, and replicability.\n2. Maintain and upgrade the existing system architecture to support new business requirements.\n3. Perform performance tuning to ensure system stability under high concurrency and throughput.\n4. Conduct in-depth research on technologies to make appropriate technology selections, track, and implement new technologies in products.\n5. Strong responsibility and initiative to quickly identify and resolve architecture issues.\n\nJob Requirements:\n- Bachelor\'s degree or above in Computer Science, Software Engineering, or related fields.\n- More than five years of J2EE project development experience; familiarity with J2EE design patterns, proficiency in Java and web application development.\n- Deep understanding of frameworks such as SSM, familiarity with MySQL/Redis, Dubbo, and expertise in SOA architecture design.\n- Experience in distributed, multi-threaded, and high-performance design and coding.\n- Familiarity with agile development processes, keen insight into technology trends, and a strong pursuit of excellent code and outstanding structures.\n- Strong analytical and problem-solving skills, with a high sense of responsibility.\n- Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n- Middleware design and development experience is preferred.\n- Candidates with a background in the internet restaurant industry are preferred.', '2024-06-05', '02d81867eb084822bb9c34522763a50f', 'f4e6db82aeb7411eb8dee2c441e1bbfd');

INSERT INTO `t_job` VALUES
    ('fc3ce64d121e41f495bff8f700ecea3b', 'Java Intern Developer', 'Technology - Backend', 'Associate Degree', 'Student', '50K-72K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor',
     'Base salary 4-7.5K + commission\nSocial security and housing fund upon employment\nTwo-day weekends\n\nJob Responsibilities:\n1. The company provides real-time customer resources. Contact potential customers via phone/WeChat to understand their information and needs.\n2. Confirm meeting times with customers and coordinate with sales for follow-up meetings.\n3. Conduct customer follow-ups to understand post-meeting feedback and relay it to sales.\n4. Track customer engagement points and work with sales to process orders.\n5. Establish and maintain good relationships with customers.\n\nJob Requirements:\n1. Around one year of experience in telephone customer service, telesales, or call center work. SaaS software industry experience is preferred.\n2. Excellent communication skills, emotional stability, ability to handle stress, and a positive attitude.\n3. Proficiency in Office software.', '2024-01-27', '4ebf43f8229f484ebaa8aa3dcedb3fb3', '60c96dea711d4b2bb8217e30016cdf94');

-- ----------------------------
-- More job sample
-- ----------------------------

-- new test sample


INSERT INTO `t_job` VALUES
    ('33a7b9c6f3d5e2f4a1b0d7e6c5f3a9b0', 'Growth Product Manager', 'Technology - Product Growth', 'Master\'s Degree', '4-6 years', '25K-45K', 'West Midlands - Coventry', 'Diamond Building, Block C, 5th Floor',
     'Job Responsibilities:
     1. Develop and execute growth strategies to acquire and retain users.
     2. Analyze user behavior data to optimize product features.
     3. Work with marketing and product teams to drive engagement.
     4. Conduct A/B testing to improve conversion rates.
     5. Implement data-driven decision-making.

     Job Requirements:
     1. Master\'s degree in Business, Marketing, or related fields.
     2. 4-6 years of experience in product growth management.
     3. Proficiency in SQL, Python, and data analysis tools.
     4. Experience with growth hacking and performance marketing.
     5. Strong strategic thinking and analytical skills.', '2024-03-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('34c7a9b6f3d5e2f4a1b0d7e6c5f3a9b0', 'Mobile Product Manager', 'Technology - Mobile', 'Bachelor\'s Degree', '3-5 years', '22K-38K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Define and manage the roadmap for mobile product development.
     2. Work closely with designers and engineers to deliver high-quality mobile experiences.
     3. Optimize user experience based on feedback and analytics.
     4. Monitor mobile app performance and implement improvements.
     5. Stay updated with the latest trends in mobile technology.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science, Business, or related fields.
     2. 3-5 years of experience in mobile product management.
     3. Familiarity with iOS and Android development ecosystems.
     4. Strong analytical skills and experience with mobile analytics tools.
     5. Excellent communication and collaboration skills.', '2024-04-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('35a7b9c6f3d5e2f4a1b0d7e6c5f3a9b5', 'Strategic Product Manager', 'Technology - Product Strategy', 'Master\'s Degree', '5+ years', '30K-50K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Develop long-term product strategies and vision.
     2. Conduct market research and competitive analysis.
     3. Work with executives to align product strategy with business goals.
     4. Define key success metrics and monitor performance.
     5. Lead cross-functional teams to drive innovation.

     Job Requirements:
     1. Master\'s degree in Business, Product Management, or related fields.
     2. 5+ years of experience in strategic product management.
     3. Strong understanding of market trends and business analysis.
     4. Experience in stakeholder management and strategic planning.
     5. Excellent problem-solving and leadership skills.', '2024-05-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('36b6c9a7f3d5e2f4a1b0d7e6c5f3a9b4', 'New Media Operations', 'Marketing - Digital Media', 'Bachelor\'s Degree', '2-4 years', '15K-25K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:
     1. Develop and implement new media marketing strategies.
     2. Manage content creation for social media and digital platforms.
     3. Analyze audience engagement and optimize content performance.
     4. Collaborate with designers and copywriters for high-quality content.
     5. Monitor industry trends and adapt strategies accordingly.

     Job Requirements:
     1. Bachelor\'s degree in Marketing, Media, or related fields.
     2. 2-4 years of experience in new media operations.
     3. Familiarity with major social media platforms and analytics tools.
     4. Strong content creation and storytelling skills.
     5. Excellent communication and creative problem-solving.', '2024-06-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');
-- end


INSERT INTO `t_job` VALUES
    ('33a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Growth Product Manager', 'Technology - Product Growth', 'Master\'s Degree', '4-6 years', '25K-45K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Develop and execute growth strategies to acquire and retain users.
     2. Analyze user behavior data to optimize product features.
     3. Work with marketing and product teams to drive engagement.
     4. Conduct A/B testing to improve conversion rates.
     5. Implement data-driven decision-making.

     Job Requirements:
     1. Master\'s degree in Business, Marketing, or related fields.
     2. 4-6 years of experience in product growth management.
     3. Proficiency in SQL, Python, and data analysis tools.
     4. Experience with growth hacking and performance marketing.
     5. Strong strategic thinking and analytical skills.', '2024-03-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('34c7a9b6f3d5e2f4a1b0d7e6c5f3a9b2', 'Mobile Product Manager', 'Technology - Mobile', 'Bachelor\'s Degree', '3-5 years', '22K-38K', 'Scotland - Glasgow', 'Oxford Plaza, Tower 1, 1st Floor',
     'Job Responsibilities:
     1. Define and manage the roadmap for mobile product development.
     2. Work closely with designers and engineers to deliver high-quality mobile experiences.
     3. Optimize user experience based on feedback and analytics.
     4. Monitor mobile app performance and implement improvements.
     5. Stay updated with the latest trends in mobile technology.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science, Business, or related fields.
     2. 3-5 years of experience in mobile product management.
     3. Familiarity with iOS and Android development ecosystems.
     4. Strong analytical skills and experience with mobile analytics tools.
     5. Excellent communication and collaboration skills.', '2024-04-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('35a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Strategic Product Manager', 'Technology - Product Strategy', 'Master\'s Degree', '5+ years', '30K-50K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Develop long-term product strategies and vision.
     2. Conduct market research and competitive analysis.
     3. Work with executives to align product strategy with business goals.
     4. Define key success metrics and monitor performance.
     5. Lead cross-functional teams to drive innovation.

     Job Requirements:
     1. Master\'s degree in Business, Product Management, or related fields.
     2. 5+ years of experience in strategic product management.
     3. Strong understanding of market trends and business analysis.
     4. Experience in stakeholder management and strategic planning.
     5. Excellent problem-solving and leadership skills.', '2024-05-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('36b6c9a7f3d5e2f4a1b0d7e6c5f3a9b2', 'New Media Operations', 'Marketing - Digital Media', 'Bachelor\'s Degree', '2-4 years', '15K-25K', 'West Midlands - Birmingham', 'Diamond Building, North Wing, 1st Floor',
     'Job Responsibilities:
     1. Develop and implement new media marketing strategies.
     2. Manage content creation for social media and digital platforms.
     3. Analyze audience engagement and optimize content performance.
     4. Collaborate with designers and copywriters for high-quality content.
     5. Monitor industry trends and adapt strategies accordingly.

     Job Requirements:
     1. Bachelor\'s degree in Marketing, Media, or related fields.
     2. 2-4 years of experience in new media operations.
     3. Familiarity with major social media platforms and analytics tools.
     4. Strong content creation and storytelling skills.
     5. Excellent communication and creative problem-solving.', '2024-06-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('37a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Sales Technical Support', 'Technology - Sales Support', 'Bachelor\'s Degree', '3-5 years', '18K-32K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Provide technical support for sales teams and clients.
     2. Conduct product demonstrations and technical training.
     3. Work with R&D teams to address customer requirements.
     4. Troubleshoot technical issues and provide solutions.
     5. Develop documentation and training materials.

     Job Requirements:
     1. Bachelor\'s degree in Engineering, IT, or related fields.
     2. 3-5 years of experience in technical sales support.
     3. Strong knowledge of IT products and solutions.
     4. Excellent communication and customer service skills.
     5. Ability to present technical concepts to non-technical audiences.', '2024-07-10', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('26a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Product Project Management', 'Technology - Product', 'Master\'s Degree', '3-5 years', '22K-40K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Manage product development projects from initiation to delivery.
     2. Coordinate cross-functional teams to ensure timely execution.
     3. Define project scope, goals, and deliverables.
     4. Monitor project risks and implement mitigation strategies.
     5. Track progress and report key performance metrics.

     Job Requirements:
     1. Master\'s degree in Business, IT, or related fields.
     2. 3-5 years of experience in product project management.
     3. Familiarity with Agile, Scrum, and Kanban methodologies.
     4. Strong organizational and problem-solving skills.
     5. Excellent communication and stakeholder management.', '2024-08-10', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('27b6c9a7f3d5e2f4a1b0d7e6c5f3a9b2', 'Technical Management', 'Technology - Management', 'Master\'s Degree', '5+ years', '35K-55K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Lead and manage technical teams for product development.
     2. Define technology strategies and oversee system architecture.
     3. Optimize software development processes and best practices.
     4. Drive innovation and improve team efficiency.
     5. Ensure technical compliance and scalability of projects.

     Job Requirements:
     1. Master\'s degree in Computer Science or related fields.
     2. 5+ years of experience in technical management roles.
     3. Strong understanding of software development life cycle (SDLC).
     4. Experience with cloud computing, DevOps, and microservices.
     5. Excellent leadership and strategic decision-making skills.', '2024-09-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('28c7a9b6f3d5e2f4a1b0d7e6c5f3a9b2', 'Frontend', 'Technology - Frontend', 'Bachelor\'s Degree', '3-5 years', '18K-30K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Develop and optimize web applications with modern frontend frameworks.
     2. Implement responsive and user-friendly UI/UX designs.
     3. Collaborate with backend teams for seamless integration.
     4. Improve frontend performance and scalability.
     5. Ensure cross-browser compatibility and accessibility.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 3-5 years of experience in frontend development.
     3. Proficiency in JavaScript, React, Vue, or Angular.
     4. Experience with CSS preprocessors, Webpack, and state management.
     5. Strong problem-solving and debugging skills.', '2024-10-15', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('29a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Java', 'Technology - Backend', 'Bachelor\'s Degree', '2-4 years', '20K-35K', 'Scotland - Glasgow', 'Oxford Plaza, Tower 1, 1st Floor',
     'Job Responsibilities:
     1. Design and develop backend services using Java.
     2. Optimize database queries and API performance.
     3. Implement microservices and distributed systems architecture.
     4. Collaborate with frontend and DevOps teams.
     5. Ensure code quality through testing and reviews.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 2-4 years of experience in Java development.
     3. Proficiency in Spring Boot, Hibernate, and MySQL/PostgreSQL.
     4. Experience with Docker, Kubernetes, and CI/CD pipelines.
     5. Strong problem-solving and teamwork skills.', '2024-11-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('30b6c9a7f3d5e2f4a1b0d7e6c5f3a9b2', 'SEO/SEM', 'Marketing - Digital', 'Bachelor\'s Degree', '3-5 years', '15K-25K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Develop and execute SEO and SEM strategies.
     2. Optimize website rankings and search engine visibility.
     3. Manage PPC campaigns across multiple platforms.
     4. Conduct keyword research and competitive analysis.
     5. Track and report performance metrics.

     Job Requirements:
     1. Bachelor\'s degree in Marketing, Business, or related fields.
     2. 3-5 years of experience in SEO/SEM.
     3. Proficiency in Google Ads, Google Analytics, and keyword tools.
     4. Strong data analysis and reporting skills.
     5. Knowledge of HTML, CSS, and web optimization techniques.', '2024-12-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('31a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Data Analysis', 'Technology - Data', 'Master\'s Degree', '4-6 years', '25K-40K', 'West Midlands - Birmingham', 'Diamond Building, North Wing, 1st Floor',
     'Job Responsibilities:
     1. Analyze large datasets to generate business insights.
     2. Develop predictive models for data-driven decision-making.
     3. Work with stakeholders to define data analysis requirements.
     4. Create reports and dashboards for business intelligence.
     5. Optimize data pipelines and ETL workflows.

     Job Requirements:
     1. Master\'s degree in Data Science, Statistics, or related fields.
     2. 4-6 years of experience in data analysis and modeling.
     3. Proficiency in Python, SQL, and visualization tools (Tableau, Power BI).
     4. Experience with big data frameworks like Hadoop and Spark.
     5. Strong problem-solving and analytical thinking.', '2024-01-18', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('20a6b9f7c3d5e2f4a1b0d7e6c5f3a9b2', 'IT Operations', 'Technology - IT Support', 'Bachelor\'s Degree', '2-4 years', '15K-25K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Maintain IT infrastructure, including servers, networks, and security systems.
     2. Troubleshoot technical issues and provide support to internal teams.
     3. Implement system monitoring and performance optimization solutions.
     4. Develop and enforce IT policies and security protocols.
     5. Manage software and hardware procurement.

     Job Requirements:
     1. Bachelor\'s degree in IT, Computer Science, or related fields.
     2. 2-4 years of experience in IT operations and system administration.
     3. Familiarity with Windows/Linux server environments.
     4. Knowledge of cloud computing (AWS, Azure, GCP) and cybersecurity best practices.
     5. Strong troubleshooting and problem-solving skills.', '2024-02-10', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('21b7c9a6f3d5e2f4a1b0d7e6c5f3a9b2', 'Ruby/Perl', 'Technology - Backend', 'Bachelor\'s Degree', '3-5 years', '18K-28K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Develop and maintain backend services using Ruby or Perl.
     2. Optimize database queries and backend processes for performance improvements.
     3. Implement RESTful APIs and microservices architecture.
     4. Collaborate with frontend teams for seamless system integration.
     5. Debug and resolve system issues.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 3-5 years of experience in Ruby or Perl development.
     3. Familiar with frameworks such as Ruby on Rails or Mojolicious.
     4. Experience with SQL/NoSQL databases and cloud platforms.
     5. Strong problem-solving and debugging skills.', '2024-03-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('22c7a9b6f3d5e2f4a1b0d7e6c5f3a9b2', 'PHP', 'Technology - Backend', 'Bachelor\'s Degree', '2-4 years', '16K-26K', 'Scotland - Glasgow', 'Oxford Plaza, Tower 1, 1st Floor',
     'Job Responsibilities:
     1. Develop and maintain high-performance web applications using PHP.
     2. Optimize database queries and API performance.
     3. Work with frontend developers to integrate backend services.
     4. Implement security best practices in PHP applications.
     5. Debug and troubleshoot application issues.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 2-4 years of experience in PHP development.
     3. Proficient in Laravel, CodeIgniter, or Symfony frameworks.
     4. Experience with MySQL, Redis, and cloud-based deployment.
     5. Strong problem-solving and teamwork abilities.', '2024-04-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('23d7c9a6f3d5e2f4a1b0d7e6c5f3a9b2', 'Security Product Manager', 'Technology - Security', 'Master\'s Degree', '4-6 years', '28K-45K', 'Greater London - London', 'Windsor Complex, North Wing, 5th Floor',
     'Job Responsibilities:
     1. Design and manage security-related product roadmaps.
     2. Conduct risk assessments and define security compliance strategies.
     3. Collaborate with engineering teams to implement security solutions.
     4. Monitor and respond to security threats.
     5. Research industry trends and develop cybersecurity enhancements.

     Job Requirements:
     1. Master\'s degree in Cybersecurity, Computer Science, or related fields.
     2. 4-6 years of experience in security product management.
     3. Knowledge of encryption, authentication, and network security protocols.
     4. Familiarity with compliance standards such as ISO 27001 and GDPR.
     5. Strong analytical and problem-solving skills.', '2024-05-22', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('24a7b9c6f3d5e2f4a1b0d7e6c5f3a9b2', 'Backend', 'Technology - Backend', 'Bachelor\'s Degree', '3-5 years', '20K-35K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Develop and maintain scalable backend services.
     2. Implement microservices architecture and cloud-based solutions.
     3. Optimize APIs for performance and security.
     4. Work closely with frontend and DevOps teams for seamless integration.
     5. Monitor system health and troubleshoot production issues.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 3-5 years of experience in backend development.
     3. Proficient in Java, Go, or Python for backend services.
     4. Experience with Kubernetes, Docker, and cloud platforms (AWS, GCP, Azure).
     5. Strong debugging and problem-solving skills.', '2024-06-15', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('25b6c9a7f3d5e2f4a1b0d7e6c5f3a9b', 'Cloud/Big Data', 'Technology - Cloud', 'Master\'s Degree', '5+ years', '30K-50K', 'Scotland - Edinburgh', 'Diamond Building, Block C, 1st Floor',
     'Job Responsibilities:
     1. Design and implement cloud-based big data solutions.
     2. Optimize data pipelines and ETL processes for large-scale data processing.
     3. Ensure data security and compliance in cloud environments.
     4. Work with machine learning engineers to enhance AI-driven data analytics.
     5. Research and implement the latest big data technologies.

     Job Requirements:
     1. Master\'s degree in Computer Science, Data Science, or related fields.
     2. 5+ years of experience in cloud computing and big data.
     3. Proficiency in Hadoop, Spark, and cloud platforms (AWS, GCP, Azure).
     4. Strong database skills with SQL, NoSQL, and data warehousing.
     5. Excellent problem-solving and project management skills.', '2024-07-18', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');


INSERT INTO `t_job` VALUES
    ('14b6f9a7c3d5e2f4a1b0d7e6c5f3a9b2', 'C#/.NET', 'Technology - Backend', 'Bachelor\'s Degree', '3-5 years', '18K-30K', 'Cardiff - Cardiff', 'Cambridge Court, Tower 1, 4th Floor',
     'Job Responsibilities:
     1. Develop and maintain backend applications using C# and .NET frameworks.
     2. Optimize performance and scalability of existing applications.
     3. Collaborate with frontend teams to ensure seamless integration.
     4. Implement security best practices in backend development.
     5. Debug and resolve issues in production systems.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 3-5 years of experience in C#/.NET development.
     3. Proficiency in ASP.NET, .NET Core, and SQL Server.
     4. Familiarity with RESTful APIs and cloud platforms.
     5. Strong debugging and problem-solving skills.', '2024-07-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('15a6b9f7c3d5e2f4a1b0d7e6c5f3a9b2', 'Node.js', 'Technology - Backend', 'Bachelor\'s Degree', '2-4 years', '20K-35K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Develop and maintain server-side applications using Node.js.
     2. Optimize APIs and backend processes for performance and scalability.
     3. Implement microservices architecture and cloud-based solutions.
     4. Collaborate with frontend engineers to deliver robust applications.
     5. Write and maintain unit tests to ensure code quality.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 2-4 years of experience in Node.js development.
     3. Familiarity with Express.js, NestJS, and database technologies (MongoDB, PostgreSQL).
     4. Experience with cloud platforms such as AWS, GCP, or Azure.
     5. Strong understanding of event-driven architecture.', '2024-08-10', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('16c7a9b6f3d5e2f4a1b0d7e6c5f3a9b2', 'E-commerce Operations', 'E-commerce - Operations', 'Bachelor\'s Degree', '3-6 years', '18K-28K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Oversee daily e-commerce platform operations to ensure smooth execution.
     2. Manage online promotions, pricing strategies, and marketing campaigns.
     3. Track and analyze user data to improve conversion rates.
     4. Collaborate with logistics and customer service teams.
     5. Optimize platform UX and customer engagement strategies.

     Job Requirements:
     1. Bachelor\'s degree in Business, Marketing, or a related field.
     2. 3-6 years of experience in e-commerce operations.
     3. Strong data analysis skills and familiarity with e-commerce analytics tools.
     4. Experience with platforms like Alibaba, JD, Amazon, or Shopify.
     5. Excellent problem-solving and strategic planning abilities.', '2024-09-15', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('17b6c9a7f3d5e2f4a1b0d7e6c5f3a9b2', 'Supply Chain Product Manager', 'Supply Chain - Product', 'Master\'s Degree', '5+ years', '30K-50K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Define and manage supply chain product strategies and roadmaps.
     2. Optimize logistics, inventory, and procurement processes.
     3. Collaborate with technology teams to implement supply chain solutions.
     4. Analyze data and identify areas for process improvement.
     5. Stay updated on industry trends and best practices.

     Job Requirements:
     1. Master\'s degree in Supply Chain Management, Business, or a related field.
     2. 5+ years of experience in supply chain product management.
     3. Strong knowledge of ERP systems and supply chain analytics.
     4. Familiarity with logistics and warehouse management technologies.
     5. Excellent analytical and project management skills.', '2024-10-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('18a6b9f7c3d5e2f4a1b0d7e6c5f3a9b2', 'User Operations', 'Technology - User Engagement', 'Bachelor\'s Degree', '2-4 years', '15K-25K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Develop and implement user engagement strategies.
     2. Monitor user behavior and provide data-driven insights.
     3. Optimize customer retention programs and loyalty initiatives.
     4. Work with marketing and product teams to improve user experience.
     5. Conduct A/B testing to evaluate engagement strategies.

     Job Requirements:
     1. Bachelor\'s degree in Marketing, Business, or related fields.
     2. 2-4 years of experience in user operations.
     3. Strong data analysis skills and experience with CRM tools.
     4. Knowledge of user segmentation and personalized marketing techniques.
     5. Excellent communication and creative problem-solving abilities.', '2024-11-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('19b6c9a7f3d5e2f4a1b0d7e6c5f3a9b2', 'PLC', 'Technology - Automation', 'Bachelor\'s Degree', '3-5 years', '20K-35K', 'West Midlands - Birmingham', 'Diamond Building, North Wing, 1st Floor',
     'Job Responsibilities:
     1. Develop, program, and optimize PLC control systems.
     2. Conduct system integration and troubleshooting.
     3. Ensure PLC safety and compliance with industry standards.
     4. Work with electrical engineers to enhance automation processes.
     5. Maintain documentation and provide technical support.

     Job Requirements:
     1. Bachelor\'s degree in Electrical Engineering, Automation, or related fields.
     2. 3-5 years of experience in PLC programming and automation.
     3. Proficiency in Siemens, Allen-Bradley, or Mitsubishi PLCs.
     4. Strong understanding of industrial communication protocols.
     5. Excellent troubleshooting and problem-solving skills.', '2024-12-18', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('8a6f9b7c3d5e2f4a1b0d7e6c5f3a9b2d', 'Financial Product Manager', 'Finance - Product', 'Master\'s Degree', '3-5 years', '25K-40K', 'Cardiff - Cardiff', 'Cambridge Court, Tower 1, 4th Floor',
     'Job Responsibilities:
     1. Develop and manage financial products, ensuring compliance with industry regulations.
     2. Conduct market research and competitor analysis to identify new opportunities.
     3. Work closely with risk management and legal teams to optimize product safety.
     4. Design product strategies to enhance user experience and profitability.
     5. Analyze key financial indicators and prepare regular reports.

     Job Requirements:
     1. Master\'s degree in Finance, Economics, or a related field.
     2. 3-5 years of experience in financial product management.
     3. Strong analytical and strategic thinking skills.
     4. Knowledge of regulatory requirements and financial modeling.
     5. Excellent communication and teamwork skills.', '2024-01-08', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('9b6f7a8c3d5e2f4a1b0d7e6c5f3a9b2d', 'Database', 'Technology - Database', 'Bachelor\'s Degree', '2-4 years', '18K-28K', 'Cardiff - Cardiff', 'Cambridge Court, Tower 1, 4th Floor',
     'Job Responsibilities:
     1. Design, implement, and maintain database systems to ensure performance and security.
     2. Optimize database queries and indexing strategies.
     3. Monitor and troubleshoot database issues and ensure system stability.
     4. Develop backup and recovery strategies.
     5. Work with development teams to improve database efficiency.

     Job Requirements:
     1. Bachelor\'s degree in Computer Science or related fields.
     2. 2-4 years of experience in database management (MySQL, PostgreSQL, or Oracle).
     3. Strong knowledge of SQL optimization and indexing techniques.
     4. Experience with cloud database solutions such as AWS RDS or Azure SQL.
     5. Excellent problem-solving and troubleshooting skills.', '2024-02-15', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('10a7b9f6c3d5e2f4a1b0d7e6c5f3a9b2', 'Product Operations', 'Technology - Operations', 'Bachelor\'s Degree', '3-6 years', '20K-35K', 'Scotland - Aberdeen', 'Innovation Centre, Tower 1, 2nd Floor',
     'Job Responsibilities:
     1. Manage the full lifecycle of product operations, including feature rollouts and user engagement.
     2. Analyze user data and feedback to optimize product experience.
     3. Work closely with R&D and marketing teams to implement operational strategies.
     4. Monitor product performance and suggest improvements.
     5. Coordinate product promotions and campaigns.

     Job Requirements:
     1. Bachelor\'s degree in Business, Marketing, or a related field.
     2. 3-6 years of experience in product operations, preferably in tech or internet companies.
     3. Strong analytical and problem-solving skills.
     4. Proficiency in data analysis tools such as Excel, SQL, or Python.
     5. Excellent communication and teamwork abilities.', '2024-03-10', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('11c7a9b6f3d5e2f4a1b0d7e6c5f3a9b2', 'Data Mining', 'Technology - Data', 'Master\'s Degree', '5+ years', '30K-50K', 'Merseyside - Cardiff', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Apply data mining techniques to analyze large datasets and extract insights.
     2. Develop predictive models and algorithms for business applications.
     3. Work closely with data engineers to optimize data processing workflows.
     4. Communicate findings to stakeholders and provide actionable recommendations.
     5. Stay updated on the latest advancements in data mining and AI.

     Job Requirements:
     1. Master\'s degree in Statistics, Computer Science, or a related field.
     2. 5+ years of experience in data mining and predictive modeling.
     3. Proficiency in Python, R, and SQL for data analysis.
     4. Experience with machine learning frameworks such as TensorFlow or Scikit-Learn.
     5. Strong mathematical and statistical knowledge.', '2024-04-05', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('12b7c9a6f3d5e2f4a1b0d7e6c5f3a9b2', 'Interaction Design', 'Technology - UX/UI', 'Bachelor\'s Degree', '2-4 years', '15K-25K', 'Scotland - Glasgow', 'Oxford Plaza, Tower 1, 1st Floor',
     'Job Responsibilities:
     1. Design and optimize user interfaces and interactions for web and mobile applications.
     2. Conduct user research and usability testing to improve user experience.
     3. Work closely with product managers and developers to implement design solutions.
     4. Create wireframes, prototypes, and high-fidelity designs.
     5. Stay up to date with the latest UX/UI trends and best practices.

     Job Requirements:
     1. Bachelor\'s degree in Design, HCI, or related fields.
     2. 2-4 years of experience in interaction design.
     3. Proficiency in design tools such as Sketch, Figma, or Adobe XD.
     4. Strong understanding of usability principles and interaction patterns.
     5. Excellent communication and collaboration skills.', '2024-05-12', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');

INSERT INTO `t_job` VALUES
    ('13a6b9f7c3d5e2f4a1b0d7e6c5f3a9b2', 'Algorithm', 'Technology - AI/ML', 'Doctorate', '3-5 years', '35K-55K', 'Merseyside - Liverpool', 'Regent Tower, South Wing, Ground Floor',
     'Job Responsibilities:
     1. Research and develop machine learning and deep learning algorithms.
     2. Optimize and deploy AI models for real-world applications.
     3. Collaborate with engineering teams to integrate AI solutions into products.
     4. Work with large datasets and improve model performance.
     5. Stay updated on the latest advancements in AI and machine learning.

     Job Requirements:
     1. Ph.D. in AI, Machine Learning, or related fields.
     2. 3-5 years of experience in algorithm development.
     3. Proficiency in Python, TensorFlow, PyTorch, and related frameworks.
     4. Strong knowledge of mathematical modeling and statistical analysis.
     5. Ability to translate business problems into AI solutions.', '2024-06-20', 'a9dc7c4197ee44d5b15b391a1ab2a9b3', '66d1c3d86bda41a38a67eaa53f75d9c6');






-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`; 
CREATE TABLE `t_province`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES (1, 'Merseyside');
INSERT INTO `t_province` VALUES (2, 'Bristol');
INSERT INTO `t_province` VALUES (3, 'Scotland');
INSERT INTO `t_province` VALUES (4, 'West Midlands');
INSERT INTO `t_province` VALUES (5, 'Hampshire');
INSERT INTO `t_province` VALUES (6, 'Antrim / Down');
INSERT INTO `t_province` VALUES (7, 'Greater London');
INSERT INTO `t_province` VALUES (8, 'Tyne and Wear');
INSERT INTO `t_province` VALUES (9, 'Greater Manchester');
INSERT INTO `t_province` VALUES (10, 'Cardiff');


-- ----------------------------
-- Table structure for t_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_resume`;
CREATE TABLE `t_resume`  (
                             `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                             `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
                             `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
                             `sex` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
                             `birth` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
                             `age` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
                             `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
                             `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
                             `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                             `marriage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚姻状态',
                             `political` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
                             `salary` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望薪资',
                             `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应聘岗位',
                             `college` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
                             `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
                             `education` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
                             `experience` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作经历',
                             `technology` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '技术能力',
                             `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '自我介绍',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_resume
-- ----------------------------
INSERT INTO `t_resume` VALUES (
  '00000000000000000000000000000000',
  '00000000000000000000000000000000',
  'iurac1',
  'Female',
  '2000-05-26',
  '211',
  '2024-06-0658d4eec537db405c8ea4bdfebec8f99d.jpg',
  '13000001111',
  '987654321@qq.com',
  'Confidential',
  'Confidential',
  '666W1',
  'Java Intern Developer 1',
  'Guangdong Pharmaceutical University 111',
  'Computer Science and Technology 111',
  'Doctorate',
  '1.123111',
  '1.11111\r\n2.21111',
  '1.1111\r\n2.12111\r\n3.123111'
);

INSERT INTO `t_resume` VALUES (
  '8ea061726cde4fcb913c3f739c4d0e90',
  '600b175da8bf45dab008f2442a01f434',
  'iurac',
  'Male',
  '2000-05-11',
  '21',
  '2024-06-30a59df041c1e94fb7b939b25e2ca783d1.jpg',
  '13000004802',
  '987654321@qq.com',
  'Single',
  'Communist Youth League Member',
  '5K',
  'Java Intern',
  'Guangdong Pharmaceutical University',
  'Computer Science and Technology',
  'Bachelor',
  'None',
  '1. Familiar with xxxxxxxxxxxxxxx\r\n2. Proficient in xxxxxxxxx\r\n3. Understand xxxxxxxxxxxxxxx',
  'I...%&*() IPOJHHGTUY&U*IPO:KNBMJGIYUOIP@*(&@)*@($@($! Thank you everyone!'
);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
                           `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `order_no` int NULL DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('0fe33840c6d84bf123455d49b1611234', 'manager', 2);
INSERT INTO `t_role` VALUES ('0fe33840c6d84bf78df51239b169a894', 'admin', 1);
INSERT INTO `t_role` VALUES ('0fe33840c6d84bf78df55d49b1134245', 'user', 4);
INSERT INTO `t_role` VALUES ('0fe33840c6d84bf78df55d49b1611234', 'hr', 3);

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
                           `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
                           `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作类别',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1368546bf3fd4ca79c8f32c21257202d', 'Technology');
INSERT INTO `t_type` VALUES ('4ed6e28013d84a26aadd3579f497d901', 'Operations');
INSERT INTO `t_type` VALUES ('858f90fba6584aaa93600a2f5840a6ae', 'Software');
INSERT INTO `t_type` VALUES ('c588f4e197d740bcb465b03358fdb477', 'Product');


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
                           `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
                           `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
                           `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
                           `salt` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
                           `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
                           `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                           `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
                           `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
                           `locked` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '锁定状态',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('00000000000000000000000000000000', '000', '81fced5595d7ef93905d4fc2bf091bf6', 'K(Q{#}Np', NULL, NULL, 'default.png', '2025-04-02 18:27:40', '0');


INSERT INTO `t_user` VALUES ('00000000000000000000000000001111', '123', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-05-30 14:14:14', '0');
INSERT INTO `t_user` VALUES ('600b175da8bf45dab008f2442a01f434', '200001', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', 'default.png', '2024-06-30 10:32:57', '0');
INSERT INTO `t_user` VALUES ('60e110841dda4f948ee49be3fd01ba6f', '1111', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', 'default.png', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('9493de0df50747c6b5890820b014cdbb', '20211230', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', 'default.png', '2024-12-25 15:12:10', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000001', '100001', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000002', '100002', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000003', '100003', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000004', '100004', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000005', '100005', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000006', '100006', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000007', '100007', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000008', '100008', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000009', '100009', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000010', '100010', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');
INSERT INTO `t_user` VALUES ('a0000000000000000000000000000011', '100011', '00db7ab19ad3acf528986ae856e1b28d', 'jVFQwRFw', '13000000000', '987654321@qq.com', '2024-06-06458593afce8747b3b86657b560de3feb.jpg', '2024-11-04 14:11:04', '0');



-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
                                `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `role_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('06ca1861c355442e8a05eee520ade74a', 'a0000000000000000000000000000008', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('072191f6f8b14ecc9fea727c6dbaab4b', 'a0000000000000000000000000000009', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('0c9484833f34406d8a9e83c9af8a2f2d', 'a0000000000000000000000000000003', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('17c6b64d0e23478980280897d8f52023', '00000000000000000000000000000000', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('18c827d441b34a77a8099b7b34be2623', '9493de0df50747c6b5890820b014cdbb', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('18c827d441b34a77a8099b7b34be2630', '00000000000000000000000000000000', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('1a74860949cd4aab8e68469cc2e51a4a', 'a0000000000000000000000000000003', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('23a76f7e5160476ebde0c51b06727ba6', 'a0000000000000000000000000000010', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('34f83040fb9646368b62104114b4f7d3', 'a0000000000000000000000000000007', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('4eb5049a0167426e9890e4bfe430cfae', '9493de0df50747c6b5890820b014cdbb', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` VALUES ('52681258564d4c7d9b0eeb38419ea51a', 'a0000000000000000000000000000005', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('55c01ae05f4e4d5c9962336def2dd52d', 'a0000000000000000000000000000008', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('7ae76c3b6a8d4c3780a234535d30c10c', 'a0000000000000000000000000000007', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('7b2b9a8b64e24abda134df9220de4d19', 'a0000000000000000000000000000006', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('7b2cfb7f8fd5470994a16f5acddd8f2e', 'a0000000000000000000000000000005', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('7ed9a1ea34bd416daa30291699c9778f', 'a0000000000000000000000000000001', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('8116ec1d6acb464bb664f0d8c10d6255', 'a0000000000000000000000000000011', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('8555491576e1412eba28210f0b854612', '9493de0df50747c6b5890820b014cdbb', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` VALUES ('8555491576e1412eba28210f0b854631', '9493de0df50747c6b5890820b014cdbb', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('8555491576e1412eba28210f0b854632', '9493de0df50747c6b5890820b014cdbb', '0fe33840c6d84bf78df51239b169a894');
INSERT INTO `t_user_role` VALUES ('8555491576e1412eba28210f0b8546c2', '00000000000000000000000000000000', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` VALUES ('8555491576e1412eba28210f0b8546c3', '00000000000000000000000000000000', '0fe33840c6d84bf78df51239b169a894');
INSERT INTO `t_user_role` VALUES ('beafaca82ffd4b8e992de0bb5f2ccc3a', 'a0000000000000000000000000000001', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('c0ca8e34ce8f4e91b84177755e8167c0', 'a0000000000000000000000000000011', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('c31c8647b0e54e17bdfd829d67b0fe0e', 'a0000000000000000000000000000010', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('cb20034fd1cb4ec79db09f3157a6a280', 'a0000000000000000000000000000002', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('cb473d2637f045b0822aaf0f1be08bbf', '60e110841dda4f948ee49be3fd01ba6f', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` VALUES ('cc6bf4517103444a86710f1b05a43ac9', 'a0000000000000000000000000000006', '0fe33840c6d84bf78df55d49b1611234');
INSERT INTO `t_user_role` VALUES ('d56d7f7d50ce424c8194dbba8088a521', 'a0000000000000000000000000000002', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('df87c3bf48b74cf8accffcf96c3260e6', 'a0000000000000000000000000000009', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('e9354bcd4b4248f5a15505fb2b6727f1', '600b175da8bf45dab008f2442a01f434', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` VALUES ('f1144337db664d7386df213bb0a40d46', 'a0000000000000000000000000000004', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` VALUES ('f7f1295a949b4771b4114f7b39b49ccf', 'a0000000000000000000000000000004', '0fe33840c6d84bf78df55d49b1611234');

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `t_job` VALUES
    ('1', 'Product Manager', 'Product - Product Manager', 'Bachelor\'s Degree', 'More than one year', '50K-72K', 'Hampshire - Southampton', 'Windsor Complex, South Wing, Ground Floor',
     'Job Responsibilities:\n1. Participate in the full product testing process, including requirement analysis, design review, test plan creation, test case design and execution, defect tracking, and software quality analysis.\n2. Conduct project testing, including test planning, resource allocation, test environment setup, integration testing, and regression testing.\n3. Ensure the quality of the tested system and enhance development efficiency through process and methodological innovations.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science or Software-related majors.\n2. More than 3 years of testing experience in the Internet industry.\n3. Proficiency in software testing processes, theories, and methods, with experience using popular testing tools.\n4. Proficiency in database and API testing tools.\n5. Familiarity with performance and automation testing.\n6. Knowledge of Java, C++, or Python, and familiarity with the Linux operating system.\n7. Strong business acumen, excellent communication skills, and a quick learning ability.', '2024-01-21', '02d81867eb084822bb9c34522763a50f', 'f4e6db82aeb7411eb8dee2c441e1bbfd');

INSERT INTO `t_job` VALUES
    ('2', 'Java Intern Developer', 'Technology - Backend', 'Bachelor\'s Degree', 'More than five years', '12K-18K', 'Antrim / Down - Belfast', 'Windsor Complex, Block A, 2nd Floor',
     'Job Responsibilities:\n1. Responsible for the system architecture and solution design of in-store business systems, ensuring rationality, scalability, and replicability.\n2. Maintain and upgrade existing system architectures to support new business needs.\n3. Perform performance optimization to ensure stability under high concurrency and throughput scenarios.\n4. Strong research capabilities to propose appropriate technology selections for different scenarios, track and apply new technologies.\n5. Strong responsibility and initiative to quickly identify and resolve technical issues.\n\nJob Requirements:\n1. Bachelor\'s degree or above in Computer Science, Software Engineering, or a related field.\n2. More than 5 years of experience in J2EE project development; familiarity with J2EE design patterns and expertise in Java and Web application development.\n3. Deep understanding of frameworks like SSM, familiarity with MySQL, Redis, Dubbo, and proficiency in SOA architecture design.\n4. Experience in distributed, multi-threaded, high-performance design and coding, as well as performance tuning.\n5. Strong analytical and problem-solving skills, with a high sense of responsibility.\n6. Experience in designing and developing large-scale, high-concurrency web applications is preferred.\n7. Middleware design and development experience is preferred.\n8. Candidates with a background in the catering internet industry are preferred.', '2024-05-29', '624545d2ae744748acdd785d14701f5d', 'e51f9b545a774747816e44ec16144777');

INSERT INTO `t_job` VALUES
    ('3', 'Algorithm Engineer', 'Technology - Algorithm', 'Doctorate', 'More than five years', '50K-72K', 'Greater Manchester - Manchester', 'Windsor Complex, Tower 1, 1st Floor',
     'Job Responsibilities:\n1. Participate in the design of passive and active data collection scheduling systems based on massive IoT terminals to discover and collect road changes in near real-time.\n2. Participate in designing indexing and storage systems for massive 3D and multimedia data, ensuring high-performance data queries under high concurrency.\n3. Contribute to designing a computing scheduling system for large-scale servers, supporting multi-service mixing and computing transitions.\n4. Assist in designing high-precision map data real-time publishing systems, supporting incremental map updates at a per-second level for automotive terminals.\n\nRequirements:\n1. Bachelor\'s degree or above in Computer Science or related fields, with at least three years of experience.\n2. Proficiency in Java, C++ (at least one), and familiarity with common development toolchains with strong engineering implementation skills.\n3. Intelligent, eager to learn, curious, and open to new challenges.\n4. Relevant work experience is preferred.', '2024-06-15', 'ca45b94ee3b149718464b11b7058c038', '813eb40d05ce423b910144f39527da28');


-- new create table t_apply_resume
DROP TABLE IF EXISTS `t_apply_resume`;
CREATE TABLE `t_apply_resume`  (
                                   `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                   `apply_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `apply_resume` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `apply_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `apply_job_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   `apply_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;






-- new resume_test data




INSERT INTO `t_company` (`id`, `name`, `img`, `introduction`, `listed_status`, `registration_time`, `size`) VALUES ('bd072749f3894ceaba49bb229b094e5b', 'Apple', 'Apple.png', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, widely recognized as one of the world’s most valuable and influential tech firms. Founded in 1976 by Steve Jobs, Steve Wozniak, and Ronald Wayne, Apple began as a pioneer in personal computing with the launch of the Apple I and later the Macintosh, which helped define the graphical user interface.

Today, Apple is best known for its innovative consumer electronics, software, and digital services. Its flagship products include the iPhone, iPad, Mac computers, Apple Watch, and AirPods. The company also develops its own software platforms, such as iOS, macOS, iPadOS, watchOS, and tvOS. Complementing its hardware and software, Apple offers a growing range of services including iCloud, Apple Music, Apple TV+, Apple Arcade, and the App Store.

Apple is renowned for its minimalist design, robust security features, and tightly integrated ecosystem that allows seamless interaction across its devices and services. Its approach to innovation and user experience has cultivated a highly loyal global customer base and a powerful brand identity, symbolized by the iconic apple logo.

As of 2024, Apple employs over 160,000 people worldwide and operates retail stores in more than 25 countries. It consistently ranks among the top companies in the world by market capitalization and revenue, with annual revenues exceeding $380 billion in recent years.

In addition to its commercial success, Apple has made strong commitments to sustainability and privacy. The company aims to be carbon-neutral across its entire supply chain and product life cycle by 2030 and emphasizes protecting user data as a fundamental right.

Apple’s impact on technology, culture, and business is profound. It has transformed industries ranging from music and telecommunications to computing and wearable tech, and continues to push the boundaries of what’s possible through design and innovation.', 'Listed', '2025-03-26', 'Over 10,000 employees');

INSERT INTO `t_hr` (`id`, `name`, `sex`, `age`, `position`, `company_id`, `user_id`) VALUES ('c2be56abcc7b4cb2bd549366efd5e760', 'Tim Cook', 'Male', '64', 'CEO', 'bd072749f3894ceaba49bb229b094e5b', '1f98080d3c994861b38217b86f6ed70a');

INSERT INTO `t_job` (`id`, `job`, `business`, `education`, `experience`, `salary`, `area`, `address`, `description`, `create_time`, `create_hr_id`, `company_id`) VALUES ('c7ebde02a01b4752819628476f62d927', 'AI Engineer', 'Technology-Algorithm', 'Master\'s Degree', 'More than three years', '20K-50K', 'Greater London-London', '235 Regent St., London W1B 2EL, United Kingdom', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems', '2025-03-26', 'c2be56abcc7b4cb2bd549366efd5e760', 'bd072749f3894ceaba49bb229b094e5b');

INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('1f98080d3c994861b38217b86f6ed70a', '999', '55be991953d47321a102914856a308a0', 'BMYKz?L<', NULL, NULL, 'default.png', '2025-03-26 16:02:53', '0');

INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('17c692f0e5104812b2b2df0c138df8c1', '1f98080d3c994861b38217b86f6ed70a', '0fe33840c6d84bf123455d49b1611234');
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('f4179e03c2c54eb09153d0c16d92a385', '1f98080d3c994861b38217b86f6ed70a', '0fe33840c6d84bf78df55d49b1611234');



-- new user DATA

-- 5 USERS --INSERT INTO `pdf_resume`

INSERT INTO `pdf_resume` (`id`, `user_id`, `file_path`, `text`) VALUES ('1904950373734248449', '39283f1298e949d99a5045ac27304228', 'C:\\Users\\刘杨乐\\uploads\\39283f1298e949d99a5045ac27304228\\b1cff1b0-61c5-418f-b0cc-79c35d25e137_111.pdf', '"**INFORMATION TECHNOLOGY TECHNICIAN I**\n\n**Summary**  \nSystems Administrator with troubleshooting skills for networking issues, end user problems, and network security. Experienced in server management and IT infrastructure.\n\n**Highlights**  \n- Active Directory  \n- Group Policy Objects  \n- PowerShell and VBScript  \n- Microsoft Exchange  \n- VMWare experience  \n- Office 365 and Azure  \n- Disaster recovery  \n\n**Experience**  \n**Information Technology Technician I**  \nCompany Name, City, State  \nAug 2007 to Current  \n- Managed user accounts in Microsoft Office 365 and Exchange Online.  \n- Created and managed virtual machines in Microsoft Azure.  \n- Installed and configured StorSimple and Twinstrata cloud arrays.  \n- Collaborated on Office 365 migration project.  \n- Supported Linux machines for open Wi-Fi network project.  \n- Developed specifications for Enterprise backup system.  \n- Monitored network traffic using Solar Winds.  \n- Managed Active Directory Domain Controllers and Group Policy Objects.  \n- Supported Exchange infrastructure migrations.  \n- Developed application scripts using PowerShell and VBScript.  \n\n**Information Services Liaison, T**  \nCompany Name, City, State  \nAug 2005 to Aug 2007  \n- Troubleshot hardware and software problems.  \n- Supported McAfee anti-virus software on desktops.  \n- Maintained websites on Microsoft SharePoint Server.  \n- Administered end user accounts in Active Directory.  \n- Installed and supported Microsoft Windows Server and Office applications.  \n\n**Education**  \n**Bachelor of Science, Information Technology**  \nFlorida International University, City, State, United States  \n2005  \n\n**Certifications**  \nCompTIA Network+ - 2014  \n\n**Skills**  \nActive Directory, Azure, anti-virus, Backup Exec, backup, Bash, Cacti, databases, DHCP, DNS, documentation, DataDomain, EMC, Enterprise Vault, file servers, firewall, GPO, HTML, IIS, Linux, McAfee, Exchange, security, PowerShell, scripts, SolarWinds, SQL, StorSimple, troubleshooting, VMWare."');

INSERT INTO `pdf_resume` (`id`, `user_id`, `file_path`, `text`) VALUES ('1904952798725632002', 'fafef28afac64ca6a8f74339f2013707', 'C:\\Users\\刘杨乐\\uploads\\fafef28afac64ca6a8f74339f2013707\\dbe4d0db-5da9-464a-83fa-3694ed598de2_222.pdf', '"INFORMATION TECHNOLOGY MANAGER\n\nProfessional Summary  \nExperienced IT Manager with a Masters degree and multiple certifications. Skilled in planning, implementing, and evaluating IT systems and infrastructure. Strong communication and leadership abilities.\n\nExperience  \n04/2013 to Present  \nInformation Technology Manager  \nCompany Name, City, State  \n- Manage IT systems for bankruptcy cases.  \n- Maintain LAN/WAN infrastructure and security.  \n- Perform disaster recovery planning.  \n- Administer licenses and service contracts.  \n- Create and maintain user accounts.  \n- Implement network infrastructure enhancements.  \n- Establish helpdesk support system.  \n- Automate asset tracking.\n\n08/1987 to 06/2012  \nNetwork Analyst  \nCompany Name, City, State  \n- Improved LAN performance significantly.  \n- Led a team for network support.  \n- Configured and troubleshot network systems.  \n- Reduced support requests and equipment costs.  \n- Planned and installed wireless networks.  \n- Trained and mentored new staff.\n\nEducation  \nMaster of Science in Leadership, Walden University, 2015  \nMaster of Science in Information Systems Management, Walden University, 2013  \nBachelor of Science in Information Systems Management, Walden University  \n\nCertifications  \nMCP, CompTIA Network+, CompTIA A+\n\nSkills  \nNetwork Engineering, Helpdesk Administration, Disaster Recovery, Project Management, Team Building, Vendor Relations, Troubleshooting, Process Improvement."');

INSERT INTO `pdf_resume` (`id`, `user_id`, `file_path`, `text`) VALUES ('1904953287949250561', '71ad154c47cf449391da840dd42a2e92', 'C:\\Users\\刘杨乐\\uploads\\71ad154c47cf449391da840dd42a2e92\\89fe7672-9916-4b7f-9c34-1832fc7d9850_333.pdf', '"**WORKING RF SYSTEMS ENGINEER**\n\n**Qualifications**\n- Proficient in Microsoft Office, RF/Microwave software, and various programming languages (C/C++, Python, Java, Matlab, LabView)\n- Experienced with RF test instruments and circuit/PCB design software\n\n**Experience**\n\n**RF Systems Engineer**  \nMay 2014 - Present  \n- Developed hardware DFM procedures and managed testing verifications (EVT, DVT, PVT)\n- Led technical projects in satellite communication systems\n- Collaborated with suppliers to ensure quality and compliance with standards\n- Conducted performance analyses and monitored manufacturing processes\n\n**System Data Analyst**  \nAugust 2011 - December 2013  \n- Managed data extraction and quality from SQL databases\n- Developed data collection strategies and statistical reports\n\n**Electrical/Validation Engineer**  \nMay 2011 - August 2011  \n- Designed automated tests for PCBA assembly and monitored IC packaging yields\n- Supported manufacturing diagnostics and reliability testing\n\n**Education**\n- M.S. in Electrical and Computer Engineering, Purdue University, Dec. 2013, GPA: 3.9/4.0\n- B.S. in Electrical and Computer Engineering, Purdue University, Dec. 2011, GPA: 3.2/4.0\n\n**Skills**\n- Big data, circuit design, data analysis, programming, project management, quality assurance, troubleshooting"');

INSERT INTO `pdf_resume` (`id`, `user_id`, `file_path`, `text`) VALUES ('1904953574982250497', '31436038619842fc96577f97c1e792a3', 'C:\\Users\\刘杨乐\\uploads\\31436038619842fc96577f97c1e792a3\\9c460044-d23c-4edb-815f-dadb5de80022_444.pdf', '"INFORMATION TECHNOLOGY MANAGER\n\nSummary\nDedicated IT Manager with expertise in risk analysis and cost-effective solutions. Focused on enhancing performance and productivity.\n\nHighlights\n- Operations management\n- Project tracking\n- Performance criteria tracking\n- Waterfall framework\n- Scrum methodology\n- Enterprise platforms\n- Salary structure analysis\n- Calm under pressure\n- Compensation administration\n- Staff development\n- Client communication\n\nExperience\nInformation Technology Manager, 03/2013 to Present\n- Managed a four-person IT team and allocated resources to projects.\n- Improved business KPIs through customer-facing product feature iterations.\n- Collaborated with global teams to resolve IT support cases.\n- Defined project deliverables and monitored task status.\n\nIT Administrator, 06/2011 to 03/2013\n- Designed mission-critical infrastructure for availability and security.\n- Managed North America production data center and disaster recovery applications.\n- Deployed and managed VMware architecture.\n\nNetwork Administrator, 02/2010 to 05/2011\n- Tested and deployed Windows 7 operating system.\n- Administered SQL 2005 database.\n\nInformation Technology Consultant, 10/2008 to 05/2011\n- Provided security support for various clients.\n- Supported multiple operating systems.\n\nEducation\nMaster of Science in Business Information Technology, 2018, DePaul University\nBachelor of Science in Network and Communications Management, 2009, DeVry University\n\nSkills\nActive Directory, backup, budget, client support, disaster recovery, LAN, Microsoft Exchange, SQL, technical support, Windows Server."');

INSERT INTO `pdf_resume` (`id`, `user_id`, `file_path`, `text`) VALUES ('1904953802124783617', '073b8d9a2a5e4ee2882fbfdfd56d57c0', 'C:\\Users\\刘杨乐\\uploads\\073b8d9a2a5e4ee2882fbfdfd56d57c0\\ed52bc3f-5ff1-4d1b-8c6a-7406435ffbfd_555.pdf', '"INFORMATION TECHNOLOGY MANAGER\n\nSummary\nDedicated IT Manager with expertise in risk analysis and cost-effective solutions. Focused on enhancing performance and productivity.\n\nHighlights\n- Operations management\n- Project tracking\n- Performance criteria tracking\n- Waterfall framework\n- Scrum methodology\n- Enterprise platforms\n- Salary structure analysis\n- Calm under pressure\n- Compensation administration\n- Staff development\n- Client communication\n\nExperience\nInformation Technology Manager, 03/2013 to Present\n- Managed a four-person IT team and allocated resources to projects.\n- Improved business KPIs through customer-facing product feature iterations.\n- Collaborated with global teams to resolve IT support cases.\n- Defined project deliverables and monitored task status.\n\nIT Administrator, 06/2011 to 03/2013\n- Designed mission-critical infrastructure for availability and security.\n- Managed North America production data center and disaster recovery applications.\n- Deployed and managed VMware architecture.\n\nNetwork Administrator, 02/2010 to 05/2011\n- Tested and deployed Windows 7 operating system.\n- Administered SQL 2005 database.\n\nInformation Technology Consultant, 10/2008 to 05/2011\n- Provided security support for various clients.\n- Supported multiple operating systems.\n\nEducation\nMaster of Science in Business Information Technology, 2018, DePaul University\nBachelor of Science in Network and Communications Management, 2009, DeVry University\n\nSkills\nActive Directory, backup, budget, client support, disaster recovery, LAN, Microsoft Exchange, SQL, technical support, Windows Server."');





-- 5 USERS --INSERT INTO `t_apply_resume` 
INSERT INTO `t_apply_resume` (`id`, `apply_user_id`, `apply_resume`, `apply_username`, `apply_job_id`, `apply_description`) VALUES ('1904951468212711425', '39283f1298e949d99a5045ac27304228', '"**INFORMATION TECHNOLOGY TECHNICIAN I**\n\n**Summary**  \nSystems Administrator with troubleshooting skills for networking issues, end user problems, and network security. Experienced in server management and IT infrastructure.\n\n**Highlights**  \n- Active Directory  \n- Group Policy Objects  \n- PowerShell and VBScript  \n- Microsoft Exchange  \n- VMWare experience  \n- Office 365 and Azure  \n- Disaster recovery  \n\n**Experience**  \n**Information Technology Technician I**  \nCompany Name, City, State  \nAug 2007 to Current  \n- Managed user accounts in Microsoft Office 365 and Exchange Online.  \n- Created and managed virtual machines in Microsoft Azure.  \n- Installed and configured StorSimple and Twinstrata cloud arrays.  \n- Collaborated on Office 365 migration project.  \n- Supported Linux machines for open Wi-Fi network project.  \n- Developed specifications for Enterprise backup system.  \n- Monitored network traffic using Solar Winds.  \n- Managed Active Directory Domain Controllers and Group Policy Objects.  \n- Supported Exchange infrastructure migrations.  \n- Developed application scripts using PowerShell and VBScript.  \n\n**Information Services Liaison, T**  \nCompany Name, City, State  \nAug 2005 to Aug 2007  \n- Troubleshot hardware and software problems.  \n- Supported McAfee anti-virus software on desktops.  \n- Maintained websites on Microsoft SharePoint Server.  \n- Administered end user accounts in Active Directory.  \n- Installed and supported Microsoft Windows Server and Office applications.  \n\n**Education**  \n**Bachelor of Science, Information Technology**  \nFlorida International University, City, State, United States  \n2005  \n\n**Certifications**  \nCompTIA Network+ - 2014  \n\n**Skills**  \nActive Directory, Azure, anti-virus, Backup Exec, backup, Bash, Cacti, databases, DHCP, DNS, documentation, DataDomain, EMC, Enterprise Vault, file servers, firewall, GPO, HTML, IIS, Linux, McAfee, Exchange, security, PowerShell, scripts, SolarWinds, SQL, StorSimple, troubleshooting, VMWare."', '111', 'c7ebde02a01b4752819628476f62d927', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems');


INSERT INTO `t_apply_resume` (`id`, `apply_user_id`, `apply_resume`, `apply_username`, `apply_job_id`, `apply_description`) VALUES ('1904952867839373314', 'fafef28afac64ca6a8f74339f2013707', '"INFORMATION TECHNOLOGY MANAGER\n\nProfessional Summary  \nExperienced IT Manager with a Masters degree and multiple certifications. Skilled in planning, implementing, and evaluating IT systems and infrastructure. Strong communication and leadership abilities.\n\nExperience  \n04/2013 to Present  \nInformation Technology Manager  \nCompany Name, City, State  \n- Manage IT systems for bankruptcy cases.  \n- Maintain LAN/WAN infrastructure and security.  \n- Perform disaster recovery planning.  \n- Administer licenses and service contracts.  \n- Create and maintain user accounts.  \n- Implement network infrastructure enhancements.  \n- Establish helpdesk support system.  \n- Automate asset tracking.\n\n08/1987 to 06/2012  \nNetwork Analyst  \nCompany Name, City, State  \n- Improved LAN performance significantly.  \n- Led a team for network support.  \n- Configured and troubleshot network systems.  \n- Reduced support requests and equipment costs.  \n- Planned and installed wireless networks.  \n- Trained and mentored new staff.\n\nEducation  \nMaster of Science in Leadership, Walden University, 2015  \nMaster of Science in Information Systems Management, Walden University, 2013  \nBachelor of Science in Information Systems Management, Walden University  \n\nCertifications  \nMCP, CompTIA Network+, CompTIA A+\n\nSkills  \nNetwork Engineering, Helpdesk Administration, Disaster Recovery, Project Management, Team Building, Vendor Relations, Troubleshooting, Process Improvement."', '222', 'c7ebde02a01b4752819628476f62d927', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems');


INSERT INTO `t_apply_resume` (`id`, `apply_user_id`, `apply_resume`, `apply_username`, `apply_job_id`, `apply_description`) VALUES ('1904953382828601345', '71ad154c47cf449391da840dd42a2e92', '"**WORKING RF SYSTEMS ENGINEER**\n\n**Qualifications**\n- Proficient in Microsoft Office, RF/Microwave software, and various programming languages (C/C++, Python, Java, Matlab, LabView)\n- Experienced with RF test instruments and circuit/PCB design software\n\n**Experience**\n\n**RF Systems Engineer**  \nMay 2014 - Present  \n- Developed hardware DFM procedures and managed testing verifications (EVT, DVT, PVT)\n- Led technical projects in satellite communication systems\n- Collaborated with suppliers to ensure quality and compliance with standards\n- Conducted performance analyses and monitored manufacturing processes\n\n**System Data Analyst**  \nAugust 2011 - December 2013  \n- Managed data extraction and quality from SQL databases\n- Developed data collection strategies and statistical reports\n\n**Electrical/Validation Engineer**  \nMay 2011 - August 2011  \n- Designed automated tests for PCBA assembly and monitored IC packaging yields\n- Supported manufacturing diagnostics and reliability testing\n\n**Education**\n- M.S. in Electrical and Computer Engineering, Purdue University, Dec. 2013, GPA: 3.9/4.0\n- B.S. in Electrical and Computer Engineering, Purdue University, Dec. 2011, GPA: 3.2/4.0\n\n**Skills**\n- Big data, circuit design, data analysis, programming, project management, quality assurance, troubleshooting"', '333', 'c7ebde02a01b4752819628476f62d927', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems');


INSERT INTO `t_apply_resume` (`id`, `apply_user_id`, `apply_resume`, `apply_username`, `apply_job_id`, `apply_description`) VALUES ('1904953637804535809', '31436038619842fc96577f97c1e792a3', '"INFORMATION TECHNOLOGY MANAGER\n\nSummary\nDedicated IT Manager with expertise in risk analysis and cost-effective solutions. Focused on enhancing performance and productivity.\n\nHighlights\n- Operations management\n- Project tracking\n- Performance criteria tracking\n- Waterfall framework\n- Scrum methodology\n- Enterprise platforms\n- Salary structure analysis\n- Calm under pressure\n- Compensation administration\n- Staff development\n- Client communication\n\nExperience\nInformation Technology Manager, 03/2013 to Present\n- Managed a four-person IT team and allocated resources to projects.\n- Improved business KPIs through customer-facing product feature iterations.\n- Collaborated with global teams to resolve IT support cases.\n- Defined project deliverables and monitored task status.\n\nIT Administrator, 06/2011 to 03/2013\n- Designed mission-critical infrastructure for availability and security.\n- Managed North America production data center and disaster recovery applications.\n- Deployed and managed VMware architecture.\n\nNetwork Administrator, 02/2010 to 05/2011\n- Tested and deployed Windows 7 operating system.\n- Administered SQL 2005 database.\n\nInformation Technology Consultant, 10/2008 to 05/2011\n- Provided security support for various clients.\n- Supported multiple operating systems.\n\nEducation\nMaster of Science in Business Information Technology, 2018, DePaul University\nBachelor of Science in Network and Communications Management, 2009, DeVry University\n\nSkills\nActive Directory, backup, budget, client support, disaster recovery, LAN, Microsoft Exchange, SQL, technical support, Windows Server."', '444', 'c7ebde02a01b4752819628476f62d927', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems');


INSERT INTO `t_apply_resume` (`id`, `apply_user_id`, `apply_resume`, `apply_username`, `apply_job_id`, `apply_description`) VALUES ('1904953946345926657', '073b8d9a2a5e4ee2882fbfdfd56d57c0', '"INFORMATION TECHNOLOGY MANAGER\n\nSummary\nDedicated IT Manager with expertise in risk analysis and cost-effective solutions. Focused on enhancing performance and productivity.\n\nHighlights\n- Operations management\n- Project tracking\n- Performance criteria tracking\n- Waterfall framework\n- Scrum methodology\n- Enterprise platforms\n- Salary structure analysis\n- Calm under pressure\n- Compensation administration\n- Staff development\n- Client communication\n\nExperience\nInformation Technology Manager, 03/2013 to Present\n- Managed a four-person IT team and allocated resources to projects.\n- Improved business KPIs through customer-facing product feature iterations.\n- Collaborated with global teams to resolve IT support cases.\n- Defined project deliverables and monitored task status.\n\nIT Administrator, 06/2011 to 03/2013\n- Designed mission-critical infrastructure for availability and security.\n- Managed North America production data center and disaster recovery applications.\n- Deployed and managed VMware architecture.\n\nNetwork Administrator, 02/2010 to 05/2011\n- Tested and deployed Windows 7 operating system.\n- Administered SQL 2005 database.\n\nInformation Technology Consultant, 10/2008 to 05/2011\n- Provided security support for various clients.\n- Supported multiple operating systems.\n\nEducation\nMaster of Science in Business Information Technology, 2018, DePaul University\nBachelor of Science in Network and Communications Management, 2009, DeVry University\n\nSkills\nActive Directory, backup, budget, client support, disaster recovery, LAN, Microsoft Exchange, SQL, technical support, Windows Server."', '555', 'c7ebde02a01b4752819628476f62d927', 'An AI Engineer is responsible for designing, developing, and deploying artificial intelligence models and systems that solve complex problems across various domains. Their work involves building machine learning algorithms, training and evaluating models, and integrating AI solutions into real-world applications. AI Engineers collaborate closely with data scientists, software developers, and product teams to ensure AI systems are efficient, scalable, and aligned with business goals. They often work with tools and frameworks such as Python, TensorFlow, PyTorch, and cloud platforms, and stay up to date with the latest advancements in deep learning, natural language processing, and computer vision.\r\n\r\nKey Responsibilities:\r\n	•	Design and implement machine learning and deep learning models\r\n	•	Process, clean, and manage large datasets\r\n	•	Evaluate model performance and fine-tune algorithms\r\n	•	Deploy AI solutions in production environments\r\n	•	Collaborate with cross-functional teams for integration and optimization\r\n	•	Research and apply new AI technologies to improve existing systems');






-- 5 USERS --INSERT INTO `t_user` 
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('073b8d9a2a5e4ee2882fbfdfd56d57c0', '555', '0f4d6689e6ac7e5fc5ecb2a730ac4b40', '?xnzsTFg', NULL, NULL, 'default.png', '2025-03-26 17:48:45', '0');
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('31436038619842fc96577f97c1e792a3', '444', '691fcb9ce44c86946f057e5ed412cf27', '(NSDmHiO', NULL, NULL, 'default.png', '2025-03-26 17:47:45', '0');
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('39283f1298e949d99a5045ac27304228', '111', 'dd319cacc3aeb8660775b7b8898769b6', 'hzltWPt!', NULL, NULL, 'default.png', '2025-03-26 17:35:12', '0');
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('71ad154c47cf449391da840dd42a2e92', '333', '7ea9e17dd98be861bf2f764b4d047f1f', 'nKqc{y%n', NULL, NULL, 'default.png', '2025-03-26 17:46:40', '0');
INSERT INTO `t_user` (`id`, `username`, `password`, `salt`, `phone`, `email`, `img`, `create_time`, `locked`) VALUES ('fafef28afac64ca6a8f74339f2013707', '222', '040f4c1b9d1a977d43cd8d9b3b7454ad', 'mgyLYnAh', NULL, NULL, 'default.png', '2025-03-26 17:44:51', '0'); 









-- 5 USERS --INSERT INTO `t_user` 
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('c04eda57a87b406bb8763b3c1b2e64dd', '39283f1298e949d99a5045ac27304228', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('581152de68d646a4b392a9cd142f7b38', 'fafef28afac64ca6a8f74339f2013707', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('129417334d7c4035adca66f6f8fc29f3', '71ad154c47cf449391da840dd42a2e92', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('bb98db7e234e41a091edd96daf98c314', '31436038619842fc96577f97c1e792a3', '0fe33840c6d84bf78df55d49b1134245');
INSERT INTO `t_user_role` (`id`, `user_id`, `role_id`) VALUES ('99cf27015a264e15b052b019595af7c0', '073b8d9a2a5e4ee2882fbfdfd56d57c0', '0fe33840c6d84bf78df55d49b1134245');
