/* New column in calendar_event table*/
ALTER TABLE `calendar_event` ADD `interviewer_id` INT(11) NULL DEFAULT NULL AFTER `public`;

/* New column in user table*/

ALTER TABLE `user` ADD`is_interviewer` `is_interviewer` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '0 - Not interviewer, 1 - interviewer';


/* New Interview link column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_link` VARCHAR(255) DEFAULT NULL AFTER `interviewer_id`;

/* New Interview level column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_level` VARCHAR(2) DEFAULT NULL AFTER `interview_link`;

