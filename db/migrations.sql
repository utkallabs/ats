/* New column in calendar_event table*/
ALTER TABLE `calendar_event` ADD `interviewer_id` INT(11) NULL DEFAULT NULL AFTER `public`;

/* New column in user table*/
ALTER TABLE `user` ADD `is_interviewer` INT(11) NULL DEFAULT NULL AFTER `can_see_eeo_info`;
