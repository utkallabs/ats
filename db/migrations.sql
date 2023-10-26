/* New column in calendar_event table*/
ALTER TABLE `calendar_event` ADD `interviewer_id` INT(11) NULL DEFAULT NULL AFTER `public`;

/* New column in user table*/

ALTER TABLE `user` ADD`is_interviewer` `is_interviewer` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '0 - Not interviewer, 1 - interviewer';


/* New Interview link column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_link` VARCHAR(255) DEFAULT NULL AFTER `interviewer_id`;

/* New Interview level column in calendar_event table*/

ALTER TABLE `calendar_event` ADD `interview_level` VARCHAR(2) DEFAULT NULL AFTER `interview_link`;

ALTER TABLE `site` CHANGE `time_zone` `time_zone` FLOAT(5) NULL DEFAULT '0';

/* New ats roll column in user table*/
ALTER TABLE `user` ADD `ats_roll` INT(11) NOT NULL AFTER `can_see_eeo_info`;

/* New feedback column in user table*/
ALTER TABLE `calendar_event` ADD `feedback` TEXT NULL DEFAULT NULL AFTER `interview_level`;





/* Change timezone type float in site table*/

ALTER TABLE `site` CHANGE `time_zone` `time_zone` FLOAT(5) NULL DEFAULT '0';

/*Migration for the source field for older candidates*/
UPDATE candidate
SET sourceId = 
CASE
WHEN source = 'Tadit' THEN 1
WHEN source = 'Suvendu' THEN 2
WHEN source = 'HR & Career email' THEN 3
WHEN source = 'Jagatbandhu' THEN 4
WHEN source = 'LinkedIn' THEN 5
WHEN source = 'Nirmal' THEN 6
WHEN source = 'TestYantra' THEN 7
WHEN source = 'Employee' THEN 8
WHEN source = 'Naukri' THEN 9
END WHERE source IN ('Tadit','Suvendu','HR & Career email','Jagatbandhu','LinkedIn', 'Nirmal', 'TestYantra','Employee');

/* New token column in user table*/
ALTER TABLE `user` ADD `token` VARCHAR(255)  NULL AFTER `password`;
ALTER TABLE `user` ADD `token_exp` DATE NULL AFTER `token`;

/* New token column in user table*/
INSERT INTO `access_level` (`access_level_id`, `short_description`, `long_description`) VALUES ('375', 'HR Access', 'Add, Edit, Delete User');



