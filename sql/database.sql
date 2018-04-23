DROP DATABASE IF EXISTS `cbvaDb`;
CREATE DATABASE cbvaDb;
use cbvaDb;
DROP TABLE IF exists `firefighter_audit`;
DROP TABLE IF exists `firefighter`;
DROP TABLE IF exists `rank`;
DROP TABLE IF EXISTS `person`;

DROP TRIGGER  IF EXISTS  `firefighter_trigger_audit`;
DROP TRIGGER IF EXISTS  `firefighter_trigger_fields`;

CREATE TABLE person (
  id int primary key auto_increment,
  name text,
  occupation text,
  phone_number varchar(50),
  address varchar(50),
  birth_date DATE

);
CREATE TABLE rank (
  id int primary key auto_increment,
  acronim varchar(20),
  description varchar(50),
  unique (acronim)

);

CREATE TABLE firefighter (
  id int key auto_increment,
  ba int not null ,
  swore_date date,
  person_id int ,
  update_date date,
  rank_id int,
  active boolean default 1,
  UNIQUE (ba),
  FOREIGN KEY (person_id) references person (id),
  FOREIGN KEY (rank_id) references rank (id)

);

CREATE TABLE firefighter_audit (
  firefighter_id int not null,
  message text,
  update_date timestamp,
  FOREIGN KEY (firefighter_id) references firefighter(id)
);
DELIMITER $$
CREATE TRIGGER firefighter_trigger_fields before UPDATE ON firefighter
  FOR EACH ROW
  BEGIN
          SET @fecha=curdate();
          SET NEW.update_date=@fecha;
  end;$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER firefighter_trigger_audit AFTER UPDATE ON firefighter
  FOR EACH ROW
  BEGIN
      if NEW.rank_id <> OLD.rank_id  THEN
        INSERT into firefighter_audit(firefighter_id,message,update_date)  VALUES (OLD.id,concat("Change: rank [old]=",OLD.rank_id,",[new rank]= ",NEW.rank_id),now());
      end if;
    if NEW.active <> OLD.active  THEN
      INSERT into firefighter_audit(firefighter_id,message,update_date) VALUES (OLD.id,concat("Change: status [old]=",OLD.active,",[new status]= ",NEW.active),now());
    end if;
  end;$$
DELIMITER ;

INSERT INTO person (name) VALUES ("kiquetal");
INSERT INTO rank (acronim) VALUES  ("BVC");
INSERT INTO firefighter (ba, swore_date, person_id,rank_id) values (405,curdate(),1,1);

select * from firefighter;

select * from firefighter_audit;
UPDATE firefighter
SET active = 0;
