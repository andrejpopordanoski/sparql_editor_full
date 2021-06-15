CREATE DATABASE IF NOT EXISTS SparqlEditor;

CREATE TABLE IF NOT EXISTS `SparqlEditor`.`user` (
  `email` varchar(255) NOT NULL,
  `auth_role` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
);

CREATE TABLE IF NOT EXISTS `SparqlEditor`.`user_queries` (
  `id` bigint NOT NULL,
  `default_dataset_name` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `query_result` mediumtext,
  `query_string` varchar(255) DEFAULT NULL,
  `timeout` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `query_name` varchar(255) DEFAULT 'Untitled',
  `query_name_suffix` varchar(255) DEFAULT '',
  `private_access` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `USER_EMAIL_FK11` (`user_email`),
  CONSTRAINT `USER_EMAIL_FK11` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
);
