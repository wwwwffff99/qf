/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80031
Source Host           : localhost:3306
Source Database       : db_competitionapply

Target Server Type    : MYSQL
Target Server Version : 80031
File Encoding         : 65001

Date: 2023-06-06 19:56:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_advice
-- ----------------------------
DROP TABLE IF EXISTS `t_advice`;
CREATE TABLE `t_advice` (
  `advice_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `advice_type` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `advice_state` int DEFAULT NULL,
  `advice_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `advice_date` bigint DEFAULT NULL,
  `dispose_time` bigint DEFAULT NULL,
  PRIMARY KEY (`advice_id`) USING BTREE,
  KEY `FK_T_ADVISE_REFERENCE_T_USER` (`user_id`) USING BTREE,
  CONSTRAINT `FK_T_ADVISE_REFERENCE_T_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_advice
-- ----------------------------
INSERT INTO `t_advice` VALUES ('05c0b9b7-8898-479c-acbc-beee3196c044', '5', '建议', '0', '这是一条反馈消息', '1587308684428', null);
INSERT INTO `t_advice` VALUES ('137c8490-0aef-41cf-9bda-c545dfc805bb', '4', '建议', '0', '界面不够美观，可以适调整', '1587308519468', null);
INSERT INTO `t_advice` VALUES ('3415d919-48ae-4d55-ab71-f5f0f5873c05', '1', '投诉', '1', 'test', '1583223626376', '1583296206198');
INSERT INTO `t_advice` VALUES ('48aae1e3-3367-44a3-b65e-0c7a00597513', '1', '建议', '1', '可以适当的优化界面', '1585364014719', '1588843484009');
INSERT INTO `t_advice` VALUES ('6cf72681-0103-413a-977d-83804c7f0f6c', '7', '建议', '1', '这是一条反馈信息', '1587309221238', '1590327849748');
INSERT INTO `t_advice` VALUES ('76c77d07-e0b7-48a1-a938-21d0e9a89772', '7', '建议', '1', '界面可以加个背景图', '1587309197731', '1685974726336');
INSERT INTO `t_advice` VALUES ('9fe63efe-886a-4a53-8ad0-aa60d26a779b', '2', '建议', '1', '李四的建议', '1587359243459', '1587359654667');
INSERT INTO `t_advice` VALUES ('a744c548-3c3c-4755-8ab0-c4b294457597', '1', '建议', '1', 'test', '1583223544273', '1583296217273');
INSERT INTO `t_advice` VALUES ('ab2d535c-6c33-4337-88ad-101b74cb9f99', '1', '投诉', '0', '系统卡顿严重', '1585363988049', null);
INSERT INTO `t_advice` VALUES ('b135f0de-7cbf-4c50-ae56-d135c917bec8', '5', '投诉', '0', '无聊发条反馈', '1587308657465', null);
INSERT INTO `t_advice` VALUES ('ba539aef-282b-4a8f-b9c4-f967933ca5ed', '1', '投诉', '1', '系统反应太慢', '1583220537033', '1583303380324');
INSERT INTO `t_advice` VALUES ('cd81b494-8399-4f9e-9a0d-1f57f7b85d83', '6', '投诉', '0', '系统反应太慢', '1587308812166', null);
INSERT INTO `t_advice` VALUES ('d6309359-1e3d-4f54-b05c-68ed82f99939', '1', '投诉', '0', '投诉未处理', '1585364153661', null);
INSERT INTO `t_advice` VALUES ('d90135ed-bbc7-4bca-a64c-e161e60d2d12', '5', '投诉', '0', '有人比赛作弊，希望加强管理', '1587308633524', null);
INSERT INTO `t_advice` VALUES ('e944bc89-7be0-4071-a19c-fff51a439778', '1', '投诉', '1', '666', '1583220651978', '1583296229035');
INSERT INTO `t_advice` VALUES ('f3590d50-fc18-4ef8-a00d-8ef715edf5fc', '4', '建议', '1', '用户少，可以适当宣传', '1587308546697', '1666946619321');
INSERT INTO `t_advice` VALUES ('f3a4e994-3eb4-4a9c-99e0-6f0205ea050f', '1', '投诉', '1', '由用户作弊', '1583220710451', '1585363292979');
INSERT INTO `t_advice` VALUES ('fa6b497b-cfd7-42bb-99c2-5f5932a363a7', '6', '建议', '1', '组队功能希望可以看到队长联系方式', '1587308846607', '1686051278996');

-- ----------------------------
-- Table structure for t_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_apply`;
CREATE TABLE `t_apply` (
  `apply_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `apply_time` bigint DEFAULT NULL,
  `apply_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `apply_state` int DEFAULT NULL,
  `team_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `apply_dispose_time` bigint DEFAULT NULL,
  PRIMARY KEY (`apply_id`) USING BTREE,
  KEY `FK_T_APPLY_REFERENCE_T_TEAM` (`team_id`) USING BTREE,
  KEY `FK_T_APPLY_REFERENCE_T_USER` (`user_id`) USING BTREE,
  CONSTRAINT `FK_T_APPLY_REFERENCE_T_TEAM` FOREIGN KEY (`team_id`) REFERENCES `t_team` (`team_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_APPLY_REFERENCE_T_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_apply
-- ----------------------------
INSERT INTO `t_apply` VALUES ('008714b2-9e96-4de3-9e0e-70ed9b7d1e39', '1587306605813', '张四申请', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '8', null);
INSERT INTO `t_apply` VALUES ('01328f30-7ac3-430b-900a-b8ede7c33405', '1587306618523', '张四申请', '1', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '8', '1587308122252');
INSERT INTO `t_apply` VALUES ('0464c1de-ab95-4da3-ad80-152f854204e9', '1587306517001', '田七想加入', '1', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2', '6', '1589001288703');
INSERT INTO `t_apply` VALUES ('0a7cd6d2-9aaf-4f56-a55d-a0a1b03724ee', '1587306515470', '田七想加入', '1', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '6', '1587308093504');
INSERT INTO `t_apply` VALUES ('0d4cb54c-ccbc-4865-bb49-5e5a043ce804', '1587306718924', '赵一的加入申请', '0', '99738531-a3c7-4378-9feb-7a676a4c69af', '10', null);
INSERT INTO `t_apply` VALUES ('0d7ae859-2956-49af-9fa6-f6c4ccb7bc99', '1587306665990', '陈六想加入', '1', '99738531-a3c7-4378-9feb-7a676a4c69af', '9', '1589001296810');
INSERT INTO `t_apply` VALUES ('1178214e-5412-4967-bda6-2f03313c54e3', '1587306556424', '王八加入申请', '0', '99738531-a3c7-4378-9feb-7a676a4c69af', '7', null);
INSERT INTO `t_apply` VALUES ('1280224c-ce0e-4019-8e64-ff89a4550ca5', '1587306610549', '张四申请', '0', '72fd7591-87e5-411f-8b09-08bb34a26bac', '8', null);
INSERT INTO `t_apply` VALUES ('1944429c-1061-4fe3-afef-f36969b66281', '1666949443233', '11', '0', '1bfc9d8a-7485-4319-85ac-ec074f6366fd', '2', null);
INSERT INTO `t_apply` VALUES ('2055527e-ad5c-4700-af10-9d52ca9a3687', '1587306722238', '赵一的加入申请', '0', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2', '10', null);
INSERT INTO `t_apply` VALUES ('2202637d-cc81-4c9f-ae6b-d2a72cc02627', '1587306616479', '张四申请', '0', '99738531-a3c7-4378-9feb-7a676a4c69af', '8', null);
INSERT INTO `t_apply` VALUES ('2e307bad-0149-4bef-83af-80016c6e2e80', '1587306607488', '张四申请', '0', '2d69c453-e7e4-444d-b806-57147cbc6e34', '8', null);
INSERT INTO `t_apply` VALUES ('30873750-1d4a-45dc-b58d-e95470c1b286', '1587307664336', '申请加入张四英语知识队', '2', 'd57ea0cf-3079-4dbe-a8c5-3e41f9c4774f', '1', '1587307680786');
INSERT INTO `t_apply` VALUES ('3a66ace8-6e2e-4b8f-87fb-54cb0e7f047d', '1587306559825', '王八加入申请', '0', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2', '7', null);
INSERT INTO `t_apply` VALUES ('492178ba-08d9-4c0a-abee-48449833b79d', '1587306322854', '王五申请加入', '2', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '4', '1587308280147');
INSERT INTO `t_apply` VALUES ('5385b2a7-ef87-40b2-996c-def7446a4fc7', '1666950081465', 'ceshi', '1', 'f74e4d91-190b-40ae-a8d9-dce00f2a3d95', '7', '1666950194775');
INSERT INTO `t_apply` VALUES ('5864ca90-b9b6-4a69-b392-50dfbb755d99', '1587306508331', '田七想加入', '0', '72fd7591-87e5-411f-8b09-08bb34a26bac', '6', null);
INSERT INTO `t_apply` VALUES ('5b30ac95-9eb7-45b7-bec3-d8b19800b676', '1587306659849', '陈六想加入', '0', '72fd7591-87e5-411f-8b09-08bb34a26bac', '9', null);
INSERT INTO `t_apply` VALUES ('6453bee2-049b-450b-b6e5-804e03da8959', '1587306547942', '王八加入申请', '0', '2d69c453-e7e4-444d-b806-57147cbc6e34', '7', null);
INSERT INTO `t_apply` VALUES ('65129494-81c3-42a7-a11e-ec9bbc72633a', '1590328068590', '111', '1', '1bfc9d8a-7485-4319-85ac-ec074f6366fd', '1', '1590328083447');
INSERT INTO `t_apply` VALUES ('654fb40a-71a0-4cff-ac29-f8b20ee5faa0', '1587306623142', '张四申请', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '8', '1587308285097');
INSERT INTO `t_apply` VALUES ('67ab061a-d3ca-4735-81cc-2691587d414c', '1587306155127', '李四申请加入张三口语队', '1', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '3', '1587308048535');
INSERT INTO `t_apply` VALUES ('6be0c442-a350-4353-b626-3f19489ff2b1', '1587306460856', '赵六申请加入', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '5', null);
INSERT INTO `t_apply` VALUES ('6fd4e298-8500-4617-85ca-c9c76fce0adf', '1587307751171', '申请加入', '1', 'b7996c26-bf12-409f-9347-d190f83f4c8d', '1', '1587307773220');
INSERT INTO `t_apply` VALUES ('70aa5f42-b71b-433e-b024-f6169a0fa59f', '1587306470097', '赵六申请加入', '1', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '5', '1587308041969');
INSERT INTO `t_apply` VALUES ('7f9b7df7-502e-4033-a3c4-543cdf22bafd', '1587306143769', '李四申请加入数学建模张三队', '2', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '3', '1587308286900');
INSERT INTO `t_apply` VALUES ('87490df2-4fce-46d4-9dd8-08072f1fd1b0', '1587306706345', '赵一的加入申请', '0', '2d69c453-e7e4-444d-b806-57147cbc6e34', '10', null);
INSERT INTO `t_apply` VALUES ('91d47c41-8df4-468b-bdf3-de9a0ae17e04', '1587306558156', '王八加入申请', '2', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '7', '1587308287569');
INSERT INTO `t_apply` VALUES ('9542ea1b-fa47-4fc0-9937-a61c9a493727', '1587306657030', '陈六想加入', '0', '2d69c453-e7e4-444d-b806-57147cbc6e34', '9', null);
INSERT INTO `t_apply` VALUES ('96c9e90a-07c4-42bc-8b32-a5337bb186a5', '1587306704589', '赵一的加入申请', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '10', null);
INSERT INTO `t_apply` VALUES ('a4a1f123-cfd3-4553-ab6e-094dd0c9ecda', '1686051351766', '123', '0', '1bfc9d8a-7485-4319-85ac-ec074f6366fd', '6', null);
INSERT INTO `t_apply` VALUES ('a5111d72-a42c-45e0-a7fd-cc775f0c601b', '1587306546492', '王八加入申请', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '7', null);
INSERT INTO `t_apply` VALUES ('b01b14e9-a089-4672-ba80-431cab976264', '1685972656509', '比赛', '1', '80166f82-f7af-4bda-b002-b746b59f915d', '10', '1685972739635');
INSERT INTO `t_apply` VALUES ('b3f972d4-eb1c-45a9-a23a-7e7b7c508cfa', '1587306505661', '田七想加入', '0', '2d69c453-e7e4-444d-b806-57147cbc6e34', '6', null);
INSERT INTO `t_apply` VALUES ('b577ac6c-9817-40a6-a789-81b281ea6053', '1587306504382', '田七想加入', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '6', null);
INSERT INTO `t_apply` VALUES ('bb75f2df-76f0-4ce8-896d-d39d1f3b05d0', '1587306671767', '陈六想加入', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '9', '1587308289231');
INSERT INTO `t_apply` VALUES ('bbd48934-dd8b-4cc6-8ff9-4e2723eaf53d', '1587306620388', '张四申请', '0', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2', '8', null);
INSERT INTO `t_apply` VALUES ('be22d578-0059-4ec6-b6c0-b914d74dff11', '1587306468475', '赵六申请加入', '2', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '5', '1587308289894');
INSERT INTO `t_apply` VALUES ('c24142db-fae7-4a67-be6b-bd0425f7276c', '1587306520348', '田七想加入', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '6', '1587308290169');
INSERT INTO `t_apply` VALUES ('ca2c2dc0-5c03-4c93-8194-b21008aa7af0', '1587306562699', '王八加入申请', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '7', '1587308290644');
INSERT INTO `t_apply` VALUES ('cfcbb302-4c11-485e-aa12-a8fb1b7d09f1', '1587306720664', '赵一的加入申请', '1', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '10', '1587308077922');
INSERT INTO `t_apply` VALUES ('dcfa28a8-ae73-4f7b-99c0-71d37c5f8b94', '1587306550772', '王八加入申请', '0', '72fd7591-87e5-411f-8b09-08bb34a26bac', '7', null);
INSERT INTO `t_apply` VALUES ('df638f5b-412f-4686-81c9-4477dba6b996', '1587307651848', '申请加入', '2', 'b4af2161-b5fe-4e33-b737-ed8761ea3c02', '1', '1587307681338');
INSERT INTO `t_apply` VALUES ('e03cf7f4-85a4-4949-bdb7-c1c94beacbf2', '1587306667419', '陈六想加入', '2', 'a179c7ce-0937-48f7-a815-faa2c4647cab', '9', '1587308291868');
INSERT INTO `t_apply` VALUES ('e03ea3ea-9112-4cfe-adce-2fa7c55472d6', '1587306724725', '赵一的加入申请', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '10', '1587308293442');
INSERT INTO `t_apply` VALUES ('e0d8de1f-d747-4d3f-aae2-ba2f935027e6', '1587306669034', '陈六想加入', '0', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2', '9', null);
INSERT INTO `t_apply` VALUES ('e7427caf-0afd-46dc-b66a-bc600dc7226c', '1587306655116', '陈六想加入', '0', '2c19fdd2-a93d-457b-9b0b-764f234af7bc', '9', null);
INSERT INTO `t_apply` VALUES ('eb4378b0-efb7-4f5b-aed3-36a236c2f2af', '1587306709973', '赵一的加入申请', '0', '72fd7591-87e5-411f-8b09-08bb34a26bac', '10', null);
INSERT INTO `t_apply` VALUES ('ffa7e5aa-1c05-4b24-9ed4-76c306b1f22b', '1587306325681', '王五申请加入', '2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '4', '1587308294382');

-- ----------------------------
-- Table structure for t_college
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college` (
  `college_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `university_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `college_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`college_id`) USING BTREE,
  KEY `FK_T_COLLEG_REFERENCE_T_UNIVER` (`university_id`) USING BTREE,
  CONSTRAINT `FK_T_COLLEG_REFERENCE_T_UNIVER` FOREIGN KEY (`university_id`) REFERENCES `t_university` (`university_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_college
-- ----------------------------
INSERT INTO `t_college` VALUES ('1', '1', '信息工程学院');
INSERT INTO `t_college` VALUES ('2', '1', '软件学院');
INSERT INTO `t_college` VALUES ('3', '1', '艺术设计学院');
INSERT INTO `t_college` VALUES ('4', '1', '土木建筑学院');
INSERT INTO `t_college` VALUES ('5', '1', '会计与审计学院');
INSERT INTO `t_college` VALUES ('6', '1', '管理学院');
INSERT INTO `t_college` VALUES ('7', '1', '机电与质量技术工程学院');
INSERT INTO `t_college` VALUES ('8', '1', '交通学院');
INSERT INTO `t_college` VALUES ('9', '2', '电子科技学院');

-- ----------------------------
-- Table structure for t_competition
-- ----------------------------
DROP TABLE IF EXISTS `t_competition`;
CREATE TABLE `t_competition` (
  `competition_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `college_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_name` varchar(96) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_state` int DEFAULT NULL,
  `competition_file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_time` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_stoptime` bigint DEFAULT NULL,
  `competition_level` int DEFAULT NULL,
  `competition_site` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `competition_people_sum` int DEFAULT NULL,
  PRIMARY KEY (`competition_id`) USING BTREE,
  KEY `FK_T_COMPET_REFERENCE_T_COLLEG` (`college_id`) USING BTREE,
  CONSTRAINT `FK_T_COMPET_REFERENCE_T_COLLEG` FOREIGN KEY (`college_id`) REFERENCES `t_college` (`college_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_competition
-- ----------------------------
INSERT INTO `t_competition` VALUES ('04211de2-0655-4f95-a91f-607ab32e42ec', null, '手工制作', '1', null, '123', '创新创业', '2023 年 6 月 9 日', null, '2', '1234', '4');
INSERT INTO `t_competition` VALUES ('35054ded-b5d5-4b5e-951f-563855042fd6', null, '王者荣耀大赛', '0', null, '王者荣耀大赛需5人组队参加', '电子竞技', '2022 年 5 月 30 日', null, '2', '南宁学院', '5');
INSERT INTO `t_competition` VALUES ('3de74891-562d-4e2c-a592-a79100ff604b', '1', '软件设计大赛', '1', null, 'c++程序设计、java程序设计', '科技竞赛', '2022 年 10 月 31 日', null, '1', '西安电子大学', '3');
INSERT INTO `t_competition` VALUES ('4d25bdc3-d6e5-4066-a34d-ddd526bcf27d', null, '英雄联盟大赛', '0', null, '英雄联盟大赛', '电子竞技', '2022 年 6 月 25 日', null, '2', '南宁学院', '5');
INSERT INTO `t_competition` VALUES ('6c66cd4e-e980-44e4-a36f-fdbfe7552647', null, '数学建模大赛', '0', null, '数学建模大赛主要内容，建模分析，分析文档编写', '数学竞赛', '2022 年 6 月 17 日', null, '4', '南宁学院', '3');
INSERT INTO `t_competition` VALUES ('975af2b6-34f8-448a-b343-f50c87ce2891', null, '软件设计大赛', '1', null, '软件设计大赛软件设计大赛软件设计大赛软件设计大赛软件设计大赛软件设计大赛软件设计大赛', '学科竞赛', '2023 年 5 月 11 日', null, '2', '西安大学', '1');
INSERT INTO `t_competition` VALUES ('b2005d28-60a1-4387-9e28-7057c1885c70', null, '英语口语大赛', '0', null, '英语口语大赛主要考验学生英语口语能力', '科技竞赛', '2022 年 6 月 3 日', null, '2', '敷文园A501', '1');
INSERT INTO `t_competition` VALUES ('f00c96b9-1528-47fe-97c0-505ce8452028', null, '英语知识竞赛', '0', null, '英语知识竞赛', '知识竞赛', '2022 年 6 月 26 日', null, '2', '南宁学院', '3');

-- ----------------------------
-- Table structure for t_competitiontype
-- ----------------------------
DROP TABLE IF EXISTS `t_competitiontype`;
CREATE TABLE `t_competitiontype` (
  `competition_type_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `competition_type_name` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`competition_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_competitiontype
-- ----------------------------
INSERT INTO `t_competitiontype` VALUES ('1', '创新创业');
INSERT INTO `t_competitiontype` VALUES ('2', '学科竞赛');
INSERT INTO `t_competitiontype` VALUES ('3', '知识竞赛');
INSERT INTO `t_competitiontype` VALUES ('4', '体育竞赛');
INSERT INTO `t_competitiontype` VALUES ('5', '电子竞技');
INSERT INTO `t_competitiontype` VALUES ('6', '数学竞赛');
INSERT INTO `t_competitiontype` VALUES ('7', '科技竞赛');

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `file_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `competition_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `notification_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE,
  KEY `FK_T_FILE_REFERENCE_T_COMPET` (`competition_id`) USING BTREE,
  KEY `FK_T_FILE_REFERENCE_T_NOTIFI` (`notification_id`) USING BTREE,
  CONSTRAINT `FK_T_FILE_REFERENCE_T_COMPET` FOREIGN KEY (`competition_id`) REFERENCES `t_competition` (`competition_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_FILE_REFERENCE_T_NOTIFI` FOREIGN KEY (`notification_id`) REFERENCES `t_notification` (`notification_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_file
-- ----------------------------
INSERT INTO `t_file` VALUES ('0d8b4943-7107-4a56-a038-fab418adbf3a', null, '732cb93d-f07f-40cb-be23-265388499e7a', '系统优化详情.docx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\732cb93d-f07f-40cb-be23-265388499e7a\\系统优化详情.docx');
INSERT INTO `t_file` VALUES ('172426a8-d11f-4df5-b647-77cad394f6b8', 'f00c96b9-1528-47fe-97c0-505ce8452028', null, '赛程通知.docx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\f00c96b9-1528-47fe-97c0-505ce8452028\\赛程通知.docx');
INSERT INTO `t_file` VALUES ('388c16bd-129f-4203-bf58-668314816aad', null, '1db06542-5b24-4028-8ab5-17ab639ba31c', '系统使用说明.docx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\cdb60d6e-2245-4c7f-ad83-cb0709981bf8\\系统使用说明.docx');
INSERT INTO `t_file` VALUES ('680cca23-ad42-4416-9aa1-6021b2b1eed5', null, 'ecab1296-ae54-4d64-8703-a8a03065cea7', '新建 Microsoft Word 文档.docx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\ecab1296-ae54-4d64-8703-a8a03065cea7\\新建 Microsoft Word 文档.docx');
INSERT INTO `t_file` VALUES ('6932ecc7-06bc-433c-8b14-9330641fabf0', '3de74891-562d-4e2c-a592-a79100ff604b', null, '计算机软件测试.docx', 'G:\\image3de74891-562d-4e2c-a592-a79100ff604b\\计算机软件测试.docx');
INSERT INTO `t_file` VALUES ('6d61280f-af1f-48d3-8d84-026204a224be', '975af2b6-34f8-448a-b343-f50c87ce2891', null, '辩论大赛获奖名单.xlsx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\975af2b6-34f8-448a-b343-f50c87ce2891\\辩论大赛获奖名单.xlsx');
INSERT INTO `t_file` VALUES ('93d4a0ca-d869-4cf0-ad46-fd661393bf09', null, 'dc158ec2-d9d8-4107-9681-feb01ad25c3b', '组队功能使用说明.docx', 'C:\\Users\\Administrator\\Desktop\\file\\notification\\dc158ec2-d9d8-4107-9681-feb01ad25c3b\\组队功能使用说明.docx');

-- ----------------------------
-- Table structure for t_notification
-- ----------------------------
DROP TABLE IF EXISTS `t_notification`;
CREATE TABLE `t_notification` (
  `notification_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `notification_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `notification_time` bigint DEFAULT NULL,
  `notification_title` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `notification_type` int DEFAULT NULL,
  `notification_state` int DEFAULT NULL,
  `notification_file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `notification_longtime` bigint DEFAULT NULL,
  `competition_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_notification
-- ----------------------------
INSERT INTO `t_notification` VALUES ('08875eac-80d2-4fdb-9aff-a4ee5c16b847', null, '1587297627592', '王者荣耀大赛报名通知', '0', '0', null, null, '35054ded-b5d5-4b5e-951f-563855042fd6');
INSERT INTO `t_notification` VALUES ('1db06542-5b24-4028-8ab5-17ab639ba31c', '系统已开放使用，现在可使用新版本的系统，如遇问题请到->个人->投诉建议填写反馈信息，若为系统问题核实后将给予奖励。', '1587304404838', '系统开放使用公告', '1', null, null, null, null);
INSERT INTO `t_notification` VALUES ('259a8de8-87d8-4eb9-a26a-a09fe2e3d2ef', null, '1685972380893', '123', '2', null, null, null, '3de74891-562d-4e2c-a592-a79100ff604b');
INSERT INTO `t_notification` VALUES ('5ef42dda-9912-4724-8c60-8a673023f3db', null, '1587306807115', '英雄联盟大赛报名', '0', '0', null, null, '4d25bdc3-d6e5-4066-a34d-ddd526bcf27d');
INSERT INTO `t_notification` VALUES ('732cb93d-f07f-40cb-be23-265388499e7a', '系统界面已于2022-04-19 22:04:11完成调整，界面调整并不影响用户使用，现在可使用新版本的系统，如遇问题请到->个人->投诉建议填写反馈信息，若为系统问题核实后将给予奖励。', '1587305051260', '系统更新说明', '1', null, null, null, null);
INSERT INTO `t_notification` VALUES ('76b9685b-0776-4c63-b342-b2b240fc7a2e', null, '1587307317325', '英语知识竞赛通知', '0', '0', null, null, 'f00c96b9-1528-47fe-97c0-505ce8452028');
INSERT INTO `t_notification` VALUES ('9b40c0cc-181e-4497-879f-51156511913f', null, '1587297306716', '数学建模大赛报名通知', '0', '0', null, null, '6c66cd4e-e980-44e4-a36f-fdbfe7552647');
INSERT INTO `t_notification` VALUES ('a09ebd24-0f76-44bd-9942-62f6574fdf9c', null, '1590039041924', '软件设计大赛报名通知', '0', '1', null, null, '975af2b6-34f8-448a-b343-f50c87ce2891');
INSERT INTO `t_notification` VALUES ('ad6f3526-daad-4e06-aacd-385b0a57f6c6', null, '1587296943963', '英语口语大赛报名通知', '0', '0', null, null, 'b2005d28-60a1-4387-9e28-7057c1885c70');
INSERT INTO `t_notification` VALUES ('d038d139-bb1f-4caf-89ff-8c5a2763ca0a', '系统上线使用出现部分问题，已于 2022年04月19日21点57分59秒 完成维护，可正常使用！如遇问题请到->个人->投诉建议填写反馈信息，若为系统问题核实后将给予奖励。', '1587304679178', '系统更新公告', '1', null, null, null, null);
INSERT INTO `t_notification` VALUES ('d36e0cea-88fe-4005-ac4b-7c1088e0d2fc', null, '1685973994207', '手工制作大赛通知', '0', '1', null, null, '04211de2-0655-4f95-a91f-607ab32e42ec');
INSERT INTO `t_notification` VALUES ('db0d68ce-298c-4b51-aa9e-04d1e43c2e29', null, '1685972224786', '软件大赛', '2', null, null, null, '3de74891-562d-4e2c-a592-a79100ff604b');
INSERT INTO `t_notification` VALUES ('dc158ec2-d9d8-4107-9681-feb01ad25c3b', '系统的组队功能已经全面开放，现在已可以进行组队，创建，解散，加入，招募等功能。可前往 我的比赛·队伍 查看，具体操作请下载操作文件进行阅读和查看，如遇问题请到->个人->投诉建议填写反馈信息，若为系统问题核实后将给予奖励。', '1587305262252', '组队功能开放', '1', null, null, null, null);

-- ----------------------------
-- Table structure for t_promise
-- ----------------------------
DROP TABLE IF EXISTS `t_promise`;
CREATE TABLE `t_promise` (
  `promise_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `promise_name` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`promise_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_promise
-- ----------------------------
INSERT INTO `t_promise` VALUES ('1', '查看');
INSERT INTO `t_promise` VALUES ('2', '修改');
INSERT INTO `t_promise` VALUES ('3', '发布通知');
INSERT INTO `t_promise` VALUES ('4', '报名');

-- ----------------------------
-- Table structure for t_promise_role
-- ----------------------------
DROP TABLE IF EXISTS `t_promise_role`;
CREATE TABLE `t_promise_role` (
  `role_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `promise_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`role_id`,`promise_id`) USING BTREE,
  KEY `FK_T_PROMIS_REFERENCE_T_PROMIS` (`promise_id`) USING BTREE,
  CONSTRAINT `FK_T_PROMIS_REFERENCE_T_PROMIS` FOREIGN KEY (`promise_id`) REFERENCES `t_promise` (`promise_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_PROMIS_REFERENCE_T_ROLE` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_promise_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `role_name` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员');
INSERT INTO `t_role` VALUES ('2', '学生');

-- ----------------------------
-- Table structure for t_team
-- ----------------------------
DROP TABLE IF EXISTS `t_team`;
CREATE TABLE `t_team` (
  `team_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `captain_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `team_name` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `team_state` int DEFAULT NULL,
  `team_headcount` int DEFAULT NULL,
  `competition_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `team_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `apply_time` bigint DEFAULT NULL,
  PRIMARY KEY (`team_id`) USING BTREE,
  KEY `FK_T_TEAM_REFERENCE_T_USER` (`captain_id`) USING BTREE,
  KEY `FK_T_TEAM_REFERENCE_T_COMPETITION` (`competition_id`) USING BTREE,
  CONSTRAINT `FK_T_TEAM_REFERENCE_T_COMPETITION` FOREIGN KEY (`competition_id`) REFERENCES `t_competition` (`competition_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_TEAM_REFERENCE_T_USER` FOREIGN KEY (`captain_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_team
-- ----------------------------
INSERT INTO `t_team` VALUES ('17527ebf-6d41-44ed-869e-bd5650c08efc', '6', '田七英雄队', '1', '1', '4d25bdc3-d6e5-4066-a34d-ddd526bcf27d', '田七英雄队等待加入', null);
INSERT INTO `t_team` VALUES ('1bfc9d8a-7485-4319-85ac-ec074f6366fd', '3', 'test', '1', '2', '35054ded-b5d5-4b5e-951f-563855042fd6', 'test', null);
INSERT INTO `t_team` VALUES ('2c19fdd2-a93d-457b-9b0b-764f234af7bc', '4', '王五王者队', '1', '1', '35054ded-b5d5-4b5e-951f-563855042fd6', '王五王者队', null);
INSERT INTO `t_team` VALUES ('2d69c453-e7e4-444d-b806-57147cbc6e34', '5', '口语赵六队', '1', '1', 'b2005d28-60a1-4387-9e28-7057c1885c70', '口语赵六队', null);
INSERT INTO `t_team` VALUES ('37731a17-b10f-41b4-8600-ad5acf5205df', '4', '王五口语队', '1', '1', 'b2005d28-60a1-4387-9e28-7057c1885c70', '王五口语队', null);
INSERT INTO `t_team` VALUES ('3c47d016-bb85-4172-8801-ba82e0644ad6', '6', '制作无敌', '1', '1', '04211de2-0655-4f95-a91f-607ab32e42ec', '一起做手工', null);
INSERT INTO `t_team` VALUES ('72fd7591-87e5-411f-8b09-08bb34a26bac', '4', '王五数模队', '1', '1', '6c66cd4e-e980-44e4-a36f-fdbfe7552647', '王五数模队招人', null);
INSERT INTO `t_team` VALUES ('80166f82-f7af-4bda-b002-b746b59f915d', '2', '计算机科学与技术', '1', '2', '3de74891-562d-4e2c-a592-a79100ff604b', '计算机科学与技术', null);
INSERT INTO `t_team` VALUES ('99738531-a3c7-4378-9feb-7a676a4c69af', '5', '数模赵六队', '1', '2', '6c66cd4e-e980-44e4-a36f-fdbfe7552647', '数模赵六队', null);
INSERT INTO `t_team` VALUES ('9f71a5d0-e1d3-4027-b542-6b5c2c75eca2', '10', '赵一英雄联盟队', '1', '1', '4d25bdc3-d6e5-4066-a34d-ddd526bcf27d', '赵一英雄联盟队', null);
INSERT INTO `t_team` VALUES ('a179c7ce-0937-48f7-a815-faa2c4647cab', '2', '数学建模张三队', '2', '3', '6c66cd4e-e980-44e4-a36f-fdbfe7552647', '寻几个数学学霸共同参赛', null);
INSERT INTO `t_team` VALUES ('a9659f7f-81a2-4239-b4e1-a668408f8cd2', '5', '王者赵六队', '1', '2', '35054ded-b5d5-4b5e-951f-563855042fd6', '王者赵六队', null);
INSERT INTO `t_team` VALUES ('b4af2161-b5fe-4e33-b737-ed8761ea3c02', '8', '张四联盟', '1', '1', '4d25bdc3-d6e5-4066-a34d-ddd526bcf27d', '张四联盟招人', null);
INSERT INTO `t_team` VALUES ('b7996c26-bf12-409f-9347-d190f83f4c8d', '9', '陈六联盟', '1', '1', '4d25bdc3-d6e5-4066-a34d-ddd526bcf27d', '陈六联盟', null);
INSERT INTO `t_team` VALUES ('c6202e86-0c86-4d8c-94b2-b837211badac', '5', '赵六英语队', '1', '1', 'f00c96b9-1528-47fe-97c0-505ce8452028', '赵六英语队等待加入', null);
INSERT INTO `t_team` VALUES ('cd76ac2a-3e0e-4379-994e-435f0eea0ea8', '2', '张三口语队', '2', '3', 'b2005d28-60a1-4387-9e28-7057c1885c70', '这位用户很懒，什么都没留下', null);
INSERT INTO `t_team` VALUES ('d57ea0cf-3079-4dbe-a8c5-3e41f9c4774f', '8', '张四英语知识队', '1', '1', 'f00c96b9-1528-47fe-97c0-505ce8452028', '张四英语知识队', null);
INSERT INTO `t_team` VALUES ('f74e4d91-190b-40ae-a8d9-dce00f2a3d95', '1', '计算机科学与技术', '1', '2', '3de74891-562d-4e2c-a592-a79100ff604b', '计算机科学与技术', null);

-- ----------------------------
-- Table structure for t_university
-- ----------------------------
DROP TABLE IF EXISTS `t_university`;
CREATE TABLE `t_university` (
  `university_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `university_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `university_city` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`university_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_university
-- ----------------------------
INSERT INTO `t_university` VALUES ('1', '北京学院', '北京');
INSERT INTO `t_university` VALUES ('2', '上海学院', '上海');
INSERT INTO `t_university` VALUES ('3', '广东学院', '广东');
INSERT INTO `t_university` VALUES ('4', '南京学院', '南京');
INSERT INTO `t_university` VALUES ('5', '大连学院', '大连');
INSERT INTO `t_university` VALUES ('6', '安徽学院', '安徽');
INSERT INTO `t_university` VALUES ('7', '四川学院', '四川');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `period` int DEFAULT NULL,
  `college_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_role` int DEFAULT NULL,
  `user_className` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `FK_T_USER_REFERENCE_T_COLLEG` (`college_id`) USING BTREE,
  CONSTRAINT `FK_T_USER_REFERENCE_T_COLLEG` FOREIGN KEY (`college_id`) REFERENCES `t_college` (`college_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '038bdaf98f2037b31f1e75b5b4c9b26e', '小海', '18877125659', '642125256@qq.com', '男', '2016', '1', null, '计科3班');
INSERT INTO `t_user` VALUES ('10', '20160216010', '0f12d2cb8ad82b678f425fbe7e56dbac', '赵一', '19999999999', '19999999999@qq.com', '男', '2022', '1', null, '计科3班');
INSERT INTO `t_user` VALUES ('11', '20160216011', 'eedbdce05d3697b09e4b88a65fa4130e', 'test', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '计科3班');
INSERT INTO `t_user` VALUES ('13', '20160216101', 'f062ce73d586ec52e466717462b2e98c', 'test', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '计科3班');
INSERT INTO `t_user` VALUES ('14', '20160216104', '0d999891bb236bc99008bbe7f6646860', 'test', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '会计学1班');
INSERT INTO `t_user` VALUES ('15', '20160216105', '4ab80e6313036c55ce4dfe95a183d4ea', 'test', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '会计学1班');
INSERT INTO `t_user` VALUES ('16', '20160216106', '2276d2fa78141f91df0b709534a962cb', 'test', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '计科（高博）4班');
INSERT INTO `t_user` VALUES ('2', '20160216002', '5ef2015edb439cac2bea7c7bb3796eb1', '张三', '18888888888', '18888888888@qq.com', '男', '2016', '1', null, '计科4班');
INSERT INTO `t_user` VALUES ('3', '20160216003', 'bb3ff4cb46696769ac6d5585cf676dc9', '李四', '12222222222', '12222222222@qq.com', '男', '2022', '1', null, '计科（高博）3班');
INSERT INTO `t_user` VALUES ('4', '20160216004', '0bf9692378bc43a627c8f06d8cf0dc3f', '王五', '13333333333', '13333333333@qq.com', '女', '2017', '1', null, '计科2班');
INSERT INTO `t_user` VALUES ('5', '20160216005', '462ae56b5f766c9063d9485bab8af2e1', '赵六', '14444444444', '14444444444@qq.com', '女', '2018', '1', null, '计科1班');
INSERT INTO `t_user` VALUES ('6', '20160216006', '31a56597d1cfa721c47f06b7aba8537b', '田七', '15555555555', '15555555555@qq.com', '女', '2018', '1', null, '计科3班');
INSERT INTO `t_user` VALUES ('7', '20160216007', '56c107fa559c745087bc7761825117cb', '王八', '16666666666', '16666666666@qq.com', '女', '2018', '1', null, '物联3班');
INSERT INTO `t_user` VALUES ('8', '20160216008', '43fcbe0f248a5d053bd3d2e25ceed982', '张四', '17777777777', '17777777777@qq.com', '女', '2017', '1', null, '计科（高博）2班');
INSERT INTO `t_user` VALUES ('9', '20160216009', '072e63c29a8e1044a0c959caf9357b63', '陈六', '11111111111', '11111111111@qq.com', '男', '2016', '1', null, '计科（高博）4班');

-- ----------------------------
-- Table structure for t_user_competition
-- ----------------------------
DROP TABLE IF EXISTS `t_user_competition`;
CREATE TABLE `t_user_competition` (
  `competition_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date` bigint DEFAULT NULL,
  `win_ranking` int DEFAULT NULL,
  `win_level_name` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`competition_id`,`user_id`) USING BTREE,
  KEY `FK_T_USER_C_REFERENCE_T_USER` (`user_id`) USING BTREE,
  CONSTRAINT `FK_T_USER_C_REFERENCE_T_COMPET` FOREIGN KEY (`competition_id`) REFERENCES `t_competition` (`competition_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_USER_C_REFERENCE_T_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_competition
-- ----------------------------
INSERT INTO `t_user_competition` VALUES ('975af2b6-34f8-448a-b343-f50c87ce2891', '1', '1685972958210', null, null);
INSERT INTO `t_user_competition` VALUES ('975af2b6-34f8-448a-b343-f50c87ce2891', '10', '1685973063541', null, null);
INSERT INTO `t_user_competition` VALUES ('975af2b6-34f8-448a-b343-f50c87ce2891', '2', '1666949403536', null, null);
INSERT INTO `t_user_competition` VALUES ('975af2b6-34f8-448a-b343-f50c87ce2891', '6', '1686051314393', null, null);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `role_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`) USING BTREE,
  KEY `FK_T_USER_R_REFERENCE_T_USER` (`user_id`) USING BTREE,
  CONSTRAINT `FK_T_USER_R_REFERENCE_T_ROLE` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_USER_R_REFERENCE_T_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('2', '1');
INSERT INTO `t_user_role` VALUES ('2', '10');
INSERT INTO `t_user_role` VALUES ('2', '11');
INSERT INTO `t_user_role` VALUES ('2', '13');
INSERT INTO `t_user_role` VALUES ('2', '14');
INSERT INTO `t_user_role` VALUES ('2', '15');
INSERT INTO `t_user_role` VALUES ('2', '16');
INSERT INTO `t_user_role` VALUES ('1', '2');
INSERT INTO `t_user_role` VALUES ('2', '2');
INSERT INTO `t_user_role` VALUES ('2', '3');
INSERT INTO `t_user_role` VALUES ('2', '4');
INSERT INTO `t_user_role` VALUES ('2', '5');
INSERT INTO `t_user_role` VALUES ('2', '6');
INSERT INTO `t_user_role` VALUES ('2', '7');
INSERT INTO `t_user_role` VALUES ('2', '8');
INSERT INTO `t_user_role` VALUES ('2', '9');

-- ----------------------------
-- Table structure for t_user_team
-- ----------------------------
DROP TABLE IF EXISTS `t_user_team`;
CREATE TABLE `t_user_team` (
  `user_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `team_id` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`user_id`,`team_id`) USING BTREE,
  KEY `FK_T_USER_T_REFERENCE_T_TEAM` (`team_id`) USING BTREE,
  CONSTRAINT `FK_T_USER_T_REFERENCE_T_TEAM` FOREIGN KEY (`team_id`) REFERENCES `t_team` (`team_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_T_USER_T_REFERENCE_T_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_team
-- ----------------------------
INSERT INTO `t_user_team` VALUES ('6', '17527ebf-6d41-44ed-869e-bd5650c08efc');
INSERT INTO `t_user_team` VALUES ('1', '1bfc9d8a-7485-4319-85ac-ec074f6366fd');
INSERT INTO `t_user_team` VALUES ('3', '1bfc9d8a-7485-4319-85ac-ec074f6366fd');
INSERT INTO `t_user_team` VALUES ('4', '2c19fdd2-a93d-457b-9b0b-764f234af7bc');
INSERT INTO `t_user_team` VALUES ('5', '2d69c453-e7e4-444d-b806-57147cbc6e34');
INSERT INTO `t_user_team` VALUES ('4', '37731a17-b10f-41b4-8600-ad5acf5205df');
INSERT INTO `t_user_team` VALUES ('6', '3c47d016-bb85-4172-8801-ba82e0644ad6');
INSERT INTO `t_user_team` VALUES ('4', '72fd7591-87e5-411f-8b09-08bb34a26bac');
INSERT INTO `t_user_team` VALUES ('10', '80166f82-f7af-4bda-b002-b746b59f915d');
INSERT INTO `t_user_team` VALUES ('2', '80166f82-f7af-4bda-b002-b746b59f915d');
INSERT INTO `t_user_team` VALUES ('5', '99738531-a3c7-4378-9feb-7a676a4c69af');
INSERT INTO `t_user_team` VALUES ('9', '99738531-a3c7-4378-9feb-7a676a4c69af');
INSERT INTO `t_user_team` VALUES ('10', '9f71a5d0-e1d3-4027-b542-6b5c2c75eca2');
INSERT INTO `t_user_team` VALUES ('10', 'a179c7ce-0937-48f7-a815-faa2c4647cab');
INSERT INTO `t_user_team` VALUES ('2', 'a179c7ce-0937-48f7-a815-faa2c4647cab');
INSERT INTO `t_user_team` VALUES ('6', 'a179c7ce-0937-48f7-a815-faa2c4647cab');
INSERT INTO `t_user_team` VALUES ('5', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2');
INSERT INTO `t_user_team` VALUES ('6', 'a9659f7f-81a2-4239-b4e1-a668408f8cd2');
INSERT INTO `t_user_team` VALUES ('8', 'b4af2161-b5fe-4e33-b737-ed8761ea3c02');
INSERT INTO `t_user_team` VALUES ('9', 'b7996c26-bf12-409f-9347-d190f83f4c8d');
INSERT INTO `t_user_team` VALUES ('5', 'c6202e86-0c86-4d8c-94b2-b837211badac');
INSERT INTO `t_user_team` VALUES ('2', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8');
INSERT INTO `t_user_team` VALUES ('3', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8');
INSERT INTO `t_user_team` VALUES ('5', 'cd76ac2a-3e0e-4379-994e-435f0eea0ea8');
INSERT INTO `t_user_team` VALUES ('8', 'd57ea0cf-3079-4dbe-a8c5-3e41f9c4774f');
INSERT INTO `t_user_team` VALUES ('1', 'f74e4d91-190b-40ae-a8d9-dce00f2a3d95');
INSERT INTO `t_user_team` VALUES ('7', 'f74e4d91-190b-40ae-a8d9-dce00f2a3d95');
