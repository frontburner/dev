-- --------------------------------------------------------
-- ASRC
-- Copyright (c) 2007 Frontburner
-- Author Craig McKay <craig@frontburner.co.uk>
--
-- $Id$
--
-- Who  When         Why
-- CAM  09-Oct-2007  10170 : Recreated for Changes to valid booking hours.
-- CAM  23-Oct-2007  10182 : Added table event.
-- CAM  26-Oct-2007  10195 : Added table queue.
-- --------------------------------------------------------

UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='J' AND day=0 AND time_start = '09:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='J' AND day=1 AND time_start = '09:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='J' AND day=2 AND time_start = '09:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='J' AND day=3 AND time_start = '09:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='J' AND day=4 AND time_start = '09:00:00';


UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='OP' AND day=0 AND time_start = '14:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='OP' AND day=1 AND time_start = '14:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='OP' AND day=2 AND time_start = '14:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='OP' AND day=3 AND time_start = '14:00:00';
UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='OP' AND day=4 AND time_start = '14:00:00';

UPDATE member_limit SET time_end = '16:40:00' WHERE member_type='ST' AND time_start = '09:00:00';


DROP TABLE event;

CREATE TABLE event (
  id int(11) NOT NULL auto_increment,
  event_title varchar(50) default NULL,
  event_text mediumtext,
  event_date date default NULL,
  email_count int(4) DEFAULT 0,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Events';

DROP TABLE event;

CREATE TABLE queue (
  id int(11) NOT NULL auto_increment,
  item_type varchar(50) NOT NULL,
  item_id int(11) NOT NULL,
  memberid varchar(20) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Email Queue';


