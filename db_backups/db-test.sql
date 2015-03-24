# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 10.0.16-MariaDB)
# Database: example
# Generation Time: 2015-03-24 21:06:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table exp_accessories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_accessories`;

CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_actions`;

CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;

INSERT INTO `exp_actions` (`action_id`, `class`, `method`, `csrf_exempt`)
VALUES
	(1,'Channel','submit_entry',0),
	(2,'Channel','filemanager_endpoint',0),
	(3,'Channel','smiley_pop',0),
	(4,'Channel','combo_loader',0),
	(5,'Member','registration_form',0),
	(6,'Member','register_member',0),
	(7,'Member','activate_member',0),
	(8,'Member','member_login',0),
	(9,'Member','member_logout',0),
	(10,'Member','send_reset_token',0),
	(11,'Member','process_reset_password',0),
	(12,'Member','send_member_email',0),
	(13,'Member','update_un_pw',0),
	(14,'Member','member_search',0),
	(15,'Member','member_delete',0),
	(16,'Rte','get_js',0),
	(17,'Assets_mcp','upload_file',0),
	(18,'Assets_mcp','get_files_view_by_folders',0),
	(19,'Assets_mcp','get_props',0),
	(20,'Assets_mcp','save_props',0),
	(21,'Assets_mcp','get_ordered_files_view',0),
	(22,'Assets_mcp','get_session_id',0),
	(23,'Assets_mcp','start_index',0),
	(24,'Assets_mcp','perform_index',0),
	(25,'Assets_mcp','finish_index',0),
	(26,'Assets_mcp','get_s3_buckets',0),
	(27,'Assets_mcp','get_gc_buckets',0),
	(28,'Assets_mcp','get_rs_regions',0),
	(29,'Assets_mcp','get_rs_containers',0),
	(30,'Assets_mcp','move_folder',0),
	(31,'Assets_mcp','rename_folder',0),
	(32,'Assets_mcp','create_folder',0),
	(33,'Assets_mcp','delete_folder',0),
	(34,'Assets_mcp','view_file',0),
	(35,'Assets_mcp','move_file',0),
	(36,'Assets_mcp','delete_file',0),
	(37,'Assets_mcp','view_thumbnail',0),
	(38,'Assets_mcp','build_sheet',0),
	(39,'Assets_mcp','get_selected_files',0),
	(40,'Store','act_checkout',0),
	(41,'Store','act_download_file',0),
	(42,'Store','act_payment',0),
	(43,'Store','act_payment_return',1),
	(44,'Low_search','catch_search',1),
	(45,'Low_search','build_index',0),
	(46,'Low_search_mcp','build_index',0),
	(47,'Low_search','save_search',0),
	(48,'Low_variables','sync',0),
	(49,'Ce_cache','break_cache',0),
	(50,'Ce_cache_mcp','ajax_get_level',0),
	(51,'Ce_cache_mcp','ajax_delete',0),
	(52,'Ee_debug_toolbar','act',0),
	(84,'Forum','do_report',0),
	(83,'Forum','set_theme',0),
	(82,'Forum','do_split',0),
	(81,'Forum','do_merge',0),
	(80,'Forum','display_attachment',0),
	(79,'Forum','delete_subscription',0),
	(78,'Forum','move_topic',0),
	(77,'Forum','change_status',0),
	(76,'Forum','delete_post',0),
	(75,'Forum','submit_post',0),
	(85,'Forum','move_reply',0),
	(86,'Freemember','act_login',0),
	(87,'Freemember','act_logout',0),
	(88,'Freemember','act_register',0),
	(89,'Freemember','act_update_profile',0),
	(90,'Freemember','act_forgot_password',0),
	(91,'Freemember','act_reset_password',0);

/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_assets_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_files`;

