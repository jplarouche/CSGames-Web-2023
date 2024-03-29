CREATE TABLE IF NOT EXISTS `snippets` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `content` LONGTEXT NULL,
    `created` INT(11) NULL,
    `owner` VARCHAR(40) NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `keywords` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `keyword` VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `snippets_keywords` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `snippet_id` INT(11) NOT NULL,
    `keyword_id` INT(11) NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
