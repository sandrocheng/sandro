drop database if exists sandro_database;
CREATE DATABASE sandro_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON sandro_database.* TO 'sandro'@'localhost';
GRANT ALL PRIVILEGES ON sandro_database.* TO 'sandro'@'%';

use sandro_database

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `user_type` int(4) NOT NULL DEFAULT '0' COMMENT '0:普通用户  1 管理员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB COMMENT='用户表';
