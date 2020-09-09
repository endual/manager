/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : haiyu

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 09/09/2020 15:44:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dic_adjust_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_adjust_code`;
CREATE TABLE `dic_adjust_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除 1使用 0不使用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_adjust_code` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_adjust_code
-- ----------------------------
INSERT INTO `dic_adjust_code` VALUES (1, '0x00', '未调整 正常进出站', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (2, '0x01', '超时更新 出站超时从更新时间开始计算', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (3, '0x02', '超程更新 出站不作超程检查', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (4, '0x03', '超时且超程更新 出站不作超程检查，超时从更新时间开始计算', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (5, '0x04', '其他更新 正常进出站', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (6, '0x99', '免费出站更新 出站不作其它检查且不扣费/次', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_adjust_code` VALUES (14, '0x04', '其他更新 正常进出站', 1, '2020-09-08 17:34:45', 0, 0);

-- ----------------------------
-- Table structure for dic_ar_file_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ar_file_type`;
CREATE TABLE `dic_ar_file_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `DEVICE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ar_file_type
-- ----------------------------
INSERT INTO `dic_ar_file_type` VALUES (1, '0', 'TVM定期', '1', '2020-09-09 13:18:48', 'TVM', 1);
INSERT INTO `dic_ar_file_type` VALUES (2, '1', 'TVM当前运营日结束', '1', '2020-09-09 13:20:05', 'TVM', 1);
INSERT INTO `dic_ar_file_type` VALUES (3, '2', 'TVM当前运营日开始', '1', '2020-09-09 13:55:06', 'TVM', 1);
INSERT INTO `dic_ar_file_type` VALUES (4, '4', 'TVM 4: 拔出备用找零钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (5, '5', 'TVM 5: 插入备用找零钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (6, '6', 'TVM 6: 拔出循环找零钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (7, '7', 'TVM 7: 插入循环找零钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (8, '8', 'TVM 拔出硬币钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (9, '9', 'TVM 插入硬币钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (10, '10', 'TVM 拔出纸币钱箱', '1', '2020-09-08 17:36:49', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (11, '11', 'TVM插入纸币钱箱', '1', '2018-08-25 16:16:26', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (12, '14', 'BOM班次开始', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (13, '15', 'BOM班次结束', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (14, '0', 'BOM定期', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (15, '1', 'BOM当前运营日结束', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (16, '2', 'BOM当前运营日开始', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (17, '3', 'BOM恢复通讯', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (18, '12', 'BOM拔出票箱', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (19, '13', 'BOM插入票箱', '1', '2018-08-25 16:16:26', 'BOM', 0);
INSERT INTO `dic_ar_file_type` VALUES (20, '1', 'AGM当前运营日结束', '1', '2018-08-25 16:16:26', 'AGM', 0);
INSERT INTO `dic_ar_file_type` VALUES (21, '2', 'AGM当前运营日开始', '1', '2018-08-25 16:16:26', 'AGM', 0);
INSERT INTO `dic_ar_file_type` VALUES (22, '3', 'AGM恢复通讯', '1', '2018-08-25 16:16:26', 'AGM', 0);
INSERT INTO `dic_ar_file_type` VALUES (23, '12', 'AGM拔出票箱', '1', '2018-08-25 16:16:26', 'AGM', 0);
INSERT INTO `dic_ar_file_type` VALUES (24, '13', 'AGM插入票箱', '1', '2018-08-25 16:16:26', 'AGM', 0);
INSERT INTO `dic_ar_file_type` VALUES (25, '0', 'AVM定期', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (26, '1', 'AVM当前运营日结束', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (27, '2', 'AVM当前运营日开始', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (28, '3', 'AVM恢复通讯', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (29, '10', 'AVM 拔出纸币钱箱', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (30, '11', 'AVM插入纸币钱箱', '1', '2018-08-25 16:16:26', 'AVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (31, '3', '车站恢复通讯', '1', '2018-08-25 16:16:26', 'SC', 0);
INSERT INTO `dic_ar_file_type` VALUES (32, '', '', NULL, '2020-09-08 10:04:54', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (33, '1', '1', NULL, '2020-09-08 18:27:53', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (34, 'a', 'ss', '0', '2020-09-08 18:31:50', 'TVM', 0);
INSERT INTO `dic_ar_file_type` VALUES (35, 'vv', 'cc', '1', '2020-09-09 14:59:58', 'TVM', 1);

-- ----------------------------
-- Table structure for dic_area_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_area_code`;
CREATE TABLE `dic_area_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除 1是 0不是',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_area_code` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_area_code
-- ----------------------------
INSERT INTO `dic_area_code` VALUES (1, '0', '全省', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_area_code` VALUES (2, '1', '福州', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_area_code` VALUES (3, '2-255', '其他城市', 1, NULL, 0, 0);
INSERT INTO `dic_area_code` VALUES (4, '256', 'xxx', 0, '2020-09-08 17:12:39', 0, 0);
INSERT INTO `dic_area_code` VALUES (5, '2-255', '其他城市x', 0, '2020-09-08 17:16:44', 0, 0);

-- ----------------------------
-- Table structure for dic_area_ticket_flag
-- ----------------------------
DROP TABLE IF EXISTS `dic_area_ticket_flag`;
CREATE TABLE `dic_area_ticket_flag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除 1不是 0是',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_area_ticket_flag` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_area_ticket_flag
-- ----------------------------
INSERT INTO `dic_area_ticket_flag` VALUES (1, '1', '无使用范围限制，可在任意车站上下车', 1, '2020-09-08 17:13:04', 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (2, '1', '在限定的区域使用，只能在指定的车站上下车。', 1, '2020-09-08 17:13:04', 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (3, '2', '在限定的区段使用，只能在指定的车站上下车。\r', 1, '2020-09-08 17:13:04', 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (5, '1', '1', 0, '2020-09-08 17:16:16', 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (6, '1', '2', 0, NULL, 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (7, '1', '2', 0, '2020-09-08 17:16:30', 0, 0);
INSERT INTO `dic_area_ticket_flag` VALUES (8, '1', '1', 0, '2020-09-08 17:16:37', 0, 0);

-- ----------------------------
-- Table structure for dic_authority_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_authority_code`;
CREATE TABLE `dic_authority_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除 1使用 0不使用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_authority_code` int(10) NOT NULL COMMENT '地标',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_authority_code
-- ----------------------------
INSERT INTO `dic_authority_code` VALUES (1, '0001', '设备状态(客流)监视', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (2, '0002', '启动降级模式、紧急模式', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (3, '0003', '系统基本信息管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (4, '0004', '参数管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (5, '0005', '系统操作员权限管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (6, '0006', '设备注册信息管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (7, '0007', '软件版本管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (8, '0008', '一般数据查询', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (9, '0009', '车站操作员权限管理', 1, '2020-09-08 11:36:07', 0, 'ZLC', 0);
INSERT INTO `dic_authority_code` VALUES (10, '0101', '设备状态(客流)监视', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (11, '0102', '普通控制 [系统模式命令除外]', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (12, '0103', '系统模式控制[启动降级模式]', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (13, '0104', '车站运营管理[系统运作模式的定义、自动运行时间表的定义等设置]', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (14, '0105', '设备历史状态查询', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (15, '0106', '运营日志查询', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (16, '0107', 'TVM 和 AGM 的交易记录查询', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (17, '0108', 'BOM 的交易记录的查询', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (18, '0109', '设备审计计数器数据查询', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (19, '0110', '钱箱/票箱清点管理', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (20, '0111', '预赋值车票销售数据输入', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (21, '0112', '日常运营数据查询 ', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (22, '0113', '离线数据管理', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (23, '0114', '紧急模式控制', 1, '2020-09-08 11:36:07', 0, 'SC', 0);
INSERT INTO `dic_authority_code` VALUES (24, '0301', '日常运营操作', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (25, '0302', '交易记录查询', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (26, '0303', '班次数据查询', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (27, '0304', '运营日志查询', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (28, '0305', '诊断功能', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (29, '0306', '行政处理授权', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (30, '0307', '黑名单解锁权限', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (31, '0308', 'BOM 操作界面解锁权限', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (32, '0309', '非正常模式下的“单程票退款”功能操作权限', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (33, '0310', '非正常模式下“单程票退款”功能的授权', 1, '2020-09-08 11:36:07', 0, 'BOM', 0);
INSERT INTO `dic_authority_code` VALUES (34, '0401', '操作服务', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (35, '0402', '数据查询', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (36, '0403', '服务控制', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (37, '0404', '维护', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (38, '0405', '设备配置', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (39, '0406', '错误重置（输出子单元状态的检查，错误删除和运行权限）', 1, '2020-09-08 11:36:07', 0, 'AGM', 0);
INSERT INTO `dic_authority_code` VALUES (41, '0201', '补币', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (42, '0201', '补票', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (43, '0201', '收回票箱', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (44, '0201', '收回纸币钱箱', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (45, '0201', '清空纸币箱', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (46, '0201', '清空票箱', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (47, '0201', '充值单程票废票箱', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (48, '0201', '状态数据查询等', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (49, '0202', '操作状态', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (50, '0202', '最后交易状态', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (51, '0202', '当前审计状态', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (52, '0202', '错误请当', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (53, '0203', '停止服务状态', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (54, '0203', '服务状态', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (55, '0203', '关机', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (56, '0204', '模块测试', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (57, '0204', 'I/O 测试', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (58, '0204', '测试票事件', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (59, '0205', '查询设备参数', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (60, '0205', '设置设备ID和IP地址', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (61, '0205', '设置设备时间', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (62, '0205', '查询软件版本', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (63, '0206', '错误重置（输出子单元状态的检查，错误删除和运行权限）', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (64, '0207', '其他功能', 1, '2020-09-08 11:36:07', 0, 'TVM', 0);
INSERT INTO `dic_authority_code` VALUES (65, '1', '2', 0, NULL, 0, 'zx', 0);
INSERT INTO `dic_authority_code` VALUES (66, '1', '1', 0, '2020-09-08 18:12:12', 0, '2', 0);
INSERT INTO `dic_authority_code` VALUES (67, '1', '1', 0, '2020-09-08 18:32:11', 0, '2', 0);

-- ----------------------------
-- Table structure for dic_block_reason
-- ----------------------------
DROP TABLE IF EXISTS `dic_block_reason`;
CREATE TABLE `dic_block_reason`  (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `dic_block_reason` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_block_reason
-- ----------------------------
INSERT INTO `dic_block_reason` VALUES (1, '0', '黑名单锁卡', '1', '2019-01-09 00:00:00', 0, 0);
INSERT INTO `dic_block_reason` VALUES (2, '1', 'x', NULL, '2020-09-08 18:19:25', 0, 0);

-- ----------------------------
-- Table structure for dic_card_issuer
-- ----------------------------
DROP TABLE IF EXISTS `dic_card_issuer`;
CREATE TABLE `dic_card_issuer`  (
  `ISSUER_ID` int(10) NULL DEFAULT NULL COMMENT 'issuer_id',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `CODE` int(255) NULL DEFAULT NULL COMMENT '值',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `LOGIC_DELETE` int(255) NULL DEFAULT 1 COMMENT '逻辑删除标识 0:删除 1:未删除',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_card_issuer` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_card_issuer
-- ----------------------------
INSERT INTO `dic_card_issuer` VALUES (1, 9, 1, '榕城通', 1, '2018-08-26 10:25:53', 0, 0);
INSERT INTO `dic_card_issuer` VALUES (2, 10, 2, '福州地铁ACC', 1, '2018-08-26 10:25:53', 0, 0);

-- ----------------------------
-- Table structure for dic_chip_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_chip_type`;
CREATE TABLE `dic_chip_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_chip_type` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票卡介质芯片类型\r\n' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_chip_type
-- ----------------------------
INSERT INTO `dic_chip_type` VALUES (1, '0', '预留', 1, '2020-09-08 10:31:58', 0, 0);
INSERT INTO `dic_chip_type` VALUES (2, '1', '存储卡介质（Ultralight）', 1, '2020-09-08 10:31:58', 0, 0);
INSERT INTO `dic_chip_type` VALUES (3, '2', '逻辑加密卡（Mifare1K）', 1, '2020-09-08 10:31:58', 0, 0);
INSERT INTO `dic_chip_type` VALUES (4, '3', 'CPU 票卡', 1, '2020-09-08 10:31:58', 0, 0);
INSERT INTO `dic_chip_type` VALUES (5, '4', 'Ultralight C1', 1, '2020-09-08 10:31:58', 0, 0);
INSERT INTO `dic_chip_type` VALUES (6, 'x', '3', 0, NULL, 0, 0);
INSERT INTO `dic_chip_type` VALUES (7, 's', 's', 0, '2020-09-08 18:16:13', 0, 0);
INSERT INTO `dic_chip_type` VALUES (8, 'a', 'add', 0, '2020-09-08 18:32:32', 0, 0);

-- ----------------------------
-- Table structure for dic_command_event
-- ----------------------------
DROP TABLE IF EXISTS `dic_command_event`;
CREATE TABLE `dic_command_event`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `COMMAND_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控制命令名称，tag_name',
  `COMMAND_VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控制命令值',
  `EVENT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件名称，tag_name',
  `EVENT_VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件值',
  `COMMAND_DESTINATION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '命令响应',
  `COMMAND_SOURCE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '命令来源',
  `LOGIC_DELETE` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_command_event
-- ----------------------------
INSERT INTO `dic_command_event` VALUES (1, 'INSERV', '0', 'NMDSTA', '1', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (2, 'INSERV', '2', 'NMDSTA', '8', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (3, 'INSERV', '1', 'NMDSTA', '255', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (4, 'INSERV', '3', NULL, NULL, 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (5, 'INSERV', '4', 'NMDSTA', '0', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (6, 'STATEM', '0', 'NMDSTA', '1', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (7, 'STATEM', '1', 'NMDSTA', '9', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (8, 'INSERV', '0', 'NMDSTA', '1', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (9, 'INSERV', '1', 'NMDSTA', '255', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (10, 'INSERV', '2', 'NMDSTA', '10', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (11, 'INSERV', '3', NULL, NULL, 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (12, 'INSERV', '4', 'NMDSTA', '0', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (13, 'EQUCTRL', '0', NULL, NULL, 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (14, 'INSERV', '0', 'NMDSTA', '1', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (15, 'INSERV', '1', 'NMDSTA', '255', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (16, 'INSERV', '2', 'NMDSTA', '8', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (17, 'INSERV', '3', NULL, NULL, 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (18, 'INSERV', '4', 'NMDSTA', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (19, 'EQUCTRL', '0', NULL, NULL, 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (20, 'STACLN', 'null', 'SERSTA', 'Bit1=1', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (21, 'STACLT', 'null', 'SERSTA', 'Bit2=1', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (22, 'INIEOD', 'null', NULL, NULL, 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (23, 'INIBLK', 'null', NULL, NULL, 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (24, 'CLOSYN', 'null', 'TIMDIS', '0', 'SC', 'ZLC', 1, 0);
INSERT INTO `dic_command_event` VALUES (25, 'OUTSCE', 'null', 'NMDSTA', '0', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (26, 'INIEOD', 'null', 'CS2DWN', '0', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (27, 'INIBLK', 'null', 'CS2DWN', '0', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (28, 'CLOSYN', 'null', 'TIMDIS', '0', 'TVM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (29, 'OUTSCE', 'null', 'NMDSTA', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (30, 'INIEOD', 'null', 'CS2DWN', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (31, 'INIBLK', 'null', 'CS2DWN', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (32, 'INIWVD', 'null', 'CS2DWN', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (33, 'CLOSYN', 'null', 'TIMDIS', '0', 'BOM', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (34, 'OUTSCE', 'null', 'NMDSTA', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (35, 'INSERV', '0', 'NMDSTA', '1', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (36, 'INSERV', '1', 'NMDSTA', '255', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (37, 'INSERV', '2', 'NMDSTA', '8', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (38, 'INSERV', '3', NULL, NULL, 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (39, 'INSERV', '4', 'NMDSTA', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (40, 'AISMOD', '0', 'AILDIR', '2', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (41, 'AISMOD', '1', 'AILDIR', '1', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (42, 'AISMOD', '2', 'AILDIR', '3', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (43, 'INIEOD', 'null', 'CS2DWN', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (44, 'INIBLK', 'null', 'CS2DWN', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (45, 'INIWVD', 'null', 'CS2DWN', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (46, 'AILMOD', '0', 'AILSTA', '1', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (47, 'AILMOD', '1', 'AILSTA', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (48, 'CLOSYN', 'null', 'TIMDIS', '0', 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (49, 'EQUCTRL', '0', NULL, NULL, 'GATE', 'SC', 1, 0);
INSERT INTO `dic_command_event` VALUES (56, '1', '1', '1', '1', '1', '1', 0, 0);

-- ----------------------------
-- Table structure for dic_concessional_lamp
-- ----------------------------
DROP TABLE IF EXISTS `dic_concessional_lamp`;
CREATE TABLE `dic_concessional_lamp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_concessional_lamp` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自动检票机灯光显示代码，定义包括灯光显示的颜色、\r\n闪动频率、次数的信息。' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_concessional_lamp
-- ----------------------------
INSERT INTO `dic_concessional_lamp` VALUES (1, '0', '红色', 1, '2020-09-08 10:33:03', 0, 0);
INSERT INTO `dic_concessional_lamp` VALUES (2, '1', '黄色', 1, '2020-09-08 10:33:03', 0, 0);
INSERT INTO `dic_concessional_lamp` VALUES (3, '2', '绿色', 1, '2020-09-08 10:33:03', 0, 0);
INSERT INTO `dic_concessional_lamp` VALUES (4, 'dd', 'dff', 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for dic_core_base_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_core_base_type`;
CREATE TABLE `dic_core_base_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本数据名称',
  `data_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本类型',
  `data_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '范围',
  `byte_count` int(20) NULL DEFAULT NULL COMMENT '字节数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_core_base_type` int(10) NOT NULL COMMENT '地标',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_core_base_type
-- ----------------------------
INSERT INTO `dic_core_base_type` VALUES (1, 'AFCTime_t', 'U32', '[0, 4294967295]', 4, '2020-09-07 17:18:02', 0, '用秒表示的自从 GMT+00:00 1970 年 1 月 1 日开始计算的时间', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (2, 'Date2_t', 'U16', '[0, 65535]', 2, '2020-09-07 17:19:26', 0, '用以表示日期，不含时间信息。单位为天（日）。\r\n0 表示 2016 年 1 月 1 日；1 表示 2016 年 1 月 2 日；以此类推。', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (3, 'MilliSecond_t', 'U32\r', '[0, 4294967295]\r', 4, '2020-09-07 17:20:13', 0, '表示一段时间，单位为毫秒。\r', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (4, 'S8_t', 'byte', '[-128, 127]\r', 1, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (5, 'S16_t\r', 'short', '[-32768, 32767]', 2, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (6, 'S32_t', 'int', '[-2147483648, 2147483647]', 4, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (7, 'Seconds_t', 'U32', '[0, 4294967295]\r', 4, '2020-09-07 17:20:13', 0, '表示一段时间，单位为秒。', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (8, 'Seconds_t', 'U32', '[0, 4294967295]\r', 4, '2020-09-07 17:20:13', 0, '表示一段时间，单位为秒。', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (9, 'SecondsSinceMidNight_t', 'U32_t', '[0, 86400)', 4, '2020-09-07 17:20:13', 0, '用以表示时间，但不含日期信息。单位为秒。\r\n0 表示当日零点零分零秒；3600 表示为当日一点零分零秒；以此类推', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (10, 'U8_t', 'unsigned char', '[0, 255]', 1, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (11, 'U16_t', 'unsigned short', '[0, 65535]', 2, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (12, 'U32_t', 'unsigned int', '[0, 4294967295]', 4, '2020-09-07 17:20:13', 0, NULL, 1, 0);
INSERT INTO `dic_core_base_type` VALUES (13, 'UnicodeString', 'opaque<>', '', NULL, '2020-09-07 17:20:13', 0, 'Unicode 字符块，采用字节块方式定义，每 2 个字节编码为一个\r\nunicode 字符，编码规则采用 UTF-16 little-endian。', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (14, 'String<64>', 'Char(64)', '', NULL, '2020-09-07 17:20:13', 0, '长度 64 字节的字符串\r', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (15, 'BCDTime_t\r', 'U8_t[7]\r', NULL, NULL, '2020-09-07 17:20:13', 0, 'BCD 码时间\r\n由 7 个字节表示，从高位到低位分别表示为：\r\nYYYYMMDDhhmmss', 1, 0);
INSERT INTO `dic_core_base_type` VALUES (16, '1', '1', '1', 1, '2020-09-08 22:06:20', 0, '2', 0, 0);

-- ----------------------------
-- Table structure for dic_daily_knot_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_daily_knot_type`;
CREATE TABLE `dic_daily_knot_type`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logic_delete` int(11) NOT NULL DEFAULT 1,
  `create_time` date NOT NULL,
  `has_retention` int(11) NOT NULL DEFAULT 1,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_daily_knot_type
-- ----------------------------
INSERT INTO `dic_daily_knot_type` VALUES (1, '系统日志清理', 1, '2019-05-26', 1, 0);
INSERT INTO `dic_daily_knot_type` VALUES (2, '历史交易数据转储', 1, '2019-05-26', 1, 0);
INSERT INTO `dic_daily_knot_type` VALUES (3, 'socket通讯数据转储', 1, '2019-05-26', 1, 0);
INSERT INTO `dic_daily_knot_type` VALUES (4, '审计交易数据转储', 1, '2019-05-26', 1, 0);
INSERT INTO `dic_daily_knot_type` VALUES (5, '日结报表生成', 1, '2019-05-26', 1, 0);
INSERT INTO `dic_daily_knot_type` VALUES (6, '参数下发检查时间配置', 1, '2019-05-26', 0, 0);
INSERT INTO `dic_daily_knot_type` VALUES (7, '交易数据核查时间配置', 1, '2020-09-07', 0, 0);

-- ----------------------------
-- Table structure for dic_date_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_date_type`;
CREATE TABLE `dic_date_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_date_type` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日期类型\r\n此字段为计算车票费用的输入参数之一\r\n' ROW_FORMAT = COMPRESSED;

-- ----------------------------
-- Records of dic_date_type
-- ----------------------------
INSERT INTO `dic_date_type` VALUES (1, '0', '普通工作日，周一至周五', 1, '2020-09-08 10:34:12', 0, 0);
INSERT INTO `dic_date_type` VALUES (2, '1', '周六', 1, '2020-09-08 10:34:12', 0, 0);
INSERT INTO `dic_date_type` VALUES (3, '2', '周日', 1, '2020-09-08 10:34:12', 0, 0);
INSERT INTO `dic_date_type` VALUES (4, '3', '公众假日', 1, '2020-09-08 10:34:12', 0, 0);
INSERT INTO `dic_date_type` VALUES (5, '1', '2', 0, '2020-09-08 22:07:39', 0, 0);

-- ----------------------------
-- Table structure for dic_device_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_device_type`;
CREATE TABLE `dic_device_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备简称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_device_type` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备类型，十六进制表示' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_device_type
-- ----------------------------
INSERT INTO `dic_device_type` VALUES (1, '00', 'ZLC', '线路中央计算机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (2, '01', 'SC', '车站计算机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (3, '02', 'PCA', '便携式验票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (4, '03', 'TCM', '自动验票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (5, '04', 'AMG(EN)', '入闸机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (6, '05', 'AGM(EX)', '出闸机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (7, '06', 'AGM(RX)', '双向检票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (8, '07', 'BOM', '半自动售票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (9, '08', 'TVM', '自动售票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (10, '09', 'CTM', '互联网购票机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (11, '10', 'ES', '编码分拣机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (12, '11', 'IBOM', '小黄机', 1, '2020-09-08 10:35:19', 0, 0);
INSERT INTO `dic_device_type` VALUES (13, 'a', 'a', 'aa', 0, '2020-09-08 18:33:05', 0, 0);
INSERT INTO `dic_device_type` VALUES (14, 'a', 'sd', 'aa', 0, '2020-09-08 18:33:35', 0, 0);

-- ----------------------------
-- Table structure for dic_duration_mode
-- ----------------------------
DROP TABLE IF EXISTS `dic_duration_mode`;
CREATE TABLE `dic_duration_mode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_duration_mode` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车票有效期类别' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_duration_mode
-- ----------------------------
INSERT INTO `dic_duration_mode` VALUES (1, '0', '永远无效', 1, '2020-09-08 10:36:40', 0, 0);
INSERT INTO `dic_duration_mode` VALUES (2, '1', '一直有效', 1, '2020-09-08 10:36:40', 0, 0);
INSERT INTO `dic_duration_mode` VALUES (3, '2', '售后/充值后一段日期有效', 1, '2020-09-08 10:36:40', 0, 0);
INSERT INTO `dic_duration_mode` VALUES (4, '3', '首次使用后一段日期有效', 1, '2020-09-08 10:36:40', 0, 0);
INSERT INTO `dic_duration_mode` VALUES (5, '4', '固定起、始有效期', 1, '2020-09-08 10:36:40', 0, 0);
INSERT INTO `dic_duration_mode` VALUES (6, '1', 'a', 0, '2020-09-08 18:35:02', 0, 0);

-- ----------------------------
-- Table structure for dic_eod_module
-- ----------------------------
DROP TABLE IF EXISTS `dic_eod_module`;
CREATE TABLE `dic_eod_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EOD_MODULE_ID` int(6) NULL DEFAULT NULL,
  `EN_STRUCTURE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_STRUCTURE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EN_CIRCULATORY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_CIRCULATORY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EN_FIELD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_FIELD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `dic_eod_module` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 407 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_eod_module
-- ----------------------------
INSERT INTO `dic_eod_module` VALUES (1, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatWaitTime', '重发前等待时间', '试着重新发送交互请求消息前的等待交互应答消息的时间。', 1, '2020-09-06', 0, 0);
INSERT INTO `dic_eod_module` VALUES (2, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatCount', '重发次数', '本次发送前的重发次数，达到这个字段指定的次数后，即停止重发，以后再传送（只对于网络恢复需要重新传送)', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (3, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'WaitingConnectionTime', '等待建立连接的时间', '发起连接请求后，等待建立连接的时间。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (4, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'ResponseTimeOut', '应答超时', '发起请求报文后，等待应答的时限。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (5, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'NoResponseNumber', '未应答的交互数', '在发起新的交互前，允许未收到应答的交互的最大个数', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (6, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'VersionCheckIntervalTime', '版本检查时间间隔', '包括参数文件、黑名单文件、模式履历文件、软件程序等。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (7, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncIntervalTime', '时钟同步时间间隔', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (8, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMinResponseThreshold', '时钟同步最小阀值', '时钟误差小于该参数时，不自动同步时钟。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (9, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMaxResponseThreshold', '时间同步最大阀值', '时钟误差大于该参数时，不自动同步时钟，并记录警告事件。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (10, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionTimeInterval', '交易数据文件生成时间间隔', 'SC生成交易文件的时间频率。默认值600s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (11, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'EventTimeInterval', '事件数据文件生成时间间隔', 'SC生成事件文件的时间频率。默认值300s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (12, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditTimeInterval', '审计数据文件生成时间间隔', '？ SC生成审计文件的时间频率。默认值300s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (13, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionPackageTimeInterval', '交易打包文件时间间隔', 'ZLC生成交易tar文件的时间频率。默认值600s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (14, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PassengerFlowTimeInterval', '客流报文上传时间间隔', '默认值300s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (15, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditUploadTimeInterval', '审计数据报文上传时间间隔', '默认值300s', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (16, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PackagesNumber', '打包文件个数', '原始设备文件到达时触发打包。默认是20.打包文件时间间隔与打包文件个数其中之一满足即启动打包。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (17, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineID', '线路代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (18, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineIP', '线路IP地址', 'IP的4个字节以U32_t从高位到低位表示？', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (19, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineChineseName', '线路中文名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (20, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineEnglishName', '线路英文名称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (21, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (22, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (23, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationIP', '车站IP地址', 'IP的4个字节以U32_t从高位到低位表示？，每8位表示IP地址的一部分', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (24, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationChineseName', '车站中文名称', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (25, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationEnglishName', '车站英文简称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (26, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'BelongsLineID4', '所属线路代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (27, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'EnabledMarker', '启用标志位？', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (28, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (29, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'TransferStationID', '换乘车站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (30, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (31, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketFamily', '票种归类类型代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (32, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketChineseName', '车票类型中文名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (33, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketEnglishName', '车票类型英文简称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (34, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RegisteredValueTicket', '记名储值票标志位', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (35, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CommemorativeTicket', '纪念票标志', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (36, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightDisplayNumber', '灯光显示编号', '0：红色', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (37, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'BlacklistCheck', '是否检查黑名单', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (38, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'StatioCheck', '是否检查售票车站', '只对单程票有用', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (39, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RechargeCheck', '是否可充值', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (40, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaximumBalanceValueTicket', '储值车票最大余额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (41, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinENStationAmount', '最小进站金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (42, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinEXStationAmount', '最小出站金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (43, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketSalesDeposit', '票卡售卖押金', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (44, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ReturnTicket', '是否可退票', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (45, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxImmediateRefundAmount', '最大即时退票金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (46, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CancellationFee', '退票手续费', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (47, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRidesNumber', '最多乘坐次数', '限制计时票', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (48, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRideMileage', '单次最大乘坐里程', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (49, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxnumberRidesOddDay', '单日最多乘坐次数', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (50, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketAvailability Class', '车票有效期类别', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (51, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DeadlinePeriod', '期限时间段(天)', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (52, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'FixedCut-offDate', '固定截止有效日期', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (53, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowedPostpone', '是否允许延期', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (54, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DefaultExtensionDays', '默认延期天数', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (55, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowTrailingAllowance', '是否允许尾程优惠', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (56, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatENstation', '重复进站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (57, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatEXstation', '重复出站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (58, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'UpdateAmount', '更新金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (59, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'OvertimeFine', '超时罚款金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (60, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ExcessPenaltyAmount', '超程罚款金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (61, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AmountPaid', '超程和超时同时发生补款金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (62, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MismatchPayment', '进出站不匹配补款金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (63, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DepartureStationAmount', '非补款车站出站时再次补款金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (64, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'Auditenableflag', '审计记录启用标志', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (65, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'PreferentialWay', '优惠方式', '字节位表示法，置0禁用，置1启用。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (66, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CouponCode', '联乘优惠代码', '不用，填0', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (67, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CumulativeCouponCode', '累积优惠代码', '不用，填0？', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (68, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'SubwaylDiscount Rate', '地铁折扣率', '百分比数，使用时除100', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (69, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightRailDiscount Rate', '轻轨折扣率', '百分比数，使用时除100', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (70, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (71, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountCode', '联乘优惠代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (72, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointIndustry', '联乘优惠行业范围', 'Bit0：公交行业Bit1：出租车行业Bit2：轨道交通行业Bit3~Bit7：预留1：参加；0：不参加', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (73, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointTimeRange', '联乘优惠有效时间范围', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (74, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountMode', '联乘优惠方式', '0：金额1：比例', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (75, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountAmount', '联乘优惠金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (76, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountProportion', '联乘优惠比例', '优惠百分比，使用时需除以100', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (77, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeCode', '累积优惠代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (78, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeType', '累积优惠类型', '0：累计次数优惠', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (79, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'Cumulativetimes', '累积乘坐起始优惠次数', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (80, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeAmount', '累积乘坐起始优惠金额', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (81, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeProportion', '累积乘坐优惠比例', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (82, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'PreferenceReset Type', '优惠重置类型', '0：不重置；1：按月重置；2：按季重置；3：按年重置。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (83, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'LocalTimeDifference', '本地时区差值', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (84, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemStartTime', '系统运营日起始时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (85, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemEndTime', '系统运营日结束时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (86, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'TechnicalDates', '特殊日期', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (87, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'DateType', '日期类型', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (88, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'TimeIntervalID', '时间段编号', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (89, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'StartTime', '开始时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (90, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'EndTime', '结束时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (91, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (92, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'AllowRetentionTime', '允许站内的滞留时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (93, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MaxAmount', '充值最大金额', '自动充值上限', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (94, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'DefaultAmount', '充值默认金额', '每次自动充值的金额', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (95, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MinAmount', '充值步长金额', '最小充值金额', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (96, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (97, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'DateTypeID', '日期类型代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (98, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TimeIntervalID', '时间段代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (99, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (100, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (101, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'EnterStationID', '进站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (102, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'ExitStationID', '出站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (103, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (104, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (105, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareValue', '费率值', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (106, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenWidth', '屏幕宽度', '按比例显示，宽度下同。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (107, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenHeight', '屏幕高度', '按比例显示，宽度下同。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (108, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicName', '初始化画面的文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (109, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosX', '启动画面左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (110, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosY', '启动画面左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (111, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicWidth', '启动画面宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (112, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicHeight', '启动画面高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (113, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicName', '暂停画面的文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (114, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosX', '暂停画面左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (115, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosY', '暂停画面左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (116, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicWidth', '暂停画面宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (117, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicHeight', '暂停画面高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (118, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', '', 'TVM设备信息区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (119, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', '', 'TVM设备信息区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (120, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', '', 'TVM设备信息区域图片宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (121, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', '', 'TVM设备信息区域图片高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (122, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicName', '紧急状态图片文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (123, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosX', '紧急状态左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (124, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosY', '紧急状态左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (125, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicWidth', '紧急状态图片宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (126, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicHeight', '紧急状态图片高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (127, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', '', 'TVM设备信息区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (128, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', '', 'TVM设备信息区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (129, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', '', 'TVM设备信息区域图片宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (130, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', '', 'TVM设备信息区域图片高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (131, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '广告界面', '', '广告播放方式（循环或者乱序', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (132, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '广告界面', '', '进入广告模式时间（TVM无人操作后进入广告时间）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (133, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告编号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (134, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (135, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告播放时长（秒）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (136, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (137, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (138, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告区域图片宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (139, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', '', '广告区域图片高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (140, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'BannerId', '图片编号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (141, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'CnPicName', '图片中文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (142, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'EnPicName', '图片英文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (143, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网图片中文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (144, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网图片英文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (145, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (146, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (147, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (148, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大前路网区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (149, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域中文图片名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (150, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域英文图片名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (151, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (152, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (153, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (154, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '路网区域', '', '放大后路网区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (155, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后路网图内车站启用标志', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (156, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域ID', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (157, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域未选中图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (158, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域选中图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (159, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域未启用图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (160, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (161, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (162, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (163, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', '', '放大后车站选择区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (164, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', '', '线路启用标志', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (165, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', '', '线路中车站选择区域启用标志', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (166, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域ID', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (167, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域未选中图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (168, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域选中图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (169, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域未启用图片', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (170, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (171, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域按钮左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (172, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (173, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', '', '线路中车站选择区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (174, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '地铁logo图片名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (175, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '地铁logo左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (176, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '地铁logo左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (177, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '地铁logo宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (178, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '地铁logo高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (179, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前日期时间显示区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (180, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前日期时间显示区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (181, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前日期时间显示区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (182, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前日期时间显示区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (183, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前车站显示区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (184, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前车站显示区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (185, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前车站显示区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (186, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '车站位置及时间日期区域', '', '当前车站显示区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (187, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '票价选择按钮ID（list，小于等于9）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (188, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '车票金额按钮显示金额', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (189, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '车票金额按钮左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (190, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '车票金额按钮左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (191, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '车票金额按钮宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (192, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '快速购票区域', '', '车票金额按钮高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (193, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'AreaId', '车站选择按钮ID （list，小于等于9）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (194, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosX', '车站选择按钮左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (195, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosY', '车站选择按钮左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (196, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicWidth', '车站选择按钮宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (197, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicHeight', '车站选择按钮高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (198, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标中文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (199, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标英文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (200, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (201, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (202, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (203, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '中英文切换按钮图标高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (204, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮是否显示', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (205, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标中文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (206, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标英文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (207, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (208, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (209, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (210, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '功能区域', '', '充值按钮图标高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (211, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮ID（list）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (212, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (213, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (214, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (215, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (216, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路选择按钮启用标志', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (217, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路中文图片名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (218, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', '线路英文图片名称', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (219, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', 'TVM版本信息区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (220, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', 'TVM版本信息区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (221, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', 'TVM版本信息区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (222, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', '', 'TVM版本信息区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (223, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择区域ID', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (224, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择按钮ID', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (225, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择区域左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (226, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择区域按钮左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (227, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (228, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购买张数选择区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (229, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图中文名（可用付款二维码覆盖）', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (230, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图英文名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (231, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (232, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (233, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (234, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', '', '购票示意图高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (235, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '可接受纸币的种类', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (236, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图片中文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (237, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图片英文文件名', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (238, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图坐标左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (239, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图坐标左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (240, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (241, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '示意图高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (242, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '储值卡信息显示区域坐标左上角X坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (243, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '储值卡信息显示区域左上角Y坐标', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (244, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '储值卡信息显示区域宽度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (245, 4037, 'EODDataTVMUI_t', 'TVM界面参数', '', '充值子界面', '', '储值卡信息显示区域高度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (246, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'RoleID', '角色编号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (247, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'Role Description', '角色描述', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (248, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRoleFunction', '角色功能分配', 'FunctionCode', '功能代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (249, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'UserID', '用户编号', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (250, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'User Password', '用户密码', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (251, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'StationID', '车站编码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (252, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', '？EnabledMarker', '启用标志位', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (253, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'EnabledTime', '启用时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (254, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'CutoffTime', '截止时间', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (255, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUser', '用户定义', 'DevicePrivilegeMarker', '设备权限标志位', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (256, 4041, 'EODDataSystem_t', '权限参数', 'PriviledgeUserRole', '配置角色', 'RoleID', '角色编号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (257, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserStation', '配置车站', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (258, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSleType', '配置终端类型', 'DeviceType', '设备类型', '见5 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (259, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSle', '配置终端', 'DeviceID', '设备节点编号', '见6 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (260, 4039, 'EODDataStationLayout_t', '车站设备节点配置', '', '', 'LineID', '线路编号', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (261, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'StationID', '车站编号', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (262, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'MapName', '车站地图文件名称', 'png格式', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (263, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceID', '设备节点编号', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (264, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceName', '设备名称', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (265, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceType', '设备类型', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (266, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceNo', '设备序号', '车站内设备的逻辑序号', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (267, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'StationHallID', '站厅ID', '设备所属站厅', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (268, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupID', '设备组号', '设备所属组', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (269, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupNo', '设备组内序号', '设备在组内的序号', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (270, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Abscissa', '横坐标', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (271, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Ordinate', '纵坐标', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (272, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Angle', '显示角度', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (273, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceIP', '设备IP地址', 'IP的4个字节以U32_t从高位到低位表示', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (274, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Marker', '启用标记', '1：在用；2：停用；3：移除', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (275, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，TVM停止出票。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (276, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (277, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当TVM写卡不完整后，重新写卡的次数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (278, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (279, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (280, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (281, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (282, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TicketAcceptNoteType', '售票接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (283, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteCount', '售票接收的最大纸币数量', '张数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (284, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteTotal', '售票接收的最大纸币总额', '单位：元。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (285, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteType', '充值接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (286, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteCount', '充值接收的最大纸币数量', '张数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (287, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteTotal', '充值接收的最大纸币总额', '单位：元。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (288, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowSaleTicketNoCoin', '无硬币找零时是否允许售票', '0：不允许；1：允许', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (289, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'AcceptCoinType', '接受硬币的面额种类', '字节位图表示，置1表示接受，置0表示不接受，硬件根据实际情况选择面额种类。位表示如下：Bit0:5角Bit1:1元Bit2~Bit31:保留', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (290, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxAcceptCoinCount', '接受硬币的最大数量', '见4 《编码规则》', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (291, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxCoinChangeCount', '硬币找零的最大数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (292, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowNoteChange', '售票是否允许纸币找零', '0：不允许；1：允许', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (293, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeCount', '纸币找零最大纸币数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (294, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeTotal', '纸币找零最大纸币总金额', '单位：元', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (295, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TransactionCancelTime', '交易取消时间', '单位：秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (296, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowShowStandBy', '是否允许显示待机画面', '0：不允许；1：允许', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (297, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'StandBySwitchTime', '待机画面切换时间', '单位：秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (298, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxWillFullNum', '纸币钱箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (299, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxFullNum', '纸币钱箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (300, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionWillFullNum', '硬币回收箱将满数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (301, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionFullNum', '硬币回收箱已满数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (302, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinChangeWillEmptyNum', '硬币找零箱将空数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (303, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MinTicketNum', 'TVM最少车票数量', '少于该数量时，TVM不进行售票。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (304, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteChangeWillEmptyNum', '纸币找零箱将空数量', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (305, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (306, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (307, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (308, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxFullNum', '票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (309, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (310, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (311, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (312, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (313, 4044, 'EODDataTVMSoftware_t', 'TVM设备软件', 'TVMSoftware_t', 'TVM设备软件参数', 'SoftwareName', '设备软件', 'TVM设备软件包括TVM主程序、TVM配置文件、TVM读卡器程序、TVM多媒体文件等', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (314, 4044, 'EODDataTVMSoftware_t', 'TVM设备软件', 'TVMSoftware_t', 'TVM设备软件参数', 'CurrentVersion', '当前版本参数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (315, 4044, 'EODDataTVMSoftware_t', 'TVM设备软件', 'TVMSoftware_t', 'TVM设备软件参数', 'CreateTime', '生成时间', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (316, 4044, 'EODDataTVMSoftware_t', 'TVM设备软件', 'TVMSoftware_t', 'TVM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (317, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，AGM停止服务。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (318, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (319, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当AGM写卡不完整后，重新写卡的次数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (320, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (321, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (322, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (323, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (324, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (325, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (326, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (327, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxFullNum', '票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (328, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (329, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (330, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'MaxCreditCardNum', '最大刷卡人次(通行队列最大容量)', '自动检票机允许检了票而不通过的最大人数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (331, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerEnterOverTime', '乘客通过自动检票机超时时间', '乘客使用票卡未通过自动检票机的最大停留时间。单位：秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (332, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerExitOverTime', '乘客离开自动检票机超时时间', '时间段内未离开通道，报警。单位：秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (333, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ContinuousEntryDelayTime', '连续进入延迟时间', '两次连续进入自动检票机保持门开的延迟时间。单位：毫秒，默认350毫秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (334, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ErrorAutoResetTime', '错误自动重置时间', '读到一张无效卡后，允许读下一张卡的间隔时间。单位：秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (335, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'EnterReaderDelayTime', '闯入时读写器生效延迟时间', '单位：秒。发生闯入后TPU暂停工作的时间。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (336, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'TwoWayAGDelayTime', '双向AG延迟时间', '当某一方向乘客通行后，继续等待该方向的乘客的时间(不处理另一方向的票卡)，单位：毫秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (337, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListLightHandle', '黑名单亮灯处理', '高位1字节表示闪烁：0x00不闪烁，当大于0x00时，表示闪烁次数，如0x03表示闪烁3次。低位1字节表示灯：每个bit代表一盏灯，灯亮时bit为1，否则为0', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (338, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListVoiceHandle', '黑名单声音处理', '高位1字节表示声音次数；低位1字节表示声音长短和音量：高4bit表示声音长短:0长音，1短音。低4 bit表示音量。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (339, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardLightHandle', '坏卡亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (340, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardVoiceHandle', '坏卡声音处理', '同“黑名单声音处理“', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (341, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingLightHandle', '非法闯入闯出亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (342, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingVoiceHandle', '非法闯入闯出声音处理', '同“黑名单声音处理“', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (343, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketIssuer', '票卡发行商', '0x01：ACC；0x99：一卡通。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (344, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketType', '车票产品类型', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (345, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'LightHandle', '灯处理', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (346, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'VoiceHandle', '声音处理', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (347, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (348, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (349, 4054, 'EODDataAGMSoftware_t', 'AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'SoftwareName', '设备软件', 'AGM设备软件包括AGM主程序、AGM配置文件、AGM读卡器程序等', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (350, 4054, 'EODDataAGMSoftware_t', 'AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CurrentVersion', '当前版本参数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (351, 4054, 'EODDataAGMSoftware_t', 'AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CreateTime', '生成时间', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (352, 4054, 'EODDataAGMSoftware_t', 'AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (353, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，BOM停止出票。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (354, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。单位：秒。默认值：5秒。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (355, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当BOM写卡不完整后，重新写卡的次数。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (356, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (357, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (358, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (359, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', 'BOM预留此字段，填0。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (360, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillBeEmptyNumber', '票箱将空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (361, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (362, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (363, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxFullNum', '票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (364, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxWillBeFullNum', '废票箱将满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (365, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (366, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (367, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (368, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (369, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CurrentVersion', '当前版本参数', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (370, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CreateTime', '生成时间', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (371, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (372, 4010, 'ModeList_t', '模式履历参数', '', '', 'VersionNumber', '版本号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (373, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'ModeCode', '模式代码', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (374, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'OperationDay', '运营日', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (375, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'LineID', '线路', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (376, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'StationID', '车站', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (377, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeOccurrenceTime', '降级模式发生时间', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (378, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEndTime', '降级模式结束时间', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (379, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEffectiveTime', '降级模式的影响有效期', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (380, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (381, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (382, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'Treatment Mode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (383, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (384, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (385, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'DeletionMark', '增删标志', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (386, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (387, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (388, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'StartCardNumber', '开始卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (389, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'EndCardNumber', '结束卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (390, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (391, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (392, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (393, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (394, 4015, 'StaffBlackList_t', '员工票黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (395, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (396, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (397, 4016, 'ProvinceBlackList _t', '省通卡黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (398, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (399, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (400, 4017, 'CitizenBlackList_t', '市民卡通黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (401, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (402, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (403, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', '', '', 'BlackListVersionNumber', '黑名单版本', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (404, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (405, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TreatmentMode', '处理方式', '', 1, '2018-09-14', 0, 0);
INSERT INTO `dic_eod_module` VALUES (406, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14', 0, 0);

-- ----------------------------
-- Table structure for dic_keepdata_table
-- ----------------------------
DROP TABLE IF EXISTS `dic_keepdata_table`;
CREATE TABLE `dic_keepdata_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logic_delete` int(11) NOT NULL DEFAULT 1,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_keepdata_table
-- ----------------------------
INSERT INTO `dic_keepdata_table` VALUES (1, 'T_CONTROL_COMMAND', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (2, 'T_D_CARD_ISSUER', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (3, 'T_D_WORKORDER_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (4, 'T_SC_MENU', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (5, 'T_D_OPERATION_UNIT', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (6, 'T_D_REAL_CARD_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (7, 'T_DEVICE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (8, 'T_EOD_MODULE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (9, 'T_D_WAREHOUSE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (10, 'T_EOD_MODE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (11, 'T_LINE_INFO', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (12, 'T_D_DEGRADE_MODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (13, 'T_D_STATION_MODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (14, 'T_DEVICE_STATUS', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (15, 'T_MENU', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (16, 'T_STATION_INFO', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (17, 'T_CONTROL_COMMAND', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (18, 'T_D_DATE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (19, 'T_D_MESSAGE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (20, 'T_D_MODE_CODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (21, 'T_D_PAYMENT_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (22, 'T_D_TRANS_STATUS', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (23, 'T_SYSTEM_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (24, 'T_USER', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (25, 'T_AUTHCODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (26, 'T_D_EOD_MODULE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (27, 'T_D_PART_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (28, 'T_D_AR_FILE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (29, 'T_D_OPERATOR_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (30, 'T_D_TICKET_DETAIL_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (31, 'T_D_TRANS_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (32, 'T_ROLE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (33, 'T_ROLE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (34, 'T_EOD_USER_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (35, 'T_REL_ROLE_MENU', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (36, 'T_D_BLOCK_REASON', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (37, 'T_D_REJECT_CODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (38, 'T_D_TICKET_RANGE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (39, 'T_DEVICE_EVENT', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (40, 'T_PSGR_FLOW_5MINS', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (41, 'T_AUTHCODE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (42, 'T_EOD_BKL_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (43, 'T_D_MESSAGE_CONFIRM', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (44, 'T_D_OPERATION_MODE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (45, 'T_D_TICKET_BASE_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (46, 'T_D_PURCHASER_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (47, 'T_PSGR_FLOW_TIME_INTERVAL', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (48, 'T_REL_USER_ROLE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (49, 'T_D_ISSUE_AREA', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (50, 'T_D_PASSENGER_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (51, 'T_D_PSGR_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (52, 'T_D_TICKET_VALIDITY', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (53, 'T_D_REJECT_TICKET_TYPE', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (54, 'T_TICKETTYPE_TRANS', 1, 0);
INSERT INTO `dic_keepdata_table` VALUES (60, 'trete', 0, 0);
INSERT INTO `dic_keepdata_table` VALUES (61, 'trete', 0, 0);

-- ----------------------------
-- Table structure for dic_land_mark
-- ----------------------------
DROP TABLE IF EXISTS `dic_land_mark`;
CREATE TABLE `dic_land_mark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除 1使用 0不使用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_use` int(10) NULL DEFAULT 1 COMMENT '是否使用',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_land_mark
-- ----------------------------
INSERT INTO `dic_land_mark` VALUES (1, '0', '福州', 1, '2020-09-09 09:32:46', 0, '2020-09-09 13:49:22');
INSERT INTO `dic_land_mark` VALUES (2, '1', '上海', 1, '2020-09-09 09:32:46', 1, '2020-09-09 13:49:24');

-- ----------------------------
-- Table structure for dic_language_bit
-- ----------------------------
DROP TABLE IF EXISTS `dic_language_bit`;
CREATE TABLE `dic_language_bit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除\r\n',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_language_bit` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车票持有者所偏好使用的语言' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_language_bit
-- ----------------------------
INSERT INTO `dic_language_bit` VALUES (1, '0', '普通话', 1, '2020-09-08 10:37:07', 0, 0);
INSERT INTO `dic_language_bit` VALUES (2, '1', '英语', 1, '2020-09-08 10:37:07', 0, 0);
INSERT INTO `dic_language_bit` VALUES (3, '2', '福州话', 1, '2020-09-08 10:37:07', 0, 0);
INSERT INTO `dic_language_bit` VALUES (4, '33', '1w12312', 0, '2020-09-08 18:35:17', 0, 0);

-- ----------------------------
-- Table structure for dic_line
-- ----------------------------
DROP TABLE IF EXISTS `dic_line`;
CREATE TABLE `dic_line`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线路编号\r\n线路编码是轨道交通各线路在线网中的唯一编号。每条\r\n线路在系统中具有唯一的编码。编码用 BCD 码表示' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_line
-- ----------------------------
INSERT INTO `dic_line` VALUES (1, '00', '预留未特殊定义', 1, '2020-09-08 10:37:07', 0);
INSERT INTO `dic_line` VALUES (2, '01', '一号线', 1, '2020-09-08 10:37:07', 0);
INSERT INTO `dic_line` VALUES (3, '02', '二号线', 1, '2020-09-08 10:37:07', 0);
INSERT INTO `dic_line` VALUES (4, '03', '三号线', 1, '2020-09-08 10:37:07', 0);
INSERT INTO `dic_line` VALUES (5, '04', '九号线\r', 1, '2020-09-08 10:37:07', 0);
INSERT INTO `dic_line` VALUES (6, 'adfa', 'adasadfa', 0, '2020-09-08 18:35:28', 0);

-- ----------------------------
-- Table structure for dic_mack
-- ----------------------------
DROP TABLE IF EXISTS `dic_mack`;
CREATE TABLE `dic_mack`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_mack` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息确认码' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_mack
-- ----------------------------
INSERT INTO `dic_mack` VALUES (1, '00h', '成功', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (2, '01h', '业务执行失败', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (3, '02h', '报文格式错误', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (4, '03h', '无效的消息分类/类型码', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (5, '04h', '无效的数值范围', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (6, '05h', '目标节点不可到达', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (7, '06h', '下游节点应答超时', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (8, '07h', '记录数超过消息包范围', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (9, '08h', '消息包中的记录重复', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (10, '09h', '记录数与消息包长度不符', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (11, '0Bh', '交易明细或寄存器采集时间无效', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (12, '10h', '非期望的参数版本号', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (13, '11h', '非期望的节点类型', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (14, 'F0h', '文件打开/读取失败', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (15, 'F1h', '文件写入失败', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (16, 'FFh', '其它未定义的错误', 1, '2020-09-08 10:38:44', 0, 0);
INSERT INTO `dic_mack` VALUES (17, 'dafaf', 'adsfaadfa', 0, '2020-09-08 18:35:40', 0, 0);

-- ----------------------------
-- Table structure for dic_message_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_message_type`;
CREATE TABLE `dic_message_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_message_type` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_message_type
-- ----------------------------
INSERT INTO `dic_message_type` VALUES (1, '1000', 'Mack 消息', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (2, '1001', '通讯链接申请', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (3, '1002', '数据同步下载指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (4, '1003', '查询运行配置文件版本', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (5, '1004', '查询参数版本', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (6, '1005', '下发车站模式更新指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (7, '1006', '上传车站模式更新信息', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (8, '1007', '车站模式广播指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (9, '1008', '查询车站模式信息', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (10, '1009', '上传综合客流信息', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (11, '100A', '上传设备状态信息', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (12, '100B', '查询设备状态指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (13, '100C', '预留', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (14, '100D', '预留', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (15, '100E', '时钟强制同步指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (16, '100F', '设备控制指令', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (17, '1010', '上传设备事件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (18, '1018', '二维码交易文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (19, '1019', '人脸交易文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (20, '2001', '一票通交易文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (21, '2002', '一卡通交易文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (22, '2003', '设备收益文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (23, '2004', '设备审计文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (24, '3001', '设备事件文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (25, '4001', '参数控制文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (26, '4002', '运营配置主控文档', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (27, '4010', '模式履历', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (28, '4011', '一票通全量黑名单文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (29, '4012', '一票通增量黑名单文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (30, '4013', '一票通号段黑名单文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (31, '4014', '一卡通黑名单', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (32, '4015', '工作卡黑名单', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (33, '4016', '省通卡黑名单', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (34, '4017', '市民卡黑名单', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (35, '4018', '金融 IC 卡黑名单', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (36, '4031', '系统控制参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (37, '4032', '路网信息参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (38, '4033', '车票参数参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (39, '4034', '优惠方案参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (40, '4035', '日历时间段参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (41, '4036', '费率参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (42, '4037', 'TVM 界面参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (43, '4041', '权限参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (44, '4039', '车站设备节点配置文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (45, '4043', 'TVM 运营参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (46, '4044', 'TVM 设备软件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (47, '4053', 'AGM 运营参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (48, '4054', 'AGM 设备软件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (49, '4063', 'BOM 运营参数文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (50, '4064', 'BOM 设备软件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (51, '5001', '库存快照文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (52, '6001', '文件对帐审计', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (53, '6002', '交易对帐文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (54, '6003', '可疑交易调整文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (55, '6004', '清分结果文件', 1, '2020-09-08 10:38:36', 0, 0);
INSERT INTO `dic_message_type` VALUES (56, 'qeq', 'qeqasdfa', 0, '2020-09-08 18:35:58', 0, 0);

-- ----------------------------
-- Table structure for dic_mode_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_mode_code`;
CREATE TABLE `dic_mode_code`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_USE` int(11) NULL DEFAULT 1,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_mode_code
-- ----------------------------
INSERT INTO `dic_mode_code` VALUES (1, '000000000000000B', '0', '正常服务模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (2, '000000000000001B', '1', '列车故障模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (3, '000000000000010B', '2', '进出站次序免检模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (4, '000000000000100B', '4', '乘车免检模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (5, '000000000001000B', '8', '车票日期免检模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (6, '000000000010000B', '16', '车费免检模式', 1, 0);
INSERT INTO `dic_mode_code` VALUES (7, '000000000100000B', '32', '紧急模式', 1, 0);

-- ----------------------------
-- Table structure for dic_operation_mode
-- ----------------------------
DROP TABLE IF EXISTS `dic_operation_mode`;
CREATE TABLE `dic_operation_mode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除 1使用 0不使用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_operation_mode` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_operation_mode
-- ----------------------------
INSERT INTO `dic_operation_mode` VALUES (1, '0', '正常服务模式', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_operation_mode` VALUES (2, '1', '维修模式', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_operation_mode` VALUES (3, '2', '故障模式', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_operation_mode` VALUES (4, '3', '离线运营模式', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_operation_mode` VALUES (5, '4', '暂停服务模式', 1, '2020-09-08 11:36:07', 0, 0);
INSERT INTO `dic_operation_mode` VALUES (6, 'asdfa', 'asfadaf', 0, '2020-09-08 18:36:15', 0, 0);

-- ----------------------------
-- Table structure for dic_operator_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_operator_type`;
CREATE TABLE `dic_operator_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OPERATOR_TYPE` int(11) NOT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_operator_type
-- ----------------------------
INSERT INTO `dic_operator_type` VALUES (1, 1, 0, '站务员', 1, '2019-07-01', 0);
INSERT INTO `dic_operator_type` VALUES (2, 2, 1, '督导员（包含值班员和值班班长）', 1, '2019-07-01', 0);
INSERT INTO `dic_operator_type` VALUES (3, 3, 2, '系统维修人员', 1, '2019-07-01', 0);
INSERT INTO `dic_operator_type` VALUES (4, 4, 3, '稽查人员', 1, '2019-07-01', 0);

-- ----------------------------
-- Table structure for dic_part_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_part_type`;
CREATE TABLE `dic_part_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dic_part_type` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_part_type
-- ----------------------------
INSERT INTO `dic_part_type` VALUES (1, 'NP', '网络打印机', NULL, 1, '网络打印机', 0, 0);
INSERT INTO `dic_part_type` VALUES (2, 'KB', '键盘', NULL, 1, '键盘', 0, 0);

-- ----------------------------
-- Table structure for dic_passenger_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_passenger_type`;
CREATE TABLE `dic_passenger_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_passenger_type` int(10) NOT NULL COMMENT '乘客类型\r\n',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '乘客类型分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_passenger_type
-- ----------------------------
INSERT INTO `dic_passenger_type` VALUES (1, '0', '成人', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (2, '1', '老人', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (3, '2', '爱心', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (4, '3', '爱心陪伴', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (5, '4', '学生', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (6, '5', '孩童', 1, '2020-09-08 10:39:29', 0, 0);
INSERT INTO `dic_passenger_type` VALUES (7, '2', '322', 0, '2020-09-08 22:15:38', 0, 0);

-- ----------------------------
-- Table structure for dic_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_payment_type`;
CREATE TABLE `dic_payment_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_payment_type
-- ----------------------------
INSERT INTO `dic_payment_type` VALUES (1, 0, '现金支付', 1, '2019-06-27', 0);
INSERT INTO `dic_payment_type` VALUES (2, 1, '储值卡支付', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (3, 2, '银行卡支付（预留）', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (4, 3, '二维码支付（预留）', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (5, 4, '微信支付（预留）', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (6, 5, '支付宝支付（预留）', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (7, 6, '网银支付（预留）', 1, '2019-06-25', 0);
INSERT INTO `dic_payment_type` VALUES (8, 7, '人脸支付', 1, '2019-06-25', 0);

-- ----------------------------
-- Table structure for dic_psgr_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_psgr_type`;
CREATE TABLE `dic_psgr_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TABLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logic_delete` int(11) NULL DEFAULT 1,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_psgr_type
-- ----------------------------
INSERT INTO `dic_psgr_type` VALUES (1, '单程票进出站', 'T_TRANS_AGM_SJT_EX', 1, 0);
INSERT INTO `dic_psgr_type` VALUES (2, '特种票进出站', 'T_TRANS_AGM_SPT_EX', 1, 0);
INSERT INTO `dic_psgr_type` VALUES (3, '员工票进出站', 'T_TRANS_AGM_STAFFTICKET_EX', 1, 0);
INSERT INTO `dic_psgr_type` VALUES (4, '储值卡进出站', 'T_TRANS_AGM_SVC_EX', 1, 0);
INSERT INTO `dic_psgr_type` VALUES (5, '一卡通进出站', 'T_TRANS_AGM_YKT_EX', 1, 0);

-- ----------------------------
-- Table structure for dic_purchaser_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_purchaser_type`;
CREATE TABLE `dic_purchaser_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_purchaser_type
-- ----------------------------

-- ----------------------------
-- Table structure for dic_real_name_ticket_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_real_name_ticket_type`;
CREATE TABLE `dic_real_name_ticket_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除\r\n',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_real_name_ticket_type` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实名卡类型\r\n' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_real_name_ticket_type
-- ----------------------------
INSERT INTO `dic_real_name_ticket_type` VALUES (1, '0', '成人', 1, '2020-09-08 10:40:24', 0, 0);
INSERT INTO `dic_real_name_ticket_type` VALUES (2, '1', '敬老 1', 1, '2020-09-08 10:40:24', 0, 0);
INSERT INTO `dic_real_name_ticket_type` VALUES (3, '2', '敬老 2', 1, '2020-09-08 10:40:24', 0, 0);
INSERT INTO `dic_real_name_ticket_type` VALUES (4, '3', '爱心', 1, '2020-09-08 10:40:24', 0, 0);
INSERT INTO `dic_real_name_ticket_type` VALUES (5, '4', '爱心陪伴', 1, '2020-09-08 10:40:24', 0, 0);
INSERT INTO `dic_real_name_ticket_type` VALUES (6, 'asdfa', 'asdasdfa', 0, '2020-09-08 18:36:32', 0, 0);

-- ----------------------------
-- Table structure for dic_recycle_sjt_flag
-- ----------------------------
DROP TABLE IF EXISTS `dic_recycle_sjt_flag`;
CREATE TABLE `dic_recycle_sjt_flag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `dic_recycle_sjt_flag` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单程票回收标志\r\n用以记录出站 AGM 是否将当前被正常处理的单程票进行\r\n了回收。\r\n' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_recycle_sjt_flag
-- ----------------------------
INSERT INTO `dic_recycle_sjt_flag` VALUES (1, '0', '单程票回收', 1, '2020-09-08 10:40:49', 0, 0);
INSERT INTO `dic_recycle_sjt_flag` VALUES (2, '1', '单程票未回收', 1, '2020-09-08 10:40:49', 0, 0);
INSERT INTO `dic_recycle_sjt_flag` VALUES (3, 'asdfa', 'asfasdf', 0, '2020-09-08 18:36:43', 0, 0);

-- ----------------------------
-- Table structure for dic_reject_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_reject_code`;
CREATE TABLE `dic_reject_code`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_reject_code
-- ----------------------------
INSERT INTO `dic_reject_code` VALUES (1, '0', '无错误', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (2, '1', '无效车票，包括车票不可读、校验码错误', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (3, '2', '车票尚未出售（已初始化、但尚未出售）', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (4, '3', '过期车票（逻辑有效期过期）', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (5, '4', '车票报废（物理有效期过期）', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (6, '5', '卡内余额不足', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (7, '6', '黑名单车票', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (8, '109', '未刷进', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (9, '110', '未刷出', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (10, '111', '未刷进(已调整)', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (11, '112', '未刷出(已调整)', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (12, '162', '20分钟后重复进站', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (13, '201', '超时', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (14, '202', '超程', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (15, '203', '超时又超程', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (16, '210', '此票种暂停使用', 1, '2019-07-04', 0);
INSERT INTO `dic_reject_code` VALUES (17, '30', '发行数据错误', 1, '2020-09-08', 0);
INSERT INTO `dic_reject_code` VALUES (18, '44', '车票过期', 1, '2020-09-08', 0);
INSERT INTO `dic_reject_code` VALUES (19, '119', '车票状态错误', 1, '2020-09-08', 0);
INSERT INTO `dic_reject_code` VALUES (20, '119', '车票状态错误', 0, '2020-09-08', 0);
INSERT INTO `dic_reject_code` VALUES (21, '147', '未初始化', 1, '2020-09-08', 0);

-- ----------------------------
-- Table structure for dic_reject_ticket_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_reject_ticket_type`;
CREATE TABLE `dic_reject_ticket_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TABLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logic_delete` int(10) NOT NULL DEFAULT 1,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_reject_ticket_type
-- ----------------------------

-- ----------------------------
-- Table structure for dic_sp
-- ----------------------------
DROP TABLE IF EXISTS `dic_sp`;
CREATE TABLE `dic_sp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运营商编号' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_sp
-- ----------------------------
INSERT INTO `dic_sp` VALUES (1, '1', '福州地铁', 1, '2020-09-08 18:36:53', 0);
INSERT INTO `dic_sp` VALUES (2, 'asdfadfad', 'asd', 0, '2020-09-08 18:36:53', 0);

-- ----------------------------
-- Table structure for dic_test_flag
-- ----------------------------
DROP TABLE IF EXISTS `dic_test_flag`;
CREATE TABLE `dic_test_flag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_test_flag` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票卡测试标志位' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_test_flag
-- ----------------------------
INSERT INTO `dic_test_flag` VALUES (1, '0', '非测试票', 1, '2020-09-08 10:42:01', 0, 0);
INSERT INTO `dic_test_flag` VALUES (2, '1', '测试票', 1, '2020-09-08 10:42:01', 0, 0);
INSERT INTO `dic_test_flag` VALUES (3, 'asdfaasdfds', 'asdf', 0, '2020-09-08 18:37:03', 0, 0);

-- ----------------------------
-- Table structure for dic_ticket_base_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ticket_base_type`;
CREATE TABLE `dic_ticket_base_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ticket_base_type
-- ----------------------------
INSERT INTO `dic_ticket_base_type` VALUES (1, 1, '单程票', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (2, 2, '地铁储值票', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (3, 3, '地铁乘次票', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (4, 4, '员工票', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (5, 5, '榕城通', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (6, 6, '省通卡', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (7, 7, '市民卡', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (8, 8, '二维码', 1, '2018-08-26', 0);
INSERT INTO `dic_ticket_base_type` VALUES (9, 9, '虚拟卡', 1, '2018-08-26', 0);

-- ----------------------------
-- Table structure for dic_ticket_detail_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ticket_detail_type`;
CREATE TABLE `dic_ticket_detail_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_CODE` int(11) NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ticket_detail_type
-- ----------------------------
INSERT INTO `dic_ticket_detail_type` VALUES (1, 300, '出站单程票', 1, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (2, 310, '单程票', 1, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (3, 311, '预赋单程票', 1, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (4, 312, '纪念单程票', 1, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (5, 40, '一般储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (6, 41, '敬老储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (7, 43, '爱心储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (8, 44, '爱心陪伴储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (9, 45, '学生储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (10, 48, '儿童储值卡', 2, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (11, 50, '可充次计次票', 3, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (12, 51, '不可充次计次票', 3, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (13, 53, '日票', 3, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (14, 30, '期限票（不回收不限里程）', 3, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (15, 90, 'A 类工作卡（显示：工作卡 A）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (16, 91, 'B 类工作卡（显示：工作卡 B）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (17, 92, 'C 类工作卡（显示：工作卡 C）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (18, 93, 'D 类工作卡（显示：工作卡 D）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (19, 94, 'E 类工作卡（显示：工作卡 E）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (20, 95, '专用卡（显示：专用卡），可多进多出', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (21, 96, '公安卡（显示：公安卡）', 4, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (22, 0, '普通卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (23, 1, '爱心月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (24, 2, '成人月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (25, 3, '学生月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (26, 8, '老年卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (27, 38, '电动车补贴卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (28, 11, '电信联名卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (29, 13, '爱心学生月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (30, 15, '公务员月票卡/老干部监督卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (31, 17, '优待卡（残疾人卡）', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (32, 18, '劳模月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (33, 19, '老人月票卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (34, 80, '工行联名卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (35, 81, '中行联名卡', 5, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (36, 100, '预留', 6, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (37, 110, '预留', 7, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (38, 130, '预留', 9, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (45, 120, '码上行二维码', 8, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (46, 121, '数办福码二维码 ', 8, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (47, 122, '交通部二维码', 8, 1, '2020-09-08', 0);
INSERT INTO `dic_ticket_detail_type` VALUES (48, 123, '人脸 ', NULL, 1, '2020-09-08', 0);

-- ----------------------------
-- Table structure for dic_ticket_status
-- ----------------------------
DROP TABLE IF EXISTS `dic_ticket_status`;
CREATE TABLE `dic_ticket_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  `logic_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除 1不是 0是',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `dic_ticket_status` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票卡状态，十六进制表示' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ticket_status
-- ----------------------------
INSERT INTO `dic_ticket_status` VALUES (1, '0x00', '单程票 –初始化', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (2, '0x01', '单程票 – 已发售', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (3, '0x05', '单程票 – 已进站(entry)', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (5, '0x02', '单程票 - 已退费', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (6, '0x03', '单程票 - 已过期', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (7, '0x04', '单程票 –已出站(exit)', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (8, '0x06', '单程票 –已更新', 1, '2020-09-08 11:08:20', 0, 0);
INSERT INTO `dic_ticket_status` VALUES (9, 'sadfsdasdfadf', 'asfd', 0, '2020-09-08 18:37:13', 0, 0);

-- ----------------------------
-- Table structure for dic_trans_status
-- ----------------------------
DROP TABLE IF EXISTS `dic_trans_status`;
CREATE TABLE `dic_trans_status`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `dic_trans_status` int(10) NOT NULL COMMENT '地标',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_trans_status
-- ----------------------------

-- ----------------------------
-- Table structure for dic_trans_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_trans_type`;
CREATE TABLE `dic_trans_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TICKET_TRANS_TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TYPE_NO` int(11) NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `VALUE_FLAG` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_trans_type
-- ----------------------------
INSERT INTO `dic_trans_type` VALUES (75, 'AGM', '银行卡扣款出站(AGM)', 4, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (76, 'AGM', '一卡通扣款出站(AGM)', 8451, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (77, 'TVM', '自动售票机车票发行(单程票)', 190, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (78, 'TVM', '自动售票机车票发行(二维码)', 6, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (79, 'BOM', '加值储值卡', 2, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (80, 'BOM', '退储值卡', 5, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (81, 'BOM', '发售储值卡', 7, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (82, 'BOM', '储值卡补票', 8, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (83, 'BOM', '发售单程票', 190, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (84, 'BOM', '退单程票', 191, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (85, 'BOM', '单程票补票', 192, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (86, 'BOM', '发售特种票', 193, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (87, 'BOM', '退特种票', 194, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (88, 'BOM', '一卡通充值取消交易明细', 5263, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (89, 'BOM', '一卡通发售充值交易明细', 5163, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (90, 'BOM', '一卡通更新交易明细', 8455, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (91, 'AGM', '储值卡进站', 20, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (92, 'AGM', '员工进出站交易', 150, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (93, 'AGM', '单程票进站', 151, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (94, 'AGM', '单程票出站', 152, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (95, 'AGM', '特种票进站', 153, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (96, 'AGM', '特种票出站', 154, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (97, 'AGM', '计次票进站', 140, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (98, 'AGM', '计次票出站', 141, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (99, 'AGM', '二维码进站', 143, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (100, 'AGM', '二维码出站', 144, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (101, 'AGM', '银行卡进站', 145, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (102, 'AGM', '员工票进站', 146, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (103, 'AGM', '员工票出站', 147, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (104, 'AGM', '一卡通进站', 8251, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (105, 'TVM', '自动售票机车票侦测无法使用(单程票编码错误)', 172, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (106, 'AGM', '操作人员登入事件 ', 155, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (107, 'AGM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (108, 'TVM', '收集现金：抽出硬币盒', 175, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (109, 'TVM', '收集现金：插入硬币盒', 176, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (110, 'TVM', '收集现金：抽出纸钞盒', 177, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (111, 'TVM', '收集现金：插入纸钞盒', 178, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (112, 'TVM', '收集现金：抽出循环找零器', 179, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (113, 'TVM', '收集现金：插入循环找零器 ', 180, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (114, 'TVM', '抽出固定找零器补充箱', 181, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (115, 'TVM', '插入固定找零器补充箱 ', 182, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (116, 'TVM', '自动售票机硬币缷出 ', 186, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (117, 'TVM', '操作人员登入事件', 155, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (118, 'TVM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (119, 'TVM', '取出纸钞找零补充箱', 170, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (120, 'TVM', '置入纸钞找零补充箱', 169, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (121, 'TVM', '置入自动售票机票箱', 183, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (122, 'TVM', '取出自动售票机票箱', 184, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (123, 'BOM', '操作人员登入事件', 155, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (124, 'BOM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (125, 'AGM', '储值卡锁卡事件', 34, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (126, 'AGM', '员工票及单程票锁卡事件', 159, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (127, 'BOM', '锁卡事件', 34, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (128, 'BOM', '锁票事件', 199, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (129, 'BOM', '单程票或特种票锁票', 189, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (130, 'BOM', '特种票补票(计次卡更新)', 195, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (131, 'BOM', '储值卡锁票', 9, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (132, 'TVM', '一卡通发售充值', 5163, 1, '2018-08-23', 0, 1);
INSERT INTO `dic_trans_type` VALUES (133, 'AGM', '插入票箱', 162, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (134, 'AGM', '拔出票箱', 163, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (135, 'TVM', '取出废钞箱', 163, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (136, 'TVM', '置入废钞箱', 165, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (137, 'TVM', '取出废票箱', 166, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (138, 'TVM', '置入废票箱', 167, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (139, 'AGM', '二维码退票', 149, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (140, 'AGM', '人脸进站', 165, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (141, 'AGM', '人脸出站', 166, 1, '2018-08-23', 0, 0);
INSERT INTO `dic_trans_type` VALUES (142, 'AGM', 'AR', 160, 1, '2020-09-08', 0, 1);
INSERT INTO `dic_trans_type` VALUES (143, 'TVM', 'AR', 187, 1, '2020-09-08', 0, 1);
INSERT INTO `dic_trans_type` VALUES (144, 'BOM', 'AR', 204, 1, '2020-09-08', 0, 1);

-- ----------------------------
-- Table structure for dic_tvm_authority_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_tvm_authority_code`;
CREATE TABLE `dic_tvm_authority_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定义描述',
  `logic_delete` int(11) NOT NULL DEFAULT 1 COMMENT '逻辑删除 1使用 0不使用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `land_mark` int(10) NOT NULL COMMENT '地标',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_tvm_authority_code
-- ----------------------------
INSERT INTO `dic_tvm_authority_code` VALUES (1, '0201', '补币', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (2, '0201', '补票', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (3, '0201', '收回票箱', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (4, '0201', '收回纸币钱箱', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (5, '0201', '清空纸币箱', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (6, '0201', '清空票箱', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (7, '0201', '充值单程票废票箱', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (8, '0201', '状态数据查询等', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (9, '0202', '操作状态', 1, '2020-09-08 11:36:07', 0, 'ZLC');
INSERT INTO `dic_tvm_authority_code` VALUES (10, '0202', '最后交易状态', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (11, '0202', '当前审计状态', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (12, '0202', '错误请当', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (13, '0203', '停止服务状态', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (14, '0203', '服务状态', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (15, '0203', '关机', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (16, '0204', '模块测试', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (17, '0204', 'I/O 测试', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (18, '0204', '测试票事件', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (19, '0205', '查询设备参数', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (20, '0205', '设置设备ID和IP地址', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (21, '0205', '设置设备时间', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (22, '0205', '查询软件版本', 1, '2020-09-08 11:36:07', 0, 'SC');
INSERT INTO `dic_tvm_authority_code` VALUES (48, '0206', '错误重置（输出子单元状态的检查，错误删除和运行权限）', 1, NULL, 0, NULL);
INSERT INTO `dic_tvm_authority_code` VALUES (49, '0207', '其他功能', 1, NULL, 0, NULL);

-- ----------------------------
-- Table structure for dic_warehouse_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_warehouse_type`;
CREATE TABLE `dic_warehouse_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_warehouse_type
-- ----------------------------
INSERT INTO `dic_warehouse_type` VALUES (1, 'WH01', '新品仓库', 1, '存放采购的新设备、新部件', 0);
INSERT INTO `dic_warehouse_type` VALUES (2, 'WH02', '备品仓库', 1, '存放可以正常使用的部件', 0);
INSERT INTO `dic_warehouse_type` VALUES (3, 'WH03', '故障品仓库', 1, '存放设备维护人员确认有故障的部件', 0);
INSERT INTO `dic_warehouse_type` VALUES (4, 'WH04', '废品仓库', 1, '存放已经报废的部件', 0);
INSERT INTO `dic_warehouse_type` VALUES (5, 'WH05', '返厂仓库', 1, '存放等待返厂维修的部件', 0);
INSERT INTO `dic_warehouse_type` VALUES (6, 'WH06', '维修仓库', 1, '存放等待维修人员维修的部件', 0);

-- ----------------------------
-- Table structure for dic_workorder_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_workorder_type`;
CREATE TABLE `dic_workorder_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_mark` int(10) NOT NULL COMMENT '地标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_workorder_type
-- ----------------------------
INSERT INTO `dic_workorder_type` VALUES (1, 'WO06', '设备采购工单', 1, '设备采购工单', 0);
INSERT INTO `dic_workorder_type` VALUES (2, 'WO07', '故障申报工单', 1, '故障申报工单', 0);
INSERT INTO `dic_workorder_type` VALUES (3, 'WO01', '设备更换工单', 1, '设备更换工单', 0);
INSERT INTO `dic_workorder_type` VALUES (4, 'WO02', '设备维修工单', 1, '设备维修工单', 0);
INSERT INTO `dic_workorder_type` VALUES (5, 'WO03', '设备报废工单', 1, '设备报废工单', 0);
INSERT INTO `dic_workorder_type` VALUES (6, 'WO04', '设备返厂工单', 1, '设备返厂维修工单', 0);
INSERT INTO `dic_workorder_type` VALUES (7, 'WO05', '日常维护工单', 1, '日常维护工单', 0);
INSERT INTO `dic_workorder_type` VALUES (8, 'WO08', 'test', 0, '1', 0);

SET FOREIGN_KEY_CHECKS = 1;