CREATE TABLE `exp_assets_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int(10) unsigned NOT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `source_id` int(10) unsigned DEFAULT NULL,
  `filedir_id` int(4) unsigned DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `alt_text` tinytext,
  `caption` tinytext,
  `author` tinytext,
  `desc` text,
  `location` tinytext,
  `keywords` text,
  `date_modified` int(10) unsigned DEFAULT NULL,
  `kind` varchar(5) DEFAULT NULL,
  `width` int(2) DEFAULT NULL,
  `height` int(2) DEFAULT NULL,
  `size` int(3) DEFAULT NULL,
  `search_keywords` text,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `unq_folder_id__file_name` (`folder_id`,`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_assets_files` WRITE;
/*!40000 ALTER TABLE `exp_assets_files` DISABLE KEYS */;

INSERT INTO `exp_assets_files` (`file_id`, `folder_id`, `source_type`, `source_id`, `filedir_id`, `file_name`, `title`, `date`, `alt_text`, `caption`, `author`, `desc`, `location`, `keywords`, `date_modified`, `kind`, `width`, `height`, `size`, `search_keywords`)
VALUES
	(1,2,'ee',NULL,2,'7adb18e781ec04fc919fc2262610d54e.jpg',NULL,1426587651,NULL,NULL,NULL,NULL,NULL,NULL,1426587651,'image',2560,1600,629497,'7adb18e781ec04fc919fc2262610d54e.jpg'),
	(2,2,'ee',NULL,2,'HD-landscape-Photographs-3.jpg',NULL,1426065328,NULL,NULL,NULL,NULL,NULL,NULL,1426065328,'image',4157,2811,2419006,'HD-landscape-Photographs-3.jpg'),
	(3,4,'ee',NULL,10,'freedom-pass.jpg',NULL,1426828131,NULL,NULL,NULL,NULL,NULL,NULL,1426828131,'image',300,250,43194,'freedom-pass.jpg'),
	(4,4,'ee',NULL,10,'ad-gopro.jpg',NULL,1426835073,NULL,NULL,NULL,NULL,NULL,NULL,1426835073,'image',300,250,19377,'ad-gopro.jpg'),
	(5,4,'ee',NULL,10,'em-sp15-wino-300x250.jpg',NULL,1426835074,NULL,NULL,NULL,NULL,NULL,NULL,1426835074,'image',300,250,25707,'em-sp15-wino-300x250.jpg'),
	(6,1,'ee',NULL,1,'ad-gopro.jpg',NULL,1426984987,NULL,NULL,NULL,NULL,NULL,NULL,1426984987,'image',300,250,19377,'ad-gopro.jpg'),
	(7,11,'ee',NULL,11,'7adb18e781ec04fc919fc2262610d54e.jpg',NULL,1426985232,NULL,NULL,NULL,NULL,NULL,NULL,1426985232,'image',2560,1600,629497,'7adb18e781ec04fc919fc2262610d54e.jpg'),
	(8,11,'ee',NULL,11,'465205972.jpg',NULL,1426985511,NULL,NULL,NULL,NULL,NULL,NULL,1426985511,'image',1280,720,111231,'465205972.jpg');

/*!40000 ALTER TABLE `exp_assets_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_assets_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_folders`;

CREATE TABLE `exp_assets_folders` (
  `folder_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `folder_name` varchar(255) NOT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `filedir_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`folder_id`),
  UNIQUE KEY `unq_source_type__source_id__filedir_id__parent_id__folder_name` (`source_type`,`source_id`,`filedir_id`,`parent_id`,`folder_name`),
  UNIQUE KEY `unq_source_type__source_id__filedir_id__full_path` (`source_type`,`source_id`,`filedir_id`,`full_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_assets_folders` WRITE;
/*!40000 ALTER TABLE `exp_assets_folders` DISABLE KEYS */;

INSERT INTO `exp_assets_folders` (`folder_id`, `source_type`, `folder_name`, `full_path`, `parent_id`, `source_id`, `filedir_id`)
VALUES
	(1,'ee','Homepage Images','',NULL,NULL,1),
	(2,'ee','Page Images','',NULL,NULL,2),
	(3,'ee','Topic Images','',NULL,NULL,3),
	(4,'ee','Advertisement Images','',NULL,NULL,10),
	(5,'ee','Brand Images','',NULL,NULL,5),
	(6,'ee','Article Images','',NULL,NULL,4),
	(7,'ee','Place Images','',NULL,NULL,6),
	(8,'ee','Product Images','',NULL,NULL,7),
	(9,'ee','Promotion Images','',NULL,NULL,8),
	(10,'ee','Tutorial Images','',NULL,NULL,9),
	(11,'ee','Feature Carousel Images','',NULL,NULL,11);

/*!40000 ALTER TABLE `exp_assets_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_assets_index_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_index_data`;

CREATE TABLE `exp_assets_index_data` (
  `session_id` char(36) DEFAULT NULL,
  `source_type` varchar(2) NOT NULL DEFAULT 'ee',
  `source_id` int(10) unsigned DEFAULT NULL,
  `offset` int(10) unsigned DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `filesize` int(10) unsigned DEFAULT NULL,
  `type` enum('file','folder') DEFAULT NULL,
  `record_id` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `unq__session_id__source_type__source_id__offset` (`session_id`,`source_type`,`source_id`,`offset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_assets_rackspace_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_rackspace_access`;

CREATE TABLE `exp_assets_rackspace_access` (
  `connection_key` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `storage_url` varchar(255) NOT NULL,
  `cdn_url` varchar(255) NOT NULL,
  PRIMARY KEY (`connection_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_assets_selections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_selections`;

CREATE TABLE `exp_assets_selections` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `field_id` int(6) unsigned DEFAULT NULL,
  `col_id` int(6) unsigned DEFAULT NULL,
  `row_id` int(10) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `sort_order` int(4) unsigned DEFAULT NULL,
  `is_draft` tinyint(1) unsigned DEFAULT '0',
  KEY `file_id` (`file_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `col_id` (`col_id`),
  KEY `row_id` (`row_id`),
  KEY `var_id` (`var_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_assets_selections` WRITE;
/*!40000 ALTER TABLE `exp_assets_selections` DISABLE KEYS */;

INSERT INTO `exp_assets_selections` (`file_id`, `entry_id`, `field_id`, `col_id`, `row_id`, `var_id`, `element_id`, `content_type`, `sort_order`, `is_draft`)
VALUES
	(3,81,78,NULL,NULL,NULL,NULL,NULL,0,0),
	(5,82,78,NULL,NULL,NULL,NULL,NULL,0,0),
	(4,83,78,NULL,NULL,NULL,NULL,NULL,0,0),
	(8,1,71,3,1,NULL,NULL,'grid',0,0);

/*!40000 ALTER TABLE `exp_assets_selections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_assets_sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_assets_sources`;

CREATE TABLE `exp_assets_sources` (
  `source_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_type` varchar(2) NOT NULL DEFAULT 's3',
  `name` varchar(255) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_blocks_atom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_blocks_atom`;

CREATE TABLE `exp_blocks_atom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `block_id` bigint(20) NOT NULL,
  `atomdefinition_id` bigint(20) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_blocks_atom_blockid_atomdefinitionid` (`block_id`,`atomdefinition_id`),
  KEY `fk_blocks_atom_block` (`atomdefinition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_blocks_atom` WRITE;
/*!40000 ALTER TABLE `exp_blocks_atom` DISABLE KEYS */;

INSERT INTO `exp_blocks_atom` (`id`, `block_id`, `atomdefinition_id`, `data`)
VALUES
	(1,1,1,'Test Title'),
	(2,1,2,'Test Sub-Title'),
	(3,1,3,'465205972.jpg'),
	(4,1,4,'https://vimeo.com/87206499|ROLL IN: HANGING WITH TONY HAWK — Vans BOWL-A-RAMA Bondi 2014|http://i.vimeocdn.com/video/465205972_640.jpg'),
	(5,1,5,'http://newism.com.au');

/*!40000 ALTER TABLE `exp_blocks_atom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_blocks_atomdefinition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_blocks_atomdefinition`;

CREATE TABLE `exp_blocks_atomdefinition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blockdefinition_id` bigint(20) NOT NULL,
  `shortname` tinytext NOT NULL,
  `name` text NOT NULL,
  `instructions` text NOT NULL,
  `order` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`id`),
  KEY `fk_blocks_atomdefinition_blockdefinition` (`blockdefinition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_blocks_atomdefinition` WRITE;
/*!40000 ALTER TABLE `exp_blocks_atomdefinition` DISABLE KEYS */;

INSERT INTO `exp_blocks_atomdefinition` (`id`, `blockdefinition_id`, `shortname`, `name`, `instructions`, `order`, `type`, `settings`)
VALUES
	(1,1,'a_title','Title','',1,'text','{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"col_required\":\"n\"}'),
	(2,1,'a_sub_title','Sub-Title','',2,'text','{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"col_required\":\"n\"}'),
	(3,1,'a_feature_image','Feature Image','',3,'assets','{\"filedirs\":[\"ee:11\"],\"view\":\"thumbs\",\"thumb_size\":\"small\",\"show_filenames\":\"n\",\"show_cols\":[\"name\"],\"multi\":\"n\",\"field_fmt\":\"none\",\"field_show_fmt\":\"n\",\"field_type\":\"assets\",\"col_required\":\"y\"}'),
	(4,1,'a_feature_video','Feature Video','',4,'videolink','{\"col_required\":\"n\"}'),
	(5,1,'a_url','URL','',5,'text','{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"col_required\":\"n\"}');

/*!40000 ALTER TABLE `exp_blocks_atomdefinition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_blocks_block
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_blocks_block`;

CREATE TABLE `exp_blocks_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blockdefinition_id` bigint(20) NOT NULL,
  `site_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `field_id` int(6) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blocks_blockdefinition_block` (`blockdefinition_id`),
  KEY `ix_blocks_block_siteid_entryid_fieldid` (`site_id`,`entry_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_blocks_block` WRITE;
/*!40000 ALTER TABLE `exp_blocks_block` DISABLE KEYS */;

INSERT INTO `exp_blocks_block` (`id`, `blockdefinition_id`, `site_id`, `entry_id`, `field_id`, `order`)
VALUES
	(1,1,1,1,71,1);

/*!40000 ALTER TABLE `exp_blocks_block` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_blocks_blockdefinition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_blocks_blockdefinition`;

CREATE TABLE `exp_blocks_blockdefinition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shortname` tinytext NOT NULL,
  `name` text NOT NULL,
  `instructions` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_blocks_blockdefinition` WRITE;
/*!40000 ALTER TABLE `exp_blocks_blockdefinition` DISABLE KEYS */;

INSERT INTO `exp_blocks_blockdefinition` (`id`, `shortname`, `name`, `instructions`)
VALUES
	(1,'b_gallery_slide','Gallery Slide','');

/*!40000 ALTER TABLE `exp_blocks_blockdefinition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_blocks_blockfieldusage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_blocks_blockfieldusage`;

CREATE TABLE `exp_blocks_blockfieldusage` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `field_id` int(6) NOT NULL,
  `blockdefinition_id` bigint(20) NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_blocks_blockfieldusage_fieldid_blockdefinitionid` (`field_id`,`blockdefinition_id`),
  KEY `fk_blocks_blockfieldusage_blockdefinition` (`blockdefinition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_blocks_blockfieldusage` WRITE;
/*!40000 ALTER TABLE `exp_blocks_blockfieldusage` DISABLE KEYS */;

INSERT INTO `exp_blocks_blockfieldusage` (`id`, `field_id`, `blockdefinition_id`, `order`)
VALUES
	(1,71,1,1),
	(2,84,1,1);

/*!40000 ALTER TABLE `exp_blocks_blockfieldusage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_captcha
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_captcha`;

CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_categories`;

CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;

INSERT INTO `exp_categories` (`cat_id`, `site_id`, `group_id`, `parent_id`, `cat_name`, `cat_url_title`, `cat_description`, `cat_image`, `cat_order`)
VALUES
	(1,1,10,0,'Snow','snow','','',2),
	(2,1,10,0,'Skate','skate','','',1),
	(3,1,10,0,'Surf','surf','Surf Description','{filedir_3}surf.jpg',3),
	(5,1,8,0,'Snowboards','snowboards','','',1);

/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_field_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_field_data`;

CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;

INSERT INTO `exp_category_field_data` (`cat_id`, `site_id`, `group_id`)
VALUES
	(1,1,10),
	(2,1,10),
	(3,1,10),
	(5,1,8);

/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_fields`;

CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_groups`;

CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;

INSERT INTO `exp_category_groups` (`group_id`, `site_id`, `group_name`, `sort_order`, `exclude_group`, `field_html_formatting`, `can_edit_categories`, `can_delete_categories`)
VALUES
	(2,1,'Pages','a',0,'all','',''),
	(3,1,'Articles','a',0,'all','',''),
	(5,1,'Places','a',0,'all','',''),
	(6,1,'Homepages','a',0,'all','',''),
	(7,1,'Promotions','a',0,'all','',''),
	(8,1,'Products','a',0,'all','',''),
	(9,1,'Tutorials','a',0,'all','',''),
	(10,1,'Topics','a',0,'all','',''),
	(11,1,'Advertisements','a',0,'all','','');

/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_posts`;

CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;

INSERT INTO `exp_category_posts` (`entry_id`, `cat_id`)
VALUES
	(6,2),
	(7,3),
	(19,2),
	(20,1),
	(21,3),
	(26,3),
	(27,3),
	(28,3),
	(29,3),
	(30,3),
	(31,3),
	(32,3),
	(33,3),
	(34,3),
	(35,3),
	(36,3),
	(37,3),
	(38,3),
	(39,3),
	(40,3),
	(41,3),
	(42,3),
	(43,3),
	(44,3),
	(45,2),
	(46,2),
	(47,2),
	(48,2),
	(49,2),
	(50,2),
	(51,2),
	(52,2),
	(53,2),
	(54,2),
	(55,2),
	(56,2),
	(57,2),
	(58,2),
	(59,2),
	(60,2),
	(61,2),
	(62,2),
	(63,2),
	(64,2),
	(65,2),
	(66,2),
	(67,2),
	(68,2),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(77,1),
	(78,1),
	(79,1),
	(81,1),
	(82,2),
	(83,3),
	(84,1),
	(84,5);

/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_ce_cache_breaking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_ce_cache_breaking`;

CREATE TABLE `exp_ce_cache_breaking` (
  `channel_id` int(10) unsigned NOT NULL,
  `tags` text,
  `items` text,
  `refresh_time` int(1) unsigned DEFAULT NULL,
  `refresh` varchar(1) DEFAULT 'n',
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_ce_cache_db_driver
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_ce_cache_db_driver`;

CREATE TABLE `exp_ce_cache_db_driver` (
  `id` varchar(250) NOT NULL,
  `ttl` int(10) NOT NULL DEFAULT '360',
  `made` int(10) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_ce_cache_tagged_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_ce_cache_tagged_items`;

CREATE TABLE `exp_ce_cache_tagged_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(250) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_channel_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_data`;

CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_0` varchar(8) DEFAULT NULL,
  `field_ft_0` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_19` text,
  `field_ft_19` tinytext,
  `field_id_20` text,
  `field_ft_20` tinytext,
  `field_id_21` text,
  `field_ft_21` tinytext,
  `field_id_22` text,
  `field_ft_22` tinytext,
  `field_id_23` text,
  `field_ft_23` tinytext,
  `field_id_24` text,
  `field_ft_24` tinytext,
  `field_id_25` text,
  `field_ft_25` tinytext,
  `field_id_26` text,
  `field_ft_26` tinytext,
  `field_id_27` text,
  `field_ft_27` tinytext,
  `field_id_28` text,
  `field_ft_28` tinytext,
  `field_id_29` text,
  `field_ft_29` tinytext,
  `field_id_30` text,
  `field_ft_30` tinytext,
  `field_id_31` text,
  `field_ft_31` tinytext,
  `field_id_32` varchar(8) DEFAULT NULL,
  `field_ft_32` tinytext,
  `field_id_33` varchar(8) DEFAULT NULL,
  `field_ft_33` tinytext,
  `field_id_34` varchar(8) DEFAULT NULL,
  `field_ft_34` tinytext,
  `field_id_38` varchar(8) DEFAULT NULL,
  `field_ft_38` tinytext,
  `field_id_39` varchar(8) DEFAULT NULL,
  `field_ft_39` tinytext,
  `field_id_40` varchar(8) DEFAULT NULL,
  `field_ft_40` tinytext,
  `field_id_41` varchar(8) DEFAULT NULL,
  `field_ft_41` tinytext,
  `field_id_42` varchar(8) DEFAULT NULL,
  `field_ft_42` tinytext,
  `field_id_43` varchar(8) DEFAULT NULL,
  `field_ft_43` tinytext,
  `field_id_44` varchar(8) DEFAULT NULL,
  `field_ft_44` tinytext,
  `field_id_45` varchar(8) DEFAULT NULL,
  `field_ft_45` tinytext,
  `field_id_46` varchar(8) DEFAULT NULL,
  `field_ft_46` tinytext,
  `field_id_47` varchar(8) DEFAULT NULL,
  `field_ft_47` tinytext,
  `field_id_51` text,
  `field_ft_51` tinytext,
  `field_id_52` text,
  `field_ft_52` tinytext,
  `field_id_53` text,
  `field_ft_53` tinytext,
  `field_id_54` varchar(8) DEFAULT NULL,
  `field_ft_54` tinytext,
  `field_id_55` varchar(8) DEFAULT NULL,
  `field_ft_55` tinytext,
  `field_id_56` varchar(8) DEFAULT NULL,
  `field_ft_56` tinytext,
  `field_id_58` text,
  `field_ft_58` tinytext,
  `field_id_59` text,
  `field_ft_59` tinytext,
  `field_id_60` text,
  `field_ft_60` tinytext,
  `field_id_61` text,
  `field_ft_61` tinytext,
  `field_id_62` text,
  `field_ft_62` tinytext,
  `field_id_63` text,
  `field_ft_63` tinytext,
  `field_id_64` text,
  `field_ft_64` tinytext,
  `field_id_65` varchar(8) DEFAULT NULL,
  `field_ft_65` tinytext,
  `field_id_66` varchar(8) DEFAULT NULL,
  `field_ft_66` tinytext,
  `field_id_67` varchar(8) DEFAULT NULL,
  `field_ft_67` tinytext,
  `field_id_68` text,
  `field_ft_68` tinytext,
  `field_id_70` text,
  `field_ft_70` tinytext,
  `field_id_71` text,
  `field_ft_71` tinytext,
  `field_id_72` text,
  `field_ft_72` tinytext,
  `field_id_73` varchar(8) DEFAULT NULL,
  `field_ft_73` tinytext,
  `field_id_74` varchar(8) DEFAULT NULL,
  `field_ft_74` tinytext,
  `field_id_75` varchar(8) DEFAULT NULL,
  `field_ft_75` tinytext,
  `field_id_76` text,
  `field_ft_76` tinytext,
  `field_id_77` text,
  `field_ft_77` tinytext,
  `field_id_78` text,
  `field_ft_78` tinytext,
  `field_id_79` text,
  `field_ft_79` tinytext,
  `field_id_80` text,
  `field_ft_80` tinytext,
  `field_id_81` float DEFAULT '0',
  `field_ft_81` tinytext,
  `field_id_82` float DEFAULT '0',
  `field_ft_82` tinytext,
  `field_id_83` text,
  `field_ft_83` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_0`, `field_ft_0`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_25`, `field_ft_25`, `field_id_26`, `field_ft_26`, `field_id_27`, `field_ft_27`, `field_id_28`, `field_ft_28`, `field_id_29`, `field_ft_29`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_41`, `field_ft_41`, `field_id_42`, `field_ft_42`, `field_id_43`, `field_ft_43`, `field_id_44`, `field_ft_44`, `field_id_45`, `field_ft_45`, `field_id_46`, `field_ft_46`, `field_id_47`, `field_ft_47`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_54`, `field_ft_54`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_64`, `field_ft_64`, `field_id_65`, `field_ft_65`, `field_id_66`, `field_ft_66`, `field_id_67`, `field_ft_67`, `field_id_68`, `field_ft_68`, `field_id_70`, `field_ft_70`, `field_id_71`, `field_ft_71`, `field_id_72`, `field_ft_72`, `field_id_73`, `field_ft_73`, `field_id_74`, `field_ft_74`, `field_id_75`, `field_ft_75`, `field_id_76`, `field_ft_76`, `field_id_77`, `field_ft_77`, `field_id_78`, `field_ft_78`, `field_id_79`, `field_ft_79`, `field_id_80`, `field_ft_80`, `field_id_81`, `field_ft_81`, `field_id_82`, `field_ft_82`, `field_id_83`, `field_ft_83`)
VALUES
	(1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml',' ','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(2,1,1,NULL,NULL,'field_id_8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>field_id_58</p>','none','','none','','none','DU4jiPNuzMNfQ3uLZLA','none','','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(3,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque massa lectus, tincidunt ut erat tincidunt, lobortis dapibus magna. Nulla et luctus quam, nec efficitur turpis. Quisque risus felis, congue sit amet congue sed, efficitur id metus. Etiam nec sollicitudin purus. Morbi finibus porttitor tortor. In vulputate ante urna, vitae tristique ligula volutpat vitae. Phasellus nec mi dictum, posuere diam eu, placerat nisi. Donec in enim vitae turpis auctor ultrices.</p>\n\n<p>Integer pulvinar purus id diam finibus convallis. Phasellus sollicitudin dapibus ex, molestie congue lectus placerat ut. Mauris at elit euismod, aliquet nisl ut, aliquet ante. Phasellus sodales malesuada vulputate. Maecenas quis elit mauris. Ut hendrerit tincidunt nunc ut volutpat. Quisque sit amet sollicitudin ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec tristique sapien vitae sem auctor vulputate. Donec tempus, lacus id dignissim mollis, mauris ante finibus ex, at lobortis metus lectus nec eros. Donec vulputate quam ac velit blandit vulputate</p>',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(5,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(6,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','[store] SKU-XXX-SM SKU-XXX-MD SKU-XXX-LG','none','preorder','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(7,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','[store] SKU-shoes','none','preorder','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(8,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(9,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(10,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(12,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(13,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(14,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(15,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(16,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(17,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(18,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(19,1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','2','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','3','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(20,1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','1','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','4','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(21,1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','3','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','2','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(22,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(23,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(24,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(25,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(26,1,3,NULL,NULL,'<p>Gabriel Medina is the 2014 ASP World Champion</p>','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(27,1,3,NULL,NULL,'<p><span style=\"line-height:1.6\">Chris Bryan, Phantom cameras, and the world&#39;s best surfers collide</span></p>','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(28,1,3,NULL,NULL,'<p><span style=\"line-height:1.6\">LNF presents this epic hype reel celebrating the winter surf season</span></p>','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(29,1,3,NULL,NULL,'<p><span style=\"line-height:1.6\">A long-awaited swell brings perfect conditions</span></p>','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(30,1,3,NULL,NULL,'<p>Finals day at the Quiksilver and Roxy Pro contests</p>','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(31,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(32,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(33,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(34,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(35,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(36,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(37,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(38,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(39,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(40,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(41,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(42,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(43,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(44,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(45,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(46,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(47,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(48,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(49,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(50,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(51,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(52,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(53,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(54,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(55,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(56,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(57,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(58,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(59,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(60,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(61,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(62,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(63,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(64,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(65,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(66,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(67,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(68,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(69,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(70,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(71,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(72,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(73,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(74,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(75,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(76,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(77,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(78,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(79,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,'','xhtml','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(80,1,3,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','xhtml','','xhtml','','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none',0,'none',0,'none','','none'),
	(81,1,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','freedom-pass.jpg','none','','none','http://newism.com.au','none',1,'none',1,'none','','none'),
	(82,1,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','em-sp15-wino-300x250.jpg','none','','none','','none',0,'none',0,'none',NULL,NULL),
	(83,1,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','ad-gopro.jpg','none','','none','','none',0,'none',0,'none',NULL,NULL),
	(84,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_entries_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;

CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;

INSERT INTO `exp_channel_entries_autosave` (`entry_id`, `original_entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`, `entry_data`)
VALUES
	(1,0,1,3,1,NULL,'127.0.0.1','Article 1','article-1','open','y',0,0,0,0,'n','n',1426071240,'2015','03','11',0,0,20150311105535,0,0,'a:11:{s:8:\"entry_id\";i:1;s:10:\"channel_id\";s:1:\"3\";s:7:\"site_id\";s:1:\"1\";s:10:\"field_id_8\";s:0:\"\";s:10:\"field_id_9\";a:2:{i:0;s:1:\"4\";i:1;s:0:\"\";}s:11:\"field_id_10\";a:1:{i:0;s:0:\"\";}s:11:\"field_id_32\";s:0:\"\";s:11:\"field_id_33\";s:0:\"\";s:11:\"field_id_34\";s:0:\"\";s:17:\"original_entry_id\";i:0;s:21:\"nsm_better_meta__meta\";a:1:{i:0;a:5:{s:2:\"id\";s:0:\"\";s:13:\"entry_default\";s:0:\"\";s:11:\"language_id\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}}'),
	(3,2,1,1,1,NULL,'127.0.0.1','Homepage 2','homepage-2','open','y',0,0,0,0,'n','n',1426053120,'2015','03','11',0,0,20150314085304,NULL,0,'a:8:{s:10:\"channel_id\";s:1:\"1\";s:11:\"field_id_58\";s:18:\"<p>field_id_58</p>\";s:11:\"field_id_59\";a:1:{i:0;s:0:\"\";}s:11:\"field_id_60\";a:1:{i:0;s:0:\"\";}s:11:\"field_id_61\";s:19:\"DU4jiPNuzMNfQ3uLZLA\";s:8:\"entry_id\";s:1:\"2\";s:17:\"original_entry_id\";s:1:\"2\";s:21:\"nsm_better_meta__meta\";a:1:{i:0;a:5:{s:2:\"id\";s:1:\"2\";s:13:\"entry_default\";s:1:\"y\";s:11:\"language_id\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}}'),
	(10,0,1,12,1,NULL,'127.0.0.1','Test','test','open','y',0,0,0,0,'n','n',1426827720,'2015','03','20',0,0,20150320050309,0,0,'a:14:{s:8:\"entry_id\";i:10;s:10:\"channel_id\";s:2:\"12\";s:7:\"site_id\";s:1:\"1\";s:11:\"field_id_77\";s:0:\"\";s:11:\"field_id_78\";a:1:{i:0;s:0:\"\";}s:11:\"field_id_79\";s:0:\"\";s:17:\"original_entry_id\";i:0;s:21:\"nsm_better_meta__meta\";a:1:{i:0;a:5:{s:2:\"id\";s:0:\"\";s:13:\"entry_default\";s:0:\"\";s:11:\"language_id\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}s:18:\"forum__forum_title\";s:0:\"\";s:17:\"forum__forum_body\";s:0:\"\";s:15:\"forum__forum_id\";s:1:\"2\";s:21:\"forum__forum_topic_id\";s:0:\"\";s:26:\"nsm_better_meta_new__title\";s:0:\"\";s:32:\"nsm_better_meta_new__description\";s:0:\"\";}');

/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_fields`;

CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`)
VALUES
	(60,1,6,'cf_homepage_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToxIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToibiI7czo5OiJzaG93X2NvbHMiO2E6NDp7aTowO3M6NDoibmFtZSI7aToxO3M6NjoiZm9sZGVyIjtpOjI7czo0OiJkYXRlIjtpOjM7czo0OiJzaXplIjt9czo1OiJtdWx0aSI7czoxOiJuIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(61,1,6,'cf_homepage_security_token','Security Token','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO2I6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(58,1,6,'cf_homepage_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(59,1,6,'cf_homepage_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo0OiJlZToxIjt9czo0OiJ2aWV3IjtzOjY6InRodW1icyI7czoxMDoidGh1bWJfc2l6ZSI7czo1OiJzbWFsbCI7czoxNDoic2hvd19maWxlbmFtZXMiO3M6MToibiI7czo5OiJzaG93X2NvbHMiO2E6NDp7aTowO3M6NDoibmFtZSI7aToxO3M6NjoiZm9sZGVyIjtpOjI7czo0OiJkYXRlIjtpOjM7czo0OiJzaXplIjt9czo1OiJtdWx0aSI7czoxOiJuIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(56,1,10,'cf_page_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(55,1,10,'cf_page_related_articles','Related Articles','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(8,1,2,'cf_article_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(9,1,2,'cf_article_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7czozOiJhbGwiO3M6NDoidmlldyI7czo2OiJ0aHVtYnMiO3M6MTA6InRodW1iX3NpemUiO3M6NToic21hbGwiO3M6MTQ6InNob3dfZmlsZW5hbWVzIjtzOjE6Im4iO3M6OToic2hvd19jb2xzIjthOjQ6e2k6MDtzOjQ6Im5hbWUiO2k6MTtzOjY6ImZvbGRlciI7aToyO3M6NDoiZGF0ZSI7aTozO3M6NDoic2l6ZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(10,1,2,'cf_article_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7czozOiJhbGwiO3M6NDoidmlldyI7czo2OiJ0aHVtYnMiO3M6MTA6InRodW1iX3NpemUiO3M6NToic21hbGwiO3M6MTQ6InNob3dfZmlsZW5hbWVzIjtzOjE6Im4iO3M6OToic2hvd19jb2xzIjthOjQ6e2k6MDtzOjQ6Im5hbWUiO2k6MTtzOjY6ImZvbGRlciI7aToyO3M6NDoiZGF0ZSI7aTozO3M6NDoic2l6ZSI7fXM6NToibXVsdGkiO3M6MToibiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(11,1,3,'cf_brand_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(12,1,3,'cf_brand_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(13,1,3,'cf_brand_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(76,1,11,'cf_topics_ls_shortcut_group_id','Low Search Shortcut Group','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',8,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(75,1,6,'cf_homepage_related_brands','Related Brands','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',9,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI0Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(74,1,6,'cf_homepage_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',8,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(73,1,6,'cf_homepage_most_popular','Most Popular','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YToxNjp7czo4OiJjaGFubmVscyI7YTo0OntpOjA7czoxOiIzIjtpOjE7czoxOiI3IjtpOjI7czoxOiI2IjtpOjM7czoxOiI5Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(19,1,5,'cf_place_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(20,1,5,'cf_place_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(21,1,5,'cf_place_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(22,1,5,'cf_place_address','Address','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(23,1,8,'cf_product_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(24,1,8,'cf_product_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(25,1,8,'cf_product_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(26,1,8,'cf_product_gallery_images','Gallery Images','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(27,1,8,'cf_product_details','Product Details','','store','','0',0,0,6,128,'n','ltr','y','n','none','n',5,'any','YTo4OntzOjIwOiJlbmFibGVfY3VzdG9tX3ByaWNlcyI7czoxOiIwIjtzOjIxOiJlbmFibGVfY3VzdG9tX3dlaWdodHMiO3M6MToiMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(28,1,8,'cf_product_status','Product Status','','fieldpack_dropdown','','0',0,0,6,128,'n','ltr','y','n','xhtml','n',6,'any','YTo3OntzOjc6Im9wdGlvbnMiO2E6Mzp7czo4OiJwcmVvcmRlciI7czo5OiJQcmUtT3JkZXIiO3M6OToiYXZhaWxhYmxlIjtzOjk6IkF2YWlsYWJsZSI7czoxMjoiZGlzY29udGludWVkIjtzOjEyOiJEaXNjb250aW51ZWQiO31zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(29,1,9,'cf_tutorial_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(30,1,9,'cf_tutorial_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(31,1,9,'cf_tutorial_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(32,1,2,'cf_article_related_promotions','Related Promotions','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(33,1,2,'cf_article_related_articles','Related Articles','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(34,1,2,'cf_article_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(71,1,6,'cf_homepage_feature_carousel','Feature Carousel','','blocks','','0',0,0,6,128,'y','ltr','n','n','xhtml','n',5,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(72,1,6,'cf_homepage_feature_form_posts','Feature Forum Posts','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO2I6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(68,1,2,'cf_article_feature_video','Feature Video (YouTube Video ID)','Enter the YouTube Video ID.','text','','0',0,0,6,128,'n','ltr','n','n','none','n',7,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(70,1,11,'cf_topic_content_categories','Content Categories','','nf_categories_field','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YToxODp7czo2OiJncm91cHMiO2E6MTp7aTowO3M6MjoiMTAiO31zOjY6ImZpbHRlciI7czoxOiIwIjtzOjE4OiJmaWx0ZXJfcGxhY2Vob2xkZXIiO3M6MjE6IkZpbHRlciBieSBjYXRlZ29yeS4uLiI7czoyMjoiZmlsdGVyX2V4Y2x1ZGVfcGFyZW50cyI7czoxOiIwIjtzOjIwOiJjYXRlZ29yeV9ncm91cF9uYW1lcyI7czoxOiIxIjtzOjI0OiJjb2xsYXBzZV9jYXRlZ29yeV9ncm91cHMiO3M6MToiMCI7czo5OiJkZWxpbWl0ZXIiO3M6MToifCI7czo3OiJ3cmFwcGVyIjtzOjA6IiI7czoxOToiYXV0b19hc3NpZ25fcGFyZW50cyI7czoxOiIwIjtzOjExOiJwcmltYXJ5X2NhdCI7czoxOiIwIjtzOjk6InN5bmNfY2F0cyI7czoxOiIwIjtzOjIwOiJtdXRlX3VuYXNzaWduZWRfY2F0cyI7czoxOiIwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(38,1,5,'cf_places_related_promotions','Related Promotions','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(39,1,5,'cf_places_related_articles','Related Articles','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(40,1,5,'cf_places_related_Products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(41,1,8,'cf_product_related_brand','Brand','','relationship','','0',0,0,6,128,'n','ltr','y','n','xhtml','n',7,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI0Ijt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MzoiMTAwIjtzOjExOiJvcmRlcl9maWVsZCI7czo1OiJ0aXRsZSI7czo5OiJvcmRlcl9kaXIiO3M6MzoiYXNjIjtzOjE0OiJhbGxvd19tdWx0aXBsZSI7aTowO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(42,1,8,'cf_product_related_promotions','Related Promotions','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',8,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(43,1,8,'cf_product_related_articles','Related Articles','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',9,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(44,1,8,'cf_product_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',10,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(45,1,9,'cf_tutorial_related_promotions','Related Promotions','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(46,1,9,'cf_tutorial_related_articles','Related Articles','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiIzIjt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(47,1,9,'cf_tutorial_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(54,1,10,'cf_page_related_promotions','Related Promotions','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(53,1,10,'cf_page_thumbnail_image','Thumbnail Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(51,1,10,'cf_page_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(52,1,10,'cf_page_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(62,1,11,'cf_topic_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(63,1,11,'cf_topic_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czozOiJhbGwiO31zOjQ6InZpZXciO3M6NjoidGh1bWJzIjtzOjEwOiJ0aHVtYl9zaXplIjtzOjU6InNtYWxsIjtzOjk6InNob3dfY29scyI7YTozOntpOjA7czo2OiJmb2xkZXIiO2k6MTtzOjQ6ImRhdGUiO2k6MjtzOjQ6InNpemUiO31zOjE0OiJzaG93X2ZpbGVuYW1lcyI7czoxOiJuIjtzOjU6Im11bHRpIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(64,1,11,'cf_topic_feature_form_posts','Feature Forum Posts','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO2I6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(65,1,11,'cf_topic_most_popular','Most Popular','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YTo0OntpOjA7czoxOiIzIjtpOjE7czoxOiI2IjtpOjI7czoxOiI3IjtpOjM7czoxOiI5Ijt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MzoiMTAwIjtzOjExOiJvcmRlcl9maWVsZCI7czo1OiJ0aXRsZSI7czo5OiJvcmRlcl9kaXIiO3M6MzoiYXNjIjtzOjE0OiJhbGxvd19tdWx0aXBsZSI7czoxOiIxIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(66,1,11,'cf_topic_related_products','Related Products','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI4Ijt9czo3OiJleHBpcmVkIjtiOjA7czo2OiJmdXR1cmUiO2I6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO2k6MTAwO3M6MTE6Im9yZGVyX2ZpZWxkIjtzOjU6InRpdGxlIjtzOjk6Im9yZGVyX2RpciI7czozOiJhc2MiO3M6MTQ6ImFsbG93X211bHRpcGxlIjtiOjE7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(67,1,11,'cf_topic_related_brands','Related Brands','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI0Ijt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MzoiMTAwIjtzOjExOiJvcmRlcl9maWVsZCI7czo1OiJ0aXRsZSI7czo5OiJvcmRlcl9kaXIiO3M6MzoiYXNjIjtzOjE0OiJhbGxvd19tdWx0aXBsZSI7czoxOiIxIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(77,1,12,'cf_advertisement_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(78,1,12,'cf_advertisement_feature_image','Feature Image','','assets','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMjp7czo4OiJmaWxlZGlycyI7YToxOntpOjA7czo1OiJlZToxMCI7fXM6NDoidmlldyI7czo2OiJ0aHVtYnMiO3M6MTA6InRodW1iX3NpemUiO3M6NToic21hbGwiO3M6MTQ6InNob3dfZmlsZW5hbWVzIjtzOjE6Im4iO3M6OToic2hvd19jb2xzIjthOjQ6e2k6MDtzOjQ6Im5hbWUiO2k6MTtzOjY6ImZvbGRlciI7aToyO3M6NDoiZGF0ZSI7aTozO3M6NDoic2l6ZSI7fXM6NToibXVsdGkiO3M6MToieSI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(79,1,12,'cf_advertisement_tags','Tags','','text','','0',0,0,6,128,'n','ltr','y','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(80,1,12,'cf_advertisement_outgoing_url','Outgoing URL','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(81,1,12,'cf_advertisement_click_val','Click Value','','text','','0',0,0,6,128,'n','ltr','y','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(82,1,12,'cf_advertisement_impression_val','Impression Value','','text','','0',0,0,6,128,'n','ltr','y','n','none','n',6,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(83,1,2,'cf_article_ad_search_query','Advertisement Search Query','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',8,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');

/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_form_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_form_settings`;

CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_member_groups`;

CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_titles`;

CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`)
VALUES
	(1,1,1,1,NULL,'127.0.0.1','Homepage 1','homepage-1','open','y',0,0,0,0,'n','n',1426052820,'2015','03','11',0,0,20150322010847,0,0),
	(2,1,1,1,NULL,'127.0.0.1','Homepage 2','homepage-2','Pending','y',0,0,0,0,'n','n',1426053120,'2015','03','11',0,0,20150314084947,0,0),
	(3,1,10,1,NULL,'127.0.0.1','Articles: Index','articles-index','open','y',0,0,0,0,'n','n',1426070820,'2015','03','11',0,0,20150318040552,0,0),
	(5,1,10,1,NULL,'127.0.0.1','Products: Index','products-index','open','y',0,0,0,0,'n','n',1426480200,'2015','03','16',0,0,20150316043259,0,0),
	(6,1,8,1,NULL,'127.0.0.1','Skate Shoes','skate-shoes','open','y',0,0,0,0,'n','n',1426480500,'2015','03','16',0,0,20150324115204,0,0),
	(7,1,8,1,NULL,'127.0.0.1','Surf Shoes','surf-shoes','open','y',0,0,0,0,'n','n',1426507020,'2015','03','16',0,0,20150324115157,0,0),
	(8,1,10,1,NULL,'127.0.0.1','Account: Index','account-index','open','y',0,0,0,0,'n','n',1426511760,'2015','03','17',0,0,20150316131648,0,0),
	(9,1,10,1,NULL,'127.0.0.1','Store: Orders','store-orders','open','y',0,0,0,0,'n','n',1426512120,'2015','03','17',0,0,20150316141127,0,0),
	(10,1,10,1,NULL,'127.0.0.1','Store: Order / Checkout','store-order-checkout','open','y',0,0,0,0,'n','n',1426513560,'2015','03','17',0,0,20150316134855,0,0),
	(12,1,10,1,NULL,'127.0.0.1','Store: Order / Details','store-order-details','open','y',0,0,0,0,'n','n',1426513860,'2015','03','17',0,0,20150316135114,0,0),
	(13,1,10,1,NULL,'127.0.0.1','Store: Order / Payment','store-order-payment','open','y',0,0,0,0,'n','n',1426514040,'2015','03','17',0,0,20150316135421,0,0),
	(14,1,10,1,NULL,'127.0.0.1','Store: Order / Receipt','store-order-receipt','open','y',0,0,0,0,'n','n',1426514040,'2015','03','17',0,0,20150316135431,0,0),
	(15,1,10,1,NULL,'127.0.0.1','Search: Index','search-index','open','y',0,0,0,0,'n','n',1426515720,'2015','03','17',0,0,20150316142235,0,0),
	(16,1,10,1,NULL,'127.0.0.1','Search: Save Shortcut','search-save-shortcut','open','y',0,0,0,0,'n','n',1426517520,'2015','03','17',0,0,20150316145251,0,0),
	(17,1,10,1,NULL,'127.0.0.1','Newsletter: Index','newsletter-index','open','y',0,0,0,0,'n','n',1426548600,'2015','03','17',0,0,20150316233028,0,0),
	(18,1,10,1,NULL,'127.0.0.1','Search: Save Shortcut','search-save-shortcut1','open','y',0,0,0,0,'n','n',1426549140,'2015','03','17',0,0,20150316233929,0,0),
	(19,1,11,1,NULL,'127.0.0.1','Skate','skate','open','y',0,0,0,0,'n','n',1426553640,'2015','03','17',0,0,20150320014450,0,0),
	(20,1,11,1,NULL,'127.0.0.1','Snow','snow','open','y',0,0,0,0,'n','n',1426553820,'2015','03','17',0,0,20150319232102,0,0),
	(21,1,11,1,NULL,'127.0.0.1','Surf','surf','open','y',0,0,0,0,'n','n',1426553820,'2015','03','17',0,0,20150319232046,0,0),
	(22,1,10,1,NULL,'127.0.0.1','Brands: Index','brands-index','open','y',0,0,0,0,'n','n',1426576080,'2015','03','17',0,0,20150317070844,0,0),
	(23,1,10,1,NULL,'127.0.0.1','Tutorials: Index','tutorials-index','open','y',0,0,0,0,'n','n',1426576080,'2015','03','17',0,0,20150317070851,0,0),
	(24,1,10,1,NULL,'127.0.0.1','Places: Index','places-index','open','y',0,0,0,0,'n','n',1426576080,'2015','03','17',0,0,20150317070858,0,0),
	(25,1,10,1,NULL,'127.0.0.1','Promotions: Index','promotions-index','open','y',0,0,0,0,'n','n',1426576200,'2015','03','17',0,0,20150317071050,0,0),
	(80,1,3,1,3,'127.0.0.1','Test w/ Forum','test-w-forum','open','y',0,0,0,0,'n','n',1426676280,'2015','03','18',0,0,20150318105854,0,0),
	(26,1,3,1,NULL,'127.0.0.1','Medina Conquers the World','medina-conquers-the-world','open','y',0,0,0,0,'n','n',1426582620,'2015','03','17',0,0,20150317085826,0,0),
	(27,1,3,1,NULL,'127.0.0.1','Surfing @ 1000 Frames Per Second','surfing-1000-frames-per-second','open','y',0,0,0,0,'n','n',1426582680,'2015','03','17',0,0,20150317085849,0,0),
	(28,1,3,1,NULL,'127.0.0.1','Winter is Coming','winter-is-coming','open','y',0,0,0,0,'n','n',1426582680,'2015','03','17',0,0,20150317085906,0,0),
	(29,1,3,1,NULL,'127.0.0.1','Behind the Glass: Barta','behind-the-glass-barta','open','y',0,0,0,0,'n','n',1426582740,'2015','03','17',0,0,20150317085929,0,0),
	(30,1,3,1,NULL,'127.0.0.1','WSL: Gold Coast Highlights','wsl-gold-coast-highlights','open','y',0,0,0,0,'n','n',1426582740,'2015','03','17',0,0,20150317085947,0,0),
	(31,1,3,1,NULL,'127.0.0.1','Is This the Best Job on Earth?','is-this-the-best-job-on-earth','open','y',0,0,0,0,'n','n',1426582980,'2015','03','17',0,0,20150317090338,0,0),
	(32,1,3,1,NULL,'127.0.0.1','Who is Matt Banting?','who-is-matt-banting','open','y',0,0,0,0,'n','n',1426582980,'2015','03','17',0,0,20150317090354,0,0),
	(33,1,3,1,NULL,'127.0.0.1','Jordy Smith: Working Class','jordy-smith-working-class','open','y',0,0,0,0,'n','n',1426582980,'2015','03','17',0,0,20150317090402,0,0),
	(34,1,3,1,NULL,'127.0.0.1','Makua Rothman: Big Wave World Champion','makua-rothman-big-wave-world-champion','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090411,0,0),
	(35,1,3,1,NULL,'127.0.0.1','Quiksilver Pro 2015: Teaser','quiksilver-pro-2015-teaser','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090421,0,0),
	(36,1,3,1,NULL,'127.0.0.1','Cyclone Marcia\'s Gift','cyclone-marcias-gift','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090431,0,0),
	(37,1,3,1,NULL,'127.0.0.1','Yago Dora: Round Two','yago-dora-round-two','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090439,0,0),
	(38,1,3,1,NULL,'127.0.0.1','Brad Norris: The Last Screw Loose','brad-norris-the-last-screw-loose','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090446,0,0),
	(39,1,3,1,NULL,'127.0.0.1','Pipe Beasts','pipe-beasts','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090454,0,0),
	(40,1,3,1,NULL,'127.0.0.1','4K Mondays: John John Florence','4k-mondays-john-john-florence','open','y',0,0,0,0,'n','n',1426583040,'2015','03','17',0,0,20150317090503,0,0),
	(41,1,3,1,NULL,'127.0.0.1','Pipeline\'s Beautiful Chaos','pipelines-beautiful-chaos','open','y',0,0,0,0,'n','n',1426584300,'2015','03','17',0,0,20150317092556,0,0),
	(42,1,3,1,NULL,'127.0.0.1','Carlos Munoz: Cacique Del Mar','carlos-munoz-cacique-del-mar','open','y',0,0,0,0,'n','n',1426584300,'2015','03','17',0,0,20150317092605,0,0),
	(43,1,3,1,NULL,'127.0.0.1','Best of Brendon Gibbons','best-of-brendon-gibbons','open','y',0,0,0,0,'n','n',1426584360,'2015','03','17',0,0,20150317092615,0,0),
	(44,1,3,1,NULL,'127.0.0.1','Bending Jaws','bending-jaws','open','y',0,0,0,0,'n','n',1426584360,'2015','03','17',0,0,20150317094237,0,0),
	(45,1,3,1,NULL,'127.0.0.1','Shane O\'Neill is a Robot','shane-oneill-is-a-robot','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094319,0,0),
	(46,1,3,1,NULL,'127.0.0.1','Berrics: Bangin\' Roundup','berrics-bangin-roundup','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094332,0,0),
	(47,1,3,1,NULL,'127.0.0.1','Brixton: Winter in LA','brixton-winter-in-la','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094339,0,0),
	(48,1,3,1,NULL,'127.0.0.1','12-Year-Old Japanese Wonderkid','12-year-old-japanese-wonderkid','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094347,0,0),
	(49,1,3,1,NULL,'127.0.0.1','Desert Skateboarding','desert-skateboarding','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094353,0,0),
	(50,1,3,1,NULL,'127.0.0.1','Lil Wayne Returns','lil-wayne-returns','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094359,0,0),
	(51,1,3,1,NULL,'127.0.0.1','Didrik Galasso — Full Part','didrik-galasso-full-part','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094405,0,0),
	(52,1,3,1,NULL,'127.0.0.1','Dave Bachinsky: Welcome to Darkstar','dave-bachinsky-welcome-to-darkstar','open','y',0,0,0,0,'n','n',1426585380,'2015','03','17',0,0,20150317094412,0,0),
	(53,1,3,1,NULL,'127.0.0.1','Mikey Whitehouse is Mental','mikey-whitehouse-is-mental','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094425,0,0),
	(54,1,3,1,NULL,'127.0.0.1','Ben Raybourn — Full Part','ben-raybourn-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094431,0,0),
	(55,1,3,1,NULL,'127.0.0.1','The Halfpipe House','the-halfpipe-house','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094437,0,0),
	(56,1,3,1,NULL,'127.0.0.1','Shane O\'Neill — Full Part','shane-oneill-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094444,0,0),
	(57,1,3,1,NULL,'127.0.0.1','Brandon Gironda — Full Part','brandon-gironda-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094451,0,0),
	(58,1,3,1,NULL,'127.0.0.1','Aaron \"Jaws\" Homoki — Roof Part','aaron-jaws-homoki-roof-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094458,0,0),
	(59,1,3,1,NULL,'127.0.0.1','Chris Russell — Full Part','chris-russell-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094504,0,0),
	(60,1,3,1,NULL,'127.0.0.1','Vans BOWL-A-RAMA Bondi 2015: Full Recap','vans-bowl-a-rama-bondi-2015-full-recap','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094510,0,0),
	(61,1,3,1,NULL,'127.0.0.1','True to This: Harry Lintell','true-to-this-harry-lintell','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094520,0,0),
	(62,1,3,1,NULL,'127.0.0.1','TJ Rogers — Full Part','tj-rogers-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094526,0,0),
	(63,1,3,1,NULL,'127.0.0.1','Degrees North — Teaser','degrees-north-teaser','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094532,0,0),
	(64,1,3,1,NULL,'127.0.0.1','David Gravette — Full Part','david-gravette-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094538,0,0),
	(65,1,3,1,NULL,'127.0.0.1','David Gravette\'s Greatest Rails','david-gravettes-greatest-rails','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094547,0,0),
	(66,1,3,1,NULL,'127.0.0.1','Skatelife: Bob Burnquist','skatelife-bob-burnquist','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094553,0,0),
	(67,1,3,1,NULL,'127.0.0.1','Chris Joslin — Another Full Part','chris-joslin-another-full-part','open','y',0,0,0,0,'n','n',1426585440,'2015','03','17',0,0,20150317094600,0,0),
	(68,1,3,1,NULL,'127.0.0.1','Daewon Song: 2014','daewon-song-2014','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150320063552,0,0),
	(69,1,3,1,NULL,'127.0.0.1','Stale Sandbech: LAAX Sessions','stale-sandbech-laax-sessions','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094655,0,0),
	(70,1,3,1,NULL,'127.0.0.1','Sierra Surf Chronicles — Part 2','sierra-surf-chronicles-part-2','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094704,0,0),
	(71,1,3,1,NULL,'127.0.0.1','Finland — Snowboarding: For Me','finland-snowboarding-for-me','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094712,0,0),
	(72,1,3,1,NULL,'127.0.0.1','Think Thank: Weekend Fire','think-thank-weekend-fire','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094727,0,0),
	(73,1,3,1,NULL,'127.0.0.1','Rusty Toothbrush: Mess Up Meribel','rusty-toothbrush-mess-up-meribel','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150318041204,0,0),
	(74,1,3,1,NULL,'127.0.0.1','Hold it Down: More Mammoth Hammers','hold-it-down-more-mammoth-hammers','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094742,0,0),
	(75,1,3,1,NULL,'127.0.0.1','Grilosodes: Austrian Backcountry','grilosodes-austrian-backcountry','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094749,0,0),
	(76,1,3,1,NULL,'127.0.0.1','Sunday in the Park — Episode 10','sunday-in-the-park-episode-10','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094756,0,0),
	(77,1,3,1,NULL,'127.0.0.1','Burton US Open: Slopestyle Highlights','burton-us-open-slopestyle-highlights','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094805,0,0),
	(78,1,3,1,NULL,'127.0.0.1','Burton US Open: Halfpipe Highlights','burton-us-open-halfpipe-highlights','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094856,0,0),
	(79,1,3,1,NULL,'127.0.0.1','This Just Happened — Chapter 2 — Sexual Snowboarding','this-just-happened-chapter-2-sexual-snowboarding','open','y',0,0,0,0,'n','n',1426585560,'2015','03','17',0,0,20150317094902,0,0),
	(81,1,12,1,NULL,'127.0.0.1','Snow Advertisement','ad-snow-advertisement','open','y',0,0,0,0,'n','n',1426827840,'2015','03','20',0,0,20150320062203,0,0),
	(82,1,12,1,NULL,'127.0.0.1','Skate Advertisement','ad-skate-advertisement','open','y',0,0,0,0,'n','n',1426831080,'2015','03','20',0,0,20150320070441,0,0),
	(83,1,12,1,NULL,'127.0.0.1','Surf Advertisement','ad-surf-advertisement','open','y',0,0,0,0,'n','n',1426832520,'2015','03','20',0,0,20150320070516,0,0),
	(84,1,4,1,NULL,'127.0.0.1','Burton','burton','open','y',0,0,0,0,'n','n',1427192280,'2015','03','24',0,0,20150324124916,0,0);

/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channels`;

CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`)
VALUES
	(1,1,'homepages','Homepages','','','en',2,0,1426053120,0,'6',1,'open',6,NULL,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','y','','n',10,'','',0),
	(3,1,'articles','Articles','',NULL,'en',55,0,1426676280,0,'3|10',1,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(4,1,'brands','Brands','','','en',1,0,1427192280,0,'|8|10',1,'open',3,11,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','y','','n',10,'','',0),
	(12,1,'advertisements','Advertisements','',NULL,'en',3,0,1426832520,0,'11|10',NULL,'open',12,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(6,1,'places','Places','',NULL,'en',0,0,0,0,'5',1,'open',5,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(7,1,'promotions','Promotions','',NULL,'en',0,0,0,0,'7',1,'open',7,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(8,1,'products','Products','',NULL,'en',2,0,1426507020,0,'8|10',1,'open',8,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(9,1,'tutorials','Tutorials','',NULL,'en',0,0,0,0,'9',1,'open',9,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(10,1,'pages','Pages','',NULL,'en',16,0,1426576200,0,'2',1,'open',10,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0),
	(11,1,'topics','Topics','',NULL,'en',3,0,1426553820,0,'10',NULL,'open',11,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,NULL,NULL,0);

/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_content_types`;

CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;

INSERT INTO `exp_content_types` (`content_type_id`, `name`)
VALUES
	(1,'grid'),
	(2,'channel'),
	(3,'blocks');

/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_log`;

CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`)
VALUES
	(1,1,1,'leevigraham','127.0.0.1',1425471998,'Logged in'),
	(2,1,1,'leevigraham','127.0.0.1',1425476168,'Logged in'),
	(3,1,1,'leevigraham','127.0.0.1',1425478467,'Logged in'),
	(4,1,1,'leevigraham','127.0.0.1',1425479181,'Channel Created:&nbsp;&nbsp;Pages'),
	(5,1,1,'leevigraham','127.0.0.1',1425479198,'Channel Created:&nbsp;&nbsp;News'),
	(6,1,1,'leevigraham','127.0.0.1',1425479931,'Field Group Created:&nbsp;pages'),
	(7,1,1,'leevigraham','127.0.0.1',1425480384,'Channel Created:&nbsp;&nbsp;Blog'),
	(8,1,1,'leevigraham','127.0.0.1',1425482483,'Category Group Created:&nbsp;&nbsp;Blog'),
	(9,1,1,'leevigraham','127.0.0.1',1425482504,'Channel Created:&nbsp;&nbsp;Blog2'),
	(10,1,1,'leevigraham','127.0.0.1',1425483368,'Field Group Created:&nbsp;Products'),
	(11,1,1,'leevigraham','127.0.0.1',1425483372,'Category Group Created:&nbsp;&nbsp;Products'),
	(12,1,1,'leevigraham','127.0.0.1',1425483388,'Channel Created:&nbsp;&nbsp;Products'),
	(13,1,1,'leevigraham','127.0.0.1',1425484203,'Field Group Created:&nbsp;Articles'),
	(14,1,1,'leevigraham','127.0.0.1',1425484204,'Channel Created:&nbsp;&nbsp;Articles'),
	(15,1,1,'leevigraham','127.0.0.1',1425484251,'Channel Deleted:&nbsp;&nbsp;Articles'),
	(16,1,1,'leevigraham','127.0.0.1',1425484253,'Channel Deleted:&nbsp;&nbsp;Blog'),
	(17,1,1,'leevigraham','127.0.0.1',1425484254,'Channel Deleted:&nbsp;&nbsp;Blog2'),
	(18,1,1,'leevigraham','127.0.0.1',1425484256,'Channel Deleted:&nbsp;&nbsp;Products'),
	(19,1,1,'leevigraham','127.0.0.1',1425484269,'Category Group Deleted:&nbsp;&nbsp;Blog'),
	(20,1,1,'leevigraham','127.0.0.1',1425484271,'Category Group Deleted:&nbsp;&nbsp;Products'),
	(21,1,1,'leevigraham','127.0.0.1',1425484277,'Field group Deleted:&nbsp;&nbsp;Articles'),
	(22,1,1,'leevigraham','127.0.0.1',1425484279,'Field group Deleted:&nbsp;&nbsp;Blog'),
	(23,1,1,'leevigraham','127.0.0.1',1425484281,'Field group Deleted:&nbsp;&nbsp;pages'),
	(24,1,1,'leevigraham','127.0.0.1',1425484282,'Field group Deleted:&nbsp;&nbsp;Products'),
	(25,1,1,'leevigraham','127.0.0.1',1425484293,'Field Group Created:&nbsp;Articles'),
	(26,1,1,'leevigraham','127.0.0.1',1425484316,'Category Group Created:&nbsp;&nbsp;Articles'),
	(27,1,1,'leevigraham','127.0.0.1',1425484320,'Channel Created:&nbsp;&nbsp;Articles'),
	(28,1,1,'leevigraham','127.0.0.1',1425484353,'Field Group Created:&nbsp;Brands'),
	(29,1,1,'leevigraham','127.0.0.1',1425484353,'Category Group Created:&nbsp;&nbsp;Brands'),
	(30,1,1,'leevigraham','127.0.0.1',1425484353,'Channel Created:&nbsp;&nbsp;Brands'),
	(31,1,1,'leevigraham','127.0.0.1',1425484355,'Field Group Created:&nbsp;Products'),
	(32,1,1,'leevigraham','127.0.0.1',1425484356,'Category Group Created:&nbsp;&nbsp;Products'),
	(33,1,1,'leevigraham','127.0.0.1',1425484356,'Channel Created:&nbsp;&nbsp;Products'),
	(34,1,1,'leevigraham','127.0.0.1',1425484527,'Field group Deleted:&nbsp;&nbsp;Products'),
	(35,1,1,'leevigraham','127.0.0.1',1425484541,'Field group Deleted:&nbsp;&nbsp;Articles'),
	(36,1,1,'leevigraham','127.0.0.1',1425484543,'Field group Deleted:&nbsp;&nbsp;Brands'),
	(37,1,1,'leevigraham','127.0.0.1',1425484556,'Field Group Created:&nbsp;Brands'),
	(38,1,1,'leevigraham','127.0.0.1',1425484571,'Category Group Deleted:&nbsp;&nbsp;Articles'),
	(39,1,1,'leevigraham','127.0.0.1',1425484574,'Category Group Deleted:&nbsp;&nbsp;Brands'),
	(40,1,1,'leevigraham','127.0.0.1',1425484575,'Category Group Deleted:&nbsp;&nbsp;Products'),
	(41,1,1,'leevigraham','127.0.0.1',1425484595,'Category Group Created:&nbsp;&nbsp;Brands'),
	(42,1,1,'leevigraham','127.0.0.1',1425484599,'Channel Created:&nbsp;&nbsp;Brands'),
	(43,1,1,'leevigraham','127.0.0.1',1425484615,'Field Group Created:&nbsp;Products'),
	(44,1,1,'leevigraham','127.0.0.1',1425484616,'Category Group Created:&nbsp;&nbsp;Products'),
	(45,1,1,'leevigraham','127.0.0.1',1425484616,'Channel Created:&nbsp;&nbsp;Products'),
	(46,1,1,'leevigraham','127.0.0.1',1425484724,'Field Group Created:&nbsp;Articles'),
	(47,1,1,'leevigraham','127.0.0.1',1425484724,'Category Group Created:&nbsp;&nbsp;Articles'),
	(48,1,1,'leevigraham','127.0.0.1',1425484725,'Channel Created:&nbsp;&nbsp;Articles'),
	(49,1,1,'leevigraham','127.0.0.1',1425501987,'Logged in'),
	(50,1,1,'leevigraham','127.0.0.1',1425516596,'Logged in'),
	(51,1,1,'leevigraham','127.0.0.1',1425519062,'Logged in'),
	(52,1,1,'leevigraham','127.0.0.1',1425549038,'Logged in'),
	(53,1,1,'leevigraham','127.0.0.1',1425549049,'Channel Deleted:&nbsp;&nbsp;Articles'),
	(54,1,1,'leevigraham','127.0.0.1',1425549050,'Channel Deleted:&nbsp;&nbsp;Brands'),
	(55,1,1,'leevigraham','127.0.0.1',1425549052,'Channel Deleted:&nbsp;&nbsp;Products'),
	(56,1,1,'leevigraham','127.0.0.1',1425549063,'Field group Deleted:&nbsp;&nbsp;Articles'),
	(57,1,1,'leevigraham','127.0.0.1',1425549065,'Field group Deleted:&nbsp;&nbsp;Brands'),
	(58,1,1,'leevigraham','127.0.0.1',1425549066,'Field group Deleted:&nbsp;&nbsp;Products'),
	(59,1,1,'leevigraham','127.0.0.1',1425549074,'Category Group Deleted:&nbsp;&nbsp;Articles'),
	(60,1,1,'leevigraham','127.0.0.1',1425549076,'Category Group Deleted:&nbsp;&nbsp;Brands'),
	(61,1,1,'leevigraham','127.0.0.1',1425549077,'Category Group Deleted:&nbsp;&nbsp;Products'),
	(62,1,1,'leevigraham','127.0.0.1',1425997242,'Logged in'),
	(63,1,1,'leevigraham','127.0.0.1',1425997958,'Category Group Created:&nbsp;&nbsp;Brands'),
	(64,1,1,'leevigraham','127.0.0.1',1425997959,'Channel Created:&nbsp;&nbsp;Brands'),
	(65,1,1,'leevigraham','127.0.0.1',1425997966,'Field Group Created:&nbsp;Brands'),
	(66,1,1,'leevigraham','127.0.0.1',1425997998,'Field group Deleted:&nbsp;&nbsp;Brands'),
	(67,1,1,'leevigraham','127.0.0.1',1425998154,'Field Group Created:&nbsp;Pages'),
	(68,1,1,'leevigraham','127.0.0.1',1425998155,'Category Group Created:&nbsp;&nbsp;Pages'),
	(69,1,1,'leevigraham','127.0.0.1',1425998155,'Channel Created:&nbsp;&nbsp;Blog'),
	(70,1,1,'leevigraham','127.0.0.1',1425998167,'Field Group Created:&nbsp;Articles'),
	(71,1,1,'leevigraham','127.0.0.1',1425998168,'Category Group Created:&nbsp;&nbsp;Articles'),
	(72,1,1,'leevigraham','127.0.0.1',1425998168,'Channel Created:&nbsp;&nbsp;Articles'),
	(73,1,1,'leevigraham','127.0.0.1',1425998177,'Field Group Created:&nbsp;Brands'),
	(74,1,1,'leevigraham','127.0.0.1',1425998178,'Channel Created:&nbsp;&nbsp;Brands'),
	(75,1,1,'leevigraham','127.0.0.1',1425998187,'Field Group Created:&nbsp;Gear'),
	(76,1,1,'leevigraham','127.0.0.1',1425998187,'Category Group Created:&nbsp;&nbsp;Gear'),
	(77,1,1,'leevigraham','127.0.0.1',1425998188,'Channel Created:&nbsp;&nbsp;Gear'),
	(78,1,1,'leevigraham','127.0.0.1',1425998243,'Field Group Created:&nbsp;Places'),
	(79,1,1,'leevigraham','127.0.0.1',1425998244,'Category Group Created:&nbsp;&nbsp;Places'),
	(80,1,1,'leevigraham','127.0.0.1',1425998244,'Channel Created:&nbsp;&nbsp;Places'),
	(81,1,1,'leevigraham','127.0.0.1',1425998588,'Field Group Created:&nbsp;Homepages'),
	(82,1,1,'leevigraham','127.0.0.1',1425998588,'Category Group Created:&nbsp;&nbsp;Homepages'),
	(83,1,1,'leevigraham','127.0.0.1',1425998589,'Channel Created:&nbsp;&nbsp;Homepage'),
	(84,1,1,'leevigraham','127.0.0.1',1425998610,'Channel Created:&nbsp;&nbsp;Blog'),
	(85,1,1,'leevigraham','127.0.0.1',1425998627,'Channel Created:&nbsp;&nbsp;Articles'),
	(86,1,1,'leevigraham','127.0.0.1',1425998668,'Channel Created:&nbsp;&nbsp;Brands'),
	(87,1,1,'leevigraham','127.0.0.1',1425998679,'Channel Created:&nbsp;&nbsp;Gear'),
	(88,1,1,'leevigraham','127.0.0.1',1425998685,'Channel Created:&nbsp;&nbsp;Places'),
	(89,1,1,'leevigraham','127.0.0.1',1425998690,'Field Group Created:&nbsp;Promotions'),
	(90,1,1,'leevigraham','127.0.0.1',1425998690,'Category Group Created:&nbsp;&nbsp;Promotions'),
	(91,1,1,'leevigraham','127.0.0.1',1425998691,'Channel Created:&nbsp;&nbsp;Promotions'),
	(92,1,1,'leevigraham','127.0.0.1',1425998696,'Field Group Created:&nbsp;Products'),
	(93,1,1,'leevigraham','127.0.0.1',1425998696,'Category Group Created:&nbsp;&nbsp;Products'),
	(94,1,1,'leevigraham','127.0.0.1',1425998697,'Channel Created:&nbsp;&nbsp;Products'),
	(95,1,1,'leevigraham','127.0.0.1',1425998707,'Field Group Created:&nbsp;Tutorials'),
	(96,1,1,'leevigraham','127.0.0.1',1425998707,'Category Group Created:&nbsp;&nbsp;Tutorials'),
	(97,1,1,'leevigraham','127.0.0.1',1425998708,'Channel Created:&nbsp;&nbsp;Tutorials'),
	(98,1,1,'leevigraham','127.0.0.1',1425998998,'Channel Created:&nbsp;&nbsp;Pages'),
	(99,1,1,'leevigraham','127.0.0.1',1425999034,'Field group Deleted:&nbsp;&nbsp;Pages'),
	(100,1,1,'leevigraham','127.0.0.1',1425999045,'Field Group Created:&nbsp;Pages'),
	(101,1,1,'leevigraham','127.0.0.1',1426021326,'Logged in'),
	(102,1,1,'leevigraham','127.0.0.1',1426037751,'Logged in'),
	(103,1,1,'leevigraham','127.0.0.1',1426052135,'Logged in'),
	(104,1,1,'leevigraham','127.0.0.1',1426052466,'Logged in'),
	(105,1,1,'leevigraham','127.0.0.1',1426052947,'Custom Field Deleted:&nbsp;Security Token'),
	(106,1,1,'leevigraham','127.0.0.1',1426057027,'Logged in'),
	(107,1,1,'leevigraham','127.0.0.1',1426064993,'Logged in'),
	(108,1,1,'leevigraham','127.0.0.1',1426113340,'Logged in'),
	(109,1,1,'leevigraham','127.0.0.1',1426114972,'Logged in'),
	(110,1,1,'leevigraham','127.0.0.1',1426124790,'Logged in'),
	(111,1,1,'leevigraham','127.0.0.1',1426130921,'Logged in'),
	(112,1,1,'leevigraham','127.0.0.1',1426143013,'Logged in'),
	(113,1,1,'leevigraham','127.0.0.1',1426143069,'Logged out'),
	(114,1,1,'leevigraham','127.0.0.1',1426217500,'Logged in'),
	(115,1,1,'leevigraham','127.0.0.1',1426223117,'Logged in'),
	(116,1,1,'leevigraham','127.0.0.1',1426284412,'Logged in'),
	(117,1,1,'leevigraham','127.0.0.1',1426322121,'Logged in'),
	(118,1,1,'leevigraham','127.0.0.1',1426480026,'Logged in'),
	(119,1,1,'leevigraham','127.0.0.1',1426487591,'Logged in'),
	(120,1,1,'leevigraham','127.0.0.1',1426498442,'Logged in'),
	(121,1,1,'leevigraham','127.0.0.1',1426506319,'Logged in'),
	(122,1,1,'leevigraham','127.0.0.1',1426510801,'Logged in'),
	(123,1,1,'leevigraham','127.0.0.1',1426546826,'Logged in'),
	(124,1,1,'leevigraham','127.0.0.1',1426550783,'Logged in'),
	(125,1,1,'leevigraham','127.0.0.1',1426551193,'Category Group Created:&nbsp;&nbsp;Topics'),
	(126,1,1,'leevigraham','127.0.0.1',1426553665,'Field Group Created:&nbsp;Topics'),
	(127,1,1,'leevigraham','127.0.0.1',1426553666,'Channel Created:&nbsp;&nbsp;Topics'),
	(128,1,1,'leevigraham','127.0.0.1',1426554707,'Logged in'),
	(129,1,1,'leevigraham','127.0.0.1',1426555093,'Channel Deleted:&nbsp;&nbsp;Blog'),
	(130,1,1,'leevigraham','127.0.0.1',1426559293,'Logged in'),
	(131,1,1,'leevigraham','127.0.0.1',1426566510,'Logged in'),
	(132,1,1,'leevigraham','127.0.0.1',1426566535,'Field group Deleted:&nbsp;&nbsp;Gear'),
	(133,1,1,'leevigraham','127.0.0.1',1426566543,'Channel Deleted:&nbsp;&nbsp;Gear'),
	(134,1,1,'leevigraham','127.0.0.1',1426569248,'Logged in'),
	(135,1,1,'leevigraham','127.0.0.1',1426574136,'Logged in'),
	(136,1,1,'leevigraham','127.0.0.1',1426574616,'Custom Field Deleted:&nbsp;Entry Type'),
	(137,1,1,'leevigraham','127.0.0.1',1426575703,'Logged in'),
	(138,1,1,'leevigraham','127.0.0.1',1426576161,'Logged in'),
	(139,1,1,'leevigraham','127.0.0.1',1426580473,'Logged in'),
	(140,1,1,'leevigraham','127.0.0.1',1426597887,'Logged in'),
	(141,1,1,'leevigraham','127.0.0.1',1426631754,'Logged in'),
	(142,1,1,'leevigraham','127.0.0.1',1426634358,'Logged in'),
	(143,1,1,'leevigraham','127.0.0.1',1426635079,'Logged in'),
	(144,1,1,'leevigraham','127.0.0.1',1426639929,'Logged in'),
	(145,1,1,'leevigraham','127.0.0.1',1426649840,'Logged in'),
	(146,1,1,'leevigraham','127.0.0.1',1426650545,'Logged in'),
	(147,1,1,'leevigraham','127.0.0.1',1426656073,'Logged in'),
	(148,1,1,'leevigraham','127.0.0.1',1426676299,'Logged in'),
	(149,1,1,'leevigraham','127.0.0.1',1426717791,'Logged in'),
	(150,1,1,'leevigraham','127.0.0.1',1426720208,'Logged in'),
	(151,1,1,'leevigraham','127.0.0.1',1426724220,'Logged in'),
	(152,1,1,'leevigraham','127.0.0.1',1426729238,'Logged in'),
	(153,1,1,'leevigraham','127.0.0.1',1426775862,'Logged in'),
	(154,1,1,'leevigraham','127.0.0.1',1426804092,'Logged in'),
	(155,1,1,'leevigraham','127.0.0.1',1426811578,'Logged in'),
	(156,1,1,'leevigraham','127.0.0.1',1426820171,'Logged in'),
	(157,1,1,'leevigraham','127.0.0.1',1426820171,'Logged in'),
	(158,1,1,'leevigraham','127.0.0.1',1426826699,'Field Group Created:&nbsp;Advertisements'),
	(159,1,1,'leevigraham','127.0.0.1',1426826704,'Category Group Created:&nbsp;&nbsp;Advertisements'),
	(160,1,1,'leevigraham','127.0.0.1',1426826704,'Channel Created:&nbsp;&nbsp;Advertisements'),
	(161,1,1,'leevigraham','127.0.0.1',1426826923,'Logged in'),
	(162,1,1,'leevigraham','127.0.0.1',1426828433,'Logged in'),
	(163,1,1,'leevigraham','127.0.0.1',1426833132,'Logged in'),
	(164,1,1,'leevigraham','127.0.0.1',1426835307,'Logged in'),
	(165,1,1,'leevigraham','127.0.0.1',1426847017,'Logged in'),
	(166,1,1,'leevigraham','127.0.0.1',1426902779,'Logged in'),
	(167,1,1,'leevigraham','127.0.0.1',1426917401,'Logged in'),
	(168,1,1,'leevigraham','127.0.0.1',1426984686,'Logged in'),
	(169,1,1,'leevigraham','127.0.0.1',1426984897,'Logged in'),
	(170,1,1,'leevigraham','127.0.0.1',1426985177,'Logged in'),
	(171,1,1,'leevigraham','127.0.0.1',1426987117,'Custom Field Deleted:&nbsp;Feature Carousel'),
	(172,1,1,'leevigraham','127.0.0.1',1427075087,'Logged in'),
	(173,1,1,'leevigraham','127.0.0.1',1427117877,'Logged in'),
	(174,1,1,'leevigraham','127.0.0.1',1427154183,'Logged in'),
	(175,1,1,'leevigraham','127.0.0.1',1427157990,'Logged in'),
	(176,1,1,'leevigraham','127.0.0.1',1427167500,'Logged in'),
	(177,1,1,'leevigraham','127.0.0.1',1427186429,'Logged in'),
	(178,1,1,'leevigraham','127.0.0.1',1427188041,'Category Group Deleted:&nbsp;&nbsp;Gear'),
	(179,1,1,'leevigraham','127.0.0.1',1427197047,'Logged in'),
	(180,1,1,'leevigraham','127.0.0.1',1427201108,'Logged in'),
	(181,1,1,'leevigraham','127.0.0.1',1427201221,'Category Group Deleted:&nbsp;&nbsp;Brands');

/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_search_index`;

CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_developer_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_developer_log`;

CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;

INSERT INTO `exp_developer_log` (`log_id`, `timestamp`, `viewed`, `description`, `function`, `line`, `file`, `deprecated_since`, `use_instead`, `template_id`, `template_name`, `template_group`, `addon_module`, `addon_method`, `snippets`, `hash`)
VALUES
	(1,1426547456,'n','{if paginate} has been deprecated, use normal {paginate} tags in your browse avatars template.',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'85366bafe0c21c33be55b9643cce8a2e');

/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_ee_debug_toolbar_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_ee_debug_toolbar_settings`;

CREATE TABLE `exp_ee_debug_toolbar_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(30) NOT NULL DEFAULT '',
  `setting_value` text NOT NULL,
  `serialized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache`;

CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;

INSERT INTO `exp_email_cache` (`cache_id`, `cache_date`, `total_sent`, `from_name`, `from_email`, `recipient`, `cc`, `bcc`, `recipient_array`, `subject`, `message`, `plaintext_alt`, `mailinglist`, `mailtype`, `text_fmt`, `wordwrap`, `priority`)
VALUES
	(1,1427154203,1,'','leevi@newism.com.au','leevi@newism.com.au','','','','Test','Test','','n','text','none','y','3'),
	(2,1427154262,1,'','leevi@newism.com.au','leevi@newism.com.au','','','','Test','Test','','n','text','none','y','3'),
	(3,1427154267,1,'','leevi@newism.com.au','leevi@newism.com.au','','','','Test','Test','','n','text','none','y','3');

/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_email_cache_mg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_mg`;

CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache_ml
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_ml`;

CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_console_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_console_cache`;

CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_entry_versioning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_entry_versioning`;

CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_extensions`;

CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`)
VALUES
	(1,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0.1','y'),
	(2,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0.1','y'),
	(3,'Assets_ext','channel_entries_query_result','channel_entries_query_result','',10,'2.5','y'),
	(4,'Assets_ext','file_after_save','file_after_save','',9,'2.5','y'),
	(5,'Assets_ext','files_after_delete','files_after_delete','',8,'2.5','y'),
	(6,'Store_ext','channel_entries_query_result','channel_entries_query_result','',10,'2.5.0','y'),
	(7,'Store_ext','cp_menu_array','cp_menu_array','',10,'2.5.0','y'),
	(8,'Store_ext','sessions_end','sessions_end','',10,'2.5.0','y'),
	(9,'Store_ext','member_member_logout','member_member_logout','',10,'2.5.0','y'),
	(10,'Low_search_ext','entry_submission_end','entry_submission_end','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',101,'4.0.0','y'),
	(11,'Low_search_ext','delete_entries_loop','delete_entries_loop','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',10,'4.0.0','y'),
	(12,'Low_search_ext','channel_entries_query_result','channel_entries_query_result','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',10,'4.0.0','y'),
	(13,'Low_search_ext','category_save','category_save','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',10,'4.0.0','y'),
	(14,'Low_search_ext','category_delete','category_delete','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',10,'4.0.0','y'),
	(15,'Low_search_ext','custom_field_modify_data','custom_field_modify_data','a:19:{s:11:\"license_key\";s:0:\"\";s:12:\"encode_query\";s:1:\"y\";s:15:\"min_word_length\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"50\";s:14:\"excerpt_hilite\";s:0:\"\";s:12:\"title_hilite\";s:0:\"\";s:10:\"batch_size\";s:3:\"100\";s:19:\"default_result_page\";s:14:\"search/results\";s:15:\"search_log_size\";s:3:\"500\";s:12:\"ignore_words\";s:20:\"a an and the or of s\";s:16:\"disabled_filters\";a:0:{}s:10:\"stop_words\";s:3630:\"a\'s able about above according accordingly across actually after afterwards again against ain\'t\n			all allow allows almost alone along already also although always am among amongst an and another\n			any anybody anyhow anyone anything anyway anyways anywhere apart appear appreciate appropriate are\n			aren\'t around as aside ask asking associated at available away awfully be became because become\n			becomes becoming been before beforehand behind being believe below beside besides best better between\n			beyond both brief but by c\'mon c\'s came can can\'t cannot cant cause causes certain certainly changes\n			clearly co com come comes concerning consequently consider considering contain containing contains\n			corresponding could couldn\'t course currently definitely described despite did didn\'t different do\n			does doesn\'t doing don\'t done down downwards during each edu eg eight either else elsewhere enough\n			entirely especially et etc even ever every everybody everyone everything everywhere ex exactly example\n			except far few fifth first five followed following follows for former formerly forth four from further\n			furthermore get gets getting given gives go goes going gone got gotten greetings had hadn\'t happens\n			hardly has hasn\'t have haven\'t having he he\'s hello help hence her here here\'s hereafter hereby herein\n			hereupon hers herself hi him himself his hither hopefully how howbeit however i\'d i\'ll i\'m i\'ve ie if\n			ignored immediate in inasmuch inc indeed indicate indicated indicates inner insofar instead into\n			inward is isn\'t it it\'d it\'ll it\'s its itself just keep keeps kept know known knows last lately later\n			latter latterly least less lest let let\'s like liked likely little look looking looks ltd mainly many\n			may maybe me mean meanwhile merely might more moreover most mostly much must my myself name namely nd\n			near nearly necessary need needs neither never nevertheless new next nine no nobody non none noone nor\n			normally not nothing novel now nowhere obviously of off often oh ok okay old on once one ones only\n			onto or other others otherwise ought our ours ourselves out outside over overall own particular\n			particularly per perhaps placed please plus possible presumably probably provides que quite qv rather\n			rd re really reasonably regarding regardless regards relatively respectively right said same saw say\n			saying says second secondly see seeing seem seemed seeming seems seen self selves sensible sent\n			serious seriously seven several shall she should shouldn\'t since six so some somebody somehow someone\n			something sometime sometimes somewhat somewhere soon sorry specified specify specifying still sub such\n			sup sure t\'s take taken tell tends th than thank thanks thanx that that\'s thats the their theirs them\n			themselves then thence there there\'s thereafter thereby therefore therein theres thereupon these they\n			they\'d they\'ll they\'re they\'ve think third this thorough thoroughly those though three through\n			throughout thru thus to together too took toward towards tried tries truly try trying twice two un\n			under unfortunately unless unlikely until unto up upon us use used useful uses using usually value\n			various very via viz vs want wants was wasn\'t way we we\'d we\'ll we\'re we\'ve welcome well went were\n			weren\'t what what\'s whatever when whence whenever where where\'s whereafter whereas whereby wherein\n			whereupon wherever whether which while whither who who\'s whoever whole whom whose why will willing\n			wish with within without won\'t wonder would wouldn\'t yes yet you you\'d you\'ll you\'re you\'ve your\n			yours yourself yourselves zero\";s:10:\"can_manage\";a:0:{}s:18:\"can_manage_lexicon\";a:0:{}s:20:\"can_manage_shortcuts\";a:0:{}s:11:\"can_replace\";a:0:{}s:19:\"can_view_search_log\";a:0:{}s:20:\"can_view_replace_log\";a:0:{}i:0;b:0;}',10,'4.0.0','y'),
	(16,'Low_variables_ext','sessions_end','sessions_end','a:0:{}',2,'2.6.0','y'),
	(17,'Low_variables_ext','template_fetch_template','template_fetch_template','a:0:{}',2,'2.6.0','y'),
	(18,'Zenbu_ext','send_to_addon_post_edit','update_multi_entries_start','s:0:\"\";',10,'1.9.3.1','y'),
	(19,'Zenbu_ext','send_to_addon_post_delete','delete_entries_end','s:0:\"\";',10,'1.9.3.1','y'),
	(20,'Zenbu_ext','replace_edit_dropdown','cp_js_end','s:0:\"\";',100,'1.9.3.1','y'),
	(21,'Taxonomy_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'3.0','y'),
	(22,'Taxonomy_ext','update_multi_entries_loop','update_multi_entries_loop','a:0:{}',10,'3.0','y'),
	(23,'Taxonomy_ext','cp_menu_array','cp_menu_array','a:0:{}',10,'3.0','y'),
	(24,'Nsm_better_meta_ext','dummy_hook_function','dummy_hook_function','a:0:{}',10,'1.1.7','y'),
	(25,'Mo_variables_ext','run','template_fetch_template','a:24:{s:4:\"ajax\";s:1:\"1\";s:6:\"secure\";s:1:\"1\";s:3:\"get\";s:1:\"1\";s:12:\"defaults_get\";s:26:\"cf_homepage_security_token\";s:8:\"get_post\";s:1:\"1\";s:17:\"defaults_get_post\";s:0:\"\";s:4:\"post\";s:1:\"1\";s:13:\"defaults_post\";s:0:\"\";s:6:\"cookie\";s:1:\"1\";s:15:\"defaults_cookie\";s:0:\"\";s:9:\"flashdata\";s:1:\"1\";s:18:\"defaults_flashdata\";s:0:\"\";s:12:\"page_tracker\";s:1:\"1\";s:16:\"reverse_segments\";s:1:\"1\";s:13:\"segments_from\";s:1:\"1\";s:9:\"paginated\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:11:\"categorized\";s:1:\"1\";s:22:\"reserved_category_word\";s:1:\"1\";s:11:\"current_url\";s:1:\"1\";s:16:\"member_variables\";s:1:\"1\";s:25:\"member_group_conditionals\";s:1:\"1\";s:22:\"member_id_conditionals\";s:1:\"1\";s:13:\"mobile_detect\";s:1:\"1\";}',10,'1.2.1','y'),
	(26,'Mo_variables_ext','cleanup','template_post_parse','a:24:{s:4:\"ajax\";s:1:\"1\";s:6:\"secure\";s:1:\"1\";s:3:\"get\";s:1:\"1\";s:12:\"defaults_get\";s:26:\"cf_homepage_security_token\";s:8:\"get_post\";s:1:\"1\";s:17:\"defaults_get_post\";s:0:\"\";s:4:\"post\";s:1:\"1\";s:13:\"defaults_post\";s:0:\"\";s:6:\"cookie\";s:1:\"1\";s:15:\"defaults_cookie\";s:0:\"\";s:9:\"flashdata\";s:1:\"1\";s:18:\"defaults_flashdata\";s:0:\"\";s:12:\"page_tracker\";s:1:\"1\";s:16:\"reverse_segments\";s:1:\"1\";s:13:\"segments_from\";s:1:\"1\";s:9:\"paginated\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:11:\"categorized\";s:1:\"1\";s:22:\"reserved_category_word\";s:1:\"1\";s:11:\"current_url\";s:1:\"1\";s:16:\"member_variables\";s:1:\"1\";s:25:\"member_group_conditionals\";s:1:\"1\";s:22:\"member_id_conditionals\";s:1:\"1\";s:13:\"mobile_detect\";s:1:\"1\";}',10,'1.2.1','y'),
	(27,'Ce_cache_ext','submitted','entry_submission_end','a:0:{}',9,'1.10.1','y'),
	(28,'Ce_cache_ext','safecracker_submitted','safecracker_submit_entry_end','a:0:{}',9,'1.10.1','y'),
	(29,'Ce_cache_ext','deleted','delete_entries_start','a:0:{}',9,'1.10.1','y'),
	(30,'Ce_cache_ext','multi_updated','update_multi_entries_loop','a:0:{}',9,'1.10.1','y'),
	(31,'Ce_cache_ext','template_pre_parse','template_fetch_template','a:0:{}',9,'1.10.1','y'),
	(32,'Ce_cache_ext','comment_inserted','insert_comment_end','a:0:{}',9,'1.10.1','y'),
	(33,'Resource_router_ext','core_template_route','core_template_route','a:0:{}',1,'1.0.7','y'),
	(34,'Ee_debug_toolbar_ext','toolbar','sessions_end','a:0:{}',9999999,'1.0.1','y'),
	(43,'Low_seg2cat_ext','template_fetch_template','template_fetch_template','a:7:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";i:1;a:6:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";}}',5,'2.8.1','y'),
	(42,'Low_seg2cat_ext','sessions_end','sessions_end','a:7:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";i:1;a:6:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";}}',5,'2.8.1','y'),
	(39,'Eedt_perf_alerts_ext','ee_debug_toolbar_mod_panel','ee_debug_toolbar_mod_panel','',1,'1.0','y'),
	(40,'Eedt_perf_alerts_ext','ee_debug_toolbar_settings_form','ee_debug_toolbar_settings_form','',1,'1.0','y'),
	(41,'Eedt_perf_alerts_ext','ee_debug_toolbar_init_settings','ee_debug_toolbar_init_settings','',5,'1.0','y'),
	(44,'Entry_type_ext','publish_form_channel_preferences','publish_form_channel_preferences','a:0:{}',10,'1.1.3','y'),
	(45,'Entry_type_ext','eecli_add_commands','eecli_add_commands','a:0:{}',10,'1.1.3','y'),
	(46,'Boardworld_ext','channel_entries_row','channel_entries_row','a:0:{}',10,'1.1.3','y'),
	(47,'In_ext','template_pre_parse','template_fetch_template','a:0:{}',9,'1.2','y'),
	(48,'Assets_adapter_for_blocks_ext','blocks_discover_fieldtypes','blocks_discover_fieldtypes','',1,'1.0.0','y');

/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_formatting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_formatting`;

CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`)
VALUES
	(416,83,'xhtml'),
	(415,83,'markdown'),
	(414,83,'br'),
	(413,83,'none'),
	(412,82,'xhtml'),
	(411,82,'markdown'),
	(410,82,'br'),
	(409,82,'none'),
	(408,81,'xhtml'),
	(407,81,'markdown'),
	(406,81,'br'),
	(405,81,'none'),
	(404,80,'xhtml'),
	(403,80,'markdown'),
	(402,80,'br'),
	(401,80,'none'),
	(400,79,'xhtml'),
	(399,79,'markdown'),
	(398,79,'br'),
	(397,79,'none'),
	(396,78,'xhtml'),
	(395,78,'markdown'),
	(394,78,'br'),
	(393,78,'none'),
	(392,77,'xhtml'),
	(391,77,'markdown'),
	(390,77,'br'),
	(389,77,'none'),
	(388,76,'xhtml'),
	(387,76,'markdown'),
	(386,76,'br'),
	(385,76,'none'),
	(321,60,'none'),
	(320,59,'xhtml'),
	(319,59,'markdown'),
	(318,59,'br'),
	(317,59,'none'),
	(316,58,'xhtml'),
	(315,58,'markdown'),
	(314,58,'br'),
	(313,58,'none'),
	(328,61,'xhtml'),
	(327,61,'markdown'),
	(326,61,'br'),
	(325,61,'none'),
	(308,56,'xhtml'),
	(307,56,'markdown'),
	(306,56,'br'),
	(305,56,'none'),
	(304,55,'xhtml'),
	(303,55,'markdown'),
	(302,55,'br'),
	(301,55,'none'),
	(300,54,'xhtml'),
	(299,54,'markdown'),
	(298,54,'br'),
	(297,54,'none'),
	(296,53,'xhtml'),
	(295,53,'markdown'),
	(113,8,'none'),
	(114,8,'br'),
	(115,8,'markdown'),
	(116,8,'xhtml'),
	(117,9,'none'),
	(118,9,'br'),
	(119,9,'markdown'),
	(120,9,'xhtml'),
	(121,10,'none'),
	(122,10,'br'),
	(123,10,'markdown'),
	(124,10,'xhtml'),
	(125,11,'none'),
	(126,11,'br'),
	(127,11,'markdown'),
	(128,11,'xhtml'),
	(129,12,'none'),
	(130,12,'br'),
	(131,12,'markdown'),
	(132,12,'xhtml'),
	(133,13,'none'),
	(134,13,'br'),
	(135,13,'markdown'),
	(136,13,'xhtml'),
	(384,75,'xhtml'),
	(383,75,'markdown'),
	(382,75,'br'),
	(381,75,'none'),
	(380,74,'xhtml'),
	(379,74,'markdown'),
	(378,74,'br'),
	(377,74,'none'),
	(376,73,'xhtml'),
	(375,73,'markdown'),
	(374,73,'br'),
	(373,73,'none'),
	(372,72,'xhtml'),
	(371,72,'markdown'),
	(370,72,'br'),
	(369,72,'none'),
	(368,71,'xhtml'),
	(367,71,'markdown'),
	(157,19,'none'),
	(158,19,'br'),
	(159,19,'markdown'),
	(160,19,'xhtml'),
	(161,20,'none'),
	(162,20,'br'),
	(163,20,'markdown'),
	(164,20,'xhtml'),
	(165,21,'none'),
	(166,21,'br'),
	(167,21,'markdown'),
	(168,21,'xhtml'),
	(169,22,'none'),
	(170,22,'br'),
	(171,22,'markdown'),
	(172,22,'xhtml'),
	(173,23,'none'),
	(174,23,'br'),
	(175,23,'markdown'),
	(176,23,'xhtml'),
	(177,24,'none'),
	(178,24,'br'),
	(179,24,'markdown'),
	(180,24,'xhtml'),
	(181,25,'none'),
	(182,25,'br'),
	(183,25,'markdown'),
	(184,25,'xhtml'),
	(185,26,'none'),
	(186,26,'br'),
	(187,26,'markdown'),
	(188,26,'xhtml'),
	(189,27,'none'),
	(190,27,'br'),
	(191,27,'markdown'),
	(192,27,'xhtml'),
	(193,28,'none'),
	(194,28,'br'),
	(195,28,'markdown'),
	(196,28,'xhtml'),
	(197,29,'none'),
	(198,29,'br'),
	(199,29,'markdown'),
	(200,29,'xhtml'),
	(201,30,'none'),
	(202,30,'br'),
	(203,30,'markdown'),
	(204,30,'xhtml'),
	(205,31,'none'),
	(206,31,'br'),
	(207,31,'markdown'),
	(208,31,'xhtml'),
	(209,32,'none'),
	(210,32,'br'),
	(211,32,'markdown'),
	(212,32,'xhtml'),
	(213,33,'none'),
	(214,33,'br'),
	(215,33,'markdown'),
	(216,33,'xhtml'),
	(217,34,'none'),
	(218,34,'br'),
	(219,34,'markdown'),
	(220,34,'xhtml'),
	(366,71,'br'),
	(365,71,'none'),
	(364,70,'xhtml'),
	(363,70,'markdown'),
	(362,70,'br'),
	(361,70,'none'),
	(356,68,'xhtml'),
	(355,68,'markdown'),
	(354,68,'br'),
	(353,68,'none'),
	(233,38,'none'),
	(234,38,'br'),
	(235,38,'markdown'),
	(236,38,'xhtml'),
	(237,39,'none'),
	(238,39,'br'),
	(239,39,'markdown'),
	(240,39,'xhtml'),
	(241,40,'none'),
	(242,40,'br'),
	(243,40,'markdown'),
	(244,40,'xhtml'),
	(245,41,'none'),
	(246,41,'br'),
	(247,41,'markdown'),
	(248,41,'xhtml'),
	(249,42,'none'),
	(250,42,'br'),
	(251,42,'markdown'),
	(252,42,'xhtml'),
	(253,43,'none'),
	(254,43,'br'),
	(255,43,'markdown'),
	(256,43,'xhtml'),
	(257,44,'none'),
	(258,44,'br'),
	(259,44,'markdown'),
	(260,44,'xhtml'),
	(261,45,'none'),
	(262,45,'br'),
	(263,45,'markdown'),
	(264,45,'xhtml'),
	(265,46,'none'),
	(266,46,'br'),
	(267,46,'markdown'),
	(268,46,'xhtml'),
	(269,47,'none'),
	(270,47,'br'),
	(271,47,'markdown'),
	(272,47,'xhtml'),
	(294,53,'br'),
	(293,53,'none'),
	(292,52,'xhtml'),
	(291,52,'markdown'),
	(290,52,'br'),
	(289,52,'none'),
	(288,51,'xhtml'),
	(287,51,'markdown'),
	(286,51,'br'),
	(285,51,'none'),
	(322,60,'br'),
	(323,60,'markdown'),
	(324,60,'xhtml'),
	(329,62,'none'),
	(330,62,'br'),
	(331,62,'markdown'),
	(332,62,'xhtml'),
	(333,63,'none'),
	(334,63,'br'),
	(335,63,'markdown'),
	(336,63,'xhtml'),
	(337,64,'none'),
	(338,64,'br'),
	(339,64,'markdown'),
	(340,64,'xhtml'),
	(341,65,'none'),
	(342,65,'br'),
	(343,65,'markdown'),
	(344,65,'xhtml'),
	(345,66,'none'),
	(346,66,'br'),
	(347,66,'markdown'),
	(348,66,'xhtml'),
	(349,67,'none'),
	(350,67,'br'),
	(351,67,'markdown'),
	(352,67,'xhtml');

/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_groups`;

CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(10,1,'Pages'),
	(2,1,'Articles'),
	(3,1,'Brands'),
	(12,1,'Advertisements'),
	(5,1,'Places'),
	(6,1,'Homepages'),
	(7,1,'Promotions'),
	(8,1,'Products'),
	(9,1,'Tutorials'),
	(11,1,'Topics');

/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_fieldtypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_fieldtypes`;

CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`)
VALUES
	(1,'select','1.0','YTowOnt9','n'),
	(2,'text','1.0','YTowOnt9','n'),
	(3,'textarea','1.0','YTowOnt9','n'),
	(4,'date','1.0','YTowOnt9','n'),
	(5,'file','1.0','YTowOnt9','n'),
	(6,'grid','1.0','YTowOnt9','n'),
	(7,'multi_select','1.0','YTowOnt9','n'),
	(8,'checkboxes','1.0','YTowOnt9','n'),
	(9,'radio','1.0','YTowOnt9','n'),
	(10,'relationship','1.0','YTowOnt9','n'),
	(11,'rte','1.0','YTowOnt9','n'),
	(12,'wygwam','3.3.3','YTowOnt9','y'),
	(13,'assets','2.5','YTowOnt9','y'),
	(14,'fieldpack_pill','2.2','YTowOnt9','n'),
	(15,'fieldpack_dropdown','2.2','YTowOnt9','n'),
	(16,'store','2.5.0','YTowOnt9','n'),
	(17,'low_variables','2.6.0','YTowOnt9','n'),
	(18,'taxonomy','3.1.1','YTowOnt9','n'),
	(19,'nsm_better_meta','1.1.7','YTowOnt9','n'),
	(20,'entry_type','1.1.3','YTowOnt9','n'),
	(21,'nf_categories_field','1.1.4','YTowOnt9','n'),
	(22,'videolink','1.4.1','YTowOnt9','n'),
	(25,'blocks','1.2.4','YTowOnt9','n');

/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_file_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_categories`;

CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_file_dimensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_dimensions`;

CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;

INSERT INTO `exp_file_dimensions` (`id`, `site_id`, `upload_location_id`, `title`, `short_name`, `resize_type`, `width`, `height`, `watermark_id`)
VALUES
	(1,1,1,'feature-1x','feature-1x','crop',1024,576,0),
	(2,1,1,'feature-2x','feature-2x','crop',2048,1152,0),
	(3,1,1,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(4,1,1,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(5,1,1,'facebook-1x','facebook-1x','crop',600,315,0),
	(6,1,1,'facebook-2x','facebook-2x','crop',1200,650,0),
	(7,1,2,'feature-1x','feature-1x','crop',1024,576,0),
	(8,1,2,'feature-2x','feature-2x','crop',2048,1152,0),
	(9,1,2,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(10,1,2,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(11,1,2,'facebook-1x','facebook-1x','crop',600,315,0),
	(12,1,2,'facebook-2x','facebook-2x','crop',1200,650,0),
	(13,1,3,'feature-1x','feature-1x','crop',1024,576,0),
	(14,1,3,'feature-2x','feature-2x','crop',2048,1152,0),
	(15,1,3,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(16,1,3,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(17,1,3,'facebook-1x','facebook-1x','crop',600,315,0),
	(18,1,3,'facebook-2x','facebook-2x','crop',1200,650,0),
	(19,1,3,'background-1x','background-1x','crop',600,315,0),
	(20,1,3,'background-2x','background-2x','crop',1200,650,0),
	(21,1,4,'feature-1x','feature-1x','crop',1024,576,0),
	(22,1,4,'feature-2x','feature-2x','crop',2048,1152,0),
	(23,1,4,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(24,1,4,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(25,1,4,'facebook-1x','facebook-1x','crop',600,315,0),
	(26,1,4,'facebook-2x','facebook-2x','crop',1200,650,0),
	(27,1,5,'feature-1x','feature-1x','crop',1024,576,0),
	(28,1,5,'feature-2x','feature-2x','crop',2048,1152,0),
	(29,1,5,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(30,1,5,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(31,1,5,'facebook-1x','facebook-1x','crop',600,315,0),
	(32,1,5,'facebook-2x','facebook-2x','crop',1200,650,0),
	(33,1,6,'feature-1x','feature-1x','crop',1024,576,0),
	(34,1,6,'feature-2x','feature-2x','crop',2048,1152,0),
	(35,1,6,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(36,1,6,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(37,1,6,'facebook-1x','facebook-1x','crop',600,315,0),
	(38,1,6,'facebook-2x','facebook-2x','crop',1200,650,0),
	(39,1,7,'feature-1x','feature-1x','crop',1024,576,0),
	(40,1,7,'feature-2x','feature-2x','crop',2048,1152,0),
	(41,1,7,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(42,1,7,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(43,1,7,'facebook-1x','facebook-1x','crop',600,315,0),
	(44,1,7,'facebook-2x','facebook-2x','crop',1200,650,0),
	(45,1,8,'feature-1x','feature-1x','crop',1024,576,0),
	(46,1,8,'feature-2x','feature-2x','crop',2048,1152,0),
	(47,1,8,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(48,1,8,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(49,1,8,'facebook-1x','facebook-1x','crop',600,315,0),
	(50,1,8,'facebook-2x','facebook-2x','crop',1200,650,0),
	(51,1,9,'feature-1x','feature-1x','crop',1024,576,0),
	(52,1,9,'feature-2x','feature-2x','crop',2048,1152,0),
	(53,1,9,'thumbnail-1x','thumbnail-1x','crop',300,200,0),
	(54,1,9,'thumbnail-2x','thumbnail-2x','crop',600,400,0),
	(55,1,9,'facebook-2x','facebook-2x','crop',1200,650,0),
	(56,1,9,'facebook-1x','facebook-1x','crop',600,315,0),
	(57,1,11,'feature-1x','feature-1x','crop',1024,576,0),
	(58,1,11,'feature-2x','feature-2x','crop',2048,1152,0);

/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_file_watermarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_watermarks`;

CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_files`;

CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`)
VALUES
	(18,1,'465205972.jpg',11,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/feature-carousel/465205972.jpg','image/jpeg','465205972.jpg',111231,NULL,NULL,NULL,1,1426985511,1,1426985621,'720 1280'),
	(17,1,'7adb18e781ec04fc919fc2262610d54e.jpg',11,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/feature-carousel/7adb18e781ec04fc919fc2262610d54e.jpg','image/jpeg','7adb18e781ec04fc919fc2262610d54e.jpg',629497,NULL,NULL,NULL,1,1426985232,1,1426985621,'1600 2560'),
	(16,1,'ad-gopro.jpg',1,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/homepage/ad-gopro.jpg','image/jpeg','ad-gopro.jpg',19377,NULL,NULL,NULL,1,1426984987,1,1426984987,'250 300'),
	(15,1,'em-sp15-wino-300x250.jpg',10,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/advertisement/em-sp15-wino-300x250.jpg','image/jpeg','em-sp15-wino-300x250.jpg',25707,NULL,NULL,NULL,1,1426835074,1,1426835074,'250 300'),
	(13,1,'freedom-pass.jpg',10,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/advertisement/freedom-pass.jpg','image/jpeg','freedom-pass.jpg',43194,NULL,NULL,NULL,1,1426828131,1,1426828131,'250 300'),
	(14,1,'ad-gopro.jpg',10,'/Volumes/Sites/Work/Internal/example.com/web/uploads/content/advertisement/ad-gopro.jpg','image/jpeg','ad-gopro.jpg',19377,NULL,NULL,NULL,1,1426835073,1,1426835073,'250 300');

/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_administrators
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_administrators`;

CREATE TABLE `exp_forum_administrators` (
  `admin_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `admin_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`),
  KEY `board_id` (`board_id`),
  KEY `admin_group_id` (`admin_group_id`),
  KEY `admin_member_id` (`admin_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_attachments`;

CREATE TABLE `exp_forum_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `board_id` int(5) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(200) NOT NULL,
  `filehash` varchar(40) NOT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0',
  `extension` varchar(20) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `attachment_date` int(10) NOT NULL,
  `is_temp` char(1) NOT NULL DEFAULT 'n',
  `width` int(5) unsigned NOT NULL,
  `height` int(5) unsigned NOT NULL,
  `t_width` int(5) unsigned NOT NULL,
  `t_height` int(5) unsigned NOT NULL,
  `is_image` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`),
  KEY `topic_id` (`topic_id`),
  KEY `post_id` (`post_id`),
  KEY `board_id` (`board_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_boards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_boards`;

CREATE TABLE `exp_forum_boards` (
  `board_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `board_label` varchar(150) NOT NULL,
  `board_name` varchar(50) NOT NULL,
  `board_enabled` char(1) NOT NULL DEFAULT 'y',
  `board_forum_trigger` varchar(70) NOT NULL DEFAULT '',
  `board_site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `board_alias_id` int(5) unsigned NOT NULL DEFAULT '0',
  `board_allow_php` char(1) NOT NULL DEFAULT 'n',
  `board_php_stage` char(1) NOT NULL DEFAULT 'o',
  `board_install_date` int(10) unsigned NOT NULL DEFAULT '0',
  `board_forum_url` varchar(150) NOT NULL,
  `board_default_theme` varchar(75) NOT NULL,
  `board_upload_path` varchar(150) DEFAULT NULL,
  `board_topics_perpage` smallint(4) NOT NULL DEFAULT '25',
  `board_posts_perpage` smallint(4) NOT NULL DEFAULT '10',
  `board_topic_order` char(1) NOT NULL DEFAULT 'r',
  `board_post_order` char(1) NOT NULL DEFAULT 'a',
  `board_hot_topic` smallint(4) NOT NULL DEFAULT '10',
  `board_max_post_chars` int(6) unsigned NOT NULL DEFAULT '6000',
  `board_post_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `board_display_edit_date` char(1) NOT NULL DEFAULT 'n',
  `board_text_formatting` varchar(50) NOT NULL DEFAULT 'xhtml',
  `board_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `board_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `board_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `board_notify_emails` varchar(255) DEFAULT NULL,
  `board_notify_emails_topics` varchar(255) DEFAULT NULL,
  `board_max_attach_perpost` smallint(4) NOT NULL DEFAULT '3',
  `board_max_attach_size` int(6) unsigned NOT NULL DEFAULT '75',
  `board_max_width` int(4) unsigned NOT NULL DEFAULT '800',
  `board_max_height` int(4) unsigned NOT NULL DEFAULT '600',
  `board_attach_types` char(3) NOT NULL DEFAULT 'img',
  `board_use_img_thumbs` char(1) NOT NULL DEFAULT 'y',
  `board_thumb_width` int(4) unsigned NOT NULL DEFAULT '100',
  `board_thumb_height` int(4) unsigned NOT NULL DEFAULT '100',
  `board_forum_permissions` text NOT NULL,
  `board_use_deft_permissions` char(1) NOT NULL DEFAULT 'n',
  `board_recent_poster_id` int(10) unsigned NOT NULL DEFAULT '0',
  `board_recent_poster` varchar(70) DEFAULT NULL,
  `board_enable_rss` char(1) NOT NULL DEFAULT 'y',
  `board_use_http_auth` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_boards` WRITE;
/*!40000 ALTER TABLE `exp_forum_boards` DISABLE KEYS */;

INSERT INTO `exp_forum_boards` (`board_id`, `board_label`, `board_name`, `board_enabled`, `board_forum_trigger`, `board_site_id`, `board_alias_id`, `board_allow_php`, `board_php_stage`, `board_install_date`, `board_forum_url`, `board_default_theme`, `board_upload_path`, `board_topics_perpage`, `board_posts_perpage`, `board_topic_order`, `board_post_order`, `board_hot_topic`, `board_max_post_chars`, `board_post_timelock`, `board_display_edit_date`, `board_text_formatting`, `board_html_formatting`, `board_allow_img_urls`, `board_auto_link_urls`, `board_notify_emails`, `board_notify_emails_topics`, `board_max_attach_perpost`, `board_max_attach_size`, `board_max_width`, `board_max_height`, `board_attach_types`, `board_use_img_thumbs`, `board_thumb_width`, `board_thumb_height`, `board_forum_permissions`, `board_use_deft_permissions`, `board_recent_poster_id`, `board_recent_poster`, `board_enable_rss`, `board_use_http_auth`)
VALUES
	(1,'Forum','forum','y','forums',1,0,'n','o',1426589147,'http://local.example/forums/','scaffold','uploads/member/forum_attachments/',25,15,'r','a',10,6000,0,'n','xhtml','safe','n','y','','',3,75,800,600,'img','y',100,100,'a:8:{s:14:\"can_view_forum\";s:9:\"|1|3|4|5|\";s:15:\"can_view_hidden\";s:5:\"|1|5|\";s:15:\"can_view_topics\";s:9:\"|1|3|4|5|\";s:15:\"can_post_topics\";s:5:\"|1|5|\";s:14:\"can_post_reply\";s:5:\"|1|5|\";s:10:\"can_report\";s:5:\"|1|5|\";s:16:\"can_upload_files\";s:5:\"|1|5|\";s:10:\"can_search\";s:9:\"|1|3|4|5|\";}','n',0,NULL,'y','n');

/*!40000 ALTER TABLE `exp_forum_boards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_moderators
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_moderators`;

CREATE TABLE `exp_forum_moderators` (
  `mod_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `mod_forum_id` int(6) unsigned NOT NULL,
  `mod_member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mod_member_name` varchar(50) NOT NULL,
  `mod_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mod_can_edit` char(1) NOT NULL DEFAULT 'n',
  `mod_can_move` char(1) NOT NULL DEFAULT 'n',
  `mod_can_delete` char(1) NOT NULL DEFAULT 'n',
  `mod_can_split` char(1) NOT NULL DEFAULT 'n',
  `mod_can_merge` char(1) NOT NULL DEFAULT 'n',
  `mod_can_change_status` char(1) NOT NULL DEFAULT 'n',
  `mod_can_announce` char(1) NOT NULL DEFAULT 'n',
  `mod_can_view_ip` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`mod_id`),
  KEY `board_id` (`board_id`),
  KEY `mod_forum_id` (`mod_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_polls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_polls`;

CREATE TABLE `exp_forum_polls` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poll_question` varchar(150) NOT NULL,
  `poll_answers` text NOT NULL,
  `poll_date` int(10) NOT NULL,
  `total_votes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_pollvotes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_pollvotes`;

CREATE TABLE `exp_forum_pollvotes` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `choice_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `member_id` (`member_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_posts`;

CREATE TABLE `exp_forum_posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL,
  `forum_id` int(6) unsigned NOT NULL,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL,
  `body` text NOT NULL,
  `post_date` int(10) NOT NULL,
  `post_edit_date` int(10) NOT NULL DEFAULT '0',
  `post_edit_author` int(10) unsigned NOT NULL DEFAULT '0',
  `notify` char(1) NOT NULL DEFAULT 'n',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `board_id` (`board_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_posts` WRITE;
/*!40000 ALTER TABLE `exp_forum_posts` DISABLE KEYS */;

INSERT INTO `exp_forum_posts` (`post_id`, `topic_id`, `forum_id`, `board_id`, `author_id`, `ip_address`, `body`, `post_date`, `post_edit_date`, `post_edit_author`, `notify`, `parse_smileys`)
VALUES
	(1,1,2,1,1,'127.0.0.1','Reply',1426594108,0,0,'n','y');

/*!40000 ALTER TABLE `exp_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_ranks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_ranks`;

CREATE TABLE `exp_forum_ranks` (
  `rank_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(100) NOT NULL,
  `rank_min_posts` int(6) NOT NULL,
  `rank_stars` smallint(3) NOT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_ranks` WRITE;
/*!40000 ALTER TABLE `exp_forum_ranks` DISABLE KEYS */;

INSERT INTO `exp_forum_ranks` (`rank_id`, `rank_title`, `rank_min_posts`, `rank_stars`)
VALUES
	(1,'Newbie',0,1),
	(2,'Jr. Member',30,2),
	(3,'Member',50,3),
	(4,'Sr. Member',100,4);

/*!40000 ALTER TABLE `exp_forum_ranks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_read_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_read_topics`;

CREATE TABLE `exp_forum_read_topics` (
  `member_id` int(10) unsigned NOT NULL,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `topics` text NOT NULL,
  `last_visit` int(10) NOT NULL,
  PRIMARY KEY (`member_id`,`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_read_topics` WRITE;
/*!40000 ALTER TABLE `exp_forum_read_topics` DISABLE KEYS */;

INSERT INTO `exp_forum_read_topics` (`member_id`, `board_id`, `topics`, `last_visit`)
VALUES
	(1,1,'a:3:{i:2;i:1426593898;i:1;i:1426594112;i:3;i:1426723488;}',1426723485);

/*!40000 ALTER TABLE `exp_forum_read_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_search`;

CREATE TABLE `exp_forum_search` (
  `search_id` varchar(32) NOT NULL,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `topic_ids` text NOT NULL,
  `post_ids` text NOT NULL,
  `sort_order` varchar(200) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `board_id` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_forum_subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_subscriptions`;

CREATE TABLE `exp_forum_subscriptions` (
  `topic_id` int(10) unsigned NOT NULL,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subscription_date` int(10) NOT NULL,
  `notification_sent` char(1) NOT NULL DEFAULT 'n',
  `hash` varchar(15) NOT NULL,
  PRIMARY KEY (`topic_id`,`member_id`),
  KEY `board_id` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `exp_forum_subscriptions` DISABLE KEYS */;

INSERT INTO `exp_forum_subscriptions` (`topic_id`, `board_id`, `member_id`, `subscription_date`, `notification_sent`, `hash`)
VALUES
	(1,1,1,1426589648,'n','17IEnbNHa'),
	(2,1,1,1426593894,'n','1vTtdbIeM'),
	(3,1,1,1426676334,'n','1cJVymzvq');

/*!40000 ALTER TABLE `exp_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forum_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forum_topics`;

CREATE TABLE `exp_forum_topics` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(6) unsigned NOT NULL,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `moved_forum_id` int(6) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL,
  `title` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'o',
  `sticky` char(1) NOT NULL DEFAULT 'n',
  `poll` char(1) NOT NULL DEFAULT 'n',
  `announcement` char(1) NOT NULL DEFAULT 'n',
  `topic_date` int(10) NOT NULL,
  `topic_edit_date` int(10) NOT NULL DEFAULT '0',
  `topic_edit_author` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_total` int(5) unsigned NOT NULL DEFAULT '0',
  `thread_views` int(6) unsigned NOT NULL DEFAULT '0',
  `last_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `notify` char(1) NOT NULL DEFAULT 'n',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `board_id` (`board_id`),
  KEY `author_id` (`author_id`),
  KEY `last_post_author_id` (`last_post_author_id`),
  KEY `topic_date` (`topic_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forum_topics` WRITE;
/*!40000 ALTER TABLE `exp_forum_topics` DISABLE KEYS */;

INSERT INTO `exp_forum_topics` (`topic_id`, `forum_id`, `board_id`, `moved_forum_id`, `author_id`, `ip_address`, `title`, `body`, `status`, `sticky`, `poll`, `announcement`, `topic_date`, `topic_edit_date`, `topic_edit_author`, `thread_total`, `thread_views`, `last_post_date`, `last_post_author_id`, `last_post_id`, `notify`, `parse_smileys`)
VALUES
	(1,2,1,0,1,'127.0.0.1','Test Post','Test!','o','n','n','n',1426589648,0,0,2,12,1426594108,1,1,'n','n'),
	(2,2,1,0,1,'127.0.0.1','Test Post 2','lorem','o','n','n','n',1426593894,0,0,1,1,1426593894,1,0,'n','n'),
	(3,2,1,0,1,'127.0.0.1','Test Forum Topic from Entry','xxx','o','n','n','n',1426676334,0,0,1,4,1426676334,1,0,'n','y');

/*!40000 ALTER TABLE `exp_forum_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_forums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_forums`;

CREATE TABLE `exp_forums` (
  `forum_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(6) unsigned NOT NULL DEFAULT '1',
  `forum_name` varchar(100) NOT NULL,
  `forum_description` text,
  `forum_is_cat` char(1) NOT NULL DEFAULT 'n',
  `forum_parent` int(6) unsigned DEFAULT NULL,
  `forum_order` int(6) unsigned DEFAULT NULL,
  `forum_status` char(1) NOT NULL DEFAULT 'o',
  `forum_total_topics` mediumint(8) NOT NULL DEFAULT '0',
  `forum_total_posts` mediumint(8) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(6) unsigned DEFAULT NULL,
  `forum_last_post_type` char(1) NOT NULL DEFAULT 'p',
  `forum_last_post_title` varchar(150) DEFAULT NULL,
  `forum_last_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_author_id` int(10) unsigned DEFAULT NULL,
  `forum_last_post_author` varchar(50) DEFAULT NULL,
  `forum_permissions` text NOT NULL,
  `forum_topics_perpage` smallint(4) NOT NULL,
  `forum_posts_perpage` smallint(4) NOT NULL,
  `forum_topic_order` char(1) NOT NULL DEFAULT 'r',
  `forum_post_order` char(1) NOT NULL DEFAULT 'a',
  `forum_hot_topic` smallint(4) NOT NULL,
  `forum_max_post_chars` int(6) unsigned NOT NULL,
  `forum_post_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `forum_display_edit_date` char(1) NOT NULL DEFAULT 'n',
  `forum_text_formatting` varchar(50) NOT NULL DEFAULT 'xhtml',
  `forum_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `forum_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `forum_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `forum_notify_moderators_topics` char(1) NOT NULL DEFAULT 'n',
  `forum_notify_moderators_replies` char(1) NOT NULL DEFAULT 'n',
  `forum_notify_emails` varchar(255) DEFAULT NULL,
  `forum_notify_emails_topics` varchar(255) DEFAULT NULL,
  `forum_enable_rss` char(1) NOT NULL DEFAULT 'n',
  `forum_use_http_auth` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`forum_id`),
  KEY `board_id` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_forums` WRITE;
/*!40000 ALTER TABLE `exp_forums` DISABLE KEYS */;

INSERT INTO `exp_forums` (`forum_id`, `board_id`, `forum_name`, `forum_description`, `forum_is_cat`, `forum_parent`, `forum_order`, `forum_status`, `forum_total_topics`, `forum_total_posts`, `forum_last_post_id`, `forum_last_post_type`, `forum_last_post_title`, `forum_last_post_date`, `forum_last_post_author_id`, `forum_last_post_author`, `forum_permissions`, `forum_topics_perpage`, `forum_posts_perpage`, `forum_topic_order`, `forum_post_order`, `forum_hot_topic`, `forum_max_post_chars`, `forum_post_timelock`, `forum_display_edit_date`, `forum_text_formatting`, `forum_html_formatting`, `forum_allow_img_urls`, `forum_auto_link_urls`, `forum_notify_moderators_topics`, `forum_notify_moderators_replies`, `forum_notify_emails`, `forum_notify_emails_topics`, `forum_enable_rss`, `forum_use_http_auth`)
VALUES
	(1,1,'General','','y',NULL,1,'o',0,0,NULL,'p',NULL,0,NULL,NULL,'a:8:{s:14:\"can_view_forum\";s:9:\"|1|3|4|5|\";s:15:\"can_view_hidden\";s:5:\"|1|5|\";s:15:\"can_view_topics\";s:9:\"|1|3|4|5|\";s:15:\"can_post_topics\";s:5:\"|1|5|\";s:14:\"can_post_reply\";s:5:\"|1|5|\";s:10:\"can_report\";s:5:\"|1|5|\";s:16:\"can_upload_files\";s:5:\"|1|5|\";s:10:\"can_search\";s:9:\"|1|3|4|5|\";}',25,15,'r','a',10,6000,0,'n','xhtml','safe','n','y','n','n','','','n','n'),
	(2,1,'Social','','n',1,2,'o',3,1,3,'p','Test Forum Topic from Entry',1426676334,1,'leevigraham','a:8:{s:14:\"can_view_forum\";s:9:\"|1|3|4|5|\";s:15:\"can_view_hidden\";s:5:\"|1|5|\";s:15:\"can_view_topics\";s:9:\"|1|3|4|5|\";s:15:\"can_post_topics\";s:5:\"|1|5|\";s:14:\"can_post_reply\";s:5:\"|1|5|\";s:10:\"can_report\";s:5:\"|1|5|\";s:16:\"can_upload_files\";s:5:\"|1|5|\";s:10:\"can_search\";s:9:\"|1|3|4|5|\";}',25,15,'r','a',10,6000,0,'n','xhtml','safe','n','y','n','n','','','y','n'),
	(3,1,'Promotions','','n',1,3,'o',0,0,NULL,'p',NULL,0,NULL,NULL,'a:8:{s:14:\"can_view_forum\";s:9:\"|1|3|4|5|\";s:15:\"can_view_hidden\";s:5:\"|1|5|\";s:15:\"can_view_topics\";s:9:\"|1|3|4|5|\";s:15:\"can_post_topics\";s:5:\"|1|5|\";s:14:\"can_post_reply\";s:5:\"|1|5|\";s:10:\"can_report\";s:5:\"|1|5|\";s:16:\"can_upload_files\";s:5:\"|1|5|\";s:10:\"can_search\";s:9:\"|1|3|4|5|\";}',25,15,'r','a',10,6000,0,'n','xhtml','safe','n','y','n','n','','','y','n');

/*!40000 ALTER TABLE `exp_forums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_global_variables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_global_variables`;

CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_grid_columns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_grid_columns`;

CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_html_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_html_buttons`;

CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`)
VALUES
	(1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),
	(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),
	(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),
	(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),
	(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');

/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_layout_publish
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_layout_publish`;

CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;

INSERT INTO `exp_layout_publish` (`layout_id`, `site_id`, `member_group`, `channel_id`, `field_layout`)
VALUES
	(2,1,1,3,'a:6:{s:7:\"publish\";a:11:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:68;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:32;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:33;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:34;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:83;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:15:\"nsm_better_meta\";a:2:{s:10:\"_tab_label\";s:15:\"NSM Better Meta\";s:21:\"nsm_better_meta__meta\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"forum\";a:4:{s:18:\"forum__forum_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:17:\"forum__forum_body\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"forum__forum_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:21:\"forum__forum_topic_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');

/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_collections`;

CREATE TABLE `exp_low_search_collections` (
  `collection_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  `collection_name` varchar(40) NOT NULL,
  `collection_label` varchar(100) NOT NULL,
  `language` varchar(5) DEFAULT NULL,
  `modifier` decimal(4,1) unsigned NOT NULL DEFAULT '1.0',
  `excerpt` int(6) unsigned NOT NULL DEFAULT '0',
  `settings` text NOT NULL,
  `edit_date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id_2` (`site_id`),
  KEY `channel_id_2` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_collections` WRITE;
/*!40000 ALTER TABLE `exp_low_search_collections` DISABLE KEYS */;

INSERT INTO `exp_low_search_collections` (`collection_id`, `site_id`, `channel_id`, `collection_name`, `collection_label`, `language`, `modifier`, `excerpt`, `settings`, `edit_date`)
VALUES
	(1,1,10,'pages','Pages','en',1.0,0,'{\"0\":\"1\"}',1426516138),
	(2,1,3,'articles','Articles','',1.0,0,'{\"0\":\"3\",\"10:cat_name\":\"1\",\"3:cat_name\":\"1\"}',1426830591),
	(3,1,4,'brands','Brands','',1.0,0,'{\"0\":\"1\"}',1427194190),
	(5,1,6,'places','Places','',1.0,0,'{\"0\":\"1\"}',1426516338),
	(6,1,8,'products','Products','',1.0,0,'{\"0\":\"3\",\"8:cat_name\":\"1\",\"27\":\"1\",\"28\":\"1\",\"41\":\"2\"}',1427194345),
	(7,1,9,'tutorials','Tutorials','',1.0,0,'{\"0\":\"1\"}',1426516356),
	(8,1,7,'promotions','Promotions','',1.0,0,'{\"0\":\"1\"}',1426516363),
	(9,1,12,'advertisements','Advertisements','',1.0,0,'{\"0\":\"1\",\"79\":\"3\"}',1426828899);

/*!40000 ALTER TABLE `exp_low_search_collections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_groups`;

CREATE TABLE `exp_low_search_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL,
  `group_label` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `site_id_2` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_groups` WRITE;
/*!40000 ALTER TABLE `exp_low_search_groups` DISABLE KEYS */;

INSERT INTO `exp_low_search_groups` (`group_id`, `site_id`, `group_label`)
VALUES
	(1,1,'Products'),
	(2,1,'Surf'),
	(3,1,'Skate'),
	(4,1,'Snow');

/*!40000 ALTER TABLE `exp_low_search_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_indexes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_indexes`;

CREATE TABLE `exp_low_search_indexes` (
  `collection_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL,
  `index_text` longtext NOT NULL,
  `index_date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`collection_id`,`entry_id`),
  KEY `collection_id` (`collection_id`),
  KEY `site_id` (`site_id`),
  KEY `collection_id_2` (`collection_id`),
  KEY `site_id_2` (`site_id`),
  FULLTEXT KEY `index_text` (`index_text`),
  FULLTEXT KEY `index_text_2` (`index_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_indexes` WRITE;
/*!40000 ALTER TABLE `exp_low_search_indexes` DISABLE KEYS */;

INSERT INTO `exp_low_search_indexes` (`collection_id`, `entry_id`, `site_id`, `index_text`, `index_date`)
VALUES
	(1,3,1,'| articles index |',1427195277),
	(1,5,1,'| products index |',1427195277),
	(1,8,1,'| account index |',1427195277),
	(1,9,1,'| store orders |',1427195277),
	(1,10,1,'| store order checkout |',1427195277),
	(1,12,1,'| store order details |',1427195277),
	(1,13,1,'| store order payment |',1427195277),
	(1,14,1,'| store order receipt |',1427195277),
	(1,15,1,'| search index |',1427195277),
	(6,6,1,'| skate shoes | skate shoes | skate shoes |\n| store sku xxx sm sku xxx md sku xxx lg |\n| preorder |',1427197924),
	(6,7,1,'| surf shoes | surf shoes | surf shoes |\n| store sku shoes |\n| preorder |',1427197917),
	(1,16,1,'| search save shortcut |',1427195277),
	(1,17,1,'| newsletter index |',1427195277),
	(1,18,1,'| search save shortcut |',1427195277),
	(1,22,1,'| brands index |',1427195277),
	(1,23,1,'| tutorials index |',1427195277),
	(1,24,1,'| places index |',1427195277),
	(1,25,1,'| promotions index |',1427195277),
	(2,80,1,'| test w forum | test w forum | test w forum |',1427195276),
	(2,26,1,'| medina conquers the world | medina conquers the world | medina conquers the world |\n| surf |',1427195276),
	(2,27,1,'| surfing 1000 frames per second | surfing 1000 frames per second | surfing 1000 frames per second |\n| surf |',1427195276),
	(2,28,1,'| winter is coming | winter is coming | winter is coming |\n| surf |',1427195276),
	(2,29,1,'| behind the glass barta | behind the glass barta | behind the glass barta |\n| surf |',1427195276),
	(2,30,1,'| wsl gold coast highlights | wsl gold coast highlights | wsl gold coast highlights |\n| surf |',1427195276),
	(2,31,1,'| is this the best job on earth | is this the best job on earth | is this the best job on earth |\n| surf |',1427195276),
	(2,32,1,'| who is matt banting | who is matt banting | who is matt banting |\n| surf |',1427195276),
	(2,33,1,'| jordy smith working class | jordy smith working class | jordy smith working class |\n| surf |',1427195276),
	(2,34,1,'| makua rothman big wave world champion | makua rothman big wave world champion | makua rothman big wave world champion |\n| surf |',1427195276),
	(2,35,1,'| quiksilver pro 2015 teaser | quiksilver pro 2015 teaser | quiksilver pro 2015 teaser |\n| surf |',1427195276),
	(2,36,1,'| cyclone marcia s gift | cyclone marcia s gift | cyclone marcia s gift |\n| surf |',1427195276),
	(2,37,1,'| yago dora round two | yago dora round two | yago dora round two |\n| surf |',1427195276),
	(2,38,1,'| brad norris the last screw loose | brad norris the last screw loose | brad norris the last screw loose |\n| surf |',1427195276),
	(2,39,1,'| pipe beasts | pipe beasts | pipe beasts |\n| surf |',1427195276),
	(2,40,1,'| 4k mondays john john florence | 4k mondays john john florence | 4k mondays john john florence |\n| surf |',1427195276),
	(2,41,1,'| pipeline s beautiful chaos | pipeline s beautiful chaos | pipeline s beautiful chaos |\n| surf |',1427195276),
	(2,42,1,'| carlos munoz cacique del mar | carlos munoz cacique del mar | carlos munoz cacique del mar |\n| surf |',1427195276),
	(2,43,1,'| best of brendon gibbons | best of brendon gibbons | best of brendon gibbons |\n| surf |',1427195276),
	(2,44,1,'| bending jaws | bending jaws | bending jaws |\n| surf |',1427195276),
	(2,45,1,'| shane o neill is a robot | shane o neill is a robot | shane o neill is a robot |\n| skate |',1427195276),
	(2,46,1,'| berrics bangin roundup | berrics bangin roundup | berrics bangin roundup |\n| skate |',1427195276),
	(2,47,1,'| brixton winter in la | brixton winter in la | brixton winter in la |\n| skate |',1427195276),
	(2,48,1,'| 12 year old japanese wonderkid | 12 year old japanese wonderkid | 12 year old japanese wonderkid |\n| skate |',1427195276),
	(2,49,1,'| desert skateboarding | desert skateboarding | desert skateboarding |\n| skate |',1427195276),
	(2,50,1,'| lil wayne returns | lil wayne returns | lil wayne returns |\n| skate |',1427195276),
	(2,51,1,'| didrik galasso full part | didrik galasso full part | didrik galasso full part |\n| skate |',1427195276),
	(2,52,1,'| dave bachinsky welcome to darkstar | dave bachinsky welcome to darkstar | dave bachinsky welcome to darkstar |\n| skate |',1427195276),
	(2,53,1,'| mikey whitehouse is mental | mikey whitehouse is mental | mikey whitehouse is mental |\n| skate |',1427195276),
	(2,54,1,'| ben raybourn full part | ben raybourn full part | ben raybourn full part |\n| skate |',1427195276),
	(2,55,1,'| the halfpipe house | the halfpipe house | the halfpipe house |\n| skate |',1427195276),
	(2,56,1,'| shane o neill full part | shane o neill full part | shane o neill full part |\n| skate |',1427195276),
	(2,57,1,'| brandon gironda full part | brandon gironda full part | brandon gironda full part |\n| skate |',1427195276),
	(2,58,1,'| aaron jaws homoki roof part | aaron jaws homoki roof part | aaron jaws homoki roof part |\n| skate |',1427195276),
	(2,59,1,'| chris russell full part | chris russell full part | chris russell full part |\n| skate |',1427195276),
	(2,60,1,'| vans bowl a rama bondi 2015 full recap | vans bowl a rama bondi 2015 full recap | vans bowl a rama bondi 2015 full recap |\n| skate |',1427195276),
	(2,61,1,'| true to this harry lintell | true to this harry lintell | true to this harry lintell |\n| skate |',1427195276),
	(2,62,1,'| tj rogers full part | tj rogers full part | tj rogers full part |\n| skate |',1427195276),
	(2,63,1,'| degrees north teaser | degrees north teaser | degrees north teaser |\n| skate |',1427195276),
	(2,64,1,'| david gravette full part | david gravette full part | david gravette full part |\n| skate |',1427195276),
	(2,65,1,'| david gravette s greatest rails | david gravette s greatest rails | david gravette s greatest rails |\n| skate |',1427195276),
	(2,66,1,'| skatelife bob burnquist | skatelife bob burnquist | skatelife bob burnquist |\n| skate |',1427195276),
	(2,67,1,'| chris joslin another full part | chris joslin another full part | chris joslin another full part |\n| skate |',1427195276),
	(2,68,1,'| daewon song 2014 | daewon song 2014 | daewon song 2014 |\n| skate |',1427195276),
	(2,69,1,'| stale sandbech laax sessions | stale sandbech laax sessions | stale sandbech laax sessions |\n| snow |',1427195276),
	(2,70,1,'| sierra surf chronicles part 2 | sierra surf chronicles part 2 | sierra surf chronicles part 2 |\n| snow |',1427195276),
	(2,71,1,'| finland snowboarding for me | finland snowboarding for me | finland snowboarding for me |\n| snow |',1427195276),
	(2,72,1,'| think thank weekend fire | think thank weekend fire | think thank weekend fire |\n| snow |',1427195276),
	(2,73,1,'| rusty toothbrush mess up meribel | rusty toothbrush mess up meribel | rusty toothbrush mess up meribel |\n| snow |',1427195276),
	(2,74,1,'| hold it down more mammoth hammers | hold it down more mammoth hammers | hold it down more mammoth hammers |\n| snow |',1427195276),
	(2,75,1,'| grilosodes austrian backcountry | grilosodes austrian backcountry | grilosodes austrian backcountry |\n| snow |',1427195276),
	(2,76,1,'| sunday in the park episode 10 | sunday in the park episode 10 | sunday in the park episode 10 |\n| snow |',1427195276),
	(2,77,1,'| burton us open slopestyle highlights | burton us open slopestyle highlights | burton us open slopestyle highlights |\n| snow |',1427195276),
	(2,78,1,'| burton us open halfpipe highlights | burton us open halfpipe highlights | burton us open halfpipe highlights |\n| snow |',1427195276),
	(2,79,1,'| this just happened chapter 2 sexual snowboarding | this just happened chapter 2 sexual snowboarding | this just happened chapter 2 sexual snowboarding |\n| snow |',1427195276),
	(9,81,1,'| snow advertisement |',1427195276),
	(9,83,1,'| surf advertisement |',1427195276),
	(9,82,1,'| skate advertisement |',1427195276),
	(3,84,1,'| burton |',1427201356);

/*!40000 ALTER TABLE `exp_low_search_indexes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_log`;

CREATE TABLE `exp_low_search_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `search_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `parameters` text NOT NULL,
  `num_results` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `site_id` (`site_id`),
  KEY `site_id_2` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_log` WRITE;
/*!40000 ALTER TABLE `exp_low_search_log` DISABLE KEYS */;

INSERT INTO `exp_low_search_log` (`log_id`, `site_id`, `member_id`, `search_date`, `ip_address`, `keywords`, `parameters`, `num_results`)
VALUES
	(1,1,1,1426515724,'127.0.0.1','articles','{\"result_page\":\"search\"}',NULL),
	(2,1,1,1426515906,'127.0.0.1','Search','{\"result_page\":\"search\"}',NULL),
	(3,1,1,1426515955,'127.0.0.1','Search','{\"result_page\":\"search\"}',NULL),
	(4,1,1,1426516378,'127.0.0.1','Shoes','{\"result_page\":\"search\"}',NULL),
	(5,1,1,1426516384,'127.0.0.1','Shoes','{\"result_page\":\"search\"}',NULL),
	(6,1,1,1426548848,'127.0.0.1','Shoes','{\"result_page\":\"search\"}',NULL),
	(7,1,1,1426550398,'127.0.0.1','shoes','{\"result_page\":\"search\"}',NULL),
	(8,1,1,1426550403,'127.0.0.1','shoes','{\"result_page\":\"search\"}',NULL),
	(9,1,1,1426550422,'127.0.0.1','shoes','{}',NULL),
	(10,1,1,1426550445,'127.0.0.1','Store','{}',NULL),
	(11,1,1,1426597226,'127.0.0.1','','{}',0),
	(12,1,0,1426650842,'127.0.0.1','articles','{}',1),
	(13,1,0,1426650992,'127.0.0.1','Shoes','{}',1),
	(14,1,0,1426651059,'127.0.0.1','shoes','{}',1),
	(15,1,1,1426828812,'127.0.0.1','perisher','{\"result_page\":\"advertisements\\/_adblock\"}',0),
	(16,1,1,1426830532,'127.0.0.1','daweon','{}',NULL),
	(17,1,1,1426830542,'127.0.0.1','song','{}',NULL),
	(18,1,1,1426830562,'127.0.0.1','Daewon Song','{}',NULL),
	(19,1,1,1426830596,'127.0.0.1','Daewon Song','{}',NULL),
	(20,1,1,1426830659,'127.0.0.1','perisher','{}',NULL),
	(21,1,0,1427172676,'127.0.0.1','Daewon','{}',NULL),
	(22,1,1,1427186967,'127.0.0.1','','{}',NULL),
	(23,1,1,1427186975,'127.0.0.1','','{}',NULL),
	(24,1,1,1427187061,'127.0.0.1','','{\"collection\":\"2\"}',NULL),
	(25,1,1,1427187172,'127.0.0.1','','{\"collection\":\"2\"}',NULL),
	(26,1,1,1427187784,'127.0.0.1','','{\"category\":\"1\"}',80),
	(27,1,1,1427187790,'127.0.0.1','','{\"category\":\"1|3\"}',80),
	(28,1,1,1427187909,'127.0.0.1','','{\"collection\":\"2\",\"category\":\"1|3\"}',55),
	(29,1,1,1427187978,'127.0.0.1','','{\"collection\":\"2\",\"category\":\"1\"}',55),
	(30,1,1,1427188009,'127.0.0.1','','{\"collection\":\"2\",\"category\":\"3\"}',55),
	(31,1,1,1427188258,'127.0.0.1','','{\"collection\":\"2\",\"category\":\"1|3\"}',55),
	(32,1,1,1427188263,'127.0.0.1','','{\"collection\":\"2\"}',55),
	(33,1,1,1427190284,'127.0.0.1','','{\"category\":\"2\"}',80),
	(34,1,1,1427190332,'127.0.0.1','','{\"category\":\"2\"}',80),
	(35,1,1,1427190347,'127.0.0.1','','{\"category\":\"2\"}',80),
	(36,1,1,1427190407,'127.0.0.1','','{\"category\":\"2\"}',80),
	(37,1,1,1427190498,'127.0.0.1','','{\"category\":\"2\"}',80),
	(38,1,1,1427190531,'127.0.0.1','','{\"result_page\":\"products\\/search\",\"category\":\"2\"}',NULL),
	(39,1,1,1427190555,'127.0.0.1','','{\"result_page\":\"products\\/search\",\"category\":\"2\"}',NULL),
	(40,1,1,1427190625,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2\"}',NULL),
	(41,1,1,1427190625,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2\"}',NULL),
	(42,1,1,1427190638,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2|1\"}',NULL),
	(43,1,1,1427192685,'127.0.0.1','','{\"result_page\":\"products\",\"search:cf_product_brand\":\"84\"}',NULL),
	(44,1,1,1427192744,'127.0.0.1','','{\"result_page\":\"products\",\"search:cf_product_brand\":\"84\"}',NULL),
	(45,1,1,1427192748,'127.0.0.1','','{\"result_page\":\"products\",\"search:cf_product_brand\":\"84\"}',NULL),
	(46,1,1,1427193270,'127.0.0.1','','{\"result_page\":\"products\",\"search:cf_product_brand\":\"84\"}',NULL),
	(47,1,1,1427193875,'127.0.0.1','','{\"result_page\":\"products\",\"parent:cf_product_related_brand\":\"84\"}',NULL),
	(48,1,1,1427193947,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',NULL),
	(49,1,1,1427194145,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',NULL),
	(50,1,1,1427194788,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',81),
	(51,1,1,1427195010,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(52,1,1,1427195079,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(53,1,1,1427195155,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(54,1,1,1427195447,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(55,1,1,1427195514,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(56,1,1,1427195587,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(57,1,1,1427195836,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(58,1,1,1427197148,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',2),
	(59,1,1,1427197448,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"All\"}',0),
	(60,1,1,1427197475,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"All\"}',0),
	(61,1,1,1427197493,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',1),
	(62,1,1,1427197499,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"All\"}',0),
	(63,1,1,1427197514,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"All\"}',NULL),
	(64,1,1,1427197562,'127.0.0.1','','{\"result_page\":\"products\"}',2),
	(65,1,1,1427197570,'127.0.0.1','','{\"result_page\":\"products\",\"child:cf_product_related_brand\":\"84\"}',1),
	(66,1,1,1427197762,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1\",\"child:cf_product_related_brand\":\"84\"}',1),
	(67,1,1,1427197940,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1\",\"child:cf_product_related_brand\":\"84\"}',1),
	(68,1,1,1427197949,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2\"}',2),
	(69,1,1,1427197971,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2\"}',2),
	(70,1,1,1427198007,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2|1|3\"}',2),
	(71,1,1,1427199331,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1\"}',2),
	(72,1,1,1427199350,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1\",\"child:cf_product_related_brand\":\"84\"}',1),
	(73,1,1,1427199358,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1\"}',NULL),
	(74,1,1,1427199414,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"2\"}',1),
	(75,1,1,1427199425,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"3\"}',1),
	(76,1,1,1427199433,'127.0.0.1','','{\"result_page\":\"products\",\"category\":\"1|3\"}',1),
	(77,1,1,1427200489,'127.0.0.1','shoes','{}',2);

/*!40000 ALTER TABLE `exp_low_search_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_replace_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_replace_log`;

CREATE TABLE `exp_low_search_replace_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `replace_date` int(10) unsigned NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `replacement` varchar(150) NOT NULL,
  `fields` text NOT NULL,
  `entries` text NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `site_id` (`site_id`),
  KEY `site_id_2` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_low_search_shortcuts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_shortcuts`;

CREATE TABLE `exp_low_search_shortcuts` (
  `shortcut_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL,
  `group_id` int(4) unsigned NOT NULL,
  `shortcut_name` varchar(40) NOT NULL,
  `shortcut_label` varchar(150) DEFAULT NULL,
  `parameters` text NOT NULL,
  `sort_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`shortcut_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id_2` (`site_id`),
  KEY `group_id_2` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_shortcuts` WRITE;
/*!40000 ALTER TABLE `exp_low_search_shortcuts` DISABLE KEYS */;

INSERT INTO `exp_low_search_shortcuts` (`shortcut_id`, `site_id`, `group_id`, `shortcut_name`, `shortcut_label`, `parameters`, `sort_order`)
VALUES
	(4,1,1,'shoes','Shoes','{\"keywords\":\"shoes\"}',0),
	(5,1,2,'surf-articles','Articles','{\"collection\":\"articles\"}',0),
	(7,1,2,'surf-brands','Brands','{\"collection\":\"brands\"}',0),
	(8,1,2,'surf-tutorials','Tutorials','{\"collection\":\"tutorials\"}',0),
	(9,1,2,'surf-places','Places','{\"collection\":\"places\"}',0),
	(10,1,2,'surf-promotions','Promotions','{\"collection\":\"promotions\"}',0),
	(11,1,3,'skate-articles','Articles','{\"collection\":\"articles\"}',0),
	(12,1,3,'skate-brands','Brands','{\"collection\":\"brands\"}',0),
	(13,1,3,'skate-tutorials','Tutorials','{\"collection\":\"tutorials\"}',0),
	(14,1,3,'skate-places','Places','{\"collection\":\"places\"}',0),
	(15,1,3,'skate-promotions','Promotions','{\"collection\":\"promotions\"}',0),
	(16,1,4,'snow-articles','Articles','{\"collection\":\"articles\"}',0),
	(17,1,4,'snow-brands','Brands','{\"collection\":\"brands\"}',0),
	(18,1,4,'snow-tutorials','Tutorials','{\"collection\":\"tutorials\"}',0),
	(19,1,4,'snow-places','Places','{\"collection\":\"places\"}',0),
	(20,1,4,'snow-promotions','Promotions','{\"collection\":\"promotions\"}',0);

/*!40000 ALTER TABLE `exp_low_search_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_search_words
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_search_words`;

CREATE TABLE `exp_low_search_words` (
  `site_id` int(4) unsigned NOT NULL,
  `language` varchar(5) NOT NULL,
  `word` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `length` int(4) unsigned NOT NULL,
  `sound` char(4) DEFAULT NULL,
  `clean` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`site_id`,`language`,`word`),
  KEY `length` (`length`),
  KEY `sound` (`sound`),
  KEY `clean` (`clean`),
  KEY `length_2` (`length`),
  KEY `sound_2` (`sound`),
  KEY `clean_2` (`clean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_low_search_words` WRITE;
/*!40000 ALTER TABLE `exp_low_search_words` DISABLE KEYS */;

INSERT INTO `exp_low_search_words` (`site_id`, `language`, `word`, `length`, `sound`, `clean`)
VALUES
	(1,'en',X'6163636F756E74',7,'A253',NULL),
	(1,'en',X'61727469636C6573',8,'A632',NULL),
	(1,'en',X'6272616E6473',6,'B653',NULL),
	(1,'en',X'636865636B6F7574',8,'C230',NULL),
	(1,'en',X'64657461696C73',7,'D342',NULL),
	(1,'en',X'696E646578',5,'I532',NULL),
	(1,'en',X'6E6577736C6574746572',10,'N243',NULL),
	(1,'en',X'6F72646572',5,'O636',NULL),
	(1,'en',X'6F7264657273',6,'O636',NULL),
	(1,'en',X'7061796D656E74',7,'P553',NULL),
	(1,'en',X'706C61636573',6,'P422',NULL),
	(1,'en',X'70726F6475637473',8,'P632',NULL),
	(1,'en',X'70726F6D6F74696F6E73',10,'P653',NULL),
	(1,'en',X'72656365697074',7,'R213',NULL),
	(1,'en',X'73617665',4,'S100',NULL),
	(1,'en',X'736561726368',6,'S620',NULL),
	(1,'en',X'73686F7274637574',8,'S632',NULL),
	(1,'en',X'73746F7265',5,'S360',NULL),
	(1,'en',X'7475746F7269616C73',9,'T364',NULL);

/*!40000 ALTER TABLE `exp_low_search_words` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_low_variable_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_variable_groups`;

CREATE TABLE `exp_low_variable_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(6) unsigned NOT NULL DEFAULT '1',
  `group_label` varchar(100) NOT NULL DEFAULT '',
  `group_notes` text NOT NULL,
  `group_order` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_low_variables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_low_variables`;

CREATE TABLE `exp_low_variables` (
  `variable_id` int(6) unsigned NOT NULL,
  `group_id` int(6) unsigned NOT NULL DEFAULT '0',
  `variable_label` varchar(100) NOT NULL DEFAULT '',
  `variable_notes` text NOT NULL,
  `variable_type` varchar(50) NOT NULL DEFAULT 'low_textarea',
  `variable_settings` text NOT NULL,
  `variable_order` int(4) unsigned NOT NULL DEFAULT '0',
  `early_parsing` char(1) NOT NULL DEFAULT 'n',
  `is_hidden` char(1) NOT NULL DEFAULT 'n',
  `save_as_file` char(1) NOT NULL DEFAULT 'n',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`variable_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_member_bulletin_board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_bulletin_board`;

CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_data`;

CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;

INSERT INTO `exp_member_data` (`member_id`)
VALUES
	(1);

/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_fields`;

CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_groups`;

CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`)
VALUES
	(1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),
	(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),
	(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y');

/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_homepage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_homepage`;

CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`)
VALUES
	(1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0);

/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_search`;

CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_members`;

CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`)
VALUES
	(1,1,'leevigraham','leevigraham','39bad71983313f51ceb28ab4cbea959fc621041cb9f14b317d627ef4eda51002cda0d28e7e9c37ce993487d0e52b076e2f0e340eeea54279e4b1f59cf598318c','W`}2N}6@TG;JbR8HSkebZ?sm=w\"cF+^x%-8Fz:fA)m8w8j+AWfzwH~F4Tjsf[(LtZ)G#*Nnq+[v&emXdt]H7:6dGt~F<~mNX;fdD$\"-fG\"+#P2#\'COk?yW2CFrEmSmd<','65cc5165e20e21b63e5c2588a2859b57da5be43a','23b191c91f412205e5c8b6eaf2da1f4c33a6d26f',NULL,'leevi@newism.com.au','http://leevigraham.com','','','',NULL,NULL,NULL,'','','','','',NULL,'uploads/avatar_1.jpg',512,512,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'127.0.0.1',1425471974,1427172148,1427202347,82,0,3,1,1427192313,0,1426676334,0,'n','y','y','y','y','y','y','y','y','english','Australia/Sydney','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18','',NULL,'n',0,'y',0);

/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_attachments`;

CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_copies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_copies`;

CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_data`;

CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_folders`;

CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`)
VALUES
	(1,'InBox','Sent','','','','','','','','');

/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_listed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_listed`;

CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_module_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_module_member_groups`;

CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_modules`;

CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`)
VALUES
	(1,'Channel','2.0.1','n','n'),
	(2,'Member','2.1','n','n'),
	(3,'Stats','2.0','n','n'),
	(4,'Rte','1.0.1','y','n'),
	(5,'Wygwam','3.3.3','y','n'),
	(6,'Assets','2.5','y','n'),
	(7,'Store','2.5.0','y','n'),
	(8,'Low_search','4.0.0','y','n'),
	(9,'Low_variables','2.6.0','y','n'),
	(10,'Zenbu','1.9.3.1','y','n'),
	(11,'Taxonomy','3.1.1','y','n'),
	(12,'Nsm_better_meta','1.1.7','n','y'),
	(13,'Ce_cache','1.10.1','y','n'),
	(34,'Blocks','1.2.4','y','n'),
	(31,'Freemember','2.3.2','n','n'),
	(29,'Query','2.0','n','n'),
	(27,'Forum','3.1.17','y','y'),
	(23,'Ee_debug_toolbar','1.0.1','y','n'),
	(28,'Nsm_better_meta_new','1.0','y','y');

/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_nsm_addon_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;

CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;

INSERT INTO `exp_nsm_addon_settings` (`id`, `site_id`, `addon_id`, `settings`)
VALUES
	(1,1,'nsm_better_meta','{\"enabled\":true,\"channels\":{\"3\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"2\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"4\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"5\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"1\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"10\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"6\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"8\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"7\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"},\"9\":{\"enabled_fields\":[\"title\",\"description\"],\"sitemap_include\":\"y\",\"sitemap_change_frequency\":\"Weekly\",\"sitemap_priority\":\"0.5\"}},\"default_site_meta\":{\"site_title\":\"local.circle\",\"description\":\"\",\"keywords\":\"\",\"publisher\":\"\",\"rights\":\"\",\"robots_archive\":\"y\",\"robots_follow\":\"y\",\"robots_index\":\"y\",\"geo_latitude\":\"\",\"geo_longitude\":\"\",\"geo_placename\":\"\",\"geo_region\":\"\",\"author\":\"\"},\"meta_template\":\"<title>{title}<\\/title>\\n<meta name=\\\"description\\\" content=\\\"{description}\\\" \\/>\\n<meta name=\\\"keywords\\\" content=\\\"{keywords}\\\" \\/>\\n<meta name=\\\"robots\\\" content=\\\"{robots}\\\" \\/>\\n\\n<meta name=\\\"geo.position\\\" content=\\\"{geo_latitude},{geo_longitude}\\\" \\/>\\n<meta name=\\\"geo.placename\\\" content=\\\"{geo_placename}\\\" \\/>\\n<meta name=\\\"geo.region\\\" content=\\\"{geo_region}\\\" \\/>\\n\\n{if canonical_url} <link rel=\\\"canonical_url\\\" href=\\\"{canonical_url}\\\" \\/> {\\/if}\",\"divider\":0}');

/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_nsm_better_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_nsm_better_meta`;

CREATE TABLE `exp_nsm_better_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(6) unsigned DEFAULT NULL,
  `language_id` varchar(255) DEFAULT NULL,
  `entry_default` varchar(1) DEFAULT 'n',
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `keywords_append_default` varchar(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `rights` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL,
  `robots_index` varchar(1) DEFAULT NULL,
  `robots_follow` varchar(1) DEFAULT NULL,
  `robots_archive` varchar(1) DEFAULT NULL,
  `sitemap_priority` double(2,1) DEFAULT '0.5',
  `sitemap_change_frequency` varchar(20) DEFAULT NULL,
  `sitemap_include` varchar(1) DEFAULT NULL,
  `geo_region` varchar(255) DEFAULT NULL,
  `geo_placename` varchar(255) DEFAULT NULL,
  `geo_latitude` double(8,5) DEFAULT NULL,
  `geo_longitude` double(8,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_nsm_better_meta` WRITE;
/*!40000 ALTER TABLE `exp_nsm_better_meta` DISABLE KEYS */;

INSERT INTO `exp_nsm_better_meta` (`id`, `entry_id`, `site_id`, `channel_id`, `language_id`, `entry_default`, `title`, `keywords`, `keywords_append_default`, `description`, `publisher`, `rights`, `author`, `canonical_url`, `robots_index`, `robots_follow`, `robots_archive`, `sitemap_priority`, `sitemap_change_frequency`, `sitemap_include`, `geo_region`, `geo_placename`, `geo_latitude`, `geo_longitude`)
VALUES
	(1,1,1,1,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,2,1,1,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,3,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,5,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,6,1,8,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,7,1,8,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,8,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,9,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,10,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,12,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,13,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,14,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,15,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,16,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,17,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,18,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,19,1,11,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,20,1,11,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,21,1,11,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,22,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,23,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,24,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,25,1,10,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,26,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,27,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,28,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,29,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,30,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(31,31,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(32,32,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(33,33,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(34,34,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(35,35,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(36,36,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,37,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(38,38,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(39,39,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(40,40,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(41,41,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(42,42,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(43,43,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(44,44,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(45,45,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(46,46,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(47,47,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(48,48,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(49,49,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(50,50,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(51,51,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(52,52,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(53,53,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(54,54,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(55,55,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(56,56,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(57,57,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(58,58,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(59,59,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(60,60,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(61,61,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(62,62,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(63,63,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(64,64,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(65,65,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(66,66,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(67,67,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(68,68,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(69,69,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(70,70,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(71,71,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(72,72,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(73,73,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(74,74,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(75,75,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(76,76,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(77,77,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(78,78,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(79,79,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(80,80,1,3,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(81,81,1,12,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(82,82,1,12,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(83,83,1,12,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(84,84,1,4,NULL,'y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `exp_nsm_better_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_online_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_online_users`;

CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_password_lockout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_password_lockout`;

CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;

INSERT INTO `exp_password_lockout` (`lockout_id`, `login_date`, `ip_address`, `user_agent`, `username`)
VALUES
	(3,1427154166,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.3','team@newism.com.au');

/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_relationships`;

CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;

INSERT INTO `exp_relationships` (`relationship_id`, `parent_id`, `child_id`, `field_id`, `grid_field_id`, `grid_col_id`, `grid_row_id`, `order`)
VALUES
	(1,73,48,33,0,0,0,1),
	(2,73,40,33,0,0,0,2),
	(3,73,58,33,0,0,0,3),
	(4,73,6,34,0,0,0,1),
	(5,73,7,34,0,0,0,2),
	(6,19,48,65,0,0,0,1),
	(7,19,40,65,0,0,0,2),
	(8,19,58,65,0,0,0,3),
	(9,19,6,66,0,0,0,1),
	(10,19,7,66,0,0,0,2),
	(67,1,7,74,0,0,0,2),
	(66,1,6,74,0,0,0,1),
	(76,1,37,73,0,0,0,8),
	(75,1,30,73,0,0,0,9),
	(74,1,62,73,0,0,0,5),
	(73,1,79,73,0,0,0,6),
	(72,1,72,73,0,0,0,7),
	(71,1,53,73,0,0,0,4),
	(70,1,34,73,0,0,0,3),
	(69,1,33,73,0,0,0,2),
	(68,1,71,73,0,0,0,1),
	(81,7,84,41,0,0,0,0);

/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_remember_me
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_remember_me`;

CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_reset_password
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_reset_password`;

CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_revision_tracker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_revision_tracker`;

CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;

INSERT INTO `exp_revision_tracker` (`tracker_id`, `item_id`, `item_table`, `item_field`, `item_date`, `item_author_id`, `item_data`)
VALUES
	(19,13,'exp_templates','template_data',1425997874,1,''),
	(18,12,'exp_templates','template_data',1425997873,1,''),
	(17,10,'exp_templates','template_data',1425997849,1,''),
	(14,5,'exp_templates','template_data',1425997818,1,''),
	(13,4,'exp_templates','template_data',1425997818,1,''),
	(11,2,'exp_templates','template_data',1425997817,1,''),
	(12,3,'exp_templates','template_data',1425997817,1,''),
	(16,8,'exp_templates','template_data',1425997836,1,''),
	(15,7,'exp_templates','template_data',1425997836,1,''),
	(20,14,'exp_templates','template_data',1425997874,1,''),
	(21,16,'exp_templates','template_data',1425997881,1,''),
	(22,17,'exp_templates','template_data',1425997882,1,''),
	(23,18,'exp_templates','template_data',1425997882,1,''),
	(24,19,'exp_templates','template_data',1425997883,1,''),
	(25,20,'exp_templates','template_data',1425997883,1,''),
	(26,21,'exp_templates','template_data',1425997884,1,''),
	(27,22,'exp_templates','template_data',1425997884,1,''),
	(28,24,'exp_templates','template_data',1425997903,1,''),
	(29,25,'exp_templates','template_data',1425997903,1,''),
	(30,26,'exp_templates','template_data',1425997904,1,''),
	(31,27,'exp_templates','template_data',1425997904,1,''),
	(32,28,'exp_templates','template_data',1425997904,1,''),
	(33,29,'exp_templates','template_data',1425997905,1,''),
	(34,30,'exp_templates','template_data',1425997905,1,''),
	(35,31,'exp_templates','template_data',1425997906,1,''),
	(36,32,'exp_templates','template_data',1425997908,1,''),
	(37,34,'exp_templates','template_data',1425997948,1,''),
	(38,35,'exp_templates','template_data',1425997948,1,''),
	(39,36,'exp_templates','template_data',1425997949,1,''),
	(40,37,'exp_templates','template_data',1425997949,1,''),
	(41,38,'exp_templates','template_data',1425997958,1,''),
	(45,44,'exp_templates','template_data',1425998047,1,''),
	(44,43,'exp_templates','template_data',1425998047,1,''),
	(46,45,'exp_templates','template_data',1425998048,1,''),
	(47,46,'exp_templates','template_data',1425998048,1,''),
	(48,47,'exp_templates','template_data',1425998049,1,''),
	(97,60,'exp_templates','template_data',1426576212,1,''),
	(96,54,'exp_templates','template_data',1426576193,1,''),
	(95,42,'exp_templates','template_data',1426576172,1,''),
	(94,70,'exp_templates','template_data',1426576101,1,''),
	(93,91,'exp_templates','template_data',1426569334,1,''),
	(54,55,'exp_templates','template_data',1425998069,1,''),
	(55,56,'exp_templates','template_data',1425998070,1,''),
	(56,57,'exp_templates','template_data',1425998070,1,''),
	(57,58,'exp_templates','template_data',1425998071,1,''),
	(58,59,'exp_templates','template_data',1425998071,1,''),
	(59,61,'exp_templates','template_data',1425998076,1,''),
	(60,62,'exp_templates','template_data',1425998076,1,''),
	(61,63,'exp_templates','template_data',1425998076,1,''),
	(62,65,'exp_templates','template_data',1425998083,1,''),
	(63,66,'exp_templates','template_data',1425998084,1,''),
	(64,67,'exp_templates','template_data',1425998084,1,''),
	(65,68,'exp_templates','template_data',1425998085,1,''),
	(66,69,'exp_templates','template_data',1425998085,1,''),
	(67,71,'exp_templates','template_data',1425998095,1,''),
	(68,72,'exp_templates','template_data',1425998096,1,''),
	(69,73,'exp_templates','template_data',1425998096,1,''),
	(70,74,'exp_templates','template_data',1425998096,1,''),
	(71,75,'exp_templates','template_data',1425998097,1,''),
	(72,1,'exp_templates','template_data',1426021411,1,''),
	(73,1,'exp_templates','template_data',1426021420,1,'site/index'),
	(74,1,'exp_templates','template_data',1426021509,1,'site/index'),
	(75,11,'exp_templates','template_data',1426052490,1,''),
	(76,11,'exp_templates','template_data',1426052494,1,''),
	(77,33,'exp_templates','template_data',1426070968,1,''),
	(78,78,'exp_templates','template_data',1426217533,1,'ss'),
	(79,80,'exp_templates','template_data',1426479334,1,''),
	(80,64,'exp_templates','template_data',1426480246,1,''),
	(81,81,'exp_templates','template_data',1426509980,1,''),
	(82,82,'exp_templates','template_data',1426511359,1,''),
	(83,23,'exp_templates','template_data',1426511694,1,''),
	(84,81,'exp_templates','template_data',1426512203,1,''),
	(85,85,'exp_templates','template_data',1426517402,1,''),
	(86,87,'exp_templates','template_data',1426548067,1,''),
	(87,86,'exp_templates','template_data',1426548098,1,''),
	(88,11,'exp_templates','template_data',1426549189,1,'{layout=\"site/-layout\"}\n\n{exp:channel:entries\n    channel=\"pages\"\n    limit=\"1\"\n    dynamic=\"no\"\n    url_title=\"search-index\"\n}\n\n{if no_results}{redirect=\"404\"}{/if}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"entry_id\" value=\"{entry_id}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{title}</h1>\n\n{cf_page_content}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n{/exp:channel:entries}\n\n<h2>Keywords: {exp:low_search:keywords query=\"{segment_2}\"}</h2>\n\n{exp:low_search:results\n    query=\"{segment_2}\"\n    shortcut=\"{segment_2}\"\n    dynamic=\"no\"\n}\n<h3><a href=\"#\">{title}</a></h3>\n{/exp:low_search:results}\n\n{embed=\'search/_form-search-save\'}\n\n'),
	(89,88,'exp_templates','template_data',1426549224,1,''),
	(90,89,'exp_templates','template_data',1426550122,1,''),
	(91,90,'exp_templates','template_data',1426550997,1,''),
	(92,90,'exp_templates','template_data',1426551886,1,'{layout=\"site/-layout\"}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"title\" value=\"{segment_2_category_name}\"}\n{layout:set name=\"description\" value=\"{segment_2_category_description}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{segment_2_category_name}</h1>\n\n{segment_2_category_description}\n{segment_2_category_image}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n'),
	(98,15,'exp_templates','template_data',1426649154,1,''),
	(99,15,'exp_templates','template_data',1426649214,1,''),
	(100,126,'exp_templates','template_data',1426811931,1,'{title}\n'),
	(101,126,'exp_templates','template_data',1426813765,1,'<div>\n    <h3><a href=\"{url_title_path=\'articles/details\'}\">{title}</a> {if cf_article_feature_video}w/ Video{/if}</h3>\n\n    {if cf_article_thumbnail_image}\n    <img\n        src=\"{cf_article_thumbnail_image:revved_url:thumbnail-1x}\"\n        width=\"{cf_article_thumbnail_image:width:thumbnail-1x}\"\n        height=\"{cf_article_thumbnail_image:height:thumbnail-1x}\"\n        srcset=\"{cf_article_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n        />\n    {/if}\n    {cf_article_content}\n</div>\n'),
	(102,127,'exp_templates','template_data',1426820182,1,'<div>\n<h3><a href=\"{url_title_path=\'brands/details\'}\">{title}</a> {if cf_brand_feature_video}w/ Video{/if}</h3>\n{if cf_brand_thumbnail_image}\n<img\n    src=\"{cf_brand_thumbnail_image:revved_url:thumbnail-1x}\"\n    width=\"{cf_brand_thumbnail_image:width:thumbnail-1x}\"\n    height=\"{cf_brand_thumbnail_image:height:thumbnail-1x}\"\n    srcset=\"{cf_brand_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n    />\n{/if}\n{cf_brand_content}\n</div>\n'),
	(103,133,'exp_templates','template_data',1426826955,1,''),
	(104,134,'exp_templates','template_data',1426826967,1,''),
	(105,135,'exp_templates','template_data',1426827085,1,'');

/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_rte_tools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_rte_tools`;

CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;

INSERT INTO `exp_rte_tools` (`tool_id`, `name`, `class`, `enabled`)
VALUES
	(1,'Blockquote','Blockquote_rte','y'),
	(2,'Bold','Bold_rte','y'),
	(3,'Headings','Headings_rte','y'),
	(4,'Image','Image_rte','y'),
	(5,'Italic','Italic_rte','y'),
	(6,'Link','Link_rte','y'),
	(7,'Ordered List','Ordered_list_rte','y'),
	(8,'Underline','Underline_rte','y'),
	(9,'Unordered List','Unordered_list_rte','y'),
	(10,'View Source','View_source_rte','y');

/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_rte_toolsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_rte_toolsets`;

CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;

INSERT INTO `exp_rte_toolsets` (`toolset_id`, `member_id`, `name`, `tools`, `enabled`)
VALUES
	(1,0,'Default','3|2|5|1|9|7|6|4|10','y');

/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_security_hashes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_security_hashes`;

CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`)
VALUES
	(85,1427167500,'da8ddeaf0b1acf9c03e5110d955771421ca77a06','28befad639719f77bc0f4ab3a247a6c1b60c3fed'),
	(84,1427157990,'005b4997dfc3a54ba4b96e1b2ad5a2493d420ede','0fced3a49c8843b59282b96882d71222c3dbd9b5'),
	(83,1427154183,'f67642f03c35a54d606414144520c652316e69f5','6efdb1defb062894b5659de464c0976e047b502c'),
	(82,1427117877,'8fefa561f1676f1ecdba6385816791672b7f7ba2','731b0ef49cd20780aad625b1286995eabe4668bf'),
	(81,1427075088,'0c2add88ccf0a031a1f8e36e2e2c131fe0c463d0','837b8f18776d2e6c440beb92b4354f599b289495'),
	(80,1426985177,'9f5d0e61e37d97737804b25624d60d3553147542','9bf58f67ecb25488ec16c8d85fd931597a0f6256'),
	(79,1426984897,'32129460e74825cbb29c33fb85598a9cb537f413','0a589c787a7057f3716e994c38d90ef677fcd075'),
	(78,1426984686,'1f801c0c4e796aa8d8fef6c6722be86edbc55441','8cee926473376cc33ca26fb670e372242f2f0212'),
	(77,1426917401,'87c596c3455e3913c5260e8ce71ee722d216f762','8d055c864d444fa273c53158dfc3b90bd8952e70'),
	(76,1426902780,'134f0c36bfb438e19a931221dc988987bc4cea61','717deee325cc8a3dbce7ec5410cee97c1f651e0b'),
	(75,1426847017,'e81d2b5481c1f248978b6230f11db1794488e68e','00f1b7ed0fdfd43ab5243cdff73168f58658f727'),
	(74,1426835307,'35eb9b380a5e0f9e4be3959ccca1aab5e11a336f','0dc4cf96b7a56c9f35c132dec35ad84e92db208b'),
	(73,1426833132,'3abda5aae138df3d8bf5c284d9f5a0b5db8c6e32','156060179ab748a48c649f66deba8b2cb21da3e7'),
	(72,1426828433,'39c9971d10c8f208e3305146938cdddc5fbd7ea3','522382378a301f086db6b939a9f9543f7cea4bee'),
	(71,1426826923,'ea274fdbeb4d32f9ebfce18c9c877e9a4064aa74','6572f9663607fb58bb4b3b43ebad106fe9ec6f11'),
	(70,1426820171,'b0549d0d1582192ec5ae5dd981bf126d62790455','629298deb39ab75577f039b662d9eac2111b1357'),
	(69,1426820171,'e35dba2f885bd062b744c0f44ead9bbadfb0aa68','cf14e880a0f38a0b0b75548e57bf7fe187222b52'),
	(68,1426811579,'64559f814c9bf4060d2d2a72ba293807c6d66464','dd0c46539e50838774c81f3bd72633567ccdd174'),
	(67,1426804092,'5f22d42a9c212524dae42dd30b4d21ae42dffd67','34f059021f91067e0d6852873ec6ad782a90ebf3'),
	(86,1427186429,'da50149d73b2a0e6cb1fa4ecf072cf40a052b2ee','946563aace6c65053730d32acec538dcf7ca4661'),
	(87,1427197047,'c0c8782d8f9bdc11d8246105ea461750bb5c1a6e','6cf0480cf5640133e9b5c5cdcf9562f3c59111c5'),
	(88,1427201108,'10c697ec34d4cd1d11227e2243beddb614695dba','5b048e4029091897dd30d68483c75cdcc77bfbab');

/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sessions`;

CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `fingerprint`, `sess_start`, `last_activity`)
VALUES
	('c0c8782d8f9bdc11d8246105ea461750bb5c1a6e',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.104 Safari/537.3','8d897a7cb4de7fe2653f55cd82fd1c15',1427201104,1427201104),
	('10c697ec34d4cd1d11227e2243beddb614695dba',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.104 Safari/537.3','8d897a7cb4de7fe2653f55cd82fd1c15',1427201108,1427202405);

/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sites`;

CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`)
VALUES
	(1,'local.circle','default_site',NULL,'YTo4OTp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjA6Imh0dHA6Ly9sb2NhbC5jaXJjbGUvIjtzOjE2OiJ0aGVtZV9mb2xkZXJfdXJsIjtzOjI3OiJodHRwOi8vbG9jYWwuY2lyY2xlL3RoZW1lcy8iO3M6MTU6IndlYm1hc3Rlcl9lbWFpbCI7czoxODoidGVhbUBuZXdpc20uY29tLmF1IjtzOjE0OiJ3ZWJtYXN0ZXJfbmFtZSI7czowOiIiO3M6MjA6ImNoYW5uZWxfbm9tZW5jbGF0dXJlIjtzOjc6ImNoYW5uZWwiO3M6MTA6Im1heF9jYWNoZXMiO3M6MzoiMTUwIjtzOjExOiJjYXB0Y2hhX3VybCI7czozNjoiaHR0cDovL2xvY2FsLmNpcmNsZS9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6MToiLyI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6Im4iO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToieSI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6InkiO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjIwOiJ3ZWJzaXRlX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE1OiJjcF9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6ODoicmVkaXJlY3QiO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJuIjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJkYXRlX2Zvcm1hdCI7czo4OiIlbi8lai8leSI7czoxMToidGltZV9mb3JtYXQiO3M6MjoiMTIiO3M6MTM6InNlcnZlcl9vZmZzZXQiO3M6MDoiIjtzOjIxOiJkZWZhdWx0X3NpdGVfdGltZXpvbmUiO3M6MTY6IkF1c3RyYWxpYS9TeWRuZXkiO3M6MTM6Im1haWxfcHJvdG9jb2wiO3M6NDoibWFpbCI7czoxMToic210cF9zZXJ2ZXIiO3M6MDoiIjtzOjEzOiJzbXRwX3VzZXJuYW1lIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6MTE6ImVtYWlsX2RlYnVnIjtzOjE6Im4iO3M6MTM6ImVtYWlsX2NoYXJzZXQiO3M6NToidXRmLTgiO3M6MTU6ImVtYWlsX2JhdGNobW9kZSI7czoxOiJuIjtzOjE2OiJlbWFpbF9iYXRjaF9zaXplIjtzOjA6IiI7czoxMToibWFpbF9mb3JtYXQiO3M6NToicGxhaW4iO3M6OToid29yZF93cmFwIjtzOjE6InkiO3M6MjI6ImVtYWlsX2NvbnNvbGVfdGltZWxvY2siO3M6MToiNSI7czoyMjoibG9nX2VtYWlsX2NvbnNvbGVfbXNncyI7czoxOiJ5IjtzOjg6ImNwX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MjE6ImVtYWlsX21vZHVsZV9jYXB0Y2hhcyI7czoxOiJuIjtzOjE2OiJsb2dfc2VhcmNoX3Rlcm1zIjtzOjE6InkiO3M6MTk6ImRlbnlfZHVwbGljYXRlX2RhdGEiO3M6MToieSI7czoyNDoicmVkaXJlY3Rfc3VibWl0dGVkX2xpbmtzIjtzOjE6Im4iO3M6MTY6ImVuYWJsZV9jZW5zb3JpbmciO3M6MToibiI7czoxNDoiY2Vuc29yZWRfd29yZHMiO3M6MDoiIjtzOjE4OiJjZW5zb3JfcmVwbGFjZW1lbnQiO3M6MDoiIjtzOjEwOiJiYW5uZWRfaXBzIjtzOjA6IiI7czoxMzoiYmFubmVkX2VtYWlscyI7czowOiIiO3M6MTY6ImJhbm5lZF91c2VybmFtZXMiO3M6MDoiIjtzOjE5OiJiYW5uZWRfc2NyZWVuX25hbWVzIjtzOjA6IiI7czoxMDoiYmFuX2FjdGlvbiI7czo4OiJyZXN0cmljdCI7czoxMToiYmFuX21lc3NhZ2UiO3M6MzQ6IlRoaXMgc2l0ZSBpcyBjdXJyZW50bHkgdW5hdmFpbGFibGUiO3M6MTU6ImJhbl9kZXN0aW5hdGlvbiI7czoyMToiaHR0cDovL3d3dy55YWhvby5jb20vIjtzOjE2OiJlbmFibGVfZW1vdGljb25zIjtzOjE6InkiO3M6MTI6ImVtb3RpY29uX3VybCI7czozNToiaHR0cDovL2xvY2FsLmNpcmNsZS9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6NDk6Ii9Wb2x1bWVzL1NpdGVzL1dvcmsvSW50ZXJuYWwvY2lyY2xlY2kvd2ViL3RoZW1lcy8iO3M6MTA6ImlzX3NpdGVfb24iO3M6MToieSI7czoxMToicnRlX2VuYWJsZWQiO3M6MToieSI7czoyMjoicnRlX2RlZmF1bHRfdG9vbHNldF9pZCI7czoxOiIxIjtzOjEzOiJmb3J1bV90cmlnZ2VyIjtzOjY6ImZvcnVtcyI7fQ==','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbC5jaXJjbGUvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czoxOiIvIjtzOjE2OiJhdmF0YXJfbWF4X3dpZHRoIjtzOjM6IjEwMCI7czoxNzoiYXZhdGFyX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEzOiJhdmF0YXJfbWF4X2tiIjtzOjI6IjUwIjtzOjEzOiJlbmFibGVfcGhvdG9zIjtzOjE6Im4iO3M6OToicGhvdG9fdXJsIjtzOjQxOiJodHRwOi8vbG9jYWwuY2lyY2xlL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czoxOiIvIjtzOjE1OiJwaG90b19tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE2OiJwaG90b19tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMjoicGhvdG9fbWF4X2tiIjtzOjI6IjUwIjtzOjE2OiJhbGxvd19zaWduYXR1cmVzIjtzOjE6InkiO3M6MTM6InNpZ19tYXhsZW5ndGgiO3M6MzoiNTAwIjtzOjIxOiJzaWdfYWxsb3dfaW1nX2hvdGxpbmsiO3M6MToibiI7czoyMDoic2lnX2FsbG93X2ltZ191cGxvYWQiO3M6MToibiI7czoxMToic2lnX2ltZ191cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbC5jaXJjbGUvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTI6InNpZ19pbWdfcGF0aCI7czoxOiIvIjtzOjE3OiJzaWdfaW1nX21heF93aWR0aCI7czozOiI0ODAiO3M6MTg6InNpZ19pbWdfbWF4X2hlaWdodCI7czoyOiI4MCI7czoxNDoic2lnX2ltZ19tYXhfa2IiO3M6MjoiMzAiO3M6MTk6InBydl9tc2dfdXBsb2FkX3BhdGgiO3M6MToiLyI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxMToidG90YWxfcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==','YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6Im4iO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MTE6InNpdGUvZm91cjA0IjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6InkiO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoyOiIzMCI7czoxNToic2F2ZV90bXBsX2ZpbGVzIjtzOjE6InkiO3M6MTg6InRtcGxfZmlsZV9iYXNlcGF0aCI7czo1MToiL1ZvbHVtZXMvU2l0ZXMvV29yay9JbnRlcm5hbC9jaXJjbGVjaS9hcHAvdmlld3Mvc3JjIjt9','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToyOntzOjc6ImVtYWlsZWQiO2E6MTp7aTowO3M6NTE6Ii9Wb2x1bWVzL1NpdGVzL1dvcmsvSW50ZXJuYWwvY2lyY2xlY2kvd2ViL2luZGV4LnBocCI7fXM6NTQ6Ii9Wb2x1bWVzL1NpdGVzL1dvcmsvSW50ZXJuYWwvZXhhbXBsZS5jb20vd2ViL2luZGV4LnBocCI7czozMjoiZWJkN2ZkMzg2YTY4NTcyYmYxNjc0ZjBiZDRlNThkOTEiO30=');

/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_snippets`;

CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_specialty_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_specialty_templates`;

CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`)
VALUES
	(1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),
	(2,1,'y','message_template','','<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=\'content-type\' content=\'text/html; charset={charset}\' />\n\n{meta_refresh}\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),
	(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),
	(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),
	(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),
	(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),
	(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),
	(8,1,'y','forgot_password_instructions','Login information','{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),
	(9,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),
	(10,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),
	(11,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),
	(12,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
	(13,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),
	(14,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),
	(15,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}'),
	(25,1,'y','forum_post_notification','Someone just posted in {forum_name}','Someone just posted in a thread you subscribed to at:\n{forum_name}\n\nThe title of the thread is:\n{title}\n\nThe post can be found at:\n{post_url}\n\n{body}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
	(26,1,'y','forum_moderation_notification','Moderation notification in {forum_name}','{name_of_recipient}, a moderator has {moderation_action} your thread.\n\nThe title of the thread is:\n{title}\n\nThe thread can be found at:\n{thread_url}'),
	(27,1,'y','forum_report_notification','Post reported in {forum_name}','{reporter_name} just reported a post written by {author} in:\n{forum_name}\n\nThe reason(s) for the report:\n{reasons}\n\nAdditional notes from {reporter_name}:\n{notes}\n\nThe post can be found at:\n{post_url}\n\nContents of reported post:\n{body}'),
	(24,1,'y','admin_notify_forum_post','Someone just posted in {forum_name}','{name_of_poster} just submitted a new post in {forum_name}\n\nThe title of the thread is:\n{title}\n\nThe post can be found at:\n{post_url}\n\n{body}');

/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_stats`;

CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`)
VALUES
	(1,1,1,1,'leevigraham',82,2,1,0,1427192280,0,0,1426594108,1,1425474746,1427322399);

/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_groups`;

CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(1,1,'Statuses');

/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_no_access`;

CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_statuses`;

CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`)
VALUES
	(1,1,1,'open',1,'009933'),
	(2,1,1,'closed',2,'990000'),
	(3,1,1,'Pending',3,'000000');

/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_config`;

CREATE TABLE `exp_store_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `preference` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_config` WRITE;
/*!40000 ALTER TABLE `exp_store_config` DISABLE KEYS */;

INSERT INTO `exp_store_config` (`id`, `site_id`, `preference`, `value`)
VALUES
	(1,1,'store_cart_expiry','\"1440\"'),
	(2,1,'store_cc_payment_method','\"purchase\"'),
	(3,1,'store_conversion_tracking_extra','\"    <!-- Facebook Conversion Code for Checkouts - Jeremy Saunders 1 -->\\n    <script>(function() {\\n      var _fbq = window._fbq || (window._fbq = []);\\n      if (!_fbq.loaded) {\\n        var fbds = document.createElement(\'script\');\\n        fbds.async = true;\\n        fbds.src = \'\\/\\/connect.facebook.net\\/en_US\\/fbds.js\';\\n        var s = document.getElementsByTagName(\'script\')[0];\\n        s.parentNode.insertBefore(fbds, s);\\n        _fbq.loaded = true;\\n      }\\n    })();\\n    window._fbq = window._fbq || [];\\n    window._fbq.push([\'track\', \'6031412061220\', {\'value\':\'0.00\',\'currency\':\'USD\'}]);\\n    <\\/script>\\n    <noscript><img height=\\\"1\\\" width=\\\"1\\\" alt=\\\"\\\" style=\\\"display:none\\\" src=\\\"https:\\/\\/www.facebook.com\\/tr?ev=6031412061220&amp;cd[value]=0.00&amp;cd[currency]=USD&amp;noscript=1\\\" \\/><\\/noscript>\\n\"'),
	(4,1,'store_currency_code','\"AUD\"'),
	(5,1,'store_currency_dec_point','\".\"'),
	(6,1,'store_currency_decimals','\"2\"'),
	(7,1,'store_currency_suffix','\"\"'),
	(8,1,'store_currency_symbol','\"$\"'),
	(9,1,'store_currency_thousands_sep','\",\"'),
	(10,1,'store_default_country','\"\"'),
	(11,1,'store_default_order_address','\"billing_same_as_shipping\"'),
	(12,1,'store_default_shipping_method_id','\"1\"'),
	(13,1,'store_default_state','\"\"'),
	(14,1,'store_dimension_units','\"mm\"'),
	(15,1,'store_unofficial_payment_gateways','\"0\"'),
	(16,1,'store_force_member_login','\"0\"'),
	(17,1,'store_from_email','\"\"'),
	(18,1,'store_from_name','\"\"'),
	(19,1,'store_google_analytics_ecommerce','\"1\"'),
	(20,1,'store_order_fields','{\"billing_first_name\":{\"member_field\":\"\"},\"billing_last_name\":{\"member_field\":\"\"},\"billing_address1\":{\"member_field\":\"\"},\"billing_address2\":{\"member_field\":\"\"},\"billing_city\":{\"member_field\":\"\"},\"billing_state\":{\"member_field\":\"\"},\"billing_country\":{\"member_field\":\"\"},\"billing_postcode\":{\"member_field\":\"\"},\"billing_phone\":{\"member_field\":\"\"},\"billing_company\":{\"member_field\":\"\"},\"shipping_first_name\":{\"member_field\":\"\"},\"shipping_last_name\":{\"member_field\":\"\"},\"shipping_address1\":{\"member_field\":\"\"},\"shipping_address2\":{\"member_field\":\"\"},\"shipping_city\":{\"member_field\":\"\"},\"shipping_state\":{\"member_field\":\"\"},\"shipping_country\":{\"member_field\":\"\"},\"shipping_postcode\":{\"member_field\":\"\"},\"shipping_phone\":{\"member_field\":\"\"},\"shipping_company\":{\"member_field\":\"\"},\"order_email\":{\"member_field\":\"\"},\"order_custom1\":{\"title\":\"Special Instructions\",\"member_field\":\"\"},\"order_custom2\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom3\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom4\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom5\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom6\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom7\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom8\":{\"title\":\"\",\"member_field\":\"\"},\"order_custom9\":{\"title\":\"\",\"member_field\":\"\"}}'),
	(21,1,'store_order_id_start','\"1\"'),
	(22,1,'store_order_invoice_url','\"\"'),
	(23,1,'store_secure_template_tags','\"0\"'),
	(24,1,'store_security','\"\"'),
	(25,1,'store_reporting_timezone','\"Australia\\/Sydney\"'),
	(26,1,'store_weight_units','\"g\"'),
	(27,1,'store_site_enabled','true');

/*!40000 ALTER TABLE `exp_store_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_countries`;

CREATE TABLE `exp_store_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_countries` WRITE;
/*!40000 ALTER TABLE `exp_store_countries` DISABLE KEYS */;

INSERT INTO `exp_store_countries` (`id`, `site_id`, `code`, `name`, `enabled`)
VALUES
	(1,1,'AD','Andorra',1),
	(2,1,'AE','United Arab Emirates',1),
	(3,1,'AF','Afghanistan',1),
	(4,1,'AG','Antigua and Barbuda',1),
	(5,1,'AI','Anguilla',1),
	(6,1,'AL','Albania',1),
	(7,1,'AM','Armenia',1),
	(8,1,'AO','Angola',1),
	(9,1,'AQ','Antarctica',1),
	(10,1,'AR','Argentina',1),
	(11,1,'AS','American Samoa',1),
	(12,1,'AT','Austria',1),
	(13,1,'AU','Australia',1),
	(14,1,'AW','Aruba',1),
	(15,1,'AX','Aland Islands',1),
	(16,1,'AZ','Azerbaijan',1),
	(17,1,'BA','Bosnia and Herzegovina',1),
	(18,1,'BB','Barbados',1),
	(19,1,'BD','Bangladesh',1),
	(20,1,'BE','Belgium',1),
	(21,1,'BF','Burkina Faso',1),
	(22,1,'BG','Bulgaria',1),
	(23,1,'BH','Bahrain',1),
	(24,1,'BI','Burundi',1),
	(25,1,'BJ','Benin',1),
	(26,1,'BL','Saint Barthelemy',1),
	(27,1,'BM','Bermuda',1),
	(28,1,'BN','Brunei Darussalam',1),
	(29,1,'BO','Bolivia',1),
	(30,1,'BQ','Bonaire, Sint Eustatius and Saba',1),
	(31,1,'BR','Brazil',1),
	(32,1,'BS','Bahamas',1),
	(33,1,'BT','Bhutan',1),
	(34,1,'BV','Bouvet Island',1),
	(35,1,'BW','Botswana',1),
	(36,1,'BY','Belarus',1),
	(37,1,'BZ','Belize',1),
	(38,1,'CA','Canada',1),
	(39,1,'CC','Cocos (Keeling) Islands',1),
	(40,1,'CD','Democratic Republic of Congo',1),
	(41,1,'CF','Central African Republic',1),
	(42,1,'CG','Congo',1),
	(43,1,'CH','Switzerland',1),
	(44,1,'CI','Ivory Coast',1),
	(45,1,'CK','Cook Islands',1),
	(46,1,'CL','Chile',1),
	(47,1,'CM','Cameroon',1),
	(48,1,'CN','China',1),
	(49,1,'CO','Colombia',1),
	(50,1,'CR','Costa Rica',1),
	(51,1,'CU','Cuba',1),
	(52,1,'CV','Cape Verde',1),
	(53,1,'CW','Curacao',1),
	(54,1,'CX','Christmas Island',1),
	(55,1,'CY','Cyprus',1),
	(56,1,'CZ','Czech Republic',1),
	(57,1,'DE','Germany',1),
	(58,1,'DJ','Djibouti',1),
	(59,1,'DK','Denmark',1),
	(60,1,'DM','Dominica',1),
	(61,1,'DO','Dominican Republic',1),
	(62,1,'DZ','Algeria',1),
	(63,1,'EC','Ecuador',1),
	(64,1,'EE','Estonia',1),
	(65,1,'EG','Egypt',1),
	(66,1,'EH','Western Sahara',1),
	(67,1,'ER','Eritrea',1),
	(68,1,'ES','Spain',1),
	(69,1,'ET','Ethiopia',1),
	(70,1,'FI','Finland',1),
	(71,1,'FJ','Fiji',1),
	(72,1,'FK','Falkland Islands (Malvinas)',1),
	(73,1,'FM','Micronesia',1),
	(74,1,'FO','Faroe Islands',1),
	(75,1,'FR','France',1),
	(76,1,'GA','Gabon',1),
	(77,1,'GB','United Kingdom',1),
	(78,1,'GD','Grenada',1),
	(79,1,'GE','Georgia',1),
	(80,1,'GF','French Guiana',1),
	(81,1,'GG','Guernsey',1),
	(82,1,'GH','Ghana',1),
	(83,1,'GI','Gibraltar',1),
	(84,1,'GL','Greenland',1),
	(85,1,'GM','Gambia',1),
	(86,1,'GN','Guinea',1),
	(87,1,'GP','Guadeloupe',1),
	(88,1,'GQ','Equatorial Guinea',1),
	(89,1,'GR','Greece',1),
	(90,1,'GS','S. Georgia and S. Sandwich Isls.',1),
	(91,1,'GT','Guatemala',1),
	(92,1,'GU','Guam',1),
	(93,1,'GW','Guinea-Bissau',1),
	(94,1,'GY','Guyana',1),
	(95,1,'HK','Hong Kong',1),
	(96,1,'HM','Heard and McDonald Islands',1),
	(97,1,'HN','Honduras',1),
	(98,1,'HR','Croatia (Hrvatska)',1),
	(99,1,'HT','Haiti',1),
	(100,1,'HU','Hungary',1),
	(101,1,'ID','Indonesia',1),
	(102,1,'IE','Ireland',1),
	(103,1,'IL','Israel',1),
	(104,1,'IM','Isle Of Man',1),
	(105,1,'IN','India',1),
	(106,1,'IO','British Indian Ocean Territory',1),
	(107,1,'IQ','Iraq',1),
	(108,1,'IR','Iran',1),
	(109,1,'IS','Iceland',1),
	(110,1,'IT','Italy',1),
	(111,1,'JE','Jersey',1),
	(112,1,'JM','Jamaica',1),
	(113,1,'JO','Jordan',1),
	(114,1,'JP','Japan',1),
	(115,1,'KE','Kenya',1),
	(116,1,'KG','Kyrgyzstan',1),
	(117,1,'KH','Cambodia',1),
	(118,1,'KI','Kiribati',1),
	(119,1,'KM','Comoros',1),
	(120,1,'KN','Saint Kitts and Nevis',1),
	(121,1,'KP','Korea (North)',1),
	(122,1,'KR','Korea (South)',1),
	(123,1,'KW','Kuwait',1),
	(124,1,'KY','Cayman Islands',1),
	(125,1,'KZ','Kazakhstan',1),
	(126,1,'LA','Laos',1),
	(127,1,'LB','Lebanon',1),
	(128,1,'LC','Saint Lucia',1),
	(129,1,'LI','Liechtenstein',1),
	(130,1,'LK','Sri Lanka',1),
	(131,1,'LR','Liberia',1),
	(132,1,'LS','Lesotho',1),
	(133,1,'LT','Lithuania',1),
	(134,1,'LU','Luxembourg',1),
	(135,1,'LV','Latvia',1),
	(136,1,'LY','Libya',1),
	(137,1,'MA','Morocco',1),
	(138,1,'MC','Monaco',1),
	(139,1,'MD','Moldova',1),
	(140,1,'ME','Montenegro',1),
	(141,1,'MF','Saint Martin (French part)',1),
	(142,1,'MG','Madagascar',1),
	(143,1,'MH','Marshall Islands',1),
	(144,1,'MK','Macedonia',1),
	(145,1,'ML','Mali',1),
	(146,1,'MM','Burma (Myanmar)',1),
	(147,1,'MN','Mongolia',1),
	(148,1,'MO','Macau',1),
	(149,1,'MP','Northern Mariana Islands',1),
	(150,1,'MQ','Martinique',1),
	(151,1,'MR','Mauritania',1),
	(152,1,'MS','Montserrat',1),
	(153,1,'MT','Malta',1),
	(154,1,'MU','Mauritius',1),
	(155,1,'MV','Maldives',1),
	(156,1,'MW','Malawi',1),
	(157,1,'MX','Mexico',1),
	(158,1,'MY','Malaysia',1),
	(159,1,'MZ','Mozambique',1),
	(160,1,'NA','Namibia',1),
	(161,1,'NC','New Caledonia',1),
	(162,1,'NE','Niger',1),
	(163,1,'NF','Norfolk Island',1),
	(164,1,'NG','Nigeria',1),
	(165,1,'NI','Nicaragua',1),
	(166,1,'NL','Netherlands',1),
	(167,1,'NO','Norway',1),
	(168,1,'NP','Nepal',1),
	(169,1,'NR','Nauru',1),
	(170,1,'NU','Niue',1),
	(171,1,'NZ','New Zealand',1),
	(172,1,'OM','Oman',1),
	(173,1,'PA','Panama',1),
	(174,1,'PE','Peru',1),
	(175,1,'PF','French Polynesia',1),
	(176,1,'PG','Papua New Guinea',1),
	(177,1,'PH','Philippines',1),
	(178,1,'PK','Pakistan',1),
	(179,1,'PL','Poland',1),
	(180,1,'PM','St. Pierre and Miquelon',1),
	(181,1,'PN','Pitcairn',1),
	(182,1,'PR','Puerto Rico',1),
	(183,1,'PS','Palestinian Territory, Occupied',1),
	(184,1,'PT','Portugal',1),
	(185,1,'PW','Palau',1),
	(186,1,'PY','Paraguay',1),
	(187,1,'QA','Qatar',1),
	(188,1,'RE','Reunion',1),
	(189,1,'RO','Romania',1),
	(190,1,'RS','Republic of Serbia',1),
	(191,1,'RU','Russia',1),
	(192,1,'RW','Rwanda',1),
	(193,1,'SA','Saudi Arabia',1),
	(194,1,'SB','Solomon Islands',1),
	(195,1,'SC','Seychelles',1),
	(196,1,'SD','Sudan',1),
	(197,1,'SE','Sweden',1),
	(198,1,'SG','Singapore',1),
	(199,1,'SH','St. Helena',1),
	(200,1,'SI','Slovenia',1),
	(201,1,'SJ','Svalbard and Jan Mayen Islands',1),
	(202,1,'SK','Slovak Republic',1),
	(203,1,'SL','Sierra Leone',1),
	(204,1,'SM','San Marino',1),
	(205,1,'SN','Senegal',1),
	(206,1,'SO','Somalia',1),
	(207,1,'SR','Suriname',1),
	(208,1,'SS','South Sudan',1),
	(209,1,'ST','Sao Tome and Principe',1),
	(210,1,'SV','El Salvador',1),
	(211,1,'SX','Sint Maarten (Dutch part)',1),
	(212,1,'SY','Syria',1),
	(213,1,'SZ','Swaziland',1),
	(214,1,'TC','Turks and Caicos Islands',1),
	(215,1,'TD','Chad',1),
	(216,1,'TF','French Southern Territories',1),
	(217,1,'TG','Togo',1),
	(218,1,'TH','Thailand',1),
	(219,1,'TJ','Tajikistan',1),
	(220,1,'TK','Tokelau',1),
	(221,1,'TL','Timor-Leste',1),
	(222,1,'TM','Turkmenistan',1),
	(223,1,'TN','Tunisia',1),
	(224,1,'TO','Tonga',1),
	(225,1,'TR','Turkey',1),
	(226,1,'TT','Trinidad and Tobago',1),
	(227,1,'TV','Tuvalu',1),
	(228,1,'TW','Taiwan',1),
	(229,1,'TZ','Tanzania',1),
	(230,1,'UA','Ukraine',1),
	(231,1,'UG','Uganda',1),
	(232,1,'UM','United States Minor Outlying Islands',1),
	(233,1,'US','United States',1),
	(234,1,'UY','Uruguay',1),
	(235,1,'UZ','Uzbekistan',1),
	(236,1,'VA','Vatican City State (Holy See)',1),
	(237,1,'VC','Saint Vincent and the Grenadines',1),
	(238,1,'VE','Venezuela',1),
	(239,1,'VG','Virgin Islands (British)',1),
	(240,1,'VI','Virgin Islands (U.S.)',1),
	(241,1,'VN','Viet Nam',1),
	(242,1,'VU','Vanuatu',1),
	(243,1,'WF','Wallis and Futuna Islands',1),
	(244,1,'WS','Samoa',1),
	(245,1,'YE','Yemen',1),
	(246,1,'YT','Mayotte',1),
	(247,1,'ZA','South Africa',1),
	(248,1,'ZM','Zambia',1),
	(249,1,'ZW','Zimbabwe',1);

/*!40000 ALTER TABLE `exp_store_countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_discounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_discounts`;

CREATE TABLE `exp_store_discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `start_date` int(10) unsigned DEFAULT NULL,
  `end_date` int(10) unsigned DEFAULT NULL,
  `member_group_ids` varchar(255) DEFAULT NULL,
  `entry_ids` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `exclude_on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `purchase_qty` int(4) unsigned DEFAULT NULL,
  `purchase_total` decimal(19,4) DEFAULT NULL,
  `step_qty` int(4) unsigned DEFAULT NULL,
  `discount_qty` int(4) unsigned DEFAULT NULL,
  `match_items_on` varchar(50) DEFAULT NULL,
  `base_discount` decimal(19,4) DEFAULT NULL,
  `per_item_discount` decimal(19,4) DEFAULT NULL,
  `percent_discount` decimal(8,5) DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `per_user_limit` int(4) unsigned DEFAULT NULL,
  `total_use_limit` int(4) unsigned DEFAULT NULL,
  `total_use_count` int(4) unsigned NOT NULL DEFAULT '0',
  `break` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_discounts` WRITE;
/*!40000 ALTER TABLE `exp_store_discounts` DISABLE KEYS */;

INSERT INTO `exp_store_discounts` (`id`, `site_id`, `name`, `code`, `start_date`, `end_date`, `member_group_ids`, `entry_ids`, `category_ids`, `exclude_on_sale`, `type`, `purchase_qty`, `purchase_total`, `step_qty`, `discount_qty`, `match_items_on`, `base_discount`, `per_item_discount`, `percent_discount`, `free_shipping`, `per_user_limit`, `total_use_limit`, `total_use_count`, `break`, `notes`, `enabled`, `sort`)
VALUES
	(1,1,'Save 50%','SAVE50',NULL,NULL,NULL,NULL,NULL,0,'items',NULL,NULL,NULL,NULL,'sku',NULL,NULL,50.00000,0,NULL,NULL,1,1,'',1,0);

/*!40000 ALTER TABLE `exp_store_discounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_emails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_emails`;

CREATE TABLE `exp_store_emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `mail_format` varchar(5) NOT NULL,
  `word_wrap` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_emails` WRITE;
/*!40000 ALTER TABLE `exp_store_emails` DISABLE KEYS */;

INSERT INTO `exp_store_emails` (`id`, `site_id`, `name`, `subject`, `contents`, `bcc`, `to`, `mail_format`, `word_wrap`, `enabled`)
VALUES
	(1,1,'Order Confirmation','Order Confirmation','Hi {billing_first_name},\nThank you for placing your order with us.\nYour order details are -\n\nOrder Id    - {order_id}\nOrder Total - {order_total}\n\nOrder Items:\n{items}\nItem - {title}, Qty - {item_qty}, Item Total - {item_total}\n{/items}\n\nShipping Details:\nName     - {shipping_name}\nAddress  - {shipping_address1}\nAddress  - {shipping_address2}\nCity     - {shipping_city}\nState    - {shipping_state}\nCountry  - {shipping_country}\nPostcode - {shipping_postcode}\n\nPlease contact us if any of the above details appear incorrect.\nThank You!\n',NULL,'{order_email}','text',1,1);

/*!40000 ALTER TABLE `exp_store_emails` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_order_adjustments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_order_adjustments`;

CREATE TABLE `exp_store_order_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `rate` decimal(8,5) NOT NULL DEFAULT '0.00000',
  `amount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `taxable` tinyint(1) NOT NULL DEFAULT '0',
  `included` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_order_adjustments` WRITE;
/*!40000 ALTER TABLE `exp_store_order_adjustments` DISABLE KEYS */;

INSERT INTO `exp_store_order_adjustments` (`id`, `site_id`, `order_id`, `name`, `type`, `rate`, `amount`, `taxable`, `included`, `sort`)
VALUES
	(119,1,1,'Australia Post','shipping',0.00000,10.0000,1,0,0),
	(120,1,1,'Save 50%','discount',0.00000,-55.6100,0,0,1),
	(121,1,1,'GST','tax',0.10000,8.7400,0,1,2),
	(144,1,3,'Australia Post','shipping',0.00000,10.0000,1,0,0),
	(145,1,3,'GST','tax',0.10000,10.0000,0,1,1),
	(158,1,4,'Australia Post','shipping',0.00000,10.0000,1,0,0),
	(159,1,4,'GST','tax',0.10000,19.0900,0,1,1);

/*!40000 ALTER TABLE `exp_store_order_adjustments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_order_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_order_history`;

CREATE TABLE `exp_store_order_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `order_status_name` varchar(20) NOT NULL DEFAULT '',
  `order_status_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `order_status_member_id` int(10) NOT NULL DEFAULT '0',
  `order_status_message` text,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_order_history` WRITE;
/*!40000 ALTER TABLE `exp_store_order_history` DISABLE KEYS */;

INSERT INTO `exp_store_order_history` (`id`, `order_id`, `order_status_name`, `order_status_updated`, `order_status_member_id`, `order_status_message`)
VALUES
	(1,1,'new',1426509123,0,NULL),
	(2,3,'new',1426514157,0,NULL),
	(3,4,'new',1426554496,0,NULL);

/*!40000 ALTER TABLE `exp_store_order_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_order_items`;

CREATE TABLE `exp_store_order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `stock_id` int(10) NOT NULL DEFAULT '0',
  `sku` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `url_title` varchar(255) NOT NULL DEFAULT '',
  `channel_id` int(10) NOT NULL DEFAULT '0',
  `category_ids` varchar(255) DEFAULT NULL,
  `modifiers` text,
  `price` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `regular_price` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `weight` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `handling` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `handling_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `tax_exempt` tinyint(1) NOT NULL DEFAULT '0',
  `item_qty` int(4) unsigned NOT NULL DEFAULT '0',
  `item_subtotal` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `item_discount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `item_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `item_total` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_order_items` WRITE;
/*!40000 ALTER TABLE `exp_store_order_items` DISABLE KEYS */;

INSERT INTO `exp_store_order_items` (`id`, `site_id`, `order_id`, `entry_id`, `stock_id`, `sku`, `title`, `url_title`, `channel_id`, `category_ids`, `modifiers`, `price`, `regular_price`, `on_sale`, `weight`, `length`, `width`, `height`, `handling`, `handling_tax`, `free_shipping`, `tax_exempt`, `item_qty`, `item_subtotal`, `item_discount`, `item_tax`, `item_total`)
VALUES
	(9,1,1,6,1,'SKU-XXX-SM','Example Product','example-product',8,NULL,'[{\"modifier_id\":\"1\",\"modifier_name\":\"Size\",\"modifier_type\":\"var\",\"modifier_value\":\"Small\",\"option_id\":\"1\",\"price_mod\":\"-5.0000\",\"price_mod_inc_tax\":-5}]',3.7400,4.9900,1,100,100,100,100,0.0000,0.0000,1,0,3,11.2200,41.7000,0.0000,-30.4800),
	(10,1,1,7,4,'SKU-shoes','Shoes','shoes',8,NULL,'[[]]',100.0000,100.0000,0,NULL,NULL,NULL,NULL,0.0000,0.0000,0,0,1,100.0000,13.9100,7.8300,86.0900),
	(11,1,3,7,4,'SKU-shoes','Shoes','shoes',8,NULL,'[[]]',100.0000,100.0000,0,NULL,NULL,NULL,NULL,0.0000,0.0000,0,0,1,100.0000,0.0000,9.0900,100.0000),
	(12,1,4,7,4,'SKU-shoes','Shoes','shoes',8,NULL,'[[]]',100.0000,100.0000,0,NULL,NULL,NULL,NULL,0.0000,0.0000,0,0,2,200.0000,0.0000,18.1800,200.0000);

/*!40000 ALTER TABLE `exp_store_order_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_orders`;

CREATE TABLE `exp_store_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `order_hash` varchar(32) NOT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `order_date` int(10) unsigned NOT NULL,
  `order_completed_date` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(40) NOT NULL,
  `order_status_name` varchar(20) DEFAULT NULL,
  `order_status_updated` int(10) unsigned DEFAULT NULL,
  `order_status_member_id` int(10) DEFAULT NULL,
  `order_status_message` text,
  `order_qty` int(4) unsigned NOT NULL DEFAULT '0',
  `order_subtotal` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_subtotal_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_discount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_discount_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_shipping` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_shipping_discount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_shipping_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_shipping_total` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_handling` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_handling_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_handling_total` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_tax` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_total` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_paid` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `order_paid_date` int(10) unsigned DEFAULT NULL,
  `order_email` varchar(100) DEFAULT NULL,
  `discount_id` int(10) unsigned DEFAULT NULL,
  `promo_code` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `shipping_method_name` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_method_class` varchar(255) DEFAULT NULL,
  `shipping_method_rule` varchar(50) DEFAULT NULL,
  `shipping_override` text,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `tax_name` varchar(40) DEFAULT NULL,
  `tax_rate` decimal(8,5) NOT NULL DEFAULT '0.00000',
  `tax_override` text NOT NULL,
  `order_length` double NOT NULL DEFAULT '0',
  `order_width` double NOT NULL DEFAULT '0',
  `order_height` double NOT NULL DEFAULT '0',
  `dimension_units` varchar(5) NOT NULL DEFAULT '',
  `order_weight` double NOT NULL DEFAULT '0',
  `weight_units` varchar(5) NOT NULL DEFAULT '',
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_address1` varchar(255) DEFAULT NULL,
  `billing_address2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country` char(2) DEFAULT NULL,
  `billing_postcode` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_company` varchar(255) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_address1` varchar(255) DEFAULT NULL,
  `shipping_address2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_country` char(2) DEFAULT NULL,
  `shipping_postcode` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_company` varchar(255) DEFAULT NULL,
  `billing_same_as_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_same_as_billing` tinyint(1) NOT NULL DEFAULT '0',
  `order_custom1` text,
  `order_custom2` text,
  `order_custom3` text,
  `order_custom4` text,
  `order_custom5` text,
  `order_custom6` text,
  `order_custom7` text,
  `order_custom8` text,
  `order_custom9` text,
  `return_url` varchar(255) DEFAULT NULL,
  `cancel_url` varchar(255) DEFAULT NULL,
  `ip_country` char(2) DEFAULT NULL,
  `member_data_loaded` tinyint(1) NOT NULL DEFAULT '0',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `accept_terms` tinyint(1) NOT NULL DEFAULT '0',
  `register_member` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_hash` (`order_hash`),
  KEY `order_id` (`order_id`),
  KEY `site_id` (`site_id`),
  KEY `member_id` (`member_id`),
  KEY `order_date` (`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_orders` WRITE;
/*!40000 ALTER TABLE `exp_store_orders` DISABLE KEYS */;

INSERT INTO `exp_store_orders` (`id`, `site_id`, `order_id`, `order_hash`, `member_id`, `order_date`, `order_completed_date`, `ip_address`, `order_status_name`, `order_status_updated`, `order_status_member_id`, `order_status_message`, `order_qty`, `order_subtotal`, `order_subtotal_tax`, `order_discount`, `order_discount_tax`, `order_shipping`, `order_shipping_discount`, `order_shipping_tax`, `order_shipping_total`, `order_handling`, `order_handling_tax`, `order_handling_total`, `order_tax`, `order_total`, `order_paid`, `order_paid_date`, `order_email`, `discount_id`, `promo_code`, `payment_method`, `shipping_method_name`, `shipping_method`, `shipping_method_class`, `shipping_method_rule`, `shipping_override`, `tax_id`, `tax_name`, `tax_rate`, `tax_override`, `order_length`, `order_width`, `order_height`, `dimension_units`, `order_weight`, `weight_units`, `billing_first_name`, `billing_last_name`, `billing_address1`, `billing_address2`, `billing_city`, `billing_state`, `billing_country`, `billing_postcode`, `billing_phone`, `billing_company`, `shipping_first_name`, `shipping_last_name`, `shipping_address1`, `shipping_address2`, `shipping_city`, `shipping_state`, `shipping_country`, `shipping_postcode`, `shipping_phone`, `shipping_company`, `billing_same_as_shipping`, `shipping_same_as_billing`, `order_custom1`, `order_custom2`, `order_custom3`, `order_custom4`, `order_custom5`, `order_custom6`, `order_custom7`, `order_custom8`, `order_custom9`, `return_url`, `cancel_url`, `ip_country`, `member_data_loaded`, `tax_shipping`, `accept_terms`, `register_member`, `username`, `screen_name`, `password_hash`, `password_salt`)
VALUES
	(1,1,1,'ba20e86edf4a00a601cf7ce77512f98d',1,1426509122,1426509123,'127.0.0.1','new',1426509123,0,NULL,4,111.2200,0.0000,55.6100,0.0000,10.0000,0.0000,0.9100,10.0000,0.0000,0.0000,0.0000,8.7400,65.6100,65.6100,1426509123,'',1,'SAVE50','dummy','Australia Post','1',NULL,NULL,NULL,1,'GST',0.10000,'',100,100,300,'mm',300,'g','','','','','','','','','',NULL,'','','','','','','','','',NULL,0,0,'xxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://local.example/store/order-receipt/ORDER_HASH','http://local.example/store/order-payment',NULL,1,0,0,0,NULL,NULL,NULL,NULL),
	(2,1,NULL,'97ecbced009a8acdfc80c729f71cc636',NULL,1426487881,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,0.00000,'',0,0,0,'mm',0,'g',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://local.example/store/order-checkout','http://local.example/store/order-checkout',NULL,0,0,0,0,NULL,NULL,NULL,NULL),
	(3,1,2,'78504080a84e459546279568b53c9d3f',1,1426514156,1426514157,'127.0.0.1','new',1426514157,0,NULL,1,100.0000,0.0000,0.0000,0.0000,10.0000,0.0000,0.9100,10.0000,0.0000,0.0000,0.0000,10.0000,110.0000,110.0000,1426514157,'',NULL,'','dummy','Australia Post','1',NULL,NULL,NULL,1,'GST',0.10000,'',0,0,0,'mm',0,'g','',NULL,'','','','','','','',NULL,'','','','','','','','','',NULL,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://local.example/store/order-receipt/ORDER_HASH','http://local.example/store/order-payment',NULL,1,0,0,0,NULL,NULL,NULL,NULL),
	(4,1,3,'2089f37d6c7b492612d8624b05b1fff0',1,1426554495,1426554496,'127.0.0.1','new',1426554496,0,NULL,2,200.0000,0.0000,0.0000,0.0000,10.0000,0.0000,0.9100,10.0000,0.0000,0.0000,0.0000,19.0900,210.0000,210.0000,1426554496,'',NULL,'','dummy','Australia Post','1',NULL,NULL,NULL,1,'GST',0.10000,'',0,0,0,'mm',0,'g','',NULL,'','','','','','','',NULL,'','','','','','','','','',NULL,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://local.example/store/order-receipt/ORDER_HASH','http://local.example/store/order-payment',NULL,1,0,0,0,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `exp_store_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_payment_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_payment_methods`;

CREATE TABLE `exp_store_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `class` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_payment_methods` WRITE;
/*!40000 ALTER TABLE `exp_store_payment_methods` DISABLE KEYS */;

INSERT INTO `exp_store_payment_methods` (`id`, `site_id`, `class`, `title`, `settings`, `enabled`)
VALUES
	(1,1,'Dummy','Dummy',NULL,1),
	(2,1,'PayPal_Express','PayPal Express','{\"username\":\"\",\"password\":\"\",\"signature\":\"\",\"testMode\":\"\",\"solutionType\":\"Sole\",\"landingPage\":\"Billing\",\"brandName\":\"\",\"headerImageUrl\":\"\",\"logoImageUrl\":\"\",\"borderColor\":\"\"}',1),
	(3,1,'Stripe','Stripe','{\"apiKey\":\"\"}',1);

/*!40000 ALTER TABLE `exp_store_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_product_modifiers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_product_modifiers`;

CREATE TABLE `exp_store_product_modifiers` (
  `product_mod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `mod_type` varchar(20) NOT NULL,
  `mod_name` varchar(100) NOT NULL,
  `mod_instructions` text,
  `mod_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`product_mod_id`),
  KEY `entry_id` (`entry_id`),
  KEY `mod_order` (`mod_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_product_modifiers` WRITE;
/*!40000 ALTER TABLE `exp_store_product_modifiers` DISABLE KEYS */;

INSERT INTO `exp_store_product_modifiers` (`product_mod_id`, `entry_id`, `mod_type`, `mod_name`, `mod_instructions`, `mod_order`)
VALUES
	(1,6,'var','Size','Different Sizes',0);

/*!40000 ALTER TABLE `exp_store_product_modifiers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_product_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_product_options`;

CREATE TABLE `exp_store_product_options` (
  `product_opt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_mod_id` int(10) unsigned NOT NULL,
  `opt_name` varchar(100) NOT NULL,
  `opt_price_mod` decimal(19,4) DEFAULT NULL,
  `opt_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`product_opt_id`),
  KEY `product_mod_id` (`product_mod_id`),
  KEY `opt_order` (`opt_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_product_options` WRITE;
/*!40000 ALTER TABLE `exp_store_product_options` DISABLE KEYS */;

INSERT INTO `exp_store_product_options` (`product_opt_id`, `product_mod_id`, `opt_name`, `opt_price_mod`, `opt_order`)
VALUES
	(1,1,'Small',-5.0000,1),
	(2,1,'Medium',0.0000,2),
	(3,1,'Large',5.0000,3);

/*!40000 ALTER TABLE `exp_store_product_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_products`;

CREATE TABLE `exp_store_products` (
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(19,4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `handling` decimal(19,4) DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `tax_exempt` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_products` WRITE;
/*!40000 ALTER TABLE `exp_store_products` DISABLE KEYS */;

INSERT INTO `exp_store_products` (`entry_id`, `price`, `weight`, `length`, `width`, `height`, `handling`, `free_shipping`, `tax_exempt`)
VALUES
	(6,9.9900,100,100,100,100,0.0000,1,0),
	(7,100.0000,NULL,NULL,NULL,NULL,NULL,0,0);

/*!40000 ALTER TABLE `exp_store_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_sales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_sales`;

CREATE TABLE `exp_store_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `start_date` int(10) unsigned DEFAULT NULL,
  `end_date` int(10) unsigned DEFAULT NULL,
  `member_group_ids` varchar(255) DEFAULT NULL,
  `entry_ids` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `per_item_discount` decimal(19,4) DEFAULT NULL,
  `percent_discount` decimal(8,5) DEFAULT NULL,
  `notes` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_sales` WRITE;
/*!40000 ALTER TABLE `exp_store_sales` DISABLE KEYS */;

INSERT INTO `exp_store_sales` (`id`, `site_id`, `name`, `start_date`, `end_date`, `member_group_ids`, `entry_ids`, `category_ids`, `per_item_discount`, `percent_discount`, `notes`, `enabled`, `sort`)
VALUES
	(1,1,'Super Sale!',NULL,NULL,NULL,'6',NULL,NULL,25.00000,'',1,0);

/*!40000 ALTER TABLE `exp_store_sales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_shipping_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_shipping_methods`;

CREATE TABLE `exp_store_shipping_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_shipping_methods` WRITE;
/*!40000 ALTER TABLE `exp_store_shipping_methods` DISABLE KEYS */;

INSERT INTO `exp_store_shipping_methods` (`id`, `site_id`, `name`, `enabled`, `sort`)
VALUES
	(1,1,'Australia Post',1,1),
	(2,1,'Australia Post - Express',1,2);

/*!40000 ALTER TABLE `exp_store_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_shipping_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_shipping_rules`;

CREATE TABLE `exp_store_shipping_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `min_weight` double DEFAULT NULL,
  `max_weight` double DEFAULT NULL,
  `min_order_total` decimal(19,4) DEFAULT NULL,
  `max_order_total` decimal(19,4) DEFAULT NULL,
  `min_order_qty` int(4) unsigned DEFAULT NULL,
  `max_order_qty` int(4) unsigned DEFAULT NULL,
  `base_rate` decimal(19,4) DEFAULT NULL,
  `per_item_rate` decimal(19,4) DEFAULT NULL,
  `per_weight_rate` decimal(19,4) DEFAULT NULL,
  `percent_rate` double DEFAULT NULL,
  `min_rate` decimal(19,4) DEFAULT NULL,
  `max_rate` decimal(19,4) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shipping_method_id` (`shipping_method_id`),
  KEY `country_code` (`country_code`),
  KEY `region_code` (`state_code`),
  KEY `postcode` (`postcode`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_shipping_rules` WRITE;
/*!40000 ALTER TABLE `exp_store_shipping_rules` DISABLE KEYS */;

INSERT INTO `exp_store_shipping_rules` (`id`, `shipping_method_id`, `name`, `country_code`, `state_code`, `postcode`, `min_weight`, `max_weight`, `min_order_total`, `max_order_total`, `min_order_qty`, `max_order_qty`, `base_rate`, `per_item_rate`, `per_weight_rate`, `percent_rate`, `min_rate`, `max_rate`, `enabled`, `sort`)
VALUES
	(1,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,10.0000,NULL,NULL,NULL,NULL,NULL,1,1),
	(2,2,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,20.0000,NULL,NULL,NULL,NULL,NULL,1,2);

/*!40000 ALTER TABLE `exp_store_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_states`;

CREATE TABLE `exp_store_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_states` WRITE;
/*!40000 ALTER TABLE `exp_store_states` DISABLE KEYS */;

INSERT INTO `exp_store_states` (`id`, `site_id`, `country_id`, `code`, `name`)
VALUES
	(1,1,13,'ACT','Australian Capital Territory'),
	(2,1,13,'NSW','New South Wales'),
	(3,1,13,'NT','Northern Territory'),
	(4,1,13,'QLD','Queensland'),
	(5,1,13,'SA','South Australia'),
	(6,1,13,'TAS','Tasmania'),
	(7,1,13,'VIC','Victoria'),
	(8,1,13,'WA','Western Australia'),
	(9,1,38,'AB','Alberta'),
	(10,1,38,'BC','British Columbia'),
	(11,1,38,'MB','Manitoba'),
	(12,1,38,'NB','New Brunswick'),
	(13,1,38,'NL','Newfoundland and Labrador'),
	(14,1,38,'NT','Northwest Territories'),
	(15,1,38,'NS','Nova Scotia'),
	(16,1,38,'NU','Nunavut'),
	(17,1,38,'ON','Ontario'),
	(18,1,38,'PE','Prince Edward Island'),
	(19,1,38,'QC','Quebec'),
	(20,1,38,'SK','Saskatchewan'),
	(21,1,38,'YT','Yukon'),
	(22,1,233,'AL','Alabama'),
	(23,1,233,'AK','Alaska'),
	(24,1,233,'AZ','Arizona'),
	(25,1,233,'AR','Arkansas'),
	(26,1,233,'CA','California'),
	(27,1,233,'CO','Colorado'),
	(28,1,233,'CT','Connecticut'),
	(29,1,233,'DE','Delaware'),
	(30,1,233,'DC','District of Columbia'),
	(31,1,233,'FL','Florida'),
	(32,1,233,'GA','Georgia'),
	(33,1,233,'HI','Hawaii'),
	(34,1,233,'ID','Idaho'),
	(35,1,233,'IL','Illinois'),
	(36,1,233,'IN','Indiana'),
	(37,1,233,'IA','Iowa'),
	(38,1,233,'KS','Kansas'),
	(39,1,233,'KY','Kentucky'),
	(40,1,233,'LA','Louisiana'),
	(41,1,233,'ME','Maine'),
	(42,1,233,'MD','Maryland'),
	(43,1,233,'MA','Massachusetts'),
	(44,1,233,'MI','Michigan'),
	(45,1,233,'MN','Minnesota'),
	(46,1,233,'MS','Mississippi'),
	(47,1,233,'MO','Missouri'),
	(48,1,233,'MT','Montana'),
	(49,1,233,'NE','Nebraska'),
	(50,1,233,'NV','Nevada'),
	(51,1,233,'NH','New Hampshire'),
	(52,1,233,'NJ','New Jersey'),
	(53,1,233,'NM','New Mexico'),
	(54,1,233,'NY','New York'),
	(55,1,233,'NC','North Carolina'),
	(56,1,233,'ND','North Dakota'),
	(57,1,233,'OH','Ohio'),
	(58,1,233,'OK','Oklahoma'),
	(59,1,233,'OR','Oregon'),
	(60,1,233,'PA','Pennsylvania'),
	(61,1,233,'RI','Rhode Island'),
	(62,1,233,'SC','South Carolina'),
	(63,1,233,'SD','South Dakota'),
	(64,1,233,'TN','Tennessee'),
	(65,1,233,'TX','Texas'),
	(66,1,233,'UT','Utah'),
	(67,1,233,'VT','Vermont'),
	(68,1,233,'VA','Virginia'),
	(69,1,233,'WA','Washington'),
	(70,1,233,'WV','West Virginia'),
	(71,1,233,'WI','Wisconsin'),
	(72,1,233,'WY','Wyoming');

/*!40000 ALTER TABLE `exp_store_states` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_statuses`;

CREATE TABLE `exp_store_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `email_ids` varchar(255) DEFAULT NULL,
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_statuses` WRITE;
/*!40000 ALTER TABLE `exp_store_statuses` DISABLE KEYS */;

INSERT INTO `exp_store_statuses` (`id`, `site_id`, `name`, `color`, `email_ids`, `sort`, `is_default`)
VALUES
	(1,1,'new',NULL,'1',0,1);

/*!40000 ALTER TABLE `exp_store_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_stock`;

CREATE TABLE `exp_store_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `stock_level` int(4) DEFAULT NULL,
  `min_order_qty` int(4) DEFAULT NULL,
  `track_stock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sku` (`sku`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_stock` WRITE;
/*!40000 ALTER TABLE `exp_store_stock` DISABLE KEYS */;

INSERT INTO `exp_store_stock` (`id`, `entry_id`, `sku`, `stock_level`, `min_order_qty`, `track_stock`)
VALUES
	(1,6,'SKU-XXX-SM',97,3,1),
	(2,6,'SKU-XXX-MD',100,10,1),
	(3,6,'SKU-XXX-LG',100,50,1),
	(4,7,'SKU-shoes',NULL,NULL,0);

/*!40000 ALTER TABLE `exp_store_stock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_stock_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_stock_options`;

CREATE TABLE `exp_store_stock_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_mod_id` int(10) unsigned NOT NULL,
  `product_opt_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sku` (`sku`),
  KEY `stock_id` (`stock_id`),
  KEY `product_mod_id` (`product_mod_id`),
  KEY `product_opt_id` (`product_opt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_stock_options` WRITE;
/*!40000 ALTER TABLE `exp_store_stock_options` DISABLE KEYS */;

INSERT INTO `exp_store_stock_options` (`id`, `stock_id`, `entry_id`, `sku`, `product_mod_id`, `product_opt_id`)
VALUES
	(22,1,6,'SKU-XXX-SM',1,1),
	(23,2,6,'SKU-XXX-MD',1,2),
	(24,3,6,'SKU-XXX-LG',1,3);

/*!40000 ALTER TABLE `exp_store_stock_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_taxes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_taxes`;

CREATE TABLE `exp_store_taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` decimal(8,5) NOT NULL,
  `country_code` char(2) DEFAULT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `included` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_taxes` WRITE;
/*!40000 ALTER TABLE `exp_store_taxes` DISABLE KEYS */;

INSERT INTO `exp_store_taxes` (`id`, `site_id`, `name`, `rate`, `country_code`, `state_code`, `apply_to_shipping`, `included`, `enabled`, `sort`)
VALUES
	(1,1,'GST',0.10000,'','',1,1,1,1);

/*!40000 ALTER TABLE `exp_store_taxes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_store_taxes_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_taxes_categories`;

CREATE TABLE `exp_store_taxes_categories` (
  `tax_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_store_transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_store_transactions`;

CREATE TABLE `exp_store_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `date` int(10) unsigned DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `amount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(10) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `message` text,
  `response_data` text,
  `brand` varchar(32) DEFAULT NULL,
  `last_four` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_store_transactions` WRITE;
/*!40000 ALTER TABLE `exp_store_transactions` DISABLE KEYS */;

INSERT INTO `exp_store_transactions` (`id`, `site_id`, `order_id`, `member_id`, `parent_id`, `hash`, `date`, `payment_method`, `type`, `amount`, `status`, `reference`, `message`, `response_data`, `brand`, `last_four`)
VALUES
	(1,1,1,0,NULL,'418a54cafd7c1cda8044e688d1633ea9',1426509039,'dummy','purchase',65.6100,'failed',NULL,'Card number is invalid',NULL,'visa','1111'),
	(2,1,1,0,NULL,'c38898157cb917254da9132933781ba9',1426509057,'dummy','purchase',65.6100,'failed',NULL,'Card number is invalid',NULL,'visa','1111'),
	(3,1,1,0,NULL,'c79e9830f51bd2f226688e3fa0a53e54',1426509109,'dummy','purchase',65.6100,'failed',NULL,'Card has expired',NULL,'visa','4242'),
	(4,1,1,0,NULL,'9d37e39643c56e6b80826dcd92880346',1426509123,'dummy','purchase',65.6100,'success','5506cd433a9c2','Success',NULL,'visa','4242'),
	(5,1,3,0,NULL,'29577697740bbe15a1dc0a3858d43101',1426509223,'dummy','purchase',110.0000,'failed',NULL,'Card has expired',NULL,'visa','1111'),
	(6,1,3,0,NULL,'7521b466b746bbadecd9e841449f1b3f',1426509553,'dummy','purchase',110.0000,'failed',NULL,'Card has expired',NULL,NULL,'2422'),
	(7,1,3,0,NULL,'c051880d17b855760de6aed772037e33',1426514081,'dummy','purchase',110.0000,'failed',NULL,'The number parameter is required',NULL,NULL,NULL),
	(8,1,3,0,NULL,'f88999f826e35fcf4aadab6a904bddf6',1426514091,'dummy','purchase',110.0000,'failed',NULL,'The expiryMonth parameter is required',NULL,NULL,'42'),
	(9,1,3,0,NULL,'836060c6fa62afc2e0846c5b46fb737f',1426514103,'dummy','purchase',110.0000,'failed',NULL,'Card has expired',NULL,NULL,'4242'),
	(10,1,3,0,NULL,'8d1496b71aa1fce60b9d980e555ce540',1426514157,'dummy','purchase',110.0000,'success','5506e0ed3a737','Success',NULL,'visa','4242'),
	(11,1,4,0,NULL,'3b81e4713f45ad51a88d955f44dbc0a1',1426554485,'dummy','purchase',210.0000,'failed',NULL,'Card has expired',NULL,NULL,'4242'),
	(12,1,4,0,NULL,'3e99a29beeb0bb17dbb6916c9d27ebd7',1426554496,'dummy','purchase',210.0000,'success','55077e809534e','Success',NULL,NULL,'4242');

/*!40000 ALTER TABLE `exp_store_transactions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_taxonomy_tree_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_taxonomy_tree_1`;

CREATE TABLE `exp_taxonomy_tree_1` (
  `node_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lft` mediumint(8) unsigned DEFAULT NULL,
  `rgt` mediumint(8) unsigned DEFAULT NULL,
  `depth` mediumint(8) unsigned DEFAULT NULL,
  `parent` mediumint(8) unsigned DEFAULT NULL,
  `moved` tinyint(1) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entry_id` int(10) DEFAULT NULL,
  `template_path` varchar(255) DEFAULT NULL,
  `custom_url` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `field_data` text,
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_taxonomy_trees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_taxonomy_trees`;

CREATE TABLE `exp_taxonomy_trees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `templates` varchar(250) DEFAULT 'all',
  `channels` varchar(250) DEFAULT 'all',
  `member_groups` varchar(250) DEFAULT NULL,
  `last_updated` int(10) DEFAULT NULL,
  `fields` text,
  `taxonomy` longtext,
  `max_depth` int(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_taxonomy_trees` WRITE;
/*!40000 ALTER TABLE `exp_taxonomy_trees` DISABLE KEYS */;

INSERT INTO `exp_taxonomy_trees` (`id`, `site_id`, `label`, `name`, `templates`, `channels`, `member_groups`, `last_updated`, `fields`, `taxonomy`, `max_depth`)
VALUES
	(1,1,'Primary Navigation','primary_navigation','','6','',NULL,'',NULL,1);

/*!40000 ALTER TABLE `exp_taxonomy_trees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_groups`;

CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`)
VALUES
	(1,1,'site',1,'y'),
	(2,1,'comments',2,'n'),
	(3,1,'pages',3,'n'),
	(4,1,'search',4,'n'),
	(5,1,'store',5,'n'),
	(6,1,'account',6,'n'),
	(7,1,'articles',7,'n'),
	(9,1,'bin',8,'n'),
	(10,1,'brands',9,'n'),
	(18,1,'_forums',16,'n'),
	(12,1,'places',11,'n'),
	(13,1,'promotions',12,'n'),
	(14,1,'products',13,'n'),
	(15,1,'tutorials',14,'n'),
	(16,1,'newsletter',15,'n'),
	(17,1,'topics',16,'n'),
	(19,1,'advertisements',17,'n');

/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_member_groups`;

CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_template_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_no_access`;

CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_template_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_routes`;

CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_templates`;

CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_javascript` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`, `protect_javascript`)
VALUES
	(1,1,1,'index','y','webpage','site/index','',1426021509,1,'n',0,'','n','n','o',0,'n'),
	(2,1,1,'sitemap','y','xml','','',1425997817,1,'n',0,'','n','n','o',0,'n'),
	(4,1,1,'-robots','y','webpage','','',1425997818,1,'n',0,'','n','n','o',0,'n'),
	(5,1,1,'-four04','y','webpage','','',1425997818,1,'n',0,'','n','n','o',0,'n'),
	(6,1,2,'index','n','webpage','',NULL,1425997835,0,'n',0,'','n','n','o',0,'n'),
	(7,1,2,'_form-create','y','webpage','','',1425997836,1,'n',0,'','n','n','o',0,'n'),
	(8,1,2,'_entries','y','webpage','','',1425997836,1,'n',0,'','n','n','o',0,'n'),
	(9,1,3,'index','n','webpage','',NULL,1425997849,0,'n',0,'','n','n','o',0,'n'),
	(10,1,3,'read','y','webpage','','',1425997849,1,'n',0,'','n','n','o',0,'n'),
	(11,1,4,'index','y','webpage','{layout=\"site/-layout\"}\n\n{exp:channel:entries\n    channel=\"pages\"\n    limit=\"1\"\n    dynamic=\"no\"\n    url_title=\"search-index\"\n}\n\n{if no_results}{redirect=\"404\"}{/if}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"entry_id\" value=\"{entry_id}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{title}</h1>\n\n{cf_page_content}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n{/exp:channel:entries}\n\n<h2>Keywords: {exp:low_search:keywords query=\"{segment_2}\"}</h2>\n\n{exp:low_search:results\n    query=\"{segment_2}\"\n    shortcut=\"{segment_2}\"\n    dynamic=\"no\"\n}\n<h3><a href=\"#\">{title}</a></h3>\n{/exp:low_search:results}\n\n{embed=\'search/_form-search-save\'}\n\n','',1426549189,1,'n',0,'','n','n','o',0,'n'),
	(13,1,4,'_form-search-simple','y','webpage','','',1425997874,1,'n',0,'','n','n','o',0,'n'),
	(14,1,4,'_form-search-advanced','y','webpage','','',1425997874,1,'n',0,'','n','n','o',0,'n'),
	(15,1,5,'index','n','webpage','','',1426649214,1,'n',0,'','n','n','o',0,'n'),
	(16,1,5,'order-checkout','y','webpage','','',1425997881,1,'n',0,'','n','n','o',0,'n'),
	(17,1,5,'order-details','y','webpage','','',1425997882,1,'n',0,'','n','n','o',0,'n'),
	(18,1,5,'order-payment','y','webpage','','',1425997882,1,'n',0,'','n','n','o',0,'n'),
	(19,1,5,'order-receipt','y','webpage','','',1425997883,1,'n',0,'','n','n','o',0,'n'),
	(85,1,4,'_form-search-save-shortcut','y','webpage','',NULL,1426517402,1,'n',0,'','n','n','o',0,'n'),
	(21,1,5,'_cart-simple','y','webpage','','',1425997884,1,'n',0,'','n','n','o',0,'n'),
	(22,1,5,'_cart-advanced','y','webpage','','',1425997884,1,'n',0,'','n','n','o',0,'n'),
	(23,1,6,'index','y','webpage','','',1426511694,1,'n',0,'','n','n','o',0,'n'),
	(24,1,6,'login','y','webpage','','',1425997903,1,'n',0,'','n','n','o',0,'n'),
	(25,1,6,'_session','y','webpage','','',1425997903,1,'n',0,'','n','n','o',0,'n'),
	(26,1,6,'_form-login','y','webpage','','',1425997904,1,'n',0,'','n','n','o',0,'n'),
	(27,1,6,'forgot-password','y','webpage','','',1425997904,1,'n',0,'','n','n','o',0,'n'),
	(28,1,6,'_form-forgot-password','y','webpage','','',1425997904,1,'n',0,'','n','n','o',0,'n'),
	(29,1,6,'create','y','webpage','','',1425997905,1,'n',0,'','n','n','o',0,'n'),
	(30,1,6,'_form-create','y','webpage','','',1425997905,1,'n',0,'','n','n','o',0,'n'),
	(31,1,6,'update','y','webpage','','',1425997906,1,'n',0,'','n','n','o',0,'n'),
	(32,1,6,'_form-update','y','webpage','','',1425997908,1,'n',0,'','n','n','o',0,'n'),
	(33,1,7,'index','y','webpage','','',1426070968,1,'n',0,'','n','n','o',0,'n'),
	(34,1,7,'-entries','y','webpage','','',1425997948,1,'n',0,'','n','n','o',0,'n'),
	(35,1,7,'search','y','webpage','','',1425997948,1,'n',0,'','n','n','o',0,'n'),
	(36,1,7,'_form-search-advanced','y','webpage','','',1425997949,1,'n',0,'','n','n','o',0,'n'),
	(37,1,7,'read','y','webpage','','',1425997949,1,'n',0,'','n','n','o',0,'n'),
	(42,1,10,'index','y','webpage','','',1426576172,1,'n',0,'','n','n','o',0,'n'),
	(41,1,9,'index','y','webpage','',NULL,1425997987,1,'n',0,'','n','n','o',0,'n'),
	(43,1,10,'-entries','y','webpage','','',1425998047,1,'n',0,'','n','n','o',0,'n'),
	(44,1,10,'search','y','webpage','','',1425998047,1,'n',0,'','n','n','o',0,'n'),
	(45,1,10,'_form-search-advanced','y','webpage','','',1425998048,1,'n',0,'','n','n','o',0,'n'),
	(46,1,10,'read','y','webpage','','',1425998048,1,'n',0,'','n','n','o',0,'n'),
	(93,1,13,'-entries','y','webpage','<div class=\"PromotionCollection\">\n    {exp:channel:entries\n        channel=\'promotions\'\n        entry_id=\'{embed:entry_id}\'\n    }\n    <div class=\"PromotionCollection-noResults\">{if no_results}No Promotions{/if}</div>\n    <div class=\"PromotionCollection-items\">\n        <h3><a href=\"{url_title_path=\'promotions/details\'}\">{title}</a> {if cf_promotion_feature_video}w/ Video{/if}</h3>\n\n        <img\n            src=\"{cf_promotion_thumbnail_image:revved_url:thumbnail-1x}\"\n            width=\"{cf_promotion_thumbnail_image:width:thumbnail-1x}\"\n            height=\"{cf_promotion_thumbnail_image:height:thumbnail-1x}\"\n            srcset=\"{cf_promotion_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n        />\n        {cf_promotion_content}\n    </div>\n    {/exp:channel:entries}\n</div>',NULL,1426576323,1,'n',0,'','n','n','o',0,'n'),
	(92,1,18,'-entries','y','webpage','',NULL,1426569350,1,'n',0,'','n','n','o',0,'n'),
	(91,1,18,'index','y','webpage','','',1426569334,1,'n',0,'','n','n','o',0,'n'),
	(54,1,12,'index','y','webpage','','',1426576193,1,'n',0,'','n','n','o',0,'n'),
	(55,1,12,'-entries','y','webpage','','',1425998069,1,'n',0,'','n','n','o',0,'n'),
	(56,1,12,'search','y','webpage','','',1425998070,1,'n',0,'','n','n','o',0,'n'),
	(57,1,12,'_form-search-advanced','y','webpage','','',1425998070,1,'n',0,'','n','n','o',0,'n'),
	(58,1,12,'read','y','webpage','','',1425998071,1,'n',0,'','n','n','o',0,'n'),
	(60,1,13,'index','y','webpage','','',1426576212,1,'n',0,'','n','n','o',0,'n'),
	(61,1,13,'read','y','webpage','','',1425998076,1,'n',0,'','n','n','o',0,'n'),
	(63,1,13,'_cta','y','webpage','','',1425998076,1,'n',0,'','n','n','o',0,'n'),
	(64,1,14,'index','y','webpage','','',1426480246,1,'n',0,'','n','n','o',0,'n'),
	(65,1,14,'-entries','y','webpage','','',1425998083,1,'n',0,'','n','n','o',0,'n'),
	(66,1,14,'search','y','webpage','','',1425998084,1,'n',0,'','n','n','o',0,'n'),
	(67,1,14,'_form-search-advanced','y','webpage','','',1425998084,1,'n',0,'','n','n','o',0,'n'),
	(68,1,14,'read','y','webpage','','',1425998085,1,'n',0,'','n','n','o',0,'n'),
	(70,1,15,'index','y','webpage','','',1426576101,1,'n',0,'','n','n','o',0,'n'),
	(71,1,15,'-entries','y','webpage','','',1425998095,1,'n',0,'','n','n','o',0,'n'),
	(72,1,15,'search','y','webpage','','',1425998096,1,'n',0,'','n','n','o',0,'n'),
	(73,1,15,'_form-search-advanced','y','webpage','','',1425998096,1,'n',0,'','n','n','o',0,'n'),
	(74,1,15,'read','y','webpage','','',1425998096,1,'n',0,'','n','n','o',0,'n'),
	(114,1,17,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        channel=\'topics\'\n        limit=\'{gv_sitemap_pagination_limit}\'\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>\n',NULL,1426635428,1,'n',0,'','n','n','o',0,'n'),
	(76,1,4,'-opensearch','y','webpage','{exp:nsm_utils:debug_override override=\"all\"}\n{exp:query sql=\"SELECT `action_id` FROM `exp_actions` WHERE class=\'Low_search\' AND method=\'catch_search\'\"}\n<OpenSearchDescription xmlns=\"http://a9.com/-/spec/opensearch/1.1/\" xmlns:moz=\"http://www.mozilla.org/2006/browser/search/\">\n    <ShortName>{site_name}</ShortName>\n    <Description>Search {site_name}</Description>\n    <Url type=\"text/html\" method=\"get\" template=\"{site_url}?ACT={action_id}&amp;keywords={searchTerms}\" />\n    <Image height=\"16\" width=\"16\" type=\"image/vnd.microsoft.icon\">/favicon.ico</Image>\n    <moz:SearchForm>{path=\"search\"}</moz:SearchForm>\n    <Url type=\"application/opensearchdescription+xml\" rel=\"self\" template=\"{path=\'opensearch.xml\'}\"/>\n</OpenSearchDescription>\n{/exp:query}\n',NULL,1426021332,1,'n',0,'','n','n','o',0,'n'),
	(77,1,1,'-layout','y','webpage','<!doctype html>\n<html class=\"no-js\" lang=\"\">\n<head>\n    <meta charset=\"utf-8\">\n    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n\n    <title></title>\n    <meta name=\"description\" content=\"\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n\n    {!--\n    Home link\n    See: http://microformats.org/wiki/rel-home\n    See:\n    --}\n    <link rel=\"home\" href=\"{site_url}\"/>\n\n    {!--\n    Sitemap link\n    See: http://microformats.org/wiki/rel-sitemap\n    See: https://github.com/h5bp/html5-boilerplate/blob/v5.0.0/dist/doc/extend.md#direct-search-spiders-to-your-sitemap\n    --}\n    <link rel=\"sitemap\" type=\"application/xml\" title=\"Sitemap\" href=\"/sitemap.xml\">\n\n    {!--\n    IE Browser Config\n    See: https://msdn.microsoft.com/en-us/library/ie/dn320426%28v=vs.85%29.aspx\n    See: https://github.com/h5bp/html5-boilerplate/blob/v5.0.0/dist/doc/misc.md#browserconfigxml\n    --}\n    <meta name=\"msapplication-config\" content=\"browserconfig.xml\" />\n\n    {!--\n    Apple Touch Icon\n    See: https://github.com/h5bp/html5-boilerplate/issues/1615\n    See: https://developer.apple.com/library/mac/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html\n    --}\n    <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n\n    {!--\n    Favicon: Place favicon.ico in the root directory\n    See: https://github.com/h5bp/html5-boilerplate/issues/1285\n    See: https://github.com/h5bp/html5-boilerplate/issues/1285#issuecomment-12062847\n    --}\n\n    {!--\n    Facebook Insights\n    Note: Note: Additional fb:admins should be declared in a new tag.\n    See: https://developers.facebook.com/docs/platforminsights/domains\n    --}\n    <meta property=\"fb:admins\" content=\"1234\" />\n    <meta property=\"fb:admins\" content=\"5678\" />\n    <meta property=\"fb:app_id\" content=\"your_app_id\" />\n\n    {!--\n    Opensearch\n    href maps to ee template search/opensource. Double check routes.php\n    See: http://www.opensearch.org/Home\n    --}\n    <link rel=\"search\" title=\"{site_name} Search\" type=\"application/opensearchdescription+xml\" href=\"opensearch.xml\">\n\n    <script>\n        window.app = {}\n    </script>\n\n    {if gv_segmentio_write_key}\n    <script type=\"text/javascript\">\n        !function () {\n            var analytics = window.analytics = window.analytics || [];\n            if (!analytics.initialize)if (analytics.invoked)window.console && console.error && console.error(\"Segment snippet included twice.\"); else {\n                analytics.invoked = !0;\n                analytics.methods = [\"trackSubmit\", \"trackClick\", \"trackLink\", \"trackForm\", \"pageview\", \"identify\", \"group\", \"track\", \"ready\", \"alias\", \"page\", \"once\", \"off\", \"on\"];\n                analytics.factory = function (t) {\n                    return function () {\n                        var e = Array.prototype.slice.call(arguments);\n                        e.unshift(t);\n                        analytics.push(e);\n                        return analytics\n                    }\n                };\n                for (var t = 0; t < analytics.methods.length; t++) {\n                    var e = analytics.methods[t];\n                    analytics[e] = analytics.factory(e)\n                }\n                analytics.load = function (t) {\n                    var e = document.createElement(\"script\");\n                    e.type = \"text/javascript\";\n                    e.async = !0;\n                    e.src = (\"https:\" === document.location.protocol ? \"https://\" : \"http://\") + \"cdn.segment.com/analytics.js/v1/\" + t + \"/analytics.min.js\";\n                    var n = document.getElementsByTagName(\"script\")[0];\n                    n.parentNode.insertBefore(e, n)\n                };\n                analytics.SNIPPET_VERSION = \"3.0.1\";\n                analytics.load(\"{gv_segmentio_write_key}\");\n            }\n        }();\n    </script>\n    {/if}\n\n    {if gv_chartbeat_domain}\n    <script type=\"text/javascript\">var _sf_startpt=(new Date()).getTime()</script>\n    {/if}\n\n</head>\n<body>\n\n<!--[if lt IE 8]>\n<p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade\n    your browser</a> to improve your experience.</p>\n<![endif]-->\n\n{layout:contents}\n\n{if gv_disqus_short_name}\n<script type=\"text/javascript\">\n    (function () {\n        var disqus_shortname = \"{gv_disqus_short_name}\",\n                dsq = document.createElement(\'script\');\n        dsq.type = \'text/javascript\';\n        dsq.async = true;\n        dsq.src = \'//\' + disqus_shortname + \'.disqus.com/embed.js\';\n        (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(dsq);\n    })();\n</script>\n{/if}\n\n{if gv_chartbeat_domain}\n<script type=\"text/javascript\">\n    var _sf_async_config={};\n    /** CONFIGURATION START **/\n    _sf_async_config.uid = 29625;\n    _sf_async_config.domain = \"{gv_chartbeat_domain}\";\n    /** CONFIGURATION END **/\n    (function(){\n        function loadChartbeat() {\n            window._sf_endpt=(new Date()).getTime();\n            var e = document.createElement(\"script\");\n            e.setAttribute(\"language\", \"javascript\");\n            e.setAttribute(\"type\", \"text/javascript\");\n            e.setAttribute(\'src\', \'//static.chartbeat.com/js/chartbeat.js\');\n            document.body.appendChild(e);\n        }\n        var oldonload = window.onload;\n        window.onload = (typeof window.onload != \"function\") ?\n                loadChartbeat : function() { try { oldonload(); } catch (e) { loadChartbeat(); throw e} loadChartbeat(); };\n\n    })();\n</script>\n{/if}\n\n{if gv_google_analytics_key}\n<script>\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\n        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\n\n    ga(\'create\', \'{gv_google_analytics_key}\', \'auto\');\n    ga(\'send\', \'pageview\');\n\n</script>\n{/if}\n\n</body>\n</html>',NULL,1426021332,1,'n',0,'','n','n','o',0,'n'),
	(78,1,7,'sitemap','y','xml','ss','',1426217533,1,'n',0,'','n','n','o',0,'n'),
	(79,1,7,'sitemap-index','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel_entries\n        limit=\"1\"\n        paginate_base=\"articles/sitemap\"\n    }\n        {paginate}\n        {pagination_links page_padding=\"100\"}\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n        {/pagination_links}\n        {/paginate}\n    {/exp:channel:entries}\n</urlset>',NULL,1426223121,1,'n',0,'','n','n','o',0,'n'),
	(80,1,5,'_form-add-to-cart','y','webpage','',NULL,1426479334,1,'n',0,'','n','n','o',0,'n'),
	(81,1,6,'orders','y','webpage','','',1426512203,1,'n',0,'','n','n','o',0,'n'),
	(82,1,6,'_nav','y','webpage','',NULL,1426511359,1,'n',0,'','n','n','o',0,'n'),
	(83,1,7,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        limit=\"1\"\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>',NULL,1426511685,1,'n',0,'','n','n','o',0,'n'),
	(84,1,5,'orders','y','webpage','{layout=\"site/-layout\"}\n\n{exp:channel:entries\n    channel=\"pages\"\n    limit=\"1\"\n    dynamic=\"no\"\n    url_title=\"store-orders\"\n}\n\n{if no_results}{redirect=\"404\"}{/if}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"entry_id\" value=\"{entry_id}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{title}</h1>\n\n{cf_page_content}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n\n{exp:store:orders\n    member_id=\"CURRENT_USER\"\n}\n\n<table>\n    <thead>\n    <tr>\n        <th scope=\"col\">Order Hash</th>\n    </tr>\n    </thead>\n    <tbody>\n    <tr>\n        <th><a href=\"{path=\'store/order-receipt/{order_hash}\'}\">{order_hash}</a></th>\n    </tr>\n    </tbody>\n</table>\n\n\n{/exp:store:orders}\n\n{/exp:channel:entries}\n',NULL,1426515036,1,'n',0,'','n','n','o',0,'n'),
	(86,1,16,'index','y','webpage','','',1426548098,1,'n',0,'','n','n','o',0,'n'),
	(87,1,16,'_form-subscribe','y','webpage','',NULL,1426548067,1,'n',0,'','n','n','o',0,'n'),
	(88,1,4,'save-shortcut','y','webpage','',NULL,1426549224,1,'n',0,'','n','n','o',0,'n'),
	(89,1,4,'results','y','webpage','',NULL,1426550122,1,'n',0,'','n','n','o',0,'n'),
	(90,1,17,'index','y','webpage','{layout=\"site/-layout\"}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"title\" value=\"{segment_2_category_name}\"}\n{layout:set name=\"description\" value=\"{segment_2_category_description}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{segment_2_category_name}</h1>\n\n{segment_2_category_description}\n{segment_2_category_image}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n','',1426551886,1,'n',0,'','n','n','o',0,'n'),
	(121,1,4,'sitemap-shortcuts','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:low_search:shortcuts}\n    <url>\n        <loc>{path=\"search/results/{shortcut_name}\"}</loc>\n    </url>\n    {/exp:low_search:shortcuts}\n</urlset>\n',NULL,1426650241,1,'n',0,'','n','n','o',0,'n'),
	(122,1,4,'sitemap-popular','y','xml','{exp:query sql=\"SELECT `action_id` FROM `exp_actions` WHERE class=\'Low_search\' AND method=\'catch_search\'\"}\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:low_search:popular\n        limit=\"{gv_sitemap_pagination_limit}\"\n    }\n    <url>\n        <loc>{site_url}?ACT={action_id}&amp;keywords={keywords}</loc>\n    </url>\n    {/exp:low_search:popular}\n</urlset>\n{/exp:query}\n',NULL,1426650559,1,'n',0,'','n','n','o',0,'n'),
	(123,1,17,'search','y','webpage','{preload_replace:pr_this_index_limit=\"10\"}\n\n{layout=\'site/-layout\'}\n\n{exp:channel:entries\n    channel=\"topics\"\n    limit=\"1\"\n    dynamic=\"no\"\n    url_title=\"{segment_1}\"\n}\n\n{if no_results}{redirect=\"404\"}{/if}\n\n{!-- Set entry id for better meta --}\n{layout:set name=\"entry_id\" value=\"{entry_id}\"}\n{layout:set name=\"title_suffix\" value=\"Articles - Page {exp:nsm_utils:page_number limit=\'{pr_this_index_limit}\'}\"}\n\n{!-- Additional Open Graph meta --}\n{layout:set name=\"og_image\" value=\"{cf_page_feature_image:revved_url:facebook-2x}\"}\n{layout:set name=\"og_image:height\" value=\"{cf_page_feature_image:height:facebook-2x}\"}\n{layout:set name=\"og_image:width\" value=\"{cf_page_feature_image:width:facebook-2x}\"}\n\n<h1>{title} / Articles</h1>\n\n\n{!-- embed=\'topics/-content-types-nav\' topic=\'{topic_category_url_title}\' content_type=\"articles\" --}\n\n{if cf_page_feature_image}\n<img\n    src=\"{cf_page_feature_image:revved_url:feature-1x}\"\n    width=\"{cf_page_feature_image:width:feature-1x}\"\n    height=\"{cf_page_feature_image:height:feature-1x}\"\n    srcset=\"{cf_page_feature_image:revved_url:feature-2x} 2x\"\n/>\n{/if}\n\n{embed=\"topics/_entries\"\n    category=\"{cf_topic_content_categories}\"\n    limit=\"{pr_this_index_limit}\"\n}\n\n{/exp:channel:entries}\n',NULL,1426741649,1,'n',0,'','n','n','o',0,'n'),
	(119,1,5,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    <url>\n        <loc>{path=\'store/order-checkout\'}</loc>\n    </url>\n</urlset>\n',NULL,1426649128,1,'n',0,'','n','n','o',0,'n'),
	(120,1,4,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:low_search:shortcuts}\n    <url>\n        <loc>{path=\"search/results/{shortcut_name}\"}</loc>\n    </url>\n    {/exp:low_search:shortcuts}\n</urlset>\n',NULL,1426649988,1,'n',0,'','n','n','o',0,'n'),
	(115,1,17,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'topics\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"topics/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635428,1,'n',0,'','n','n','o',0,'n'),
	(116,1,1,'-breadcrumb','y','webpage','{embed:topic}\n{embed:content_type}\n',NULL,1426635749,1,'n',0,'','n','n','o',0,'n'),
	(117,1,17,'-topic-types-nav','y','webpage','<ul>\n    <li><a href=\"{path=\'{embed:content_type}\'}\">Everything</a>{if embed:topic == \'\'} - current{/if}</li>\n    <li><a href=\"{path=\'snow/{embed:content_type}\'}\">Snow</a>{if embed:topic == \'snow\'} - current{/if}</li>\n    <li><a href=\"{path=\'skate/{embed:content_type}\'}\">Skate</a>{if embed:topic == \'skate\'} - current{/if}</li>\n    <li><a href=\"{path=\'surf/{embed:content_type}\'}\">Surf</a>{if embed:topic == \'surf\'} - current{/if}</li>\n</ul>\n',NULL,1426647658,1,'n',0,'','n','n','o',0,'n'),
	(126,1,7,'-card','y','webpage','<div>\n    <h3><a href=\"{url_title_path=\'articles/details\'}\">{title}</a> {if cf_article_feature_video}w/ Video{/if}</h3>\n\n    {if cf_article_thumbnail_image}\n    <img\n        src=\"{cf_article_thumbnail_image:revved_url:thumbnail-1x}\"\n        width=\"{cf_article_thumbnail_image:width:thumbnail-1x}\"\n        height=\"{cf_article_thumbnail_image:height:thumbnail-1x}\"\n        srcset=\"{cf_article_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n        />\n    {/if}\n    {cf_article_content}\n</div>\n','',1426813765,1,'n',0,'','n','n','o',0,'n'),
	(127,1,10,'-card','y','webpage','<div>\n<h3><a href=\"{url_title_path=\'brands/details\'}\">{title}</a> {if cf_brand_feature_video}w/ Video{/if}</h3>\n{if cf_brand_thumbnail_image}\n<img\n    src=\"{cf_brand_thumbnail_image:revved_url:thumbnail-1x}\"\n    width=\"{cf_brand_thumbnail_image:width:thumbnail-1x}\"\n    height=\"{cf_brand_thumbnail_image:height:thumbnail-1x}\"\n    srcset=\"{cf_brand_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n    />\n{/if}\n{cf_brand_content}\n</div>\n','',1426820182,1,'n',0,'','n','n','o',0,'n'),
	(128,1,12,'-card','y','webpage','{title}\n',NULL,1426812583,1,'n',0,'','n','n','o',0,'n'),
	(129,1,14,'-card','y','webpage','{title}\n',NULL,1426812583,1,'n',0,'','n','n','o',0,'n'),
	(130,1,13,'-card','y','webpage','{title}\n',NULL,1426812583,1,'n',0,'','n','n','o',0,'n'),
	(131,1,1,'-pagination','y','webpage','{paginate}{pagination_links}{/paginate}\n',NULL,1426812583,1,'n',0,'','n','n','o',0,'n'),
	(132,1,15,'-card','y','webpage','<div>\n    <h3><a href=\"{url_title_path=\'tutorials/details\'}\">{title}</a> {if cf_tutorial_feature_video}w/ Video{/if}</h3>\n\n    <img\n        src=\"{cf_tutorial_thumbnail_image:revved_url:thumbnail-1x}\"\n        width=\"{cf_tutorial_thumbnail_image:width:thumbnail-1x}\"\n        height=\"{cf_tutorial_thumbnail_image:height:thumbnail-1x}\"\n        srcset=\"{cf_tutorial_thumbnail_image:revved_url:thumbnail-2x} 2x\"\n        />\n    {cf_tutorial_content}\n</div>\n',NULL,1426812583,1,'n',0,'','n','n','o',0,'n'),
	(133,1,19,'index','y','webpage','','',1426826955,1,'n',0,'','n','n','o',0,'n'),
	(134,1,17,'-adblock','y','webpage','',NULL,1426826967,1,'n',0,'','n','n','o',0,'n'),
	(135,1,19,'_ad-block','y','webpage','',NULL,1426827085,1,'n',0,'','n','n','o',0,'n'),
	(136,1,19,'-ad-placeholder','y','webpage','<p>\n    {if embed:ad_search_query}\n        <a href=\"{exp:low_search:url result_page=\'advertisements/_adBlock\' {embed:ad_search_query}}\">\n            View advertisement for entry.\n        </a>\n        Params: <code>{embed:ad_search_query}</code>\n    {if:else}\n        <a href=\"{exp:low_search:url result_page=\'advertisements/_adBlock\' category=\'{embed:topic_category_id}\'}\">\n            View advertisement for entry.\n        </a>\n        Params: <code>category=\'{embed:topic_category_id}\'</code>\n    {/if}\n</p>\n',NULL,1426834333,1,'n',0,'','n','n','o',0,'n'),
	(105,1,10,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        channel=\'brands\'\n        limit=\'{gv_sitemap_pagination_limit}\'\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(106,1,10,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'brands\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"brands/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(107,1,12,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'places\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"places/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(108,1,14,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        channel=\'products\'\n        limit=\'{gv_sitemap_pagination_limit}\'\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(109,1,14,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'products\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"products/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(110,1,13,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        channel=\'promotions\'\n        limit=\'{gv_sitemap_pagination_limit}\'\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(111,1,13,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'promotions\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"promotions/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(112,1,15,'sitemap-entries','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:channel:entries\n        channel=\'tutorials\'\n        limit=\'{gv_sitemap_pagination_limit}\'\n    }\n    <url>\n        <loc></loc>\n        <lastmod></lastmod>\n        <changefreq></changefreq>\n        <priority></priority>\n    </url>\n    {/exp:channel:entries}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(113,1,15,'sitemap','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n    {exp:nsm_better_meta_new:sitemap_index\n        channel=\'tutorials\'\n        limit=\"{gv_sitemap_pagination_limit}\"\n        paginate_base=\"tutorials/sitemap-entries\"\n    }\n        <sitemap>\n            <loc>{pagination_url}</loc>\n        </sitemap>\n    {/exp:nsm_better_meta_new:sitemap_index}\n</urlset>\n',NULL,1426635083,1,'n',0,'','n','n','o',0,'n'),
	(124,1,17,'-entries','y','webpage','<div class=\"ArticleCollection\">\n    {exp:low_search:results\n        entry_id=\'{embed:entry_id}\'\n        category=\'{embed:category}\'\n        limit=\'{embed:limit}\'\n        shortcut=\"{embed:shortcut}\"\n        query=\"{embed:query}\"\n        paginate=\'bottom\'\n    }\n\n    <div>No Results</div>\n    <div>{channel_name}</div>\n\n    {paginate}\n        {pagination_links}\n    {/paginate}\n    {/exp:low_search:results}\n</div>\n',NULL,1426741649,1,'n',0,'','n','n','o',0,'n'),
	(125,1,17,'-search-shortcuts-nav','y','webpage','<ul>\n    <li><a href=\"{path=\'{segment_1}\'}\">Everything</a></li>\n    {exp:low_search:shortcuts group_id=\"{shortcut_group_id}\"}\n    <li>\n        <a href=\"{path=\'{exp:nsm_utils:str_replace search=\'-\' replace=\'/\' subject=\'{shortcut_name}\'}\'}\">\n            {shortcut_label}\n        </a>\n    </li>\n    {/exp:low_search:shortcuts}\n</ul>\n',NULL,1426805815,1,'n',0,'','n','n','o',0,'n');

/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_throttle`;

CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_no_access`;

CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_prefs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_prefs`;

CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`)
VALUES
	(1,1,'Homepage Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/homepage/','http://local.example/uploads/content/homepage/','img','','','','','','','','','','',NULL),
	(2,1,'Page Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/articles/','http://local.example/uploads/content/articles/','img','','','','','','','','','','',NULL),
	(3,1,'Topic Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/topics/','http://local.example/uploads/content/topics/','img','','','','','','','','','','',NULL),
	(4,1,'Article Images','/Volumes/Sites/Work/Internal/example.com/web/','http://local.example/','img','','','','','','','','','','',NULL),
	(5,1,'Brand Images','/Volumes/Sites/Work/Internal/example.com/web/','http://local.example/','img','','','','','','','','','','',NULL),
	(6,1,'Place Images','/Volumes/Sites/Work/Internal/example.com/web/','http://local.example/','img','','','','','','','','','','',NULL),
	(7,1,'Product Images','/Volumes/Sites/Work/Internal/example.com/web/','http://local.example/','img','','','','','','','','','','',NULL),
	(8,1,'Promotion Images','/Volumes/Sites/Work/Internal/example.com/web/','http://local.example/','img','','','','','','','','','','',NULL),
	(9,1,'Tutorial Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/articles/','http://local.example/uploads/content/articles/','img','','','','','','','','','','',NULL),
	(10,1,'Advertisement Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/advertisement/','http://local.example/uploads/content/advertisement/','img','','','','','','','','','','',NULL),
	(11,1,'Feature Carousel Images','/Volumes/Sites/Work/Internal/example.com/web/uploads/content/feature-carousel/','http://local.example/uploads/content/feature-carousel/','img','','','','','','','','','','',NULL);

/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_wygwam_configs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_wygwam_configs`;

CREATE TABLE `exp_wygwam_configs` (
  `config_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(32) DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_wygwam_configs` WRITE;
/*!40000 ALTER TABLE `exp_wygwam_configs` DISABLE KEYS */;

INSERT INTO `exp_wygwam_configs` (`config_id`, `config_name`, `settings`)
VALUES
	(1,'Basic','YTo3OntzOjc6InRvb2xiYXIiO2E6ODp7aTowO3M6NDoiQm9sZCI7aToxO3M6NjoiSXRhbGljIjtpOjI7czo5OiJVbmRlcmxpbmUiO2k6MztzOjEyOiJOdW1iZXJlZExpc3QiO2k6NDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6NTtzOjQ6IkxpbmsiO2k6NjtzOjY6IlVubGluayI7aTo3O3M6NjoiQW5jaG9yIjt9czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjE0OiJyZXNpemVfZW5hYmxlZCI7czoxOiJ5IjtzOjExOiJjb250ZW50c0NzcyI7YTowOnt9czo5OiJwYXJzZV9jc3MiO2I6MDtzOjEzOiJyZXN0cmljdF9odG1sIjtzOjE6InkiO3M6MTA6InVwbG9hZF9kaXIiO3M6MDoiIjt9'),
	(2,'Full','YTo3OntzOjc6InRvb2xiYXIiO2E6Mjk6e2k6MDtzOjY6IlNvdXJjZSI7aToxO3M6MzoiQ3V0IjtpOjI7czo0OiJDb3B5IjtpOjM7czo1OiJQYXN0ZSI7aTo0O3M6OToiUGFzdGVUZXh0IjtpOjU7czoxMzoiUGFzdGVGcm9tV29yZCI7aTo2O3M6NDoiVW5kbyI7aTo3O3M6NDoiUmVkbyI7aTo4O3M6NToiU2NheXQiO2k6OTtzOjQ6IkJvbGQiO2k6MTA7czo2OiJJdGFsaWMiO2k6MTE7czo2OiJTdHJpa2UiO2k6MTI7czoxMjoiUmVtb3ZlRm9ybWF0IjtpOjEzO3M6MTI6Ik51bWJlcmVkTGlzdCI7aToxNDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6MTU7czo3OiJPdXRkZW50IjtpOjE2O3M6NjoiSW5kZW50IjtpOjE3O3M6MTA6IkJsb2NrcXVvdGUiO2k6MTg7czo0OiJMaW5rIjtpOjE5O3M6NjoiVW5saW5rIjtpOjIwO3M6NjoiQW5jaG9yIjtpOjIxO3M6NToiSW1hZ2UiO2k6MjI7czo1OiJUYWJsZSI7aToyMztzOjE0OiJIb3Jpem9udGFsUnVsZSI7aToyNDtzOjExOiJTcGVjaWFsQ2hhciI7aToyNTtzOjg6IlJlYWRNb3JlIjtpOjI2O3M6NjoiU3R5bGVzIjtpOjI3O3M6NjoiRm9ybWF0IjtpOjI4O3M6ODoiTWF4aW1pemUiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTQ6InJlc2l6ZV9lbmFibGVkIjtzOjE6InkiO3M6MTE6ImNvbnRlbnRzQ3NzIjthOjA6e31zOjk6InBhcnNlX2NzcyI7YjowO3M6MTM6InJlc3RyaWN0X2h0bWwiO3M6MToieSI7czoxMDoidXBsb2FkX2RpciI7czowOiIiO30=');

/*!40000 ALTER TABLE `exp_wygwam_configs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_zenbu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_zenbu`;

CREATE TABLE `exp_zenbu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_group_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(10) unsigned DEFAULT NULL,
  `general_settings` text,
  `show_fields` mediumtext,
  `show_custom_fields` text,
  `field_order` mediumtext,
  `extra_options` mediumtext,
  `can_admin` varchar(1) DEFAULT 'n',
  `can_copy_profile` varchar(1) DEFAULT 'n',
  `can_access_settings` varchar(1) DEFAULT 'n',
  `edit_replace` varchar(1) DEFAULT 'y',
  `can_view_group_searches` varchar(1) DEFAULT 'n',
  `can_admin_group_searches` varchar(1) DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_zenbu` WRITE;
/*!40000 ALTER TABLE `exp_zenbu` DISABLE KEYS */;

INSERT INTO `exp_zenbu` (`id`, `member_group_id`, `site_id`, `general_settings`, `show_fields`, `show_custom_fields`, `field_order`, `extra_options`, `can_admin`, `can_copy_profile`, `can_access_settings`, `edit_replace`, `can_view_group_searches`, `can_admin_group_searches`)
VALUES
	(1,1,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}','y','y','y','y','y','y'),
	(2,2,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}','n','n','n','y','n','n'),
	(3,3,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}','n','n','n','y','n','n'),
	(4,4,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}','n','n','n','y','n','n'),
	(5,5,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}','n','n','n','y','n','n');

/*!40000 ALTER TABLE `exp_zenbu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_zenbu_filter_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_zenbu_filter_cache`;

CREATE TABLE `exp_zenbu_filter_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(10) unsigned DEFAULT NULL,
  `save_date` int(10) unsigned DEFAULT NULL,
  `filter_rules` mediumtext,
  PRIMARY KEY (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_zenbu_filter_cache` WRITE;
/*!40000 ALTER TABLE `exp_zenbu_filter_cache` DISABLE KEYS */;

INSERT INTO `exp_zenbu_filter_cache` (`cache_id`, `member_id`, `site_id`, `save_date`, `filter_rules`)
VALUES
	(35,1,1,1426574501,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(36,1,1,1426575147,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(37,1,1,1426575315,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(38,1,1,1426575725,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"10\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(39,1,1,1426580580,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(40,1,1,1426580581,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(41,1,1,1426580582,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(42,1,1,1426580665,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(43,1,1,1426580795,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(44,1,1,1426582917,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(45,1,1,1426582994,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(46,1,1,1426585770,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:2:\"id\";s:4:\"sort\";s:3:\"asc\";s:7:\"perpage\";b:0;}'),
	(47,1,1,1426587034,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(48,1,1,1426587215,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(49,1,1,1426589076,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(50,1,1,1426589154,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(51,1,1,1426589486,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(52,1,1,1426641191,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(53,1,1,1426641192,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(54,1,1,1426644556,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(55,1,1,1426651327,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"10\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(56,1,1,1426651530,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"10\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(57,1,1,1426651908,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:5:\"rusty\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(58,1,1,1426656080,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(59,1,1,1426724229,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(60,1,1,1426807221,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(61,1,1,1426807222,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(62,1,1,1426807224,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(63,1,1,1426814069,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(64,1,1,1426815879,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"11\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(65,1,1,1426829053,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(66,1,1,1426829377,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(67,1,1,1426830285,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(68,1,1,1426830720,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(69,1,1,1426830963,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(70,1,1,1426831362,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(71,1,1,1426832308,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:37:\"Burton US Open: Slopestyle Highlights\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(72,1,1,1426832447,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(73,1,1,1426832448,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(74,1,1,1426832478,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(75,1,1,1426832506,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(76,1,1,1426833336,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(77,1,1,1426835057,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(78,1,1,1426835058,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(79,1,1,1426835084,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:2:\"12\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(80,1,1,1426836266,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(81,1,1,1426847948,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(82,1,1,1426848017,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(83,1,1,1426848043,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(84,1,1,1426850438,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(85,1,1,1426902804,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(86,1,1,1426984907,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"0\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:4:\"Home\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(87,1,1,1426985158,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(88,1,1,1426985200,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"1\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(89,1,1,1426986717,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(90,1,1,1427157995,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(91,1,1,1427157999,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"3\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(92,1,1,1427193374,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(93,1,1,1427193473,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(94,1,1,1427193487,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(95,1,1,1427195190,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(96,1,1,1427195192,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(97,1,1,1427197908,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(98,1,1,1427197910,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"8\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(99,1,1,1427201142,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"4\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(100,1,1,1427201177,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"4\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(101,1,1,1427201205,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"4\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(102,1,1,1427201231,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"4\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}'),
	(103,1,1,1427202032,'a:5:{s:4:\"rule\";a:2:{i:0;a:3:{s:3:\"val\";s:1:\"4\";s:5:\"field\";s:10:\"channel_id\";s:4:\"cond\";s:2:\"is\";}i:1;a:3:{s:3:\"val\";s:0:\"\";s:5:\"field\";s:5:\"title\";s:4:\"cond\";s:8:\"contains\";}}s:5:\"limit\";s:2:\"25\";s:7:\"orderby\";s:10:\"entry_date\";s:4:\"sort\";s:4:\"desc\";s:7:\"perpage\";b:0;}');

/*!40000 ALTER TABLE `exp_zenbu_filter_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_zenbu_member_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_zenbu_member_settings`;

CREATE TABLE `exp_zenbu_member_settings` (
  `member_id` int(10) unsigned DEFAULT NULL,
  `site_id` int(10) unsigned DEFAULT NULL,
  `general_settings` text,
  `show_fields` mediumtext,
  `show_custom_fields` text,
  `field_order` mediumtext,
  `extra_options` mediumtext,
  `can_admin` varchar(1) DEFAULT NULL,
  `can_copy_profile` varchar(1) DEFAULT NULL,
  `can_access_settings` varchar(1) DEFAULT NULL,
  `edit_replace` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_zenbu_member_settings` WRITE;
/*!40000 ALTER TABLE `exp_zenbu_member_settings` DISABLE KEYS */;

INSERT INTO `exp_zenbu_member_settings` (`member_id`, `site_id`, `general_settings`, `show_fields`, `show_custom_fields`, `field_order`, `extra_options`, `can_admin`, `can_copy_profile`, `can_access_settings`, `edit_replace`)
VALUES
	(1,1,'a:6:{s:20:\"max_results_per_page\";i:0;s:18:\"default_1st_filter\";s:5:\"title\";s:13:\"default_limit\";s:2:\"25\";s:13:\"default_order\";s:10:\"entry_date\";s:12:\"default_sort\";s:4:\"desc\";s:26:\"enable_hidden_field_search\";s:1:\"n\";}','a:6:{i:0;a:11:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";s:11:\"show_sticky\";s:1:\"y\";s:15:\"show_entry_date\";s:1:\"y\";s:11:\"show_author\";s:1:\"y\";s:13:\"show_comments\";s:1:\"y\";s:9:\"show_view\";s:1:\"y\";}i:11;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:12:\"show_channel\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:3;a:5:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}i:12;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:14:\"show_url_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:8;a:3:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";}i:4;a:4:{s:7:\"show_id\";s:1:\"y\";s:10:\"show_title\";s:1:\"y\";s:15:\"show_categories\";s:1:\"y\";s:11:\"show_status\";s:1:\"y\";}}','a:6:{i:0;a:1:{s:18:\"show_custom_fields\";s:0:\"\";}i:11;a:1:{s:18:\"show_custom_fields\";s:2:\"63\";}i:3;a:1:{s:18:\"show_custom_fields\";s:4:\"10|9\";}i:12;a:1:{s:18:\"show_custom_fields\";s:5:\"79|78\";}i:8;a:1:{s:18:\"show_custom_fields\";s:5:\"41|25\";}i:4;a:1:{s:18:\"show_custom_fields\";s:2:\"13\";}}','a:6:{i:0;a:1:{s:11:\"field_order\";a:11:{s:7:\"show_id\";i:0;s:10:\"show_title\";i:1;s:14:\"show_url_title\";i:2;s:12:\"show_channel\";i:3;s:15:\"show_categories\";i:4;s:11:\"show_status\";i:5;s:11:\"show_sticky\";i:6;s:15:\"show_entry_date\";i:7;s:11:\"show_author\";i:8;s:13:\"show_comments\";i:9;s:9:\"show_view\";i:10;}}i:11;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:8:\"field_70\";i:10;s:8:\"field_65\";i:11;s:8:\"field_66\";i:12;s:8:\"field_67\";i:13;s:14:\"show_edit_date\";i:14;s:8:\"field_64\";i:15;s:11:\"show_author\";i:16;s:8:\"field_62\";i:17;s:8:\"field_63\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:3;a:1:{s:11:\"field_order\";a:23:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_32\";i:12;s:8:\"field_33\";i:13;s:8:\"field_34\";i:14;s:8:\"field_68\";i:15;s:7:\"field_8\";i:16;s:8:\"field_10\";i:17;s:7:\"field_9\";i:18;s:9:\"show_view\";i:19;s:15:\"show_view_count\";i:20;s:16:\"show_last_author\";i:21;s:13:\"show_autosave\";i:22;s:10:\"show_pages\";i:23;}}i:12;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_77\";i:12;s:8:\"field_79\";i:13;s:8:\"field_78\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}i:8;a:1:{s:11:\"field_order\";a:26:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:8:\"field_27\";i:11;s:8:\"field_28\";i:12;s:11:\"show_author\";i:13;s:8:\"field_41\";i:14;s:8:\"field_42\";i:15;s:8:\"field_43\";i:16;s:8:\"field_44\";i:17;s:8:\"field_23\";i:18;s:8:\"field_24\";i:19;s:8:\"field_25\";i:20;s:8:\"field_26\";i:21;s:9:\"show_view\";i:22;s:15:\"show_view_count\";i:23;s:16:\"show_last_author\";i:24;s:13:\"show_autosave\";i:25;s:10:\"show_pages\";i:26;}}i:4;a:1:{s:11:\"field_order\";a:19:{s:7:\"show_id\";i:1;s:10:\"show_title\";i:2;s:14:\"show_url_title\";i:3;s:12:\"show_channel\";i:4;s:15:\"show_categories\";i:5;s:11:\"show_status\";i:6;s:11:\"show_sticky\";i:7;s:15:\"show_entry_date\";i:8;s:20:\"show_expiration_date\";i:9;s:14:\"show_edit_date\";i:10;s:11:\"show_author\";i:11;s:8:\"field_11\";i:12;s:8:\"field_12\";i:13;s:8:\"field_13\";i:14;s:9:\"show_view\";i:15;s:15:\"show_view_count\";i:16;s:16:\"show_last_author\";i:17;s:13:\"show_autosave\";i:18;s:10:\"show_pages\";i:19;}}}','a:6:{i:0;a:1:{s:13:\"extra_options\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:15:\"matrix_option_1\";s:0:\"\";}}i:11;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_64\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:8:\"field_62\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:3;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_68\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:7:\"field_8\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:2:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:12;a:1:{s:13:\"extra_options\";a:7:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_77\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:8:\"field_79\";a:4:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";s:13:\"text_option_3\";s:1:\"n\";s:13:\"text_option_4\";s:1:\"0\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:21:\"use_livelook_settings\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:8;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_23\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}i:4;a:1:{s:13:\"extra_options\";a:6:{s:15:\"show_categories\";a:1:{s:17:\"category_option_1\";s:0:\"\";}s:15:\"show_entry_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:20:\"show_expiration_date\";a:2:{s:13:\"date_option_1\";s:0:\"\";s:13:\"date_option_2\";s:0:\"\";}s:14:\"show_edit_date\";a:1:{s:13:\"date_option_1\";s:0:\"\";}s:8:\"field_11\";a:2:{s:13:\"text_option_1\";s:0:\"\";s:13:\"text_option_2\";s:4:\"html\";}s:9:\"show_view\";a:3:{s:17:\"livelook_option_1\";s:19:\"use_custom_segments\";s:17:\"livelook_option_2\";s:0:\"\";s:17:\"livelook_option_3\";s:15:\"entry_id_suffix\";}}}}',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `exp_zenbu_member_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_zenbu_saved_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_zenbu_saved_searches`;

CREATE TABLE `exp_zenbu_saved_searches` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned DEFAULT NULL,
  `member_group_id` int(10) unsigned DEFAULT '0',
  `rule_order` int(10) unsigned DEFAULT '0',
  `site_id` int(10) unsigned DEFAULT NULL,
  `rule_label` text,
  `rules` mediumtext,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
