CREATE TABLE  `a8219634_tarea`.`Alumno` (
`id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
`control_number` VARCHAR( 8 ) NOT NULL ,
`first_name` VARCHAR( 50 ) NOT NULL ,
`last_name` VARCHAR( 50 ) NOT NULL ,
`birthday` DATE NOT NULL ,
`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
PRIMARY KEY (  `id` )
) ENGINE = MYISAM