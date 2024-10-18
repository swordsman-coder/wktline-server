-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (arm64)
--
-- Host: 43.138.253.179    Database: wktline-base
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` varchar(32) NOT NULL,
  `key` varchar(128) NOT NULL COMMENT '配置文件 key',
  `value` json DEFAULT NULL COMMENT 'JSON string',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` varchar(32) NOT NULL,
  `title` varchar(256) NOT NULL COMMENT '消息标题',
  `content` text,
  `content_type` varchar(16) DEFAULT 'text' COMMENT '内容类型 - （text|markdown|html|扩展）',
  `status` int NOT NULL DEFAULT '0' COMMENT '消息状态 0：未读，1：已读',
  `msg_type` varchar(128) NOT NULL COMMENT '消息类型',
  `project_id` varchar(32) DEFAULT NULL COMMENT '项目 id',
  `task_id` varchar(32) DEFAULT NULL COMMENT '任务 id',
  `receiver_id` varchar(32) NOT NULL COMMENT '目标用户 id',
  `sender_id` varchar(32) NOT NULL COMMENT '用户 id',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '是否删除',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `msg_notice_type_index` (`msg_type`),
  KEY `message_deleted_at_index` (`deleted_at`),
  KEY `message_project_id_index` (`project_id`),
  KEY `message_receiver_id_index` (`receiver_id`),
  KEY `message_sender_id_index` (`sender_id`),
  KEY `message_task_id_index` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='消息通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('exp5ja0d41f5wjrr8ls110vk1i0rnrz5','任务分组变更通知','任务分组变更为 <span class=\'last-text\'>第一季度 0331</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:05:23','2024-09-09 03:05:23'),('exp5ja0d41f5y2hvmds1406qbo20wyjz','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:05:26','2024-09-09 03:05:26'),('exp5ja0d41f618nzz7c170lui31vzamf','任务分组变更通知','任务分组变更为 <span class=\'last-text\'>第一季度 0331</span>','text',0,'TASK','','exp5ja0d41f3ryanf14e009wonuliges','100175','100175',NULL,'2024-09-09 03:05:33','2024-09-09 03:05:33'),('exp5ja0d41f6chnr4bc1c033wg6kcshb','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第一个任务</span>] 变更为 <span class=\'last-text\'>第一个任务</span>','text',0,'TASK','','exp5ja0d41f3ryanf14e009wonuliges','100175','100175',NULL,'2024-09-09 03:05:58','2024-09-09 03:05:58'),('exp5ja0d41f6mupw7a01f0j72m55ccwt','任务优先级变更通知','任务优先级由 [<span class=\'pre-text\'>P3</span>] 变更为 <span class=\'last-text\'>P0</span>','text',0,'TASK','','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175',NULL,'2024-09-09 03:06:20','2024-09-09 03:06:20'),('exp5ja0d41f6nnnqpug1i0jaazmhafm3','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','text',0,'TASK','','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175',NULL,'2024-09-09 03:06:22','2024-09-09 03:06:22'),('exp5ja0d41f6pwwxo001l0duhh2kcd7r','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','text',0,'TASK','','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175',NULL,'2024-09-09 03:06:27','2024-09-09 03:06:27'),('exp5ja0d41f6rmsko281o0ab0fipqkaf','任务优先级变更通知','任务优先级由 [<span class=\'pre-text\'>P3</span>] 变更为 <span class=\'last-text\'>P0</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:06:31','2024-09-09 03:06:31'),('exp5ja0d41f6xwq4gb41r0byyhp0ry7l','任务结束时间变更通知','任务内容变更为 <span class=\'last-text\'><p>这是基础的任务表述</p></span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:06:44','2024-09-09 03:06:44'),('exp5ja0d41f6zcndt9k1u045mzrjnvnq','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:06:47','2024-09-09 03:06:47'),('exp5ja0d41f72hg63tc1x06383mqyvre','任务类型变更通知','任务类型由 [<span class=\'pre-text\'>需求</span>] 变更为 <span class=\'last-text\'>开发</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:06:54','2024-09-09 03:06:54'),('exp5ja0d41f73nomuyo200i6t7nnec29','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','text',0,'TASK','','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175',NULL,'2024-09-09 03:06:57','2024-09-09 03:06:57'),('exp5ja0d41f77fux1rc230jz10jktm6r','任务类型变更通知','任务类型由 [<span class=\'pre-text\'>需求</span>] 变更为 <span class=\'last-text\'>提效</span>','text',0,'TASK','','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175',NULL,'2024-09-09 03:07:05','2024-09-09 03:07:05'),('exp5ja0d41f781vp1ko260g6qnnicwdc','任务标题变更通知','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','text',0,'TASK','','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175',NULL,'2024-09-09 03:07:06','2024-09-09 03:07:06');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` varchar(32) NOT NULL COMMENT '项目 id',
  `name` varchar(64) NOT NULL COMMENT '项目名',
  `description` varchar(512) NOT NULL COMMENT '项目描述',
  `header_img` varchar(256) DEFAULT NULL COMMENT '项目头图',
  `creator_id` varchar(32) NOT NULL COMMENT '创建人 id',
  `owner_id` varchar(32) NOT NULL COMMENT '项目所有者 id',
  `operator_id` bigint DEFAULT NULL COMMENT '项目操作者 id',
  `group_id` varchar(32) NOT NULL COMMENT '项目分组 id',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '项目状态 1: 正常 2: 删除',
  `show_type` varchar(10) DEFAULT NULL COMMENT '显示类型 PUBLIC: 公开 PRIVATE: 私有',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除shi',
  PRIMARY KEY (`id`),
  KEY `project_owner_id_index` (`owner_id`),
  KEY `project_operator_id_index` (`operator_id`),
  KEY `project_creator_id_index` (`creator_id`),
  KEY `project_deleted_at_index` (`deleted_at`),
  KEY `project_show_type_index` (`show_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('exp5ja0d41f3lfhlg2w200g4qzm9n950','第一个项目-基础数据','这是项目描述信息，可在项目详情，设置中修改','','100175','100175',100175,'exp5ja0d41f2w05ppyo100xytbld76fv',1,'PUBLIC','2024-09-09 03:02:22','2024-09-09 03:02:22',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_group`
--

DROP TABLE IF EXISTS `project_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_group` (
  `id` varchar(32) NOT NULL COMMENT '项目分组 id',
  `name` varchar(256) NOT NULL COMMENT '项目分组 id',
  `description` varchar(256) DEFAULT NULL COMMENT '项目分组描述/简介',
  `operator_id` varchar(32) NOT NULL COMMENT '操作者 id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_group`
--

LOCK TABLES `project_group` WRITE;
/*!40000 ALTER TABLE `project_group` DISABLE KEYS */;
INSERT INTO `project_group` VALUES ('exp5ja0d41f2w05ppyo100xytbld76fv','项目分组 - 如：事业部','部门介绍或其他','100175','2024-09-09 11:01:27','2024-09-09 11:01:27');
/*!40000 ALTER TABLE `project_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_invite`
--

DROP TABLE IF EXISTS `project_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_invite` (
  `id` varchar(32) NOT NULL COMMENT '邀请 code',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `inviter_id` varchar(32) NOT NULL COMMENT '发起邀请的用户 id',
  `deadline` timestamp NOT NULL COMMENT '生效截止时间',
  `max_invite_count` int DEFAULT NULL COMMENT 'z',
  `joined_count` int DEFAULT '0' COMMENT '已加入人数',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `invite_project_id_index` (`project_id`),
  KEY `invite_inviter_id_index` (`inviter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='项目邀请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_invite`
--

LOCK TABLES `project_invite` WRITE;
/*!40000 ALTER TABLE `project_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user` (
  `id` varchar(32) NOT NULL,
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `user_id` varchar(32) NOT NULL COMMENT '用户 id',
  `role` varchar(12) NOT NULL DEFAULT 'USER' COMMENT '用户在项目中的角色',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_collect_id_index` (`id`),
  KEY `project_collect_project_id_index` (`project_id`),
  KEY `project_collect_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES ('exp5ja0d41f3lt99rwwc000xx8t2e5p4','exp5ja0d41f3lfhlg2w200g4qzm9n950','100175','SUPER_ADMIN','2024-09-09 11:02:23','2024-09-09 11:02:23');
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(256) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  `bucket_hash` varchar(100) DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `bucket_hash` (`bucket_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES ('exp5ja0d41f65vsiss8180xmcr2f1o9v','wktline-table-structure.sql','https://static.web3ling.com/b6bcf54a0baa217ed50bb6dc55e92010.sql','sql',21700,'b6bcf54a0baa217ed50bb6dc55e92010','FsGIwf0vsGFlFo9ifmTmTdbnZPOv',100175,'2024-09-09 11:05:43','2024-09-09 11:05:43');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` varchar(32) NOT NULL COMMENT '任务 id',
  `name` char(255) NOT NULL COMMENT '任务名',
  `description` longtext COMMENT '任务描述，没住',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `handler_id` varchar(32) DEFAULT NULL COMMENT '任务处理者',
  `group_id` varchar(32) DEFAULT NULL COMMENT '任务分组/迭代 id',
  `status_id` varchar(32) NOT NULL COMMENT '任务状态',
  `creator_id` varchar(32) NOT NULL COMMENT '任务创建者 id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父任务 id',
  `type_id` varchar(32) NOT NULL COMMENT '任务类型 id',
  `priority` varchar(32) NOT NULL DEFAULT 'P3' COMMENT '任务优先级:P0|P1|P2|P3',
  `progress` int DEFAULT '0' COMMENT '进度',
  `plan_hour` decimal(10,1) DEFAULT '0.0' COMMENT '计划工时（小时）',
  `labor_hour` decimal(10,1) DEFAULT '0.0' COMMENT '总工时（小时）',
  `start_time` date DEFAULT NULL COMMENT '预计开始时间',
  `end_time` date DEFAULT NULL COMMENT '预计结束时间',
  `finished_time` date DEFAULT NULL COMMENT '任务实际完成时间',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_creator_id_index` (`creator_id`),
  KEY `task_group_id_index` (`group_id`),
  KEY `task_project_id_index` (`project_id`),
  KEY `task_status_id_index` (`status_id`),
  KEY `task_type_id_index` (`type_id`),
  KEY `task_handler_id_index` (`handler_id`),
  KEY `task_parent_id_index` (`parent_id`),
  KEY `task_created_at_index` (`created_at`),
  KEY `task_end_time_index` (`end_time`),
  KEY `task_start_time_index` (`start_time`),
  KEY `task_finished_time_index` (`finished_time`),
  KEY `task_updated_at_index` (`updated_at`),
  KEY `task_name_index` (`name`),
  KEY `task_priority_index` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES ('exp5ja0d41f3ryanf14e009wonuliges','第一个任务',NULL,'exp5ja0d41f3lfhlg2w200g4qzm9n950','100175','exp5ja0d41f5t9xc5g8y00aul9unze1o','exp5ja0d41f3lnk1t3c400unpm6lvygx','100175',NULL,'exp5ja0d41f3lqdiwo0700349d6j31ij','P3',0,0.0,0.0,'2024-09-09',NULL,NULL,'2024-09-09 03:02:36','2024-09-09 03:05:57'),('exp5ja0d41f3vebz3zki0001nzhwympb','第二个任务','<p>这是基础的任务表述</p>','exp5ja0d41f3lfhlg2w200g4qzm9n950','100175','exp5ja0d41f5t9xc5g8y00aul9unze1o','exp5ja0d41f3lnk1z9k500qf0y5kx0ml','100175',NULL,'exp5ja0d41f3lqdj22g800tyijz80jnz','P0',0,0.0,0.0,'2024-09-09',NULL,NULL,'2024-09-09 03:02:44','2024-09-09 03:06:56'),('exp5ja0d41f3z896pkgm00m19g90bzr4','第三个任务',NULL,'exp5ja0d41f3lfhlg2w200g4qzm9n950','100175',NULL,'exp5ja0d41f3lnk201c600ydh0l4z2bh','100175',NULL,'exp5ja0d41f3lqdj2u8b009se826j7jl','P0',0,0.0,0.0,'2024-09-09',NULL,NULL,'2024-09-09 03:02:52','2024-09-09 03:07:06'),('exp5ja0d41f4vr0nezsr002fuo7xlozq','新增的任务类型',NULL,'exp5ja0d41f3lfhlg2w200g4qzm9n950','100175',NULL,'exp5ja0d41f4dpcyciop004g2ptfvw0b','100175',NULL,'exp5ja0d41f3lqdiwo0700349d6j31ij','P3',0,0.0,5.0,'2024-09-09',NULL,NULL,'2024-09-09 03:04:03','2024-09-09 03:04:28');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_actor`
--

DROP TABLE IF EXISTS `task_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_actor` (
  `id` varchar(32) NOT NULL,
  `task_id` varchar(32) NOT NULL COMMENT '任务 id',
  `user_id` varchar(32) NOT NULL COMMENT '用户 id',
  `operator_id` varchar(32) NOT NULL COMMENT '操作者 id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务参与者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_actor`
--

LOCK TABLES `task_actor` WRITE;
/*!40000 ALTER TABLE `task_actor` DISABLE KEYS */;
INSERT INTO `task_actor` VALUES ('exp5ja0d41f3s2y10bsg00s3r2tr0vf0','exp5ja0d41f3ryanf14e009wonuliges','100175','100175','2024-09-09 03:02:37','2024-09-09 03:02:37'),('exp5ja0d41f3vj7sfp4k00t27ndzqrzo','exp5ja0d41f3vebz3zki0001nzhwympb','100175','100175','2024-09-09 03:02:44','2024-09-09 03:02:44'),('exp5ja0d41f3zc8pz68o00pjxken6npf','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','100175','2024-09-09 03:02:52','2024-09-09 03:02:52'),('exp5ja0d41f4w144tu8t000g2k912u4g','exp5ja0d41f4vr0nezsr002fuo7xlozq','100175','100175','2024-09-09 03:04:03','2024-09-09 03:04:03');
/*!40000 ALTER TABLE `task_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_attachment`
--

DROP TABLE IF EXISTS `task_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_attachment` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `task_id` varchar(32) NOT NULL COMMENT '任务 id',
  `resource_id` varchar(32) NOT NULL COMMENT '资源 id',
  `creator_id` varchar(32) NOT NULL COMMENT '创建者 id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_file_creator_id_index` (`creator_id`),
  KEY `task_file_project_id_index` (`project_id`),
  KEY `task_file_task_id_index` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务文件列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_attachment`
--

LOCK TABLES `task_attachment` WRITE;
/*!40000 ALTER TABLE `task_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_group`
--

DROP TABLE IF EXISTS `task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_group` (
  `id` varchar(32) NOT NULL COMMENT '任务分组 id',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `group_name` varchar(100) NOT NULL COMMENT '任务分组名（迭代）',
  `description` text COMMENT '任务分组描述，可用于一个迭代描述',
  `operator_id` varchar(32) NOT NULL COMMENT '操作用户 id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `task_group_group_name_index` (`group_name`),
  KEY `task_group_project_id_index` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目任务分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_group`
--

LOCK TABLES `task_group` WRITE;
/*!40000 ALTER TABLE `task_group` DISABLE KEYS */;
INSERT INTO `task_group` VALUES ('exp5ja0d41f5t9xc5g8y00aul9unze1o','exp5ja0d41f3lfhlg2w200g4qzm9n950','第一季度 0331','1. xxx\n2. xxx','100175','2024-09-09 11:05:16','2024-09-09 11:05:16');
/*!40000 ALTER TABLE `task_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_labor_hour`
--

DROP TABLE IF EXISTS `task_labor_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_labor_hour` (
  `id` varchar(32) NOT NULL,
  `task_id` varchar(32) NOT NULL COMMENT '任务 id',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `user_id` varchar(32) NOT NULL COMMENT '添加工时用户 id',
  `date` date NOT NULL COMMENT '工作内容所在日期',
  `hour` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '工时（单位：小时）',
  `description` varchar(1024) NOT NULL COMMENT '工作描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `task_labor_hour_project_id_index` (`project_id`),
  KEY `task_labor_hour_task_id_index` (`task_id`),
  KEY `task_labor_hour_user_id_index` (`user_id`),
  KEY `task_labor_hour_date_index` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_labor_hour`
--

LOCK TABLES `task_labor_hour` WRITE;
/*!40000 ALTER TABLE `task_labor_hour` DISABLE KEYS */;
INSERT INTO `task_labor_hour` VALUES ('exp5ja0d41f575ypph4w00c378efdlz2','exp5ja0d41f4vr0nezsr002fuo7xlozq','exp5ja0d41f3lfhlg2w200g4qzm9n950','100175','2024-09-09',5.0,'测试中','2024-09-09 03:04:28','2024-09-09 03:04:28');
/*!40000 ALTER TABLE `task_labor_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_operation_log`
--

DROP TABLE IF EXISTS `task_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_operation_log` (
  `id` varchar(32) NOT NULL COMMENT '日志 ld',
  `task_id` varchar(32) NOT NULL COMMENT '任务 id',
  `user_id` varchar(32) NOT NULL COMMENT '用户 id',
  `type` varchar(100) NOT NULL COMMENT '日志类型',
  `name` varchar(100) NOT NULL COMMENT '日志名',
  `content` longtext NOT NULL COMMENT '日志内容',
  `desc` text COMMENT '其它信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_operation_log_task_id_index` (`task_id`),
  KEY `task_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务操作日志、评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_operation_log`
--

LOCK TABLES `task_operation_log` WRITE;
/*!40000 ALTER TABLE `task_operation_log` DISABLE KEYS */;
INSERT INTO `task_operation_log` VALUES ('exp5ja0d41f3s03xx34f00461ycjuqka','exp5ja0d41f3ryanf14e009wonuliges','100175','DYNAMIC_TASK_CREATE','创建了任务','第一个任务','','2024-09-09 03:02:36','2024-09-09 03:02:36'),('exp5ja0d41f3vgzyt2wj00dtwfravo9r','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_CREATE','创建了任务','第二个任务','','2024-09-09 03:02:44','2024-09-09 03:02:44'),('exp5ja0d41f3za8tmm8n00u7oi306voa','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_CREATE','创建了任务','第三个任务','','2024-09-09 03:02:52','2024-09-09 03:02:52'),('exp5ja0d41f4vsv14bcs00lksj4aw6gq','exp5ja0d41f4vr0nezsr002fuo7xlozq','100175','DYNAMIC_TASK_CREATE','创建了任务','新增的任务类型','','2024-09-09 03:04:03','2024-09-09 03:04:03'),('exp5ja0d41f575yq6g8x00fqs37sw3q2','exp5ja0d41f4vr0nezsr002fuo7xlozq','100175','DYNAMIC_TASK_LABOR_TIME','添加实际工时','5小时','','2024-09-09 03:04:28','2024-09-09 03:04:28'),('exp5ja0d41f5wfusy80100xp9aebiifc','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_GROUP','更新了任务分组','任务分组变更为 <span class=\'last-text\'>第一季度 0331</span>','','2024-09-09 03:05:23','2024-09-09 03:05:23'),('exp5ja0d41f5xyfr0fs130u02cyplyoc','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','','2024-09-09 03:05:26','2024-09-09 03:05:26'),('exp5ja0d41f614xqru0160ztizmjbzym','exp5ja0d41f3ryanf14e009wonuliges','100175','DYNAMIC_TASK_GROUP','更新了任务分组','任务分组变更为 <span class=\'last-text\'>第一季度 0331</span>','','2024-09-09 03:05:33','2024-09-09 03:05:33'),('exp5ja0d41f6axx1is8190db2ye9tzbg','exp5ja0d41f3ryanf14e009wonuliges','100175','ATTACHMENT','添加评论','基础 sql','[{\"name\":\"wktline-table-structure.sql\",\"type\":\"\",\"size\":21700,\"url\":\"https://static.web3ling.com/b6bcf54a0baa217ed50bb6dc55e92010.sql\"}]','2024-09-09 03:05:54','2024-09-09 03:05:54'),('exp5ja0d41f6ce4vr5s1b0efbfh3wn1o','exp5ja0d41f3ryanf14e009wonuliges','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第一个任务</span>] 变更为 <span class=\'last-text\'>第一个任务</span>','','2024-09-09 03:05:57','2024-09-09 03:05:57'),('exp5ja0d41f6mqsjbfk1e0dmczauxyg3','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_PRIORITY','更新任务优先级','任务优先级由 [<span class=\'pre-text\'>P3</span>] 变更为 <span class=\'last-text\'>P0</span>','','2024-09-09 03:06:20','2024-09-09 03:06:20'),('exp5ja0d41f6njdtng81h0o2zqmsjllj','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','','2024-09-09 03:06:22','2024-09-09 03:06:22'),('exp5ja0d41f6pt2dy4o1k0yjyhgsaada','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','','2024-09-09 03:06:27','2024-09-09 03:06:27'),('exp5ja0d41f6ripiik01n0q150ls1mx2','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_PRIORITY','更新任务优先级','任务优先级由 [<span class=\'pre-text\'>P3</span>] 变更为 <span class=\'last-text\'>P0</span>','','2024-09-09 03:06:30','2024-09-09 03:06:30'),('exp5ja0d41f6xsxddlk1q0jfkkgeacds','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_DESCRIPTION','更新任务内容','任务内容变更为 <span class=\'last-text\'><p>这是基础的任务表述</p></span>','','2024-09-09 03:06:44','2024-09-09 03:06:44'),('exp5ja0d41f6z8jt2081t0m3ipa64ktp','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','','2024-09-09 03:06:47','2024-09-09 03:06:47'),('exp5ja0d41f72dcca601w05oai0cznkc','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_TYPE','更新任务类型','任务类型由 [<span class=\'pre-text\'>需求</span>] 变更为 <span class=\'last-text\'>开发</span>','','2024-09-09 03:06:54','2024-09-09 03:06:54'),('exp5ja0d41f73jt9h6w1z0cqolrw28k8','exp5ja0d41f3vebz3zki0001nzhwympb','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第二个任务</span>] 变更为 <span class=\'last-text\'>第二个任务</span>','','2024-09-09 03:06:57','2024-09-09 03:06:57'),('exp5ja0d41f77bvqq7c22016ormw2lap','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_TYPE','更新任务类型','任务类型由 [<span class=\'pre-text\'>需求</span>] 变更为 <span class=\'last-text\'>提效</span>','','2024-09-09 03:07:05','2024-09-09 03:07:05'),('exp5ja0d41f77y0lmlk2509dy7orw0na','exp5ja0d41f3z896pkgm00m19g90bzr4','100175','DYNAMIC_TASK_NAME','更新任务标题','任务标题由 [<span class=\'pre-text\'>第三个任务</span>] 变更为 <span class=\'last-text\'>第三个任务</span>','','2024-09-09 03:07:06','2024-09-09 03:07:06');
/*!40000 ALTER TABLE `task_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_priority`
--

DROP TABLE IF EXISTS `task_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_priority` (
  `id` varchar(8) NOT NULL COMMENT '优先级',
  `name` varchar(50) NOT NULL COMMENT '优先级名',
  `color` varchar(9) NOT NULL COMMENT '颜色',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_priority_pk` (`id`),
  KEY `task_priority_name_index` (`name`),
  KEY `task_priority_color_index` (`color`),
  KEY `task_priority_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务优先级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_priority`
--

LOCK TABLES `task_priority` WRITE;
/*!40000 ALTER TABLE `task_priority` DISABLE KEYS */;
INSERT INTO `task_priority` VALUES ('P0','紧急重要','#F53F3F','2022-08-21 14:06:40','2022-08-21 14:06:42'),('P1','紧急','#FF7D00','2022-08-21 14:06:43','2022-08-21 14:06:45'),('P2','重要','#ffca46','2022-08-21 14:06:46','2024-04-26 11:07:44'),('P3','一般','#767575','2024-04-22 15:37:04','2024-04-26 11:07:57');
/*!40000 ALTER TABLE `task_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status`
--

DROP TABLE IF EXISTS `task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_status` (
  `id` varchar(32) NOT NULL COMMENT '状态 id',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `name` varchar(50) NOT NULL COMMENT '状态名',
  `enum` varchar(100) NOT NULL COMMENT '枚举值，用作任务状态的筛选',
  `color` varchar(15) NOT NULL COMMENT '颜色',
  `sort` int NOT NULL COMMENT '排序',
  `operator_id` varchar(32) NOT NULL COMMENT '操作这 id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `default` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `task_status_operator_id_index` (`operator_id`) COMMENT '索引',
  KEY `task_status_project_id_index` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status`
--

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;
INSERT INTO `task_status` VALUES ('exp5ja0d41f3lnk1t3c400unpm6lvygx','exp5ja0d41f3lfhlg2w200g4qzm9n950','待处理','PADDING','#DAA520',1,'100175','2024-09-09 11:02:23','2024-09-09 11:02:23',1),('exp5ja0d41f3lnk1z9k500qf0y5kx0ml','exp5ja0d41f3lfhlg2w200g4qzm9n950','处理中','PROCESSING','#722ed1',2,'100175','2024-09-09 11:02:23','2024-09-09 11:02:23',0),('exp5ja0d41f3lnk201c600ydh0l4z2bh','exp5ja0d41f3lfhlg2w200g4qzm9n950','已完成','DONE','#13a8a8',3,'100175','2024-09-09 11:02:23','2024-09-09 11:02:23',0),('exp5ja0d41f4dpcyciop004g2ptfvw0b','exp5ja0d41f3lfhlg2w200g4qzm9n950','新增-暂延','PROCESSING','#f5222d',4,'100175','2024-09-09 11:03:24','2024-09-09 11:03:24',0);
/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_type` (
  `id` varchar(32) NOT NULL,
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `name` varchar(64) NOT NULL COMMENT '类型名称',
  `color` varchar(20) NOT NULL COMMENT '类型颜色',
  `operator_id` varchar(32) NOT NULL COMMENT '操作者 id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_type_project_id_index` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务累心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type`
--

LOCK TABLES `task_type` WRITE;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
INSERT INTO `task_type` VALUES ('exp5ja0d41f3lqdiwo0700349d6j31ij','exp5ja0d41f3lfhlg2w200g4qzm9n950','需求','#DAA520','100175','2024-09-09 03:02:23','2024-09-09 03:02:23'),('exp5ja0d41f3lqdj22g800tyijz80jnz','exp5ja0d41f3lfhlg2w200g4qzm9n950','开发','#722ed1','100175','2024-09-09 03:02:23','2024-09-09 03:02:23'),('exp5ja0d41f3lqdj22g900zsbrz9zzvy','exp5ja0d41f3lfhlg2w200g4qzm9n950','UI设计','#13a8a8','100175','2024-09-09 03:02:23','2024-09-09 03:02:23'),('exp5ja0d41f3lqdj2u8a00tvra2a4n5w','exp5ja0d41f3lfhlg2w200g4qzm9n950','测试','#13a8a8','100175','2024-09-09 03:02:23','2024-09-09 03:02:23'),('exp5ja0d41f3lqdj2u8b009se826j7jl','exp5ja0d41f3lfhlg2w200g4qzm9n950','提效','#13a8a8','100175','2024-09-09 03:02:23','2024-09-09 03:02:23');
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_case`
--

DROP TABLE IF EXISTS `test_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_case` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(128) NOT NULL COMMENT '测试用例名称',
  `description` text COMMENT '说明',
  `value` json DEFAULT NULL COMMENT '测试用例数据',
  `progress` int NOT NULL DEFAULT '0' COMMENT '测试进度（1-100）',
  `project_id` varchar(32) NOT NULL COMMENT '项目 id',
  `creator_id` varchar(32) NOT NULL COMMENT '创建人',
  `actor_ids` json NOT NULL COMMENT '参与人ids',
  `status` varchar(32) NOT NULL DEFAULT 'DRAFT' COMMENT '状态(草稿: DRAFT 发布:PUBLISHED 测试中:TESTING 测试完成:DONE)',
  `editor_id` varchar(32) DEFAULT NULL COMMENT '正在编辑的用户 id，lock',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `test_case_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='测试用例';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_case`
--

LOCK TABLES `test_case` WRITE;
/*!40000 ALTER TABLE `test_case` DISABLE KEYS */;
INSERT INTO `test_case` VALUES ('1','第一个测试用例',NULL,'{\"data\": {\"uid\": \"3c6aebd7-4ae1-4d4b-a533-cf2bffbfbfe0\", \"text\": \"根节点\", \"expand\": true, \"isActive\": false}, \"children\": [{\"data\": {\"uid\": \"8a6f300c-2491-43d9-b302-ba3a13058f4e\", \"text\": \"二级节点\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"c8290198-e3ca-4ffe-8587-f073bb24c210\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"6900ec22-310c-468d-b569-d1d971ac1cd0\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}, {\"data\": {\"uid\": \"15f27c00-1717-4f58-bf69-ec2b4eaf8b00\", \"text\": \"二级节点\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"cf007d57-00ab-4090-b307-448db25af92e\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"b94744d1-638c-49ba-8658-a12ee6b67850\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"0ae8e903-4bfd-4bd3-beb5-9437378b18d3\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}, {\"data\": {\"uid\": \"2d2d310f-7a5c-4eb5-b638-69645fdbe907\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"33c7897d-61a9-4705-b042-a10174e0196e\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}, {\"data\": {\"uid\": \"2715a534-26e1-4d6e-873b-b0dbf53993b9\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"f68bbaf4-af36-4eaa-b0fc-5432ef5882ba\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"51764dba-a976-451e-a38d-c2bdec982cc1\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"29d82045-5e78-458a-b6b1-baa2e4c505cb\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"35385c33-b653-467c-bbd0-cf17679c0bb8\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"2494b491-88c3-4624-b0c8-e652c9f6521f\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}, {\"data\": {\"uid\": \"f43dcd38-1f0a-4966-885f-487ab76a0cff\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}]}]}, {\"data\": {\"uid\": \"681e467d-45e8-442d-96dd-5e2d0029b558\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}, {\"data\": {\"uid\": \"1602d8a7-bf61-4574-8715-5d9c64d89011\", \"text\": \"二级节点\", \"expand\": false, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"478f56e3-6a05-467b-97b3-aef1d85f52d4\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"2fb208c1-29ed-48c1-a358-56461e0eb70a\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"5238f255-078d-4569-9f6b-67924f504cbd\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"a5153ae5-b6a7-43d6-b648-ae3d6fe552f5\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"eb213c49-411b-4585-8a5c-80e0312c1fde\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"898c4146-8224-44f6-8da9-939655e51bd4\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"a94b6dac-2fa2-4ab7-8693-a49ee5846459\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}, {\"data\": {\"uid\": \"2f3d8257-713d-4c2f-9fb9-c32eb02b3513\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"f9209a6f-a141-4696-b7a4-c3f535d09860\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"635613c0-6c37-4313-8c70-f2ad984fd2ef\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"914d498e-7cf4-41dc-8751-03a601b52c3c\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}]}, {\"data\": {\"uid\": \"07c85770-493c-4174-a2de-5f6a7d0bcf7e\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"905d60c9-3a04-4ac4-86d6-880cdfef2dfd\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"91605bb6-4557-409f-a7e0-16e9beb68c7a\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"f5bf4ca1-6efb-4b76-a096-eee8d4b187b2\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"2df8dfb7-04f8-44e0-8229-9442ee93f3b4\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"6c0da113-f43f-4905-8f09-e2a3f82da637\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"8b54dfea-bf09-4b80-b078-9bb82c6f2ef1\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}]}, {\"data\": {\"uid\": \"21261c16-e057-4480-a2ed-64ea56349ec8\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"aae6cb7a-b069-4213-8717-cc9a3dd9ea55\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"7e9b9e0e-ab8f-4420-a8d8-daea2878023b\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"b4e1c9b8-e15b-4ee8-833d-afc4d6b0bfb6\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"943953eb-844a-4bda-8db6-c8f92cafa59f\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"c116b085-6fda-4772-b510-3a81838605c1\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}, {\"data\": {\"uid\": \"81f58eb7-0f0b-48f0-bc84-186f279b1096\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"b69f8d75-9f50-43c9-aaa9-9d02cdf81485\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"19017db0-3e71-47e5-aa67-b73d97e704e8\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}]}]}, {\"data\": {\"uid\": \"505db5ea-c480-45d1-a8b5-9f91280f0eb7\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"1d4642a0-d6b2-49d9-b226-2fbf920b568c\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"aad46971-85fc-484d-8993-f3c9dc955534\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": [{\"data\": {\"uid\": \"359e030b-3fb7-4758-ae22-b4fc2eacf1ba\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}, {\"data\": {\"uid\": \"cfd80bd9-cc72-45e6-b4a1-403b9e90b27e\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"66204dc0-d5c6-41d0-8e29-4d05631a3433\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"f4c92e22-d419-44e6-93e1-abbf8266794a\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"54bb2cde-bcb6-4151-9f05-75fe137f1848\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}, {\"data\": {\"uid\": \"723ba0b8-2732-4327-8235-6e91283e632d\", \"text\": \"分支主题\", \"expand\": true, \"isActive\": false, \"richText\": false}, \"children\": []}]}]}',50,'exp5ja0d41f3lfhlg2w200g4qzm9n950','100175','[\"100175\"]','DRAFT',NULL,'2024-04-30 09:59:58','2024-09-08 03:13:31',NULL);
/*!40000 ALTER TABLE `test_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `avatar` varchar(256) DEFAULT NULL COMMENT '用户头像',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(64) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `age` tinyint DEFAULT NULL COMMENT '用户年龄',
  `six` tinyint NOT NULL DEFAULT '0' COMMENT '用户性别 默认：0， 1：男，2：女，3：未知',
  `status` int NOT NULL DEFAULT '1' COMMENT '用户状态,默认1 1：正常，0：禁用，2：xxx，3：xxx',
  `phone` bigint NOT NULL COMMENT '手机号码',
  `emp_number` bigint DEFAULT NULL COMMENT '工号',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `role` varchar(100) NOT NULL COMMENT '用户角色 (系统级)USER | ADMIN | SUPER_ADMIN',
  `department_id` bigint DEFAULT NULL COMMENT '部门 id',
  `is_update` int NOT NULL DEFAULT '0' COMMENT '是否存在更新',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `user_avatar_index` (`avatar`),
  KEY `user_nickname_index` (`nickname`),
  KEY `user_role_index` (`role`),
  KEY `user_status_index` (`status`),
  KEY `user_username_index` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('100175','https://static.web3ling.com/8c8e40ccbed5bd4e8f69ec781db865bd.jpg','wktline','wktline','36ec880a9c3104fff593ed09ae8d2649',NULL,0,1,19873273999,NULL,'wktline@163.com','SUPER_ADMIN',NULL,0,'2023-10-03 06:20:52','2023-12-17 02:40:27');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_config`
--

DROP TABLE IF EXISTS `user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_config` (
  `user_id` varchar(32) NOT NULL COMMENT '用户 id',
  `call_url` varchar(512) DEFAULT NULL COMMENT '消息回调',
  PRIMARY KEY (`user_id`),
  KEY `user_config_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config`
--

LOCK TABLES `user_config` WRITE;
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_work_panel`
--

DROP TABLE IF EXISTS `user_work_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_work_panel` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `workmate_id` varchar(32) NOT NULL COMMENT '同事 id',
  `user_id` varchar(32) NOT NULL COMMENT '用户 id(当前用户)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_labor_hour_panel_user_id_index` (`user_id`),
  KEY `user_labor_hour_panel_workmate_id_index` (`workmate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户工时面板（用户关系）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_work_panel`
--

LOCK TABLES `user_work_panel` WRITE;
/*!40000 ALTER TABLE `user_work_panel` DISABLE KEYS */;
INSERT INTO `user_work_panel` VALUES ('exp5ja0d41f50pvk7p4u00sg8dhkvr0p','100175','100175','2024-09-09 11:04:14','2024-09-09 11:04:14');
/*!40000 ALTER TABLE `user_work_panel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 11:09:39
