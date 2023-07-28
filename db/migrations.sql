/* New column in calendar_event table*/
ALTER TABLE `calendar_event` ADD `interviewer_id` INT(11) NULL DEFAULT NULL AFTER `public`;

/* New column in user table*/

ALTER TABLE `user` ADD`is_interviewer` `is_interviewer` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '0 - Not interviewer, 1 - interviewer';

/* New column in candidate table*/
ALTER TABLE `candidate` ADD `interviewer_id` INT(11) NULL AFTER `best_time_to_call`;

/* New Interview link column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_link` VARCHAR(255) NOT NULL AFTER `interviewer_id`;

/* New Interview level column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_level` VARCHAR(2) NOT NULL AFTER `interview_link`;

/* Change timezone type float in site table*/

ALTER TABLE `site` CHANGE `time_zone` `time_zone` FLOAT(5) NULL DEFAULT '0';

