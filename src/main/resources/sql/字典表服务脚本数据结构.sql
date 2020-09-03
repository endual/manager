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

 Date: 03/09/2020 16:28:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dic_ar_file_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ar_file_type`;
CREATE TABLE `dic_ar_file_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_TYPE_ID` int(11) NULL DEFAULT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `DEVICE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ar_file_type
-- ----------------------------
INSERT INTO `dic_ar_file_type` VALUES (1, 27, '12', 'AGM拔出票箱', '1', '2018-08-25 16:16:26', 'AGM');
INSERT INTO `dic_ar_file_type` VALUES (2, 28, '13', 'AGM插入票箱', '1', '2018-08-25 16:16:26', 'AGM');
INSERT INTO `dic_ar_file_type` VALUES (3, 16, '15', 'BOM班次结束', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (4, 15, '14', 'BOM班次开始', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (5, 10, '9', 'TVM 插入硬币钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (6, 9, '8', 'TVM 拔出硬币钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (7, 8, '7', 'TVM 7: 插入循环找零钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (8, 7, '6', 'TVM 6: 拔出循环找零钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (9, 6, '5', 'TVM 5: 插入备用找零钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (10, 5, '4', 'TVM 4: 拔出备用找零钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (11, 29, '0', 'AVM定期', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (12, 30, '1', 'AVM当前运营日结束', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (13, 31, '2', 'AVM当前运营日开始', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (14, 32, '3', 'AVM恢复通讯', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (15, 33, '10', 'AVM 拔出纸币钱箱', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (16, 34, '11', 'AVM插入纸币钱箱', '1', '2018-08-25 16:16:26', 'AVM');
INSERT INTO `dic_ar_file_type` VALUES (17, 35, '3', '车站恢复通讯', '1', '2018-08-25 16:16:26', 'SC');
INSERT INTO `dic_ar_file_type` VALUES (18, 12, '11', 'TVM插入纸币钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (19, 11, '10', 'TVM 拔出纸币钱箱', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (20, 2, '1', 'TVM当前运营日结束', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (21, 3, '2', 'TVM当前运营日开始', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (22, 1, '0', 'TVM定期', '1', '2018-08-25 16:16:26', 'TVM');
INSERT INTO `dic_ar_file_type` VALUES (23, 17, '0', 'BOM定期', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (24, 18, '1', 'BOM当前运营日结束', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (25, 19, '2', 'BOM当前运营日开始', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (26, 20, '3', 'BOM恢复通讯', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (27, 21, '12', 'BOM拔出票箱', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (28, 22, '13', 'BOM插入票箱', '1', '2018-08-25 16:16:26', 'BOM');
INSERT INTO `dic_ar_file_type` VALUES (29, 24, '1', 'AGM当前运营日结束', '1', '2018-08-25 16:16:26', 'AGM');
INSERT INTO `dic_ar_file_type` VALUES (30, 25, '2', 'AGM当前运营日开始', '1', '2018-08-25 16:16:26', 'AGM');
INSERT INTO `dic_ar_file_type` VALUES (31, 26, '3', 'AGM恢复通讯', '1', '2018-08-25 16:16:26', 'AGM');

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
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_block_reason
-- ----------------------------
INSERT INTO `dic_block_reason` VALUES (1, '0', '黑名单锁卡', '1', '2019-01-09 00:00:00');

-- ----------------------------
-- Table structure for dic_card_issuer
-- ----------------------------
DROP TABLE IF EXISTS `dic_card_issuer`;
CREATE TABLE `dic_card_issuer`  (
  `ISSUER_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `CODE` int(255) NULL DEFAULT NULL COMMENT '值',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `LOGIC_DELETE` int(255) NULL DEFAULT 1 COMMENT '逻辑删除标识 0:删除 1:未删除',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ISSUER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_card_issuer
-- ----------------------------
INSERT INTO `dic_card_issuer` VALUES (1, 1, '榕城通', 1, '2018-08-26 10:25:53');
INSERT INTO `dic_card_issuer` VALUES (2, 2, '福州地铁ACC', 1, '2018-08-26 10:25:53');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_command_event
-- ----------------------------
INSERT INTO `dic_command_event` VALUES (1, 'INSERV', '0', 'NMDSTA', '1', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (2, 'INSERV', '2', 'NMDSTA', '8', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (3, 'INSERV', '1', 'NMDSTA', '255', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (4, 'INSERV', '3', NULL, NULL, 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (5, 'INSERV', '4', 'NMDSTA', '0', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (6, 'STATEM', '0', 'NMDSTA', '1', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (7, 'STATEM', '1', 'NMDSTA', '9', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (8, 'INSERV', '0', 'NMDSTA', '1', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (9, 'INSERV', '1', 'NMDSTA', '255', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (10, 'INSERV', '2', 'NMDSTA', '8', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (11, 'INSERV', '3', NULL, NULL, 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (12, 'INSERV', '4', 'NMDSTA', '0', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (13, 'EQUCTRL', '0', NULL, NULL, 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (14, 'INSERV', '0', 'NMDSTA', '1', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (15, 'INSERV', '1', 'NMDSTA', '255', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (16, 'INSERV', '2', 'NMDSTA', '8', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (17, 'INSERV', '3', NULL, NULL, 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (18, 'INSERV', '4', 'NMDSTA', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (19, 'EQUCTRL', '0', NULL, NULL, 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (20, 'STACLN', 'null', 'SERSTA', 'Bit1=1', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (21, 'STACLT', 'null', 'SERSTA', 'Bit2=1', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (22, 'INIEOD', 'null', NULL, NULL, 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (23, 'INIBLK', 'null', NULL, NULL, 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (24, 'CLOSYN', 'null', 'TIMDIS', '0', 'SC', 'ZLC');
INSERT INTO `dic_command_event` VALUES (25, 'OUTSCE', 'null', 'NMDSTA', '0', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (26, 'INIEOD', 'null', 'CS2DWN', '0', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (27, 'INIBLK', 'null', 'CS2DWN', '0', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (28, 'CLOSYN', 'null', 'TIMDIS', '0', 'TVM', 'SC');
INSERT INTO `dic_command_event` VALUES (29, 'OUTSCE', 'null', 'NMDSTA', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (30, 'INIEOD', 'null', 'CS2DWN', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (31, 'INIBLK', 'null', 'CS2DWN', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (32, 'INIWVD', 'null', 'CS2DWN', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (33, 'CLOSYN', 'null', 'TIMDIS', '0', 'BOM', 'SC');
INSERT INTO `dic_command_event` VALUES (34, 'OUTSCE', 'null', 'NMDSTA', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (35, 'INSERV', '0', 'NMDSTA', '1', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (36, 'INSERV', '1', 'NMDSTA', '255', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (37, 'INSERV', '2', 'NMDSTA', '8', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (38, 'INSERV', '3', NULL, NULL, 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (39, 'INSERV', '4', 'NMDSTA', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (40, 'AISMOD', '0', 'AILDIR', '2', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (41, 'AISMOD', '1', 'AILDIR', '1', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (42, 'AISMOD', '2', 'AILDIR', '3', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (43, 'INIEOD', 'null', 'CS2DWN', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (44, 'INIBLK', 'null', 'CS2DWN', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (45, 'INIWVD', 'null', 'CS2DWN', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (46, 'AILMOD', '0', 'AILSTA', '1', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (47, 'AILMOD', '1', 'AILSTA', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (48, 'CLOSYN', 'null', 'TIMDIS', '0', 'GATE', 'SC');
INSERT INTO `dic_command_event` VALUES (49, 'EQUCTRL', '0', NULL, NULL, 'GATE', 'SC');

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
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_daily_knot_type
-- ----------------------------
INSERT INTO `dic_daily_knot_type` VALUES (1, '系统日志清理', 1, '2019-05-26', 1);
INSERT INTO `dic_daily_knot_type` VALUES (2, '历史交易数据转储', 1, '2019-05-26', 1);
INSERT INTO `dic_daily_knot_type` VALUES (3, 'socket通讯数据转储', 1, '2019-05-26', 1);
INSERT INTO `dic_daily_knot_type` VALUES (4, '审计交易数据转储', 1, '2019-05-26', 1);
INSERT INTO `dic_daily_knot_type` VALUES (5, '日结报表生成', 1, '2019-05-26', 1);
INSERT INTO `dic_daily_knot_type` VALUES (6, '参数下发检查时间配置', 1, '2019-05-26', 0);
INSERT INTO `dic_daily_knot_type` VALUES (7, '交易数据核查时间配置', 1, '2019-05-26', 0);

-- ----------------------------
-- Table structure for dic_eod_module
-- ----------------------------
DROP TABLE IF EXISTS `dic_eod_module`;
CREATE TABLE `dic_eod_module`  (
  `ID` int(11) NOT NULL,
  `EOD_MODULE_ID` int(6) NULL DEFAULT NULL,
  `EN_STRUCTURE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_STRUCTURE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EN_CIRCULATORY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_CIRCULATORY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EN_FIELD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CN_FIELD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_eod_module
-- ----------------------------
INSERT INTO `dic_eod_module` VALUES (156, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (157, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域未选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (158, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (156, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (157, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域未选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (159, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域未启用图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (160, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (158, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (161, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (159, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域未启用图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (162, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (160, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (163, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (161, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (57, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatEXstation', '重复出站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (162, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (58, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'UpdateAmount', '更新金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (163, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后车站选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (342, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingVoiceHandle', '非法闯入闯出声音处理', '同“黑名单声音处理“', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (57, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatEXstation', '重复出站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (343, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketIssuer', '票卡发行商', '0x01：ACC；0x99：一卡通。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (58, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'UpdateAmount', '更新金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (344, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketType', '车票产品类型', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (342, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingVoiceHandle', '非法闯入闯出声音处理', '同“黑名单声音处理“', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (345, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'LightHandle', '灯处理', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (346, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'VoiceHandle', '声音处理', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (343, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketIssuer', '票卡发行商', '0x01：ACC；0x99：一卡通。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (347, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (344, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'TicketType', '车票产品类型', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (348, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (349, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'SoftwareName', '设备软件', 'AGM设备软件包括AGM主程序、AGM配置文件、AGM读卡器程序等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (345, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'LightHandle', '灯处理', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (346, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'CustomAlarmLampData_t', 'AGM警告灯个性参数记录循环体', 'VoiceHandle', '声音处理', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (350, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (347, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (351, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (348, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TransactionQueryData_t', 'AGM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (352, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (349, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'SoftwareName', '设备软件', 'AGM设备软件包括AGM主程序、AGM配置文件、AGM读卡器程序等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (353, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，BOM停止出票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (350, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (354, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。单位：秒。默认值：5秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (355, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当BOM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (351, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (356, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (352, 4054, 'EODDataAGMSoftware_t', ' AGM设备软件', 'AGMSoftware_t', 'AGM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (357, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (353, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，BOM停止出票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (358, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (354, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。单位：秒。默认值：5秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (359, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', 'BOM预留此字段，填0。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (355, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketReaderData_t', 'BOM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当BOM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (356, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (360, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillBeEmptyNumber', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (357, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (361, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (358, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (362, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (359, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'MaintenanceData_t', 'BOM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', 'BOM预留此字段，填0。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (363, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (360, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillBeEmptyNumber', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (364, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxWillBeFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (361, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (365, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (362, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (366, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (363, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (367, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (364, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxWillBeFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (368, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (365, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TicketBoxData_t', 'BOM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (369, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (366, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (370, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (371, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (367, 4063, 'EODDataBOMConfig_t', 'BOM运营参数', 'TransactionQueryData_t', 'BOM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (372, 4010, 'ModeList_t', '模式履历参数', NULL, NULL, 'VersionNumber', '版本号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (373, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'ModeCode', '模式代码', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (368, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (374, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'OperationDay', '运营日', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (369, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (375, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'LineID', '线路', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (370, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (376, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'StationID', '车站', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (371, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (377, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeOccurrenceTime', '降级模式发生时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (372, 4010, 'ModeList_t', '模式履历参数', NULL, NULL, 'VersionNumber', '版本号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (378, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEndTime', '降级模式结束时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (373, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'ModeCode', '模式代码', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (379, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEffectiveTime', '降级模式的影响有效期', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (374, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'OperationDay', '运营日', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (380, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (375, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'LineID', '线路', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (381, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (376, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'StationID', '车站', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (377, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeOccurrenceTime', '降级模式发生时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (382, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'Treatment Mode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (378, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEndTime', '降级模式结束时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (383, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (384, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (379, 4010, 'ModeList_t', '模式履历参数', 'ModeListItem', '模式履历表记录', 'DegradedModeEffectiveTime', '降级模式的影响有效期', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (385, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'DeletionMark', '增删标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (380, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (386, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (381, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (387, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (382, 4011, 'YPTAllBlackList_t', '一票通全量黑名单', 'BlackListFullRecord', '黑名单记录', 'Treatment Mode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (1, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatWaitTime', '重发前等待时间', '试着重新发送交互请求消息前的等待交互应答消息的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (383, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (2, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatCount', '重发次数', '本次发送前的重发次数，达到这个字段指定的次数后，即停止重发，以后再传送（只对于网络恢复需要重新传送)', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (384, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (3, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'WaitingConnectionTime', '等待建立连接的时间', '发起连接请求后，等待建立连接的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (385, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'DeletionMark', '增删标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (4, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'ResponseTimeOut', '应答超时', '发起请求报文后，等待应答的时限。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (386, 4012, 'YPTAddBlackList_t', '一票通增量黑名单', 'BlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (5, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'NoResponseNumber', '未应答的交互数', '在发起新的交互前，允许未收到应答的交互的最大个数', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (387, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (1, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatWaitTime', '重发前等待时间', '试着重新发送交互请求消息前的等待交互应答消息的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (6, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'VersionCheckIntervalTime', '版本检查时间间隔', '包括参数文件、黑名单文件、模式履历文件、软件程序等。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (2, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'RepeatCount', '重发次数', '本次发送前的重发次数，达到这个字段指定的次数后，即停止重发，以后再传送（只对于网络恢复需要重新传送)', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (7, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncIntervalTime', '时钟同步时间间隔', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (3, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'WaitingConnectionTime', '等待建立连接的时间', '发起连接请求后，等待建立连接的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (8, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMinResponseThreshold', '时钟同步最小阀值', '时钟误差小于该参数时，不自动同步时钟。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (4, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'ResponseTimeOut', '应答超时', '发起请求报文后，等待应答的时限。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (9, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMaxResponseThreshold', '时间同步最大阀值', '时钟误差大于该参数时，不自动同步时钟，并记录警告事件。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (222, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (5, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataCommParam_t', '通信参数', 'NoResponseNumber', '未应答的交互数', '在发起新的交互前，允许未收到应答的交互的最大个数', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (223, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (6, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'VersionCheckIntervalTime', '版本检查时间间隔', '包括参数文件、黑名单文件、模式履历文件、软件程序等。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (224, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择按钮ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (7, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncIntervalTime', '时钟同步时间间隔', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (225, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (8, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMinResponseThreshold', '时钟同步最小阀值', '时钟误差小于该参数时，不自动同步时钟。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (226, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (9, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataSyncParam_t', '数据同步参数', 'ClockSyncMaxResponseThreshold', '时间同步最大阀值', '时钟误差大于该参数时，不自动同步时钟，并记录警告事件。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (227, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (222, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (228, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (223, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (229, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图中文名（可用付款二维码覆盖）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (224, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择按钮ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (230, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图英文名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (231, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (225, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (232, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (226, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (227, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (233, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (234, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (228, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购买张数选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (235, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '可接受纸币的种类', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (229, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图中文名（可用付款二维码覆盖）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (230, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图英文名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (236, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图片中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (237, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图片英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (231, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (238, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图坐标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (232, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (239, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图坐标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (233, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (234, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine_t', '购票子界面', NULL, '购票示意图高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (240, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (235, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '可接受纸币的种类', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (241, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (242, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域坐标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (236, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图片中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (243, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (244, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (237, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图片英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (245, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (246, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'RoleID', '角色编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (238, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图坐标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (247, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'Role Description', '角色描述', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (239, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图坐标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (248, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeRoleFunction', '角色功能分配', 'FunctionCode', '功能代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (240, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (241, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '示意图高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (249, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'UserID', '用户编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (242, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域坐标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (250, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'User Password', '用户密码', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (251, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'StationID', '车站编码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (243, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (244, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (252, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', '？EnabledMarker', '启用标志位', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (245, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '充值子界面', NULL, '储值卡信息显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (253, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'EnabledTime', '启用时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (254, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'CutoffTime', '截止时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (246, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'RoleID', '角色编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (247, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeRole', '角色定义', 'Role Description', '角色描述', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (255, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'DevicePrivilegeMarker', '设备权限标志位', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (248, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeRoleFunction', '角色功能分配', 'FunctionCode', '功能代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (256, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserRole', '配置角色', 'RoleID', '角色编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (249, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'UserID', '用户编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (257, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserStation', '配置车站', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (258, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSleType', '配置终端类型', 'DeviceType', '设备类型', '见5 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (250, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'User Password', '用户密码', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (251, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'StationID', '车站编码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (259, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSle', '配置终端', 'DeviceID', '设备节点编号', '见6 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (260, 4039, 'EODDataStationLayout_t', '车站设备节点配置', NULL, NULL, 'LineID', '线路编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (252, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', '？EnabledMarker', '启用标志位', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (261, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'StationID', '车站编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (253, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'EnabledTime', '启用时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (262, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'MapName', '车站地图文件名称', 'png格式', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (254, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'CutoffTime', '截止时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (263, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceID', '设备节点编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (255, 4041, 'EODDataPriviledge_t', '权限参数', ' PriviledgeUser', '用户定义', 'DevicePrivilegeMarker', '设备权限标志位', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (264, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceName', '设备名称', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (256, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserRole', '配置角色', 'RoleID', '角色编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (10, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionTimeInterval', '交易数据文件生成时间间隔', 'SC生成交易文件的时间频率。默认值600s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (257, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserStation', '配置车站', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (59, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'OvertimeFine', '超时罚款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (258, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSleType', '配置终端类型', 'DeviceType', '设备类型', '见5 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (60, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ExcessPenaltyAmount', '超程罚款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (259, 4041, 'EODDataPriviledge_t', '权限参数', 'PriviledgeUserSle', '配置终端', 'DeviceID', '设备节点编号', '见6 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (61, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AmountPaid', '超程和超时同时发生补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (260, 4039, 'EODDataStationLayout_t', '车站设备节点配置', NULL, NULL, 'LineID', '线路编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (62, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MismatchPayment', '进出站不匹配补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (261, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'StationID', '车站编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (63, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DepartureStationAmount', '非补款车站出站时再次补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (262, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutStation', '车站信息', 'MapName', '车站地图文件名称', 'png格式', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (64, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'Auditenableflag', '审计记录启用标志', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (263, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceID', '设备节点编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (65, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'PreferentialWay', '优惠方式', '字节位表示法，置0禁用，置1启用。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (264, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceName', '设备名称', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (66, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CouponCode', '联乘优惠代码', '不用，填0', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (10, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionTimeInterval', '交易数据文件生成时间间隔', 'SC生成交易文件的时间频率。默认值600s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (67, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CumulativeCouponCode', '累积优惠代码', '不用，填0？', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (59, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'OvertimeFine', '超时罚款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (68, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'SubwaylDiscount Rate', '地铁折扣率', '百分比数，使用时除100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (60, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ExcessPenaltyAmount', '超程罚款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (69, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightRailDiscount Rate', '轻轨折扣率', '百分比数，使用时除100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (61, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AmountPaid', '超程和超时同时发生补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (70, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (62, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MismatchPayment', '进出站不匹配补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (71, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountCode', '联乘优惠代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (63, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DepartureStationAmount', '非补款车站出站时再次补款金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (72, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointIndustry', '联乘优惠行业范围', 'Bit0：公交行业Bit1：出租车行业Bit2：轨道交通行业Bit3~Bit7：预留1：参加；0：不参加', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (64, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'Auditenableflag', '审计记录启用标志', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (73, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointTimeRange', '联乘优惠有效时间范围', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (65, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'PreferentialWay', '优惠方式', '字节位表示法，置0禁用，置1启用。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (66, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CouponCode', '联乘优惠代码', '不用，填0', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (74, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountMode', '联乘优惠方式', '0：金额1：比例', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (67, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CumulativeCouponCode', '累积优惠代码', '不用，填0？', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (75, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountAmount', '联乘优惠金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (68, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'SubwaylDiscount Rate', '地铁折扣率', '百分比数，使用时除100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (76, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountProportion', '联乘优惠比例', '优惠百分比，使用时需除以100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (69, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightRailDiscount Rate', '轻轨折扣率', '百分比数，使用时除100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (77, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeCode', '累积优惠代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (70, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (71, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountCode', '联乘优惠代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (78, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeType', '累积优惠类型', '0：累计次数优惠', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (72, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointIndustry', '联乘优惠行业范围', 'Bit0：公交行业Bit1：出租车行业Bit2：轨道交通行业Bit3~Bit7：预留1：参加；0：不参加', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (79, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'Cumulativetimes', '累积乘坐起始优惠次数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (80, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeAmount', '累积乘坐起始优惠金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (73, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointTimeRange', '联乘优惠有效时间范围', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (81, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeProportion', '累积乘坐优惠比例', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (74, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountMode', '联乘优惠方式', '0：金额1：比例', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (82, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'PreferenceReset Type', '优惠重置类型', '0：不重置；1：按月重置；2：按季重置；3：按年重置。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (75, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountAmount', '联乘优惠金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (83, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'LocalTimeDifference', '本地时区差值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (76, 4034, 'EODDataDiscount_t', '优惠方案参数', 'MultiTripDiscount', '联乘优惠', 'JointDiscountProportion', '联乘优惠比例', '优惠百分比，使用时需除以100', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (84, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemStartTime', '系统运营日起始时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (77, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeCode', '累积优惠代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (85, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemEndTime', '系统运营日结束时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (78, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeType', '累积优惠类型', '0：累计次数优惠', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (86, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'TechnicalDates', '特殊日期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (79, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'Cumulativetimes', '累积乘坐起始优惠次数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (87, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'DateType', '日期类型', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (80, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeAmount', '累积乘坐起始优惠金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (88, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'TimeIntervalID', '时间段编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (81, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'CumulativeProportion', '累积乘坐优惠比例', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (89, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'StartTime', '开始时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (82, 4034, 'EODDataDiscount_t', '优惠方案参数', 'PointDiscount', '累积优惠', 'PreferenceReset Type', '优惠重置类型', '0：不重置；1：按月重置；2：按季重置；3：按年重置。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (90, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'EndTime', '结束时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (83, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'LocalTimeDifference', '本地时区差值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (91, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (84, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemStartTime', '系统运营日起始时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (92, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'AllowRetentionTime', '允许站内的滞留时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (85, 4035, 'EODDataCalendar_t', '日历时间段参数', 'SystemTimeParam_t', '系统时间参数', 'SystemEndTime', '系统运营日结束时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (93, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MaxAmount', '充值最大金额', '自动充值上限', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (86, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'TechnicalDates', '特殊日期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (87, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarDate', '特殊日期', 'DateType', '日期类型', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (94, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'DefaultAmount', '充值默认金额', '每次自动充值的金额', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (88, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'TimeIntervalID', '时间段编号', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (95, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MinAmount', '充值步长金额', '最小充值金额', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (89, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'StartTime', '开始时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (96, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (90, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarTime', '时间段', 'EndTime', '结束时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (97, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'DateTypeID', '日期类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (91, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (98, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TimeIntervalID', '时间段代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (99, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (92, 4035, 'EODDataCalendar_t', '日历时间段参数', 'CalendarHold', '最大滞留时间', 'AllowRetentionTime', '允许站内的滞留时间', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (100, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (101, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'EnterStationID', '进站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (93, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MaxAmount', '充值最大金额', '自动充值上限', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (102, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'ExitStationID', '出站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (94, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'DefaultAmount', '充值默认金额', '每次自动充值的金额', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (95, 4036, 'EODDataFare_t', '费率参数', 'AddValueParam_t', '充值参数', 'MinAmount', '充值步长金额', '最小充值金额', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (103, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (96, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (104, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (97, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'DateTypeID', '日期类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (164, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', NULL, '线路启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (165, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', NULL, '线路中车站选择区域启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (98, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'TimeIntervalID', '时间段代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (166, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (99, 4036, 'EODDataFare_t', '费率参数', 'FareGroup', '车票费率组', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (167, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域未选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (100, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (101, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'EnterStationID', '进站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (168, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (169, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域未启用图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (102, 4036, 'EODDataFare_t', '费率参数', 'FareTier', '费率等级', 'ExitStationID', '出站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (170, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (103, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareGroupID', '车票费率组代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (171, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (104, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareTier', '费率等级代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (164, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', NULL, '线路启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (172, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (165, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMStationInLine', '线路中车站选择按钮', NULL, '线路中车站选择区域启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (173, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (174, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (166, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域ID', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (167, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域未选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (175, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (168, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域选中图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (176, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (169, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域未启用图片', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (170, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (177, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (171, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (178, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (172, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (179, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (173, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineStation', '线路中车站', NULL, '线路中车站选择区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (174, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (180, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (175, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (181, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (176, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (182, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (177, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (183, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (178, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '地铁logo高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (184, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (179, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (185, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (186, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (180, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (187, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '票价选择按钮ID（list，小于等于9）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (181, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (188, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮显示金额', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (182, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前日期时间显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (189, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (183, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (190, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (191, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (184, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (192, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (193, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'AreaId', '车站选择按钮ID （list，小于等于9）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (185, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (194, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosX', '车站选择按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (186, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '车站位置及时间日期区域', NULL, '当前车站显示区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (195, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosY', '车站选择按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (187, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '票价选择按钮ID（list，小于等于9）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (196, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicWidth', '车站选择按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (188, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮显示金额', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (197, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicHeight', '车站选择按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (189, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (190, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (198, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (191, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (199, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (192, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '快速购票区域', NULL, '车票金额按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (200, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (193, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'AreaId', '车站选择按钮ID （list，小于等于9）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (201, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (202, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (194, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosX', '车站选择按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (203, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (195, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicPosY', '车站选择按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (196, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicWidth', '车站选择按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (204, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮是否显示', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (197, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareArea_t', '快速选站区域', 'PicHeight', '车站选择按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (205, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (198, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (206, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (199, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (207, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (200, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (208, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (201, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (209, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (202, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (210, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (203, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '中英文切换按钮图标高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (211, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮ID（list）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (204, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮是否显示', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (212, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (213, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (205, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (214, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (206, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (215, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (207, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (216, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (208, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (209, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (217, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路中文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (210, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '功能区域', NULL, '充值按钮图标高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (218, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路英文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (211, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮ID（list）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (219, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (212, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (220, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (213, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (221, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (214, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (11, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'EventTimeInterval', '事件数据文件生成时间间隔', 'SC生成事件文件的时间频率。默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (215, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (216, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路选择按钮启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (12, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditTimeInterval', '审计数据文件生成时间间隔', '？ SC生成审计文件的时间频率。默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (217, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路中文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (218, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, '线路英文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (13, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionPackageTimeInterval', '交易打包文件时间间隔', 'ZLC生成交易tar文件的时间频率。默认值600s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (219, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (14, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PassengerFlowTimeInterval', '客流报文上传时间间隔', '默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (220, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (15, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditUploadTimeInterval', '审计数据报文上传时间间隔', '默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (221, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMLineSelection_t', '线路选择以及TVM版本信息区域', NULL, 'TVM版本信息区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (16, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PackagesNumber', '打包文件个数', '原始设备文件到达时触发打包。默认是20.打包文件时间间隔与打包文件个数其中之一满足即启动打包。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (11, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'EventTimeInterval', '事件数据文件生成时间间隔', 'SC生成事件文件的时间频率。默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (17, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineID', '线路代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (12, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditTimeInterval', '审计数据文件生成时间间隔', '？ SC生成审计文件的时间频率。默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (18, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineIP', '线路IP地址', 'IP的4个字节以U32_t从高位到低位表示？', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (13, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'TransactionPackageTimeInterval', '交易打包文件时间间隔', 'ZLC生成交易tar文件的时间频率。默认值600s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (19, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineChineseName', '线路中文名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (14, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PassengerFlowTimeInterval', '客流报文上传时间间隔', '默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (20, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineEnglishName', '线路英文名称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (21, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (15, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'AuditUploadTimeInterval', '审计数据报文上传时间间隔', '默认值300s', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (22, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (16, 4031, 'EODDataSystem_t', '系统控制参数', 'EODDataDeviceFileParam_t', '设备文件参数', 'PackagesNumber', '打包文件个数', '原始设备文件到达时触发打包。默认是20.打包文件时间间隔与打包文件个数其中之一满足即启动打包。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (23, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationIP', '车站IP地址', 'IP的4个字节以U32_t从高位到低位表示？，每8位表示IP地址的一部分', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (17, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineID', '线路代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (24, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationChineseName', '车站中文名称', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (18, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineIP', '线路IP地址', 'IP的4个字节以U32_t从高位到低位表示？', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (19, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineChineseName', '线路中文名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (25, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationEnglishName', '车站英文简称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (20, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'LineEnglishName', '线路英文名称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (26, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'BelongsLineID4', '所属线路代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (21, 4032, 'EODDataTopo_t', '路网信息参数', 'LineInfo_t', '线路信息', 'EnabledMarker', '启用标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (27, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'EnabledMarker', '启用标志位？', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (22, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (23, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationIP', '车站IP地址', 'IP的4个字节以U32_t从高位到低位表示？，每8位表示IP地址的一部分', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (28, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (29, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'TransferStationID', '换乘车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (24, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationChineseName', '车站中文名称', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (30, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (25, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'StationEnglishName', '车站英文简称', '以ASCII编码，剩余字节填0x00', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (26, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'BelongsLineID4', '所属线路代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (31, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketFamily', '票种归类类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (27, 4032, 'EODDataTopo_t', '路网信息参数', 'StationInfo_t', '车站信息', 'EnabledMarker', '启用标志位？', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (32, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketChineseName', '车票类型中文名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (28, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'StationID', '车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (33, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketEnglishName', '车票类型英文简称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (29, 4032, 'EODDataTopo_t', '路网信息参数', 'ExchangeInfo_t', '换乘站信息', 'TransferStationID', '换乘车站代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (34, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RegisteredValueTicket', '记名储值票标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (30, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketType', '车票类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (35, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CommemorativeTicket', '纪念票标志', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (31, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketFamily', '票种归类类型代码', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (36, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightDisplayNumber', '灯光显示编号', '0：红色', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (32, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketChineseName', '车票类型中文名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (37, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'BlacklistCheck', '是否检查黑名单', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (33, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketEnglishName', '车票类型英文简称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (38, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'StatioCheck', '是否检查售票车站', '只对单程票有用', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (34, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RegisteredValueTicket', '记名储值票标志位', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (35, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CommemorativeTicket', '纪念票标志', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (39, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RechargeCheck', '是否可充值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (36, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'LightDisplayNumber', '灯光显示编号', '0：红色', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (40, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaximumBalanceValueTicket', '储值车票最大余额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (37, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'BlacklistCheck', '是否检查黑名单', '0：否；1：是', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (41, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinENStationAmount', '最小进站金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (38, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'StatioCheck', '是否检查售票车站', '只对单程票有用', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (42, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinEXStationAmount', '最小出站金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (39, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RechargeCheck', '是否可充值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (43, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketSalesDeposit', '票卡售卖押金', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (40, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaximumBalanceValueTicket', '储值车票最大余额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (44, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ReturnTicket', '是否可退票', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (41, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinENStationAmount', '最小进站金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (45, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxImmediateRefundAmount', '最大即时退票金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (42, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MinEXStationAmount', '最小出站金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (46, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CancellationFee', '退票手续费', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (43, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketSalesDeposit', '票卡售卖押金', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (47, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRidesNumber', '最多乘坐次数', '限制计时票', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (44, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'ReturnTicket', '是否可退票', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (48, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRideMileage', '单次最大乘坐里程', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (45, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxImmediateRefundAmount', '最大即时退票金额', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (49, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxnumberRidesOddDay', '单日最多乘坐次数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (50, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketAvailability Class', '车票有效期类别', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (46, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'CancellationFee', '退票手续费', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (47, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRidesNumber', '最多乘坐次数', '限制计时票', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (51, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DeadlinePeriod', '期限时间段(天)', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (52, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'FixedCut-offDate', '固定截止有效日期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (48, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxRideMileage', '单次最大乘坐里程', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (53, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowedPostpone', '是否允许延期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (49, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'MaxnumberRidesOddDay', '单日最多乘坐次数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (54, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DefaultExtensionDays', '默认延期天数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (50, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'TicketAvailability Class', '车票有效期类别', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (51, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DeadlinePeriod', '期限时间段(天)', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (55, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowTrailingAllowance', '是否允许尾程优惠', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (52, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'FixedCut-offDate', '固定截止有效日期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (56, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatENstation', '重复进站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (53, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowedPostpone', '是否允许延期', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (105, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareValue', '费率值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (54, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'DefaultExtensionDays', '默认延期天数', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (106, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenWidth', '屏幕宽度', '按比例显示，宽度下同。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (55, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'AllowTrailingAllowance', '是否允许尾程优惠', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (107, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenHeight', '屏幕高度', '按比例显示，宽度下同。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (56, 4033, 'EODDataFareType_t', '车票参数', 'FareTypeRecord', '车票类型记录', 'RepeatENstation', '重复进站免费更新最大时限', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (108, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicName', '初始化画面的文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (105, 4036, 'EODDataFare_t', '费率参数', 'FareValue', '基本费率', 'FareValue', '费率值', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (109, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosX', '启动画面左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (106, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenWidth', '屏幕宽度', '按比例显示，宽度下同。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (110, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosY', '启动画面左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (107, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'MonitorDefine_t', '屏幕尺寸', 'ScreenHeight', '屏幕高度', '按比例显示，宽度下同。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (111, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicWidth', '启动画面宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (108, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicName', '初始化画面的文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (112, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicHeight', '启动画面高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (109, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosX', '启动画面左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (113, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicName', '暂停画面的文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (110, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicPosY', '启动画面左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (114, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosX', '暂停画面左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (111, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicWidth', '启动画面宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (115, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosY', '暂停画面左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (112, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'InitWindow_t', '启动窗口', 'PicHeight', '启动画面高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (116, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicWidth', '暂停画面宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (113, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicName', '暂停画面的文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (117, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicHeight', '暂停画面高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (114, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosX', '暂停画面左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (115, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicPosY', '暂停画面左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (118, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (119, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (116, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicWidth', '暂停画面宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (117, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', 'PicHeight', '暂停画面高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (120, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (121, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (118, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (122, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicName', '紧急状态图片文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (119, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (123, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosX', '紧急状态左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (120, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (124, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosY', '紧急状态左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (121, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'SuspendStatus_t', '暂停服务状态', NULL, 'TVM设备信息区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (125, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicWidth', '紧急状态图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (122, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicName', '紧急状态图片文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (126, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicHeight', '紧急状态图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (127, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (123, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosX', '紧急状态左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (128, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (124, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicPosY', '紧急状态左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (129, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (125, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicWidth', '紧急状态图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (130, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (126, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', 'PicHeight', '紧急状态图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (131, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '广告界面', NULL, '广告播放方式（循环或者乱序', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (127, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (132, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '广告界面', NULL, '进入广告模式时间（TVM无人操作后进入广告时间）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (128, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (133, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (134, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (129, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (135, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告播放时长（秒）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (130, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'UrgencyStatus_t', '紧急状态界面', NULL, 'TVM设备信息区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (136, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (131, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '广告界面', NULL, '广告播放方式（循环或者乱序', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (137, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (132, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '广告界面', NULL, '进入广告模式时间（TVM无人操作后进入广告时间）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (138, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (139, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (133, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (134, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (140, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'BannerId', '图片编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (135, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告播放时长（秒）', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (141, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'CnPicName', '图片中文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (136, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (142, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'EnPicName', '图片英文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (137, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (143, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网图片中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (138, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域图片宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (139, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMAdv', '广告内容', NULL, '广告区域图片高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (144, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网图片英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (140, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'BannerId', '图片编号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (145, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (141, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'CnPicName', '图片中文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (146, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (142, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMTopBanner', '顶板', 'EnPicName', '图片英文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (147, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (143, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网图片中文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (148, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (144, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网图片英文文件名', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (149, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域中文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (145, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (150, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域英文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (146, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (151, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (147, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (152, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (148, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大前路网区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (153, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (149, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域中文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (154, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (150, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域英文图片名称', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (155, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后路网图内车站启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (151, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域左上角X坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (388, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'StartCardNumber', '开始卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (152, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域左上角Y坐标', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (389, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'EndCardNumber', '结束卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (153, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域宽度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (154, 4037, 'EODDataTVMUI_t', 'TVM界面参数', NULL, '路网区域', NULL, '放大后路网区域高度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (390, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (155, 4037, 'EODDataTVMUI_t', 'TVM界面参数', 'TVMFareAreaZoomStation', '放大后的车站', NULL, '放大后路网图内车站启用标志', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (391, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (388, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'StartCardNumber', '开始卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (392, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (389, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'EndCardNumber', '结束卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (390, 4013, 'YPTRangeBlackList_t', '一票通号段黑名单', 'BlackListRangeRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (393, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (391, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (394, 4015, 'StaffBlackList_t', '员工票黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (395, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (392, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (396, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (393, 4014, 'YKTRangeBlackList_t', '一卡通黑名单', 'YKTBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (394, 4015, 'StaffBlackList_t', '员工票黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (397, 4016, 'ProvinceBlackList _t', '省通卡黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (395, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TicketPhyID', '物理卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (398, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (399, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (396, 4015, 'StaffBlackList_t', '员工票黑名单', 'StaffBlackListFullRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (397, 4016, 'ProvinceBlackList _t', '省通卡黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (400, 4017, 'CitizenBlackList_t', '市民卡通黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (398, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (401, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (399, 4016, 'ProvinceBlackList _t', '省通卡黑名单', 'ProvinceBlackListRecord', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (402, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (400, 4017, 'CitizenBlackList_t', '市民卡通黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (403, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (401, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (404, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (402, 4017, 'CitizenBlackList_t', '市民卡通黑名单', 'CitizenBlackList', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (405, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (403, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', NULL, NULL, 'BlackListVersionNumber', '黑名单版本', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (265, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceType', '设备类型', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (404, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TicketLogicalID', '逻辑卡号', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (266, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceNo', '设备序号', '车站内设备的逻辑序号', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (405, 4018, 'FinancialBlackList _t', '金融IC卡黑名单黑名单', 'FinancialBlackList', '黑名单记录', 'TreatmentMode', '处理方式', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (267, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'StationHallID', '站厅ID', '设备所属站厅', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (265, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceType', '设备类型', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (268, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupID', '设备组号', '设备所属组', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (269, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupNo', '设备组内序号', '设备在组内的序号', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (266, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceNo', '设备序号', '车站内设备的逻辑序号', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (267, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'StationHallID', '站厅ID', '设备所属站厅', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (270, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Abscissa', '横坐标', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (268, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupID', '设备组号', '设备所属组', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (271, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Ordinate', '纵坐标', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (269, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceGroupNo', '设备组内序号', '设备在组内的序号', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (272, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Angle', '显示角度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (270, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Abscissa', '横坐标', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (273, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceIP', '设备IP地址', 'IP的4个字节以U32_t从高位到低位表示', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (271, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Ordinate', '纵坐标', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (274, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Marker', '启用标记', '1：在用；2：停用；3：移除', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (272, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Angle', '显示角度', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (275, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，TVM停止出票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (273, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'DeviceIP', '设备IP地址', 'IP的4个字节以U32_t从高位到低位表示', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (276, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (274, 4039, 'EODDataStationLayout_t', '车站设备节点配置', 'LayoutDevice', '设备记录体', 'Marker', '启用标记', '1：在用；2：停用；3：移除', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (275, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，TVM停止出票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (277, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当TVM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (276, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (278, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (277, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketReaderData_t', 'TVM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当TVM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (279, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (278, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (280, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (279, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (281, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (282, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TicketAcceptNoteType', '售票接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (280, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (281, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'MaintenanceData_t', 'TVM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (283, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteCount', '售票接收的最大纸币数量', '张数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (282, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TicketAcceptNoteType', '售票接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (284, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteTotal', '售票接收的最大纸币总额', '单位：元。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (283, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteCount', '售票接收的最大纸币数量', '张数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (285, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteType', '充值接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (284, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxTicketAcceptNoteTotal', '售票接收的最大纸币总额', '单位：元。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (286, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteCount', '充值接收的最大纸币数量', '张数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (285, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteType', '充值接受的纸币面额种类', '字节位图表示，置1表示接受，置0表示不接受。位表示如下：Bit0:5角Bit1:1元Bit2:5元Bit3:10元Bit4:20元Bit5:50元Bit6:100元Bit7~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (286, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteCount', '充值接收的最大纸币数量', '张数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (287, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteTotal', '充值接收的最大纸币总额', '单位：元。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (287, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'RechargeAcceptNoteTotal', '充值接收的最大纸币总额', '单位：元。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (288, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowSaleTicketNoCoin', '无硬币找零时是否允许售票', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (288, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowSaleTicketNoCoin', '无硬币找零时是否允许售票', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (289, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'AcceptCoinType', '接受硬币的面额种类', '字节位图表示，置1表示接受，置0表示不接受，硬件根据实际情况选择面额种类。位表示如下：Bit0:5角Bit1:1元Bit2~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (289, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'AcceptCoinType', '接受硬币的面额种类', '字节位图表示，置1表示接受，置0表示不接受，硬件根据实际情况选择面额种类。位表示如下：Bit0:5角Bit1:1元Bit2~Bit31:保留', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (290, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxAcceptCoinCount', '接受硬币的最大数量', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (290, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxAcceptCoinCount', '接受硬币的最大数量', '见4 《编码规则》', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (291, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxCoinChangeCount', '硬币找零的最大数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (291, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxCoinChangeCount', '硬币找零的最大数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (292, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowNoteChange', '售票是否允许纸币找零', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (292, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowNoteChange', '售票是否允许纸币找零', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (293, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeCount', '纸币找零最大纸币数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (293, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeCount', '纸币找零最大纸币数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (294, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeTotal', '纸币找零最大纸币总金额', '单位：元', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (294, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MaxNoteChangeTotal', '纸币找零最大纸币总金额', '单位：元', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (295, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TransactionCancelTime', '交易取消时间', '单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (295, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'TransactionCancelTime', '交易取消时间', '单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (296, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowShowStandBy', '是否允许显示待机画面', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (296, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'IsAllowShowStandBy', '是否允许显示待机画面', '0：不允许；1：允许', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (297, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'StandBySwitchTime', '待机画面切换时间', '单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (297, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'StandBySwitchTime', '待机画面切换时间', '单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (298, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxWillFullNum', '纸币钱箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (298, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxWillFullNum', '纸币钱箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (299, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxFullNum', '纸币钱箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (300, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionWillFullNum', '硬币回收箱将满数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (299, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteBoxFullNum', '纸币钱箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (301, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionFullNum', '硬币回收箱已满数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (300, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionWillFullNum', '硬币回收箱将满数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (302, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinChangeWillEmptyNum', '硬币找零箱将空数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (301, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinCollectionFullNum', '硬币回收箱已满数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (303, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MinTicketNum', 'TVM最少车票数量', '少于该数量时，TVM不进行售票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (302, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'CoinChangeWillEmptyNum', '硬币找零箱将空数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (304, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteChangeWillEmptyNum', '纸币找零箱将空数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (303, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'MinTicketNum', 'TVM最少车票数量', '少于该数量时，TVM不进行售票。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (305, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (304, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'CashBoxData_t', 'TVM钱箱相关参数', 'NoteChangeWillEmptyNum', '纸币找零箱将空数量', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (306, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (305, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (307, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (306, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (308, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (307, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (309, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (308, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (310, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (309, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (311, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (310, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TicketBoxData_t', 'TVM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (312, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (311, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionNum', '可查询交易数量下限', '可查最小交易数量。默认30条。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (313, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'SoftwareName', '设备软件', 'TVM设备软件包括TVM主程序、TVM配置文件、TVM读卡器程序、TVM多媒体文件等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (312, 4043, 'EODDataTVMConfig_t', 'TVM运营参数', 'TransactionQueryData_t', 'TVM最近可查最小交易数目', 'MinQueryTransactionTime', '可查询交易时间下限', '单位：分钟。默认10分钟', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (314, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (313, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'SoftwareName', '设备软件', 'TVM设备软件包括TVM主程序、TVM配置文件、TVM读卡器程序、TVM多媒体文件等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (315, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (314, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'CurrentVersion', '当前版本参数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (316, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (315, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'CreateTime', '生成时间', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (317, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，AGM停止服务。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (318, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (316, 4044, 'EODDataTVMSoftware_t', ' TVM设备软件', 'TVMSoftware_t', ' TVM设备软件参数', 'FilePath', '文件地址', '下发的二进制文件在ftp的地址', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (319, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当AGM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (320, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (317, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'MaxTicketContinuousError', '车票连续出错最大张数', '发票时车票连续读写错误的最大次数。默认值为3，0表示参数无效。达到该次数后，AGM停止服务。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (321, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (318, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardWaitingTime', '未写入完全的卡等待时间', '写卡不完整后，提示重新刷卡的最大等待时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (322, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (319, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketReaderData_t', 'AGM票卡读写参数', 'NoWrittenCardRetryCount', '未写入完全的卡重试次数', '当AGM写卡不完整后，重新写卡的次数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (320, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'PasswordEnterTime', '密码输入时间', '单位秒，默认：60秒。密码输入操作的时限，超过该时间未输入密码，自动退出登录界面。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (323, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (321, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'LoginTryCount', '登录尝试次数', '操作员登录设备次数限制。默认值：3次。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (324, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (322, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'NoOperateAutoLogoutTime', '无操作自动登出时间', '单位秒，默认值：120秒。0表示该值无效。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (323, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'MaintenanceData_t', 'AGM维修登录相关参数', 'ServiceDoorNoCloseTime', '维修门未关闭报警时间', '单位秒，默认值：60。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (325, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (326, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (324, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillEmptyNum', '票箱将空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (327, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (325, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxEmptyNum', '票箱已空张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (328, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (326, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxWillFullNum', '票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (329, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (327, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'TicketBoxFullNum', '票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (328, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxWillFullNum', '废票箱将满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (330, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'MaxCreditCardNum', '最大刷卡人次(通行队列最大容量)', '自动检票机允许检了票而不通过的最大人数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (329, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'TicketBoxData_t', 'AGM票箱参数', 'InvalidBoxFullNum', '废票箱已满张数', NULL, 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (331, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerEnterOverTime', '乘客通过自动检票机超时时间', '乘客使用票卡未通过自动检票机的最大停留时间。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (332, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerExitOverTime', '乘客离开自动检票机超时时间', '时间段内未离开通道，报警。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (330, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'MaxCreditCardNum', '最大刷卡人次(通行队列最大容量)', '自动检票机允许检了票而不通过的最大人数。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (331, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerEnterOverTime', '乘客通过自动检票机超时时间', '乘客使用票卡未通过自动检票机的最大停留时间。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (333, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ContinuousEntryDelayTime', '连续进入延迟时间', '两次连续进入自动检票机保持门开的延迟时间。单位：毫秒，默认350毫秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (332, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'PassengerExitOverTime', '乘客离开自动检票机超时时间', '时间段内未离开通道，报警。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (334, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ErrorAutoResetTime', '错误自动重置时间', '读到一张无效卡后，允许读下一张卡的间隔时间。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (333, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ContinuousEntryDelayTime', '连续进入延迟时间', '两次连续进入自动检票机保持门开的延迟时间。单位：毫秒，默认350毫秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (335, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'EnterReaderDelayTime', '闯入时读写器生效延迟时间', '单位：秒。发生闯入后TPU暂停工作的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (336, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'TwoWayAGDelayTime', '双向AG延迟时间', '当某一方向乘客通行后，继续等待该方向的乘客的时间(不处理另一方向的票卡)，单位：毫秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (334, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'ErrorAutoResetTime', '错误自动重置时间', '读到一张无效卡后，允许读下一张卡的间隔时间。单位：秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (337, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListLightHandle', '黑名单亮灯处理', '高位1字节表示闪烁：0x00不闪烁，当大于0x00时，表示闪烁次数，如0x03表示闪烁3次。低位1字节表示灯：每个bit代表一盏灯，灯亮时bit为1，否则为0', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (335, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'EnterReaderDelayTime', '闯入时读写器生效延迟时间', '单位：秒。发生闯入后TPU暂停工作的时间。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (338, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListVoiceHandle', '黑名单声音处理', '高位1字节表示声音次数；低位1字节表示声音长短和音量：高4bit表示声音长短:0长音，1短音。低4 bit表示音量。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (336, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'PassControlData_t', 'AGM通行控制参数', 'TwoWayAGDelayTime', '双向AG延迟时间', '当某一方向乘客通行后，继续等待该方向的乘客的时间(不处理另一方向的票卡)，单位：毫秒。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (339, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardLightHandle', '坏卡亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (337, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListLightHandle', '黑名单亮灯处理', '高位1字节表示闪烁：0x00不闪烁，当大于0x00时，表示闪烁次数，如0x03表示闪烁3次。低位1字节表示灯：每个bit代表一盏灯，灯亮时bit为1，否则为0', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (340, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardVoiceHandle', '坏卡声音处理', '同“黑名单声音处理“', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (338, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BlackListVoiceHandle', '黑名单声音处理', '高位1字节表示声音次数；低位1字节表示声音长短和音量：高4bit表示声音长短:0长音，1短音。低4 bit表示音量。', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (341, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingLightHandle', '非法闯入闯出亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (339, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardLightHandle', '坏卡亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (406, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (340, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'BadCardVoiceHandle', '坏卡声音处理', '同“黑名单声音处理“', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (341, 4053, 'EODDataAGMConfig_t', 'AGM运营参数', 'AlarmLampData_t', 'AGM警告灯参数', 'IllegaIntrudingLightHandle', '非法闯入闯出亮灯处理', '同“黑名单亮灯处理”', 1, '2018-09-14');
INSERT INTO `dic_eod_module` VALUES (406, 4064, 'EODDataBOMSoftware_t', 'BOM设备软件', 'BOMSoftware_t', 'BOM设备软件参数', 'SoftwareName', '设备软件', 'BOM主程序、BOM配置文件、BOM读卡器程序等', 1, '2018-09-14');

-- ----------------------------
-- Table structure for dic_keepdata_table
-- ----------------------------
DROP TABLE IF EXISTS `dic_keepdata_table`;
CREATE TABLE `dic_keepdata_table`  (
  `TABLE_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_keepdata_table
-- ----------------------------
INSERT INTO `dic_keepdata_table` VALUES ('T_CONTROL_COMMAND');
INSERT INTO `dic_keepdata_table` VALUES ('T_CONTROL_COMMAND');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_AR_FILE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_AR_FILE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_BLOCK_REASON');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_BLOCK_REASON');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_CARD_ISSUER');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_CARD_ISSUER');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_DATE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_DATE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_DEGRADE_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_DEGRADE_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_ISSUE_AREA');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_ISSUE_AREA');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MESSAGE_CONFIRM');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MESSAGE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MESSAGE_CONFIRM');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MESSAGE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MODE_CODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_MODE_CODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATION_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATION_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATION_UNIT');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATION_UNIT');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATOR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATOR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PASSENGER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PASSENGER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PAYMENT_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PAYMENT_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PSGR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PSGR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REAL_CARD_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REAL_CARD_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REJECT_CODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REJECT_CODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_STATION_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_BASE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_STATION_MODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_DETAIL_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_BASE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_RANGE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_VALIDITY');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_DETAIL_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_RANGE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TRANS_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TRANS_STATUS');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TICKET_VALIDITY');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TRANS_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_EVENT');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_TRANS_STATUS');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_STATUS');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_EVENT');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_STATUS');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_MODULE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_DEVICE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_MODULE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_PSGR_FLOW_5MINS');
INSERT INTO `dic_keepdata_table` VALUES ('T_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_ROLE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_SYSTEM_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_PSGR_FLOW_5MINS');
INSERT INTO `dic_keepdata_table` VALUES ('T_USER');
INSERT INTO `dic_keepdata_table` VALUES ('T_ROLE');
INSERT INTO `dic_keepdata_table` VALUES ('T_ROLE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_AUTHCODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_SYSTEM_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_AUTHCODE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_EOD_MODULE');
INSERT INTO `dic_keepdata_table` VALUES ('T_USER');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATOR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PART_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_ROLE');
INSERT INTO `dic_keepdata_table` VALUES ('T_AUTHCODE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PURCHASER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_AUTHCODE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_EOD_MODULE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REJECT_TICKET_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_WORKORDER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_OPERATOR_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_WAREHOUSE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PART_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_PURCHASER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_BKL_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_MODE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_REJECT_TICKET_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_USER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_WORKORDER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_D_WAREHOUSE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_LINE_INFO');
INSERT INTO `dic_keepdata_table` VALUES ('T_PSGR_FLOW_TIME_INTERVAL');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_BKL_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_MODE_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_SC_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_EOD_USER_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_REL_ROLE_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_LINE_INFO');
INSERT INTO `dic_keepdata_table` VALUES ('T_REL_USER_ROLE');
INSERT INTO `dic_keepdata_table` VALUES ('T_PSGR_FLOW_TIME_INTERVAL');
INSERT INTO `dic_keepdata_table` VALUES ('T_STATION_INFO');
INSERT INTO `dic_keepdata_table` VALUES ('T_SC_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_SYSTEM_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_REL_ROLE_MENU');
INSERT INTO `dic_keepdata_table` VALUES ('T_REL_USER_ROLE');
INSERT INTO `dic_keepdata_table` VALUES ('T_TICKETTYPE_TRANS');
INSERT INTO `dic_keepdata_table` VALUES ('T_STATION_INFO');
INSERT INTO `dic_keepdata_table` VALUES ('T_SYSTEM_TYPE');
INSERT INTO `dic_keepdata_table` VALUES ('T_TICKETTYPE_TRANS');

-- ----------------------------
-- Table structure for dic_mode_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_mode_code`;
CREATE TABLE `dic_mode_code`  (
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_USE` int(11) NULL DEFAULT 1
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_mode_code
-- ----------------------------
INSERT INTO `dic_mode_code` VALUES ('000000000000000B', '0', '正常服务模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000000B', '0', '正常服务模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000001B', '1', '列车故障模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000001B', '1', '列车故障模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000010B', '2', '进出站次序免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000010B', '2', '进出站次序免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000100B', '4', '乘车免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000000100B', '4', '乘车免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000001000B', '8', '车票日期免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000001000B', '8', '车票日期免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000010000B', '16', '车费免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000010000B', '16', '车费免检模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000100000B', '32', '紧急模式', 1);
INSERT INTO `dic_mode_code` VALUES ('000000000100000B', '32', '紧急模式', 1);

-- ----------------------------
-- Table structure for dic_operator_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_operator_type`;
CREATE TABLE `dic_operator_type`  (
  `OPERATOR_TYPE` int(11) NOT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_operator_type
-- ----------------------------
INSERT INTO `dic_operator_type` VALUES (1, 0, '站务员', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (1, 0, '站务员', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (2, 1, '督导员（包含值班员和值班班长）', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (2, 1, '督导员（包含值班员和值班班长）', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (3, 2, '系统维修人员', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (3, 2, '系统维修人员', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (4, 3, '稽查人员', 1, '2019-07-01');
INSERT INTO `dic_operator_type` VALUES (4, 3, '稽查人员', 1, '2019-07-01');

-- ----------------------------
-- Table structure for dic_part_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_part_type`;
CREATE TABLE `dic_part_type`  (
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_part_type
-- ----------------------------
INSERT INTO `dic_part_type` VALUES ('NP', '网络打印机', NULL, 1, '网络打印机');
INSERT INTO `dic_part_type` VALUES ('KB', '键盘', NULL, 1, '键盘');

-- ----------------------------
-- Table structure for dic_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_payment_type`;
CREATE TABLE `dic_payment_type`  (
  `ID` int(11) NOT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_payment_type
-- ----------------------------
INSERT INTO `dic_payment_type` VALUES (1, 0, '现金支付', 1, '2019-06-27');
INSERT INTO `dic_payment_type` VALUES (1, 0, '现金支付', 1, '2019-06-27');
INSERT INTO `dic_payment_type` VALUES (2, 1, '储值卡支付', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (2, 1, '储值卡支付', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (3, 2, '银行卡支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (3, 2, '银行卡支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (4, 3, '二维码支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (4, 3, '二维码支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (5, 4, '微信支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (5, 4, '微信支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (6, 5, '支付宝支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (6, 5, '支付宝支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (7, 6, '网银支付（预留）', 1, '2019-06-25');
INSERT INTO `dic_payment_type` VALUES (7, 6, '网银支付（预留）', 1, '2019-06-25');

-- ----------------------------
-- Table structure for dic_psgr_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_psgr_type`;
CREATE TABLE `dic_psgr_type`  (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TABLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_psgr_type
-- ----------------------------
INSERT INTO `dic_psgr_type` VALUES (1, '单程票进出站', 'T_TRANS_AGM_SJT_EX');
INSERT INTO `dic_psgr_type` VALUES (2, '特种票进出站', 'T_TRANS_AGM_SPT_EX');
INSERT INTO `dic_psgr_type` VALUES (3, '员工票进出站', 'T_TRANS_AGM_STAFFTICKET_EX');
INSERT INTO `dic_psgr_type` VALUES (4, '储值卡进出站', 'T_TRANS_AGM_SVC_EX');
INSERT INTO `dic_psgr_type` VALUES (5, '一卡通进出站', 'T_TRANS_AGM_YKT_EX');

-- ----------------------------
-- Table structure for dic_purchaser_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_purchaser_type`;
CREATE TABLE `dic_purchaser_type`  (
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_purchaser_type
-- ----------------------------

-- ----------------------------
-- Table structure for dic_reject_code
-- ----------------------------
DROP TABLE IF EXISTS `dic_reject_code`;
CREATE TABLE `dic_reject_code`  (
  `ID` int(11) NOT NULL,
  `CODE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_reject_code
-- ----------------------------
INSERT INTO `dic_reject_code` VALUES (1, '0', '无错误', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (1, '0', '无错误', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (2, '1', '无效车票，包括车票不可读、校验码错误', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (2, '1', '无效车票，包括车票不可读、校验码错误', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (3, '2', '车票尚未出售（已初始化、但尚未出售）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (3, '2', '车票尚未出售（已初始化、但尚未出售）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (4, '3', '过期车票（逻辑有效期过期）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (5, '4', '车票报废（物理有效期过期）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (4, '3', '过期车票（逻辑有效期过期）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (6, '5', '卡内余额不足', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (5, '4', '车票报废（物理有效期过期）', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (7, '6', '黑名单车票', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (6, '5', '卡内余额不足', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (7, '6', '黑名单车票', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (8, '109', '未刷进', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (8, '109', '未刷进', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (9, '110', '未刷出', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (10, '111', '未刷进(已调整)', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (9, '110', '未刷出', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (11, '112', '未刷出(已调整)', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (10, '111', '未刷进(已调整)', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (11, '112', '未刷出(已调整)', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (12, '162', '20分钟后重复进站', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (13, '201', '超时', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (12, '162', '20分钟后重复进站', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (14, '202', '超程', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (13, '201', '超时', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (15, '203', '超时又超程', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (14, '202', '超程', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (16, '210', '此票种暂停使用', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (15, '203', '超时又超程', 1, '2019-07-04');
INSERT INTO `dic_reject_code` VALUES (16, '210', '此票种暂停使用', 1, '2019-07-04');

-- ----------------------------
-- Table structure for dic_reject_ticket_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_reject_ticket_type`;
CREATE TABLE `dic_reject_ticket_type`  (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TABLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_reject_ticket_type
-- ----------------------------

-- ----------------------------
-- Table structure for dic_ticket_base_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ticket_base_type`;
CREATE TABLE `dic_ticket_base_type`  (
  `ID` int(11) NOT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ticket_base_type
-- ----------------------------
INSERT INTO `dic_ticket_base_type` VALUES (1, 1, '单程票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (1, 1, '单程票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (2, 2, '地铁储值票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (2, 2, '地铁储值票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (3, 3, '地铁乘次票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (3, 3, '地铁乘次票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (4, 4, '员工票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (5, 5, '榕城通', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (4, 4, '员工票', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (6, 6, '省通卡', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (5, 5, '榕城通', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (6, 6, '省通卡', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (7, 7, '市民卡', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (8, 8, '二维码', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (7, 7, '市民卡', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (9, 9, '虚拟卡', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (8, 8, '二维码', 1, '2018-08-26');
INSERT INTO `dic_ticket_base_type` VALUES (9, 9, '虚拟卡', 1, '2018-08-26');

-- ----------------------------
-- Table structure for dic_ticket_detail_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_ticket_detail_type`;
CREATE TABLE `dic_ticket_detail_type`  (
  `ID` int(11) NOT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_CODE` int(11) NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_ticket_detail_type
-- ----------------------------

-- ----------------------------
-- Table structure for dic_trans_status
-- ----------------------------
DROP TABLE IF EXISTS `dic_trans_status`;
CREATE TABLE `dic_trans_status`  (
  `ID` int(11) NOT NULL,
  `CODE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_trans_status
-- ----------------------------

-- ----------------------------
-- Table structure for dic_trans_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_trans_type`;
CREATE TABLE `dic_trans_type`  (
  `TRANS_TYPE_ID` int(11) NOT NULL,
  `DEVICE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TICKET_TRANS_TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANS_TYPE_NO` int(11) NULL DEFAULT NULL,
  `LOGIC_DELETE` int(11) NULL DEFAULT 1,
  `CREATE_TIME` date NULL DEFAULT NULL,
  `VALUE_FLAG` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_trans_type
-- ----------------------------
INSERT INTO `dic_trans_type` VALUES (1, 'AGM', '储值卡扣款出站(AGM)', 1, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (3, 'AGM', '银行卡扣款出站(AGM)', 4, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (4, 'AGM', '一卡通扣款出站(AGM)', 8451, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (5, 'TVM', '自动售票机车票发行(单程票)', 190, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (6, 'TVM', '自动售票机车票发行(二维码)', 6, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (7, 'BOM', '加值储值卡', 2, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (8, 'BOM', '退储值卡', 5, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (9, 'BOM', '发售储值卡', 7, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (10, 'BOM', '储值卡补票', 8, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (11, 'BOM', '发售单程票', 190, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (12, 'BOM', '退单程票', 191, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (13, 'BOM', '单程票补票', 192, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (14, 'BOM', '发售特种票', 193, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (15, 'BOM', '退特种票', 194, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (16, 'BOM', '一卡通充值取消交易明细', 5263, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (17, 'BOM', '一卡通发售充值交易明细', 5163, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (18, 'BOM', '一卡通更新交易明细', 8455, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (21, 'AGM', '单程票进站', 151, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (20, 'AGM', '员工进出站交易', 150, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (19, 'AGM', '储值卡进站', 20, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (22, 'AGM', '单程票出站', 152, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (23, 'AGM', '特种票进站', 153, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (24, 'AGM', '特种票出站', 154, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (25, 'AGM', '计次票进站', 140, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (26, 'AGM', '计次票出站', 141, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (28, 'AGM', '二维码进站', 143, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (29, 'AGM', '二维码出站', 144, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (30, 'AGM', '银行卡进站', 145, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (31, 'AGM', '员工票进站', 146, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (32, 'AGM', '员工票出站', 147, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (33, 'AGM', '一卡通进站', 8251, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (34, 'TVM', '自动售票机车票侦测无法使用(单程票编码错误)', 172, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (35, 'AGM', '操作人员登入事件 ', 155, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (36, 'AGM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (37, 'TVM', '收集现金：抽出硬币盒', 175, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (38, 'TVM', '收集现金：插入硬币盒', 176, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (39, 'TVM', '收集现金：抽出纸钞盒', 177, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (40, 'TVM', '收集现金：插入纸钞盒', 178, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (41, 'TVM', '收集现金：抽出循环找零器', 179, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (42, 'TVM', '收集现金：插入循环找零器 ', 180, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (43, 'TVM', '抽出固定找零器补充箱', 181, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (44, 'TVM', '插入固定找零器补充箱 ', 182, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (45, 'TVM', '自动售票机硬币缷出 ', 186, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (46, 'TVM', '操作人员登入事件', 155, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (47, 'TVM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (48, 'TVM', '取出纸钞找零补充箱', 170, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (49, 'TVM', '置入纸钞找零补充箱', 169, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (50, 'TVM', '置入自动售票机票箱', 183, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (51, 'TVM', '取出自动售票机票箱', 184, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (52, 'BOM', '操作人员登入事件', 155, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (53, 'BOM', '操作人员注销事件 ', 156, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (54, 'AGM', '储值卡锁卡事件', 34, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (55, 'AGM', '员工票及单程票锁卡事件', 159, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (56, 'BOM', '锁卡事件', 34, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (57, 'BOM', '锁票事件', 199, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (61, 'BOM', '单程票或特种票锁票', 189, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (62, 'BOM', '特种票补票(计次卡更新)', 195, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (63, 'BOM', '储值卡锁票', 9, 1, '2018-08-23', 1);
INSERT INTO `dic_trans_type` VALUES (67, 'TVM', '取出废钞箱', 163, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (68, 'TVM', '置入废钞箱', 165, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (69, 'TVM', '取出废票箱', 166, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (70, 'TVM', '置入废票箱', 167, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (71, 'AGM', '二维码退票', 149, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (72, 'AGM', '人脸进站', 165, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (73, 'AGM', '人脸出站', 166, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (65, 'AGM', '插入票箱', 162, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (66, 'AGM', '拔出票箱', 163, 1, '2018-08-23', 0);
INSERT INTO `dic_trans_type` VALUES (64, 'TVM', '一卡通发售充值', 5163, 1, '2018-08-23', 1);

-- ----------------------------
-- Table structure for dic_warehouse_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_warehouse_type`;
CREATE TABLE `dic_warehouse_type`  (
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_warehouse_type
-- ----------------------------
INSERT INTO `dic_warehouse_type` VALUES ('WH01', '新品仓库', 1, '存放采购的新设备、新部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH01', '新品仓库', 1, '存放采购的新设备、新部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH02', '备品仓库', 1, '存放可以正常使用的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH02', '备品仓库', 1, '存放可以正常使用的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH03', '故障品仓库', 1, '存放设备维护人员确认有故障的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH03', '故障品仓库', 1, '存放设备维护人员确认有故障的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH04', '废品仓库', 1, '存放已经报废的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH04', '废品仓库', 1, '存放已经报废的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH05', '返厂仓库', 1, '存放等待返厂维修的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH05', '返厂仓库', 1, '存放等待返厂维修的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH06', '维修仓库', 1, '存放等待维修人员维修的部件');
INSERT INTO `dic_warehouse_type` VALUES ('WH06', '维修仓库', 1, '存放等待维修人员维修的部件');

-- ----------------------------
-- Table structure for dic_workorder_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_workorder_type`;
CREATE TABLE `dic_workorder_type`  (
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT 1,
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dic_workorder_type
-- ----------------------------
INSERT INTO `dic_workorder_type` VALUES ('WO06', '设备采购工单', 1, '设备采购工单');
INSERT INTO `dic_workorder_type` VALUES ('WO06', '设备采购工单', 1, '设备采购工单');
INSERT INTO `dic_workorder_type` VALUES ('WO07', '故障申报工单', 1, '故障申报工单');
INSERT INTO `dic_workorder_type` VALUES ('WO07', '故障申报工单', 1, '故障申报工单');
INSERT INTO `dic_workorder_type` VALUES ('WO01', '设备更换工单', 1, '设备更换工单');
INSERT INTO `dic_workorder_type` VALUES ('WO01', '设备更换工单', 1, '设备更换工单');
INSERT INTO `dic_workorder_type` VALUES ('WO02', '设备维修工单', 1, '设备维修工单');
INSERT INTO `dic_workorder_type` VALUES ('WO02', '设备维修工单', 1, '设备维修工单');
INSERT INTO `dic_workorder_type` VALUES ('WO03', '设备报废工单', 1, '设备报废工单');
INSERT INTO `dic_workorder_type` VALUES ('WO03', '设备报废工单', 1, '设备报废工单');
INSERT INTO `dic_workorder_type` VALUES ('WO04', '设备返厂工单', 1, '设备返厂维修工单');
INSERT INTO `dic_workorder_type` VALUES ('WO04', '设备返厂工单', 1, '设备返厂维修工单');
INSERT INTO `dic_workorder_type` VALUES ('WO05', '日常维护工单', 1, '日常维护工单');
INSERT INTO `dic_workorder_type` VALUES ('WO05', '日常维护工单', 1, '日常维护工单');

SET FOREIGN_KEY_CHECKS = 1;
