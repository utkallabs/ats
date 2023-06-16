/* New column in calendar_event table*/
ALTER TABLE `calendar_event` ADD `interviewer_id` INT(11) NULL DEFAULT NULL AFTER `public`;

/* New column in cndidate table*/
ALTER TABLE `user` ADD `is_interviewer` INT(11) NULL DEFAULT NULL AFTER `best_time_to_call`;
