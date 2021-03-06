-- --------------------------------------------------------
-- First Summerhouses
-- Copyright (c) 2006-2007 Frontburner
-- Author Craig McKay <craig@frontburner.co.uk>
--
-- $Id$
--
-- SET PASSWORD FOR 'firstsummer'@'localhost' = OLD_PASSWORD('john21');
-- --------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 19, 2007 at 12:54 AM
-- Server version: 5.0.27
-- PHP Version: 4.4.5
-- 
-- Database: 1stsummerhouses_com_-_site
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table categories
-- 

CREATE TABLE categories (
  id int(11) NOT NULL auto_increment,
  category varchar(50) default NULL,
  disporder tinyint(4) default NULL,
  show_ranges int(11) default NULL,
  short_text varchar(255) default NULL,
  long_text mediumtext,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Categories' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table categories
-- 

INSERT INTO categories VALUES (1, 'BBQ Huts', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO categories VALUES (2, 'Log Cabins', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO categories VALUES (4, 'Garages', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table dimensions
-- 

CREATE TABLE dimensions (
  id int(11) NOT NULL auto_increment,
  dim_type tinyint(4) NOT NULL default '1',
  dimension varchar(50) default NULL,
  disp_order smallint(6) default NULL,
  created datetime default NULL,
  updated datetime default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Dimensions' AUTO_INCREMENT=55 ;

-- 
-- Dumping data for table dimensions
-- 

INSERT INTO dimensions VALUES (1, 1, 'Roof projection - Front', 10, NULL, NULL);
INSERT INTO dimensions VALUES (2, 1, 'Roof projection - Back', 20, NULL, NULL);
INSERT INTO dimensions VALUES (3, 1, 'Roof projection - Side', 30, NULL, NULL);
INSERT INTO dimensions VALUES (4, 1, 'Walls', 40, NULL, NULL);
INSERT INTO dimensions VALUES (5, 1, 'Floor', 50, NULL, NULL);
INSERT INTO dimensions VALUES (6, 1, 'Roof', 60, NULL, NULL);
INSERT INTO dimensions VALUES (7, 1, 'Outer Doors', 70, NULL, NULL);
INSERT INTO dimensions VALUES (8, 1, 'Windows', 80, NULL, NULL);
INSERT INTO dimensions VALUES (9, 2, 'An octagonal grill', 100, NULL, NULL);
INSERT INTO dimensions VALUES (10, 2, 'A round table around the grill', 110, NULL, NULL);
INSERT INTO dimensions VALUES (11, 2, 'A grill set', 120, NULL, NULL);
INSERT INTO dimensions VALUES (12, 2, 'A brick pan', 130, NULL, NULL);
INSERT INTO dimensions VALUES (13, 2, 'A steel kettle', 140, NULL, NULL);
INSERT INTO dimensions VALUES (14, 2, 'Reindeer skins', 150, NULL, NULL);
INSERT INTO dimensions VALUES (15, 2, 'A coffee pot warmer', 160, NULL, NULL);
INSERT INTO dimensions VALUES (16, 2, 'A pillow', 170, NULL, NULL);
INSERT INTO dimensions VALUES (17, 2, 'Santa Claus', 180, NULL, NULL);
INSERT INTO dimensions VALUES (18, 2, 'A visitors book', 190, NULL, NULL);
INSERT INTO dimensions VALUES (19, 2, 'Wood cups', 200, NULL, NULL);
INSERT INTO dimensions VALUES (20, 2, 'A pan watch', 210, NULL, NULL);
INSERT INTO dimensions VALUES (21, 2, 'A Lapp knife', 220, NULL, NULL);
INSERT INTO dimensions VALUES (22, 2, 'A four-cornered hat and scarf', 230, NULL, NULL);
INSERT INTO dimensions VALUES (23, 2, 'Juniper bun dishes', 240, NULL, NULL);
INSERT INTO dimensions VALUES (24, 2, 'Juniper servers', 250, NULL, NULL);
INSERT INTO dimensions VALUES (25, 2, 'Bottle binoculars', 260, NULL, NULL);
INSERT INTO dimensions VALUES (26, 2, 'Striped wooden mugs', 270, NULL, NULL);
INSERT INTO dimensions VALUES (27, 2, 'A bottle opener', 280, NULL, NULL);
INSERT INTO dimensions VALUES (28, 2, 'Juniper underlay', 290, NULL, NULL);
INSERT INTO dimensions VALUES (29, 2, 'A leather coffee bag', 300, NULL, NULL);
INSERT INTO dimensions VALUES (30, 2, 'Reindeer horn exact', 310, NULL, NULL);
INSERT INTO dimensions VALUES (31, 2, 'Toggle tables', 320, NULL, NULL);
INSERT INTO dimensions VALUES (32, 2, 'A pot mitten and patches', 330, NULL, NULL);
INSERT INTO dimensions VALUES (33, 2, 'A thermometer', 340, NULL, NULL);
INSERT INTO dimensions VALUES (34, 2, 'An axe block', 350, NULL, NULL);
INSERT INTO dimensions VALUES (35, 2, 'A fillet knife', 360, NULL, NULL);
INSERT INTO dimensions VALUES (36, 2, 'Fork and knife sets', 370, NULL, NULL);
INSERT INTO dimensions VALUES (37, 2, 'A jingle bell', 380, NULL, NULL);
INSERT INTO dimensions VALUES (38, 2, 'A Lapp willow grouse', 390, NULL, NULL);
INSERT INTO dimensions VALUES (39, 2, 'A reindeer paw', 400, NULL, NULL);
INSERT INTO dimensions VALUES (40, 2, 'Flower boxes', 410, NULL, NULL);
INSERT INTO dimensions VALUES (41, 1, 'Sides', 90, NULL, NULL);
INSERT INTO dimensions VALUES (42, 1, 'Apex Height', 65, NULL, NULL);
INSERT INTO dimensions VALUES (43, 1, 'Terrace', 55, NULL, NULL);
INSERT INTO dimensions VALUES (44, 3, 'Terrace', 1000, NULL, NULL);
INSERT INTO dimensions VALUES (45, 1, 'Inner Doors', 75, NULL, NULL);
INSERT INTO dimensions VALUES (46, 1, 'Roof Height - Eves', 66, NULL, NULL);
INSERT INTO dimensions VALUES (47, 1, 'Roof Height - Ridge', 67, NULL, NULL);
INSERT INTO dimensions VALUES (48, 1, 'Living Space', 68, NULL, NULL);
INSERT INTO dimensions VALUES (49, 1, 'Second Floor', 55, NULL, NULL);
INSERT INTO dimensions VALUES (50, 1, 'Stairs', 95, NULL, NULL);
INSERT INTO dimensions VALUES (51, 1, 'Diameter', 35, NULL, NULL);
INSERT INTO dimensions VALUES (52, 1, 'Shelter', 96, NULL, NULL);
INSERT INTO dimensions VALUES (53, 2, 'Wood Burning Sauna heater', 100, NULL, NULL);
INSERT INTO dimensions VALUES (54, 2, 'Ladle and pale', 110, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table featuredproducts
-- 

CREATE TABLE featuredproducts (
  id int(11) NOT NULL auto_increment,
  product_id int(11) default NULL,
  product varchar(255) default NULL,
  description varchar(255) default NULL,
  price smallint(6) default NULL,
  feature varchar(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Featured Products' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table featuredproducts
-- 

INSERT INTO featuredproducts VALUES (1, 39, 'Tornio - 4x3m', 'The ultimate Garden room, Spa House or Office, with 2 double opening windows and double door.', 2488, 'Double-glazed windows and doors!');
INSERT INTO featuredproducts VALUES (2, 19, 'Chalet T24 -6.5x4m', 'A great guest or leisure suite.', 3648, 'Fantastic Price!');
INSERT INTO featuredproducts VALUES (3, 21, 'T Garage', 'Single Garage - 3.8m x 5.36m, with room to move around.', 2307, 'Our lowest priced garage.');
INSERT INTO featuredproducts VALUES (4, 52, '9.9m2 Sauna', 'Wood burning sauna with 8 seats in a stepped circle around the heat.', 6000, 'New to Collection!');

-- --------------------------------------------------------

-- 
-- Table structure for table member
-- 

CREATE TABLE member (
  memberid varchar(20) NOT NULL default '',
  first_name varchar(25) NOT NULL default '',
  last_name varchar(25) NOT NULL default '',
  email_address varchar(255) default NULL,
  password varchar(50) NOT NULL default '',
  admin int(1) default '0',
  member_type char(2) NOT NULL default 'N',
  verify_code varchar(100) NOT NULL default '',
  active int(1) NOT NULL default '0',
  dob date NOT NULL default '0000-00-00',
  signup_date datetime NOT NULL default '0000-00-00 00:00:00',
  last_login datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (memberid),
  KEY i_email_address (email_address)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='User Information';

-- 
-- Dumping data for table member
-- 

INSERT INTO member VALUES ('CRAIG', 'Craig', 'McKay', 'craig@southesk.com', '1eebdddd1f688244a5861695cb7c3eba', 1, 'A', '0', 1, '1975-09-13', '0000-00-00 00:00:00', '2007-02-15 16:00:04');
INSERT INTO member VALUES ('AUSTIN', 'Austin', 'Newberry', 'austinjnewberry@googlemail.com', '283bc91fe140624d92d9156c08f19093', 1, 'A', '', 1, '0000-00-00', '0000-00-00 00:00:00', '2007-06-18 00:35:45');

-- --------------------------------------------------------

-- 
-- Table structure for table member_type
-- 

CREATE TABLE member_type (
  member_type char(2) NOT NULL default '',
  type_name varchar(50) default NULL,
  comments varchar(255) default NULL,
  disp_order int(11) NOT NULL default '0',
  PRIMARY KEY  (member_type)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='User Types';

-- 
-- Dumping data for table member_type
-- 

INSERT INTO member_type VALUES ('U', 'User', 'Ability to View all details on the site', 1);
INSERT INTO member_type VALUES ('N', 'New User', 'No permissions yet - waiting verification', 3);
INSERT INTO member_type VALUES ('A', 'Administrator', 'Full Administrative capabilities', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table newsitems
-- 

CREATE TABLE newsitems (
  id int(11) NOT NULL auto_increment,
  newsitem varchar(50) default NULL,
  news_text mediumtext,
  news_date date default NULL,
  news_img varchar(50) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='News Items' AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table newsitems
-- 

INSERT INTO newsitems VALUES (12, 'THE ROYAL HIGHLAND SHOW 2007', 'We will be showing at The Royal Highland Show 2007 on Thursday 21st, Friday 22nd, Saturday 23rd & Sunday 24th June at The Royal Highland Centre Ingliston, EDINBURGH. Come along and see our quality Log Cabins firsthand.', '2007-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO newsitems VALUES (3, 'GARDENING SCOTLAND 2006', 'We will be showing at <a target="_blank" href="http://www.gardeningscotland.com/">Gardening Scotland</a> on Friday 2nd, Saturday 3rd &\r\nSunday 4th June at <a target="_blank" href="http://www.royalhighlandcentre.co.uk/">The Royal Highland Centre</a> Ingliston, Edinburgh.  See our quality Log Cabins firsthand.\r\n', '2006-05-29', 'gs06.gif', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO newsitems VALUES (13, 'SEE US AT THESE SHOWS', '21/6/07-24/6/07    The Royal Highland Show at The Royal Highland Centre Ingliston, EDINBURGH; --\r\n21/7/07-26/7/07   The Royal Welsh Show at The showground, Llanelwedd, near BUILTH WELLS; --\r\n27/7/07-29/7/07   The CLA Game Fair at Harewood House Nr Leeds, YORKSHIRE', '2007-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO newsitems VALUES (10, 'The Year of the Cabin', 'Over the next few weeks we will be introducing new products for 2007- Car Ports, Larger Garages, Saunas and Offices.\r\n\r\nWATCH THIS SPACE!', '2007-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO newsitems VALUES (11, 'New Products introduced', '1st Summerhouses can now offer a 8 person Sauna, Double Garage, 4 different styles of Car Port, 3 different Home office layouts and Therapy Rooms.', '2007-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table photos
-- 

CREATE TABLE photos (
  id int(11) NOT NULL auto_increment,
  product_id int(11) default NULL,
  imgfile varchar(40) NOT NULL default '',
  disporder smallint(6) default NULL,
  title varchar(50) default NULL,
  default_flag tinyint(4) NOT NULL default '0',
  comments varchar(100) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Photos' AUTO_INCREMENT=270 ;

-- 
-- Dumping data for table photos
-- 

INSERT INTO photos VALUES (1, 16, 'kota_k172_00020.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (2, 16, 'kota_k172_00040.jpg', 40, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (3, 16, 'kota_k172_00060.jpg', 60, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (5, 16, 'kota_k172_00100.jpg', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (6, 16, 'kota_k172_00120.jpg', 120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (93, 5, 'nida_na_03380.jpg', 3380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (94, 5, 'nida_na_03360.jpg', 3360, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (10, 16, 'kota_k172_00200.jpg', 200, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (11, 16, 'kota_k172_00220.jpg', 220, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (92, 5, 'nida_na_03340.jpg', 3340, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (90, 5, 'nida_na_03300.jpg', 3300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (16, 16, 'kota_k172_00320.jpg', 320, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (89, 46, 'nida_na_03280.jpg', 3280, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (19, 16, 'kota_k172_00380.jpg', 380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (87, 5, 'nida_na_03240.jpg', 3240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (88, 5, 'nida_na_03260.jpg', 3260, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (22, 17, 'kota_k288_00440.jpg', 440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (24, 17, 'kota_k288_00480.jpg', 480, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (25, 17, 'kota_k288_00500.jpg', 500, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (26, 17, 'kota_k288_00520.jpg', 520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (27, 17, 'kota_k288_00540.jpg', 540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (28, 17, 'kota_k288_00560.jpg', 560, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (29, 17, 'kota_k288_00580.jpg', 580, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (85, 5, 'nida_na_03200.jpg', 3200, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (86, 5, 'nida_na_03220.jpg', 3220, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (32, 14, 'kota_k069_00640.jpg', 640, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (33, 14, 'kota_k069_00660.jpg', 660, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (34, 14, 'kota_k069_00680.jpg', 680, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (35, 14, 'kota_k069_00700.jpg', 700, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (36, 14, 'kota_k069_00720.jpg', 720, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (37, 14, 'kota_k069_00740.jpg', 740, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (165, 37, 'tyla_op_04380.jpg', 4380, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (108, 7, 'nida_nt_03660.jpg', 3660, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (40, 14, 'kota_k069_00800.jpg', 800, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (201, 18, 'tbuild_t10_04720.jpg', 4720, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (42, 15, 'kota_k099_00840.jpg', 840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (43, 15, 'kota_k099_00860.jpg', 860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (106, 6, 'nida_ns_03600.jpg', 3600, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (45, 15, 'kota_k099_00900.jpg', 900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (46, 15, 'kota_k099_00920.jpg', 920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (47, 15, 'kota_k099_00940.jpg', 940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (105, 6, 'nida_ns_03620.jpg', 3620, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (104, 6, 'nida_ns_03580.jpg', 3580, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (50, 15, 'kota_k099_01000.jpg', 1000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (51, 15, 'kota_k099_01020.jpg', 1020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (52, 15, 'kota_k099_01040.jpg', 1040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (53, 15, 'kota_k099_01060.jpg', 1060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (54, 15, 'kota_k099_01080.jpg', 1080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (103, 4, 'nida_na_03560.jpg', 3560, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (56, 15, 'kota_k099_01120.jpg', 1120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (57, 15, 'kota_k099_01140.jpg', 1140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (58, 15, 'kota_k099_01160.jpg', 1160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (59, 15, 'kota_k099_01180.jpg', 1180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (61, 15, 'kota_k099_01220.jpg', 1220, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (62, 15, 'kota_k099_01240.jpg', 1240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (101, 5, 'nida_na_03520.jpg', 3520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (102, 5, 'nida_na_03540.jpg', 3540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (65, 15, 'kota_k099_01300.jpg', 1300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (66, 15, 'kota_k099_01320.jpg', 1320, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (67, 15, 'kota_k099_01340.jpg', 1340, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (68, 15, 'kota_k099_01360.jpg', 1360, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (69, 15, 'kota_k099_01380.jpg', 1380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (70, 15, 'kota_k099_01400.jpg', 1400, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (71, 15, 'kota_k099_01420.jpg', 1420, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (72, 15, 'kota_k099_01440.jpg', 1440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (74, 15, 'kota_k099_01480.jpg', 1480, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (75, 15, 'kota_k099_01500.jpg', 1500, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (76, 15, 'kota_k099_01520.jpg', 1520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (77, 15, 'kota_k099_01540.jpg', 1540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (78, 15, 'kota_k099_01560.jpg', 1560, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (79, 15, 'kota_k099_01580.jpg', 1580, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (98, 5, 'nida_na_03460.jpg', 3460, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (97, 5, 'nida_na_03440.jpg', 3440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (110, 10, 'nida_ntas_03700.jpg', 3700, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (111, 5, 'nida_ntas_03720.jpg', 3720, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (161, 33, 'tyla_ct_04340.jpg', 4340, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (258, 32, 'tyla_cg_05820.jpg', 5820, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (159, 21, 'tbuild_tg_04620.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (115, 10, 'nida_ntas_03800.jpg', 3800, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (116, 9, 'nida_nv_03820.jpg', 3820, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (117, 9, 'nida_nv_03840.jpg', 3840, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (118, 9, 'nida_nv_03860.jpg', 3860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (119, 46, 'nida_nida_02840.jpg', 2840, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (120, 9, 'nida_nida_02860.jpg', 2860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (121, 4, 'nida_nida_02880.jpg', 2880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (122, 5, 'nida_nida_02900.jpg', 2900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (123, 4, 'nida_nida_02940.jpg', 2940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (124, 6, 'nida_nida_02960.jpg', 2960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (125, 6, 'nida_nida_02980.jpg', 2980, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (126, 7, 'nida_nida_03000.jpg', 3000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (127, 6, 'nida_nida_03020.jpg', 3020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (128, 4, 'nida_nida_03040.jpg', 3040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (129, 9, 'nida_nida_03060.jpg', 3060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (130, 7, 'nida_nida_03080.jpg', 3080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (131, 7, 'nida_nida_03100.jpg', 3100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (132, 4, 'nida_nida_02920.jpg', 2920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (133, 4, 'nida_nida_03120.jpg', 3120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (134, 4, 'nida_nida_03140.jpg', 3140, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (135, 6, 'nida_nida_03160.jpg', 3160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (136, 4, 'nida_nida_03180.jpg', 3180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (137, 24, 'tbuild_t12_03880.jpg', 3880, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (138, 27, 'tbuild_t17t_03900.jpg', 3900, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (139, 41, 'tbuild_t22_03920.jpg', 3920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (140, 41, 'tbuild_t22_03940.jpg', 3940, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (141, 34, 'tyla_kf_03960.jpg', 3960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (142, 34, 'tyla_kf_03980.jpg', 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (143, 34, 'tyla_kf_04000.jpg', 4000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (144, 34, 'tyla_kf_04020.jpg', 4020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (187, 19, 'tbuild_t24_04820.jpg', 4820, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (146, 35, 'tyla_la_04060.jpg', 4060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (147, 35, 'tyla_la_04080.jpg', 4080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (148, 35, 'tyla_la_04100.jpg', 4100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (149, 35, 'tyla_la_04120.jpg', 4120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (150, 35, 'tyla_la_04140.jpg', 4140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (151, 35, 'tyla_la_04160.jpg', 4160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (152, 35, 'tyla_la_04180.jpg', 4180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (153, 35, 'tyla_la_04200.jpg', 4200, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (154, 35, 'tyla_la_04220.jpg', 4220, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (155, 35, 'tyla_la_04240.jpg', 4240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (156, 40, 'tyla_uf_04260.jpg', 4260, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (157, 40, 'tyla_uf_04280.jpg', 4280, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (158, 40, 'tyla_uf_04300.jpg', 4300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (164, 36, 'tyla_oc_04360.jpg', 4360, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (166, 43, 'tyla_op_04400.jpg', 4400, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (167, 44, 'tyla_op_04420.jpg', 4420, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (168, 38, 'tyla_pc_04440.jpg', 5082, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (182, 46, 'nida_nta_04760.jpg', 4760, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (170, 18, 'tbuild_t10_04480.jpg', 4480, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (171, 26, 'tbuild_t15_04540.jpg', 4540, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (172, 28, 'tbuild_t17_04720.jpg', 4720, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (173, 29, 'tbuild_t20_04560.jpg', 4560, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (174, 30, 'tbuild_t21_04580.jpg', 4580, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (175, 49, 'tbuild_t23_04600.jpg', 4600, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (192, 39, 'gc_tornio_04920.jpg', 4920, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (177, 20, 'tbuild_pv_04640.jpg', 4640, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (178, 22, 'tbuild_ts_04680.jpg', 4680, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (179, 23, 'tbuild_tt_04700.jpg', 4700, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (180, 25, 'tbuild_t14_04520.jpg', 4520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (181, 45, 'nida_np_04740.jpg', 4740, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (183, 47, 'nida_ntw_04780.jpg', 4780, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (184, 48, 'nida_nty_04800.jpg', 4800, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (185, 40, 'tyla_uf_05100.jpg', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (186, 34, 'tyla_kf_05000.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (188, 19, 'tbuild_t24_04840.jpg', 4840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (189, 19, 'tbuild_t24_04860.jpg', 4860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (190, 19, 'tbuild_t24_04880.jpg', 4880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (191, 19, 'tbuild_t24_04900.jpg', 4900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (193, 39, 'gc_tornio_04940.jpg', 4940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (194, 39, 'gc_tornio_04960.jpg', 4960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (195, 39, 'gc_tornio_04980.jpg', 4980, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (196, 39, 'gc_tornio_05000.jpg', 5000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (197, 39, 'gc_tornio_05020.jpg', 5020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (198, 39, 'gc_tornio_05040.jpg', 5040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (199, 38, 'gc_borkum_05060.jpg', 5060, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (200, 38, 'gc_borkum_05080.jpg', 5080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (202, 18, 'tbuild_t10_04740.jpg', 4740, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (203, 19, 'tbuild_t24_04760.jpg', 4760, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (204, 19, 'tbuild_t24_04780.jpg', 4780, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (205, 19, 'tbuild_t24_04800.jpg', 4800, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (228, 21, 'tbuild_tg_05260.jpg', 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (227, 21, 'tbuild_tg_05240.jpg', 25, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (226, 50, 'tyla_sp_05220.jpg', 5220, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (209, 24, 'tbuild_t12_04880.jpg', 4880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (210, 24, 'tbuild_t12_04900.jpg', 4900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (211, 24, 'tbuild_t12_04920.jpg', 4920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (212, 25, 'tbuild_t14_04940.jpg', 4940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (213, 27, 'tbuild_t17t_04960.jpg', 4960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (214, 27, 'tbuild_t17t_04980.jpg', 4980, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (215, 28, 'tbuild_t17_05000.jpg', 5000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (216, 29, 'tbuild_t20_05020.jpg', 5020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (217, 29, 'tbuild_t20_05040.jpg', 5040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (218, 31, 'tbuild_t23_05060.jpg', 5060, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (219, 31, 'tbuild_t23_05080.jpg', 5080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (220, 31, 'tbuild_t23_05100.jpg', 5100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (221, 49, 'tbuild_t23_05120.jpg', 5120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (222, 49, 'tbuild_t23_05140.jpg', 5140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (223, 19, 'tbuild_t24_05160.jpg', 5160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (224, 19, 'tbuild_t24_05180.jpg', 5180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (225, 19, 'tbuild_t24_05200.jpg', 5200, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (229, 21, 'tbuild_tg_05280.jpg', 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (230, 21, 'tbuild_tg_05300.jpg', 16, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (238, 51, 'custom_cc_05460.jpg', 5460, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (232, 22, 'tbuild_ts_05340.jpg', 5340, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (233, 29, 'tbuild_ts_05360.jpg', 5360, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (234, 29, 'tbuild_ts_05380.jpg', 5380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (235, 29, 'tbuild_ts_05400.jpg', 5400, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (236, 29, 'tbuild_ts_05420.jpg', 5420, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (237, 29, 'tbuild_ts_05440.jpg', 5440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (239, 51, 'custom_cc_05480.jpg', 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (240, 51, 'custom_cc_05500.jpg', 5500, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (241, 51, 'custom_cc_05520.jpg', 5520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (242, 51, 'custom_cc_05540.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (243, 52, 'sauna_s99_05560.jpg', 5560, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (244, 52, 'sauna_s99_05580.jpg', 5580, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (245, 52, 'sauna_s99_05600.jpg', 5600, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (246, 52, 'sauna_s99_05620.jpg', 5620, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (247, 52, 'sauna_s99_05640.jpg', 5640, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (248, 52, 'sauna_s99_05660.jpg', 5660, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (249, 53, 'tbuild_dg_05680.jpg', 5680, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (250, 54, 'carport_f1_05700.jpg', 5700, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (251, 54, 'carport_f1_05720.jpg', 5720, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (255, 56, 'carport_sb1_05760.jpg', 5760, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (254, 55, 'carport_f2_05740.jpg', 5740, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (256, 56, 'carport_sb1_05780.jpg', 5780, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (257, 57, 'carport_sb2_05800.jpg', 5800, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (259, 32, 'tyla_cg_05840.jpg', 5840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (260, 32, 'tyla_cg_05860.jpg', 5860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (261, 32, 'tyla_cg_05880.jpg', 5880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (262, 32, 'tyla_cg_05900.jpg', 5900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (263, 33, 'tyla_cg_05840.jpg', 5840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (264, 33, 'tyla_cg_05860.jpg', 5860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (265, 33, 'tyla_cg_05880.jpg', 5880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (266, 33, 'tyla_cg_05900.jpg', 5900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (267, 58, 'wfm_of_05920.jpg', 5920, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (268, 59, 'wfm_th_05940.jpg', 5940, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO photos VALUES (269, 60, 'tyla_sp_05960.jpg', 5960, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table plans
-- 

CREATE TABLE plans (
  id int(11) NOT NULL auto_increment,
  product_id int(11) default NULL,
  imgfile varchar(40) NOT NULL default '',
  disporder smallint(6) default NULL,
  title varchar(50) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Plan Images' AUTO_INCREMENT=66 ;

-- 
-- Dumping data for table plans
-- 

INSERT INTO plans VALUES (1, 32, 'tyla_cg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (2, 32, 'tyla_cg_01.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (3, 33, 'tyla_ct_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (4, 33, 'tyla_ct_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (5, 34, 'tyla_kf_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (6, 34, 'tyla_kf_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (7, 34, 'tyla_kf_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (8, 35, 'tyla_la_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (9, 35, 'tyla_la_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (10, 40, 'tyla_uf_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (11, 40, 'tyla_uf_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (12, 40, 'tyla_uf_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (13, 40, 'tyla_uf_04.jpg', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (14, 5, 'nida_na_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (15, 4, 'nida_nida_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (16, 45, 'nida_np_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (17, 6, 'nida_ns_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (18, 7, 'nida_nt_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (19, 46, 'nida_nta_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (20, 47, 'nida_ntw_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (21, 47, 'nida_ntw_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (22, 48, 'nida_nty_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (23, 9, 'nida_nv_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (24, 20, 'tbuild_pv_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (25, 20, 'tbuild_pv_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (26, 18, 'tbuild_t10_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (27, 24, 'tbuild_t12_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (28, 24, 'tbuild_t12_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (29, 25, 'tbuild_t14_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (30, 25, 'tbuild_t14_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (31, 26, 'tbuild_t15_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (32, 26, 'tbuild_t15_01.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (33, 28, 'tbuild_t17_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (34, 28, 'tbuild_t17_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (35, 27, 'tbuild_t17t_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (36, 27, 'tbuild_t17t_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (37, 29, 'tbuild_t20_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (38, 29, 'tbuild_t20_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (39, 30, 'tbuild_t21_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (40, 30, 'tbuild_t21_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (41, 31, 'tbuild_t23_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (42, 31, 'tbuild_t23_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (43, 19, 'tbuild_t24_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (44, 19, 'tbuild_t24_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (45, 21, 'tbuild_tg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (46, 21, 'tbuild_tg_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (47, 22, 'tbuild_ts_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (48, 23, 'tbuild_tt_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (49, 36, 'tyla_oc_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (50, 36, 'tyla_oc_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (51, 36, 'tyla_oc_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (52, 37, 'tyla_op_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (53, 38, 'tyla_pc_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (54, 38, 'tyla_pc_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (55, 44, 'tyla_rg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (56, 39, 'tyla_sw_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (57, 39, 'tyla_sw_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (58, 43, 'tyla_vn_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (59, 50, 'tyla_oc_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (60, 50, 'tyla_oc_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (61, 50, 'tyla_oc_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (62, 54, 'carport_f1_010.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (63, 54, 'carport_f1_020.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (64, 55, 'carport_f2_010.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO plans VALUES (65, 55, 'carport_f2_020.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table proddimensions
-- 

CREATE TABLE proddimensions (
  id int(11) NOT NULL auto_increment,
  product_id int(11) NOT NULL default '0',
  dimension_id int(11) NOT NULL default '0',
  textvalue varchar(255) default NULL,
  numvalue double default NULL,
  created datetime default NULL,
  updated datetime default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY product_id (product_id,dimension_id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Dimensions' AUTO_INCREMENT=445 ;

-- 
-- Dumping data for table proddimensions
-- 

INSERT INTO proddimensions VALUES (1, 14, 41, 'Octagonal - Seating for 8 persons', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (2, 14, 3, '0.37 m', 0.37, NULL, NULL);
INSERT INTO proddimensions VALUES (3, 14, 4, '40 mm double tongue and groove logs from Red Pine.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (4, 14, 5, 'Decking that can be removed for cleaning.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (5, 14, 6, '20 mm tongue and groove roof boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (6, 14, 7, '1 door', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (7, 14, 8, '4 windows (1 window opens), double glazed', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (8, 15, 41, 'Octagonal - Seating for 10 persons', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (9, 15, 3, '0.37 m', 0.37, NULL, NULL);
INSERT INTO proddimensions VALUES (10, 15, 4, '40 mm double tongue and groove logs from Red Pine.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (11, 15, 5, 'Decking that can be removed for cleaning. 3.54m x 3.54m.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (12, 15, 6, '20 mm tongue and groove roof boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (13, 15, 42, '3.75 m', 3.75, NULL, NULL);
INSERT INTO proddimensions VALUES (14, 15, 7, '1 door at 146/61', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (15, 15, 8, '4 windows 62/30 (1 window opens), double glazed', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (32, 14, 9, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (33, 14, 10, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (34, 14, 11, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (35, 14, 12, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (36, 14, 13, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (37, 14, 14, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (38, 14, 15, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (39, 14, 16, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (40, 14, 17, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (41, 14, 18, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (42, 14, 19, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (43, 14, 20, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (44, 14, 21, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (45, 14, 22, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (46, 14, 23, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (47, 14, 24, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (48, 14, 25, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (49, 14, 26, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (50, 14, 27, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (51, 14, 28, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (52, 14, 29, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (53, 14, 30, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (54, 14, 31, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (55, 14, 32, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (56, 14, 33, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (57, 14, 34, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (58, 14, 35, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (59, 14, 36, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (60, 14, 37, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (61, 14, 38, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (62, 14, 39, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (63, 14, 40, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (64, 15, 9, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (65, 15, 10, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (66, 15, 11, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (67, 15, 12, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (68, 15, 13, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (69, 15, 14, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (70, 15, 15, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (71, 15, 16, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (72, 15, 17, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (73, 15, 18, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (74, 15, 19, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (75, 15, 20, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (76, 15, 21, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (77, 15, 22, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (78, 15, 23, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (79, 15, 24, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (80, 15, 25, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (81, 15, 26, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (82, 15, 27, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (83, 15, 28, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (84, 15, 29, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (85, 15, 30, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (86, 15, 31, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (87, 15, 32, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (88, 15, 33, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (89, 15, 34, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (90, 15, 35, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (91, 15, 36, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (92, 15, 37, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (93, 15, 38, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (94, 15, 39, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (95, 15, 40, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (409, 17, 40, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (408, 17, 31, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (407, 17, 28, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (406, 17, 14, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (405, 17, 13, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (404, 17, 12, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (403, 17, 11, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (402, 17, 10, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (401, 17, 9, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (400, 16, 40, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (399, 16, 31, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (398, 16, 28, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (397, 16, 14, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (396, 16, 13, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (395, 16, 12, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (394, 16, 11, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (393, 16, 10, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (392, 16, 9, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (160, 38, 1, '1.5 m', 1.5, NULL, NULL);
INSERT INTO proddimensions VALUES (161, 38, 2, '0.2 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (162, 38, 3, '0.3 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (163, 38, 4, '45 mm double tongue and groove logs from Northern Pine', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (164, 38, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (165, 38, 43, '1.5 x 3.0 m', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (166, 38, 6, '20 mm tongue and groove roof boards on the roof beams', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (167, 38, 7, '1 half-glazed door 86/185', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (168, 38, 8, '1 80/86 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (169, 39, 1, '1.0 m', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (170, 39, 2, '0.2 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (171, 39, 3, '0.3 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (172, 39, 4, '45 mm double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (173, 39, 5, '20 mm tongue and groove floor boards on an impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (174, 39, 6, '20 mm tongue and groove roof boards supported on the 5 roof beams', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (175, 39, 7, 'Double-glazed doors', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (176, 39, 8, 'Double-glazed tilt''n''turn units', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (177, 39, 44, '1m Terrace and hand rail extending full width of Cabin', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (178, 32, 4, 'Sturdy 60 mm double tongue and groove from northern fir. 8 tightening bars.', 60, NULL, NULL);
INSERT INTO proddimensions VALUES (179, 32, 5, '28 mm internally - tongue and groove boards', 28, NULL, NULL);
INSERT INTO proddimensions VALUES (180, 32, 6, '20 mm tongue and groove boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (181, 32, 46, '2.21 m', 2.21, NULL, NULL);
INSERT INTO proddimensions VALUES (182, 32, 47, '3.82 m', 3.82, NULL, NULL);
INSERT INTO proddimensions VALUES (183, 32, 48, '61.1 m2 internally', 61.1, NULL, NULL);
INSERT INTO proddimensions VALUES (184, 32, 7, '1 unit. 90/200', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (185, 32, 45, '5 units 89/200', 5, NULL, NULL);
INSERT INTO proddimensions VALUES (186, 32, 8, '5 units 120/94, 1 unit 80/94', 6, NULL, NULL);
INSERT INTO proddimensions VALUES (187, 33, 4, 'Sturdy 60 mm double tongue and groove from northern fir. 8 tightening bars.', 60, NULL, NULL);
INSERT INTO proddimensions VALUES (188, 33, 5, '28 mm internally, 45mm externally - tongue and groove boards', 28, NULL, NULL);
INSERT INTO proddimensions VALUES (189, 33, 6, '20 mm tongue and groove boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (190, 33, 46, '2.21 m', 2.21, NULL, NULL);
INSERT INTO proddimensions VALUES (191, 33, 47, '3.82 m', 3.82, NULL, NULL);
INSERT INTO proddimensions VALUES (192, 33, 48, '61.1 m2 internally, 29.3 m2 terrace', 61.1, NULL, NULL);
INSERT INTO proddimensions VALUES (193, 33, 7, '1 unit. 90/200, 2 units 140/200', 3, NULL, NULL);
INSERT INTO proddimensions VALUES (194, 33, 45, '5 units 89/200', 5, NULL, NULL);
INSERT INTO proddimensions VALUES (195, 33, 8, '3 units 120/94, 1 unit 80/94', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (196, 34, 1, '0.60 m', 0.6, NULL, NULL);
INSERT INTO proddimensions VALUES (197, 34, 2, '0.50 m', 0.5, NULL, NULL);
INSERT INTO proddimensions VALUES (198, 34, 3, '0.50 m', 0.5, NULL, NULL);
INSERT INTO proddimensions VALUES (199, 34, 4, 'From 45mm walls with double tongue and groove, 4 thread clamping bars', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (200, 34, 5, 'From 20 mm tongue and groove on impregnated basic frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (201, 34, 49, 'From 28 mm tongue and groove', 28, NULL, NULL);
INSERT INTO proddimensions VALUES (202, 34, 6, 'From 20 mm tongue and groove on glued purlins', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (203, 34, 7, '1 door 90/196, 2 doors 70/196', 3, NULL, NULL);
INSERT INTO proddimensions VALUES (204, 34, 8, '5 double-glazed windows', 5, NULL, NULL);
INSERT INTO proddimensions VALUES (205, 35, 1, '0.50 m', 0.5, NULL, NULL);
INSERT INTO proddimensions VALUES (206, 35, 2, '0.50 m', 0.5, NULL, NULL);
INSERT INTO proddimensions VALUES (207, 35, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (208, 35, 4, 'From 45 mm (glued 60 and 95 mm) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (209, 35, 5, 'From 20 mm of plane halls on impregnated camp woods', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (210, 35, 49, 'From 28 mm of combination halls on glued bars', 28, NULL, NULL);
INSERT INTO proddimensions VALUES (211, 35, 46, '2.34 m', 2.34, NULL, NULL);
INSERT INTO proddimensions VALUES (212, 35, 47, '3.84 m', 3.84, NULL, NULL);
INSERT INTO proddimensions VALUES (213, 35, 7, '1 unit 90/196 with seal, 1 unit 70/196 with seal', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (214, 35, 8, '1 double-glazed 170/94 with seal and rungs, 4 double-glazed 80/94 with seal and rungs', 5, NULL, NULL);
INSERT INTO proddimensions VALUES (215, 35, 50, 'Space saving stairs with railing.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (216, 40, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (217, 40, 2, '0.60 m', 0.6, NULL, NULL);
INSERT INTO proddimensions VALUES (218, 40, 3, '0.60 m', 0.6, NULL, NULL);
INSERT INTO proddimensions VALUES (219, 40, 4, '60 mm walls with double tongue and groove', 60, NULL, NULL);
INSERT INTO proddimensions VALUES (220, 40, 5, '20 mm - tongue and groove', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (221, 40, 6, '20 mm - tongue and groove', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (222, 40, 48, '57 m2', 57, NULL, NULL);
INSERT INTO proddimensions VALUES (223, 40, 46, '2.86 m', 2.86, NULL, NULL);
INSERT INTO proddimensions VALUES (224, 40, 47, '4.61 m', 4.61, NULL, NULL);
INSERT INTO proddimensions VALUES (225, 40, 7, '1 door 100/200 half glazed, 2 doors 70/196, 1 Terrace door 140/200', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (226, 40, 8, '1 window 150/94, 4 windows 100/94, 1 window 70/94', 6, NULL, NULL);
INSERT INTO proddimensions VALUES (227, 40, 50, 'Spruce stairs with railing.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (228, 37, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (229, 37, 51, '3.40 m', 3.4, NULL, NULL);
INSERT INTO proddimensions VALUES (230, 37, 5, '8 pre-mounted, base sections with 40mm planks.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (231, 37, 6, '8 roof sections made from 20 mm tongue and groove boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (232, 37, 41, '8 posts, 7 pre-mounted balustrade sections and 8 pre-mounted roof pelmet sections.', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (233, 44, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (234, 44, 51, '3.40 m', 3.4, NULL, NULL);
INSERT INTO proddimensions VALUES (235, 44, 5, '8 pre-mounted, base sections with 40mm planks.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (236, 44, 6, '8 roof sections made from 20 mm tongue and groove boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (237, 44, 41, '8 posts, 7 pre-mounted balustrade sections and 8 pre-mounted roof pelmet sections.', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (238, 43, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (239, 43, 51, '3.40 m', 3.4, NULL, NULL);
INSERT INTO proddimensions VALUES (240, 43, 5, '8 pre-mounted, base sections with 40mm planks.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (241, 43, 6, '8 roof sections made from 20 mm tongue and groove boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (242, 43, 41, '8 posts, 7 pre-mounted balustrade sections and 8 pre-mounted roof pelmet sections.', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (243, 36, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (244, 36, 4, '45 mm double tongue and groove block planks.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (245, 36, 5, '20 mm tongue and groove with impregnated basic frame.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (246, 36, 6, '20 mm roof sections.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (247, 36, 7, '1 glued cartridge door with seal.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (248, 36, 8, '2 Double-Glazed tilt''n''turn windows with seal and rungs.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (249, 4, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (250, 4, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (251, 4, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (252, 4, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (253, 4, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (254, 4, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (255, 4, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (256, 4, 8, '1 double-glazed 80/94 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (257, 5, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (258, 5, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (259, 5, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (260, 5, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (261, 5, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (262, 5, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (263, 5, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (264, 5, 8, '1 double-glazed 800/940 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (265, 45, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (266, 45, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (267, 45, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (268, 45, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (269, 45, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (270, 45, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (271, 45, 7, '1 glued cartridge door 140/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (272, 45, 8, '2 full length double-glazed 65/198 units', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (273, 6, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (274, 6, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (275, 6, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (276, 6, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (277, 6, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (278, 6, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (279, 6, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (280, 6, 8, '1 double-glazed 800/940 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (281, 6, 52, 'Height of shelter supports (H1=1.64 m)', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (282, 7, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (283, 7, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (284, 7, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (285, 7, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (286, 7, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (287, 7, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (288, 7, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (289, 7, 8, '1 double-glazed 800/940 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (290, 9, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (291, 9, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (292, 9, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (293, 9, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (294, 9, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (295, 9, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (296, 9, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (297, 9, 8, '1 double-glazed 800/940 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (298, 46, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (299, 46, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (300, 46, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (301, 46, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (302, 46, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (303, 46, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (304, 46, 7, '1 glued cartridge doors 90/196 with seal, 1 glued cartridge doors 90/193 with seal', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (305, 46, 8, '1 double-glazed 80/94 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (306, 10, 1, '0.70 m', 0.7, NULL, NULL);
INSERT INTO proddimensions VALUES (307, 10, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (308, 10, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (309, 10, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (310, 10, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (311, 10, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (312, 10, 7, '1 glued cartridge doors 90/196 with seal, 1 glued cartridge doors 90/193 with seal', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (313, 10, 8, '2 double-glazed 80/94 tilt''n''turn units', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (314, 47, 1, '1.10 m', 1.1, NULL, NULL);
INSERT INTO proddimensions VALUES (315, 47, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (316, 47, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (317, 47, 4, 'Both Log Cabin and Pavilion are made from 45 mm double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (318, 47, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (319, 47, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (320, 47, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (321, 47, 8, 'Log Cabin - double-glazed 80/94 tilt''n''turn unit, Pavilion - double-glazed 70/94 tilt''n''turn units', 3, NULL, NULL);
INSERT INTO proddimensions VALUES (322, 48, 1, '1.10 m', 1.1, NULL, NULL);
INSERT INTO proddimensions VALUES (323, 48, 2, '0.20 m', 0.2, NULL, NULL);
INSERT INTO proddimensions VALUES (324, 48, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (325, 48, 4, '45 mm or (60 mm glued) double tongue and groove logs', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (326, 48, 5, '20 mm tongue and groove floor boards on the impregnated base frame', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (327, 48, 6, '20 mm tongue and groove roof boards', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (328, 48, 7, '1 glued cartridge door 90/196 with seal', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (329, 48, 8, '1 double-glazed 120/94 tilt''n''turn unit', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (330, 18, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (331, 18, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (332, 18, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 100 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (333, 18, 7, '1 unit 135/185, two-sided. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (334, 18, 8, '2 tilt''n''turn units 80/88.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (335, 24, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (336, 24, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (337, 24, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (338, 24, 7, '1 unit 90/185. 1 unit 85/160. The doors could be fully glazed, glass on top half or without glass.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (339, 24, 8, '2 tilt''n''turn units 80/88.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (340, 25, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (341, 25, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (342, 25, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (343, 25, 7, '1 unit 135/185, two-sided. The doors could be fully glazed, glass on top half or without glass.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (344, 26, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (345, 26, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (346, 26, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (347, 26, 7, '1 unit 90/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (348, 26, 8, '2 tilt''n''turn units 80/88.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (349, 28, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (350, 28, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (351, 28, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 120 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (352, 28, 7, '1 unit 90/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (353, 28, 8, '1 tilt''n''turn unit 80/88.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (354, 27, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (355, 27, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (356, 27, 6, '20 mm tongue and groove roof boards on the roof beams. Overhanging canapy - 120 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (357, 27, 7, '1 unit 90/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (358, 27, 8, '1 tilt''n''turn unit 80/88.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (359, 29, 4, 'Sturdy 30 mm double tongue and groove wall boarding from northern fir.', 30, NULL, NULL);
INSERT INTO proddimensions VALUES (360, 29, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (361, 29, 6, '20 mm tongue and groove roof boards on the roof beams. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (362, 29, 7, '1 unit 135/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (363, 29, 8, '1 unit 50/62.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (364, 30, 4, 'Sturdy 30 mm double tongue and groove wall boarding from northern fir.', 30, NULL, NULL);
INSERT INTO proddimensions VALUES (365, 30, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (366, 30, 6, '20 mm tongue and groove roof boards on the roof beams.Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (367, 30, 7, '1 unit 135/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (368, 30, 8, '1 unit 50/62.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (369, 31, 4, 'Sturdy 30 mm double tongue and groove wall boarding from northern fir.', 30, NULL, NULL);
INSERT INTO proddimensions VALUES (370, 31, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (371, 31, 6, '20 mm tongue and groove roof boards on the roof beams.Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (372, 31, 7, '1 unit 135/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (373, 19, 4, 'Sturdy 45 mm double tongue and groove wall boarding from northern fir.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (374, 19, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (375, 19, 6, '20 mm tongue and groove roof boards on the roof beams.Overhanging canapy - 100 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (376, 19, 7, '1 unit 90/195, 1 unit 63/195. The doors could be fully glazed, glass on top half or without glass.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (377, 19, 8, '2 tilt''n''turn units 120/91, 2 units 70/65, 1 unit 70/88.', 5, NULL, NULL);
INSERT INTO proddimensions VALUES (380, 23, 43, '20 mm floor boards with inter-board spaces on the impregnated fundament frame. 4 units of fences with railings. It is possible to join to log cabins T12, T14, T15, T17, T23.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (381, 22, 52, 'Beam, attached to log cabin wall, other beam is on two wooden pillars; roof boards, storm protection beams. Roof coating is not included in the price. It is possible to join to log cabins T10, T12, T14, T15, T17, T20, T23.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (382, 49, 4, 'Sturdy 30 mm double tongue and groove wall boarding from northern fir.', 30, NULL, NULL);
INSERT INTO proddimensions VALUES (383, 49, 5, '20 mm tongue and groove floor boards on the impregnated fundament frame. Floor fringes.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (384, 49, 6, '20 mm tongue and groove roof boards on the roof beams.Overhanging canapy - 40 cm. Roof coating is not included in the price.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (385, 49, 7, '1 unit 135/185. The doors could be fully glazed, glass on top half or without glass.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (386, 50, 3, '0.30 m', 0.3, NULL, NULL);
INSERT INTO proddimensions VALUES (387, 50, 4, '45 mm double tongue and groove block planks.', 45, NULL, NULL);
INSERT INTO proddimensions VALUES (388, 50, 5, '20 mm tongue and groove with impregnated basic frame.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (389, 50, 6, '20 mm roof sections.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (390, 50, 7, '1 glued cartridge door with seal.', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (391, 50, 8, '2 Double-Glazed tilt''n''turn windows with seal and rungs.', 2, NULL, NULL);
INSERT INTO proddimensions VALUES (410, 52, 41, 'Octagonal - Seating for 7 persons (comfortably)', 8, NULL, NULL);
INSERT INTO proddimensions VALUES (411, 52, 3, '0.37 m', 0.37, NULL, NULL);
INSERT INTO proddimensions VALUES (412, 52, 4, '40 mm double tongue and groove logs from Red Pine.', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (413, 52, 5, 'Decking that can be removed for cleaning. 3.54m x 3.54m.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (414, 52, 6, '20 mm tongue and groove roof boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (415, 52, 42, '3.75 m', 3.75, NULL, NULL);
INSERT INTO proddimensions VALUES (416, 52, 7, '1 door at 146/61', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (417, 52, 8, '2 opening windows, double glazed with privacy blinds', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (418, 52, 33, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (419, 52, 53, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (420, 52, 54, '', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (423, 16, 41, 'Octagonal - Seating for 30 persons', 30, NULL, NULL);
INSERT INTO proddimensions VALUES (424, 16, 3, '0.37 m', 0.37, NULL, NULL);
INSERT INTO proddimensions VALUES (425, 16, 4, '40 mm double tongue and groove logs from Red Pine. 4.65m x 4.65m', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (426, 16, 5, 'Decking that can be removed for cleaning.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (427, 16, 6, '20 mm tongue and groove roof boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (428, 16, 42, '4.08 m', 4.08, NULL, NULL);
INSERT INTO proddimensions VALUES (429, 16, 7, '1 door', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (430, 16, 8, '4 windows (1 window opens), double glazed', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (431, 17, 41, '10 Sides - Seating for 40 persons', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (432, 17, 3, '0.37 m', 0.37, NULL, NULL);
INSERT INTO proddimensions VALUES (433, 17, 4, '40 mm double tongue and groove logs from Red Pine. 6.00m x 6.05m', 40, NULL, NULL);
INSERT INTO proddimensions VALUES (434, 17, 5, 'Decking that can be removed for cleaning.', 0, NULL, NULL);
INSERT INTO proddimensions VALUES (435, 17, 6, '20 mm tongue and groove roof boards.', 20, NULL, NULL);
INSERT INTO proddimensions VALUES (436, 17, 42, '4.60 m', 4.6, NULL, NULL);
INSERT INTO proddimensions VALUES (437, 17, 7, '1 door', 1, NULL, NULL);
INSERT INTO proddimensions VALUES (438, 17, 8, '4 windows (1 window opens), double glazed', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (441, 60, 4, '4 posts, 8 lattice panels, 3 drop-folding panels', 4, NULL, NULL);
INSERT INTO proddimensions VALUES (443, 60, 6, '4 roof sections made from 20 mm tongue and groove boards.', 20, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table prodgroups
-- 

CREATE TABLE prodgroups (
  id int(11) NOT NULL auto_increment,
  prodgroup varchar(50) default NULL,
  prodrange_id int(11) NOT NULL default '0',
  disporder tinyint(4) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Groups' AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table prodgroups
-- 

INSERT INTO prodgroups VALUES (1, '30mm', 4, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodgroups VALUES (2, '45mm', 4, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodgroups VALUES (3, 'Extras for', 4, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodgroups VALUES (4, '45mm', 6, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodgroups VALUES (5, '60mm', 6, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodgroups VALUES (6, '45mm', 5, 10, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table prodprices
-- 

CREATE TABLE prodprices (
  id int(11) NOT NULL auto_increment,
  product_id int(11) NOT NULL default '0',
  prodvariation_id int(11) default NULL,
  rangeoption_id int(11) default NULL,
  pivot smallint(6) default NULL,
  price smallint(6) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Prices' AUTO_INCREMENT=830 ;

-- 
-- Dumping data for table prodprices
-- 

INSERT INTO prodprices VALUES (651, 7, 28, 2, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (650, 7, 27, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (649, 7, 26, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (648, 7, 25, 2, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (647, 7, 24, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (646, 7, 23, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (645, 7, 22, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (644, 6, 21, 2, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (643, 6, 20, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (642, 6, 19, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (641, 6, 18, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (640, 6, 17, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (639, 6, 16, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (638, 6, 15, 2, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (637, 5, 7, 2, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (636, 5, 6, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (635, 5, 5, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (634, 5, 4, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (633, 5, 3, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (632, 5, 2, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (631, 5, 1, 2, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (630, 4, 9, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (629, 4, 8, 2, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (628, 4, 14, 2, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (627, 4, 13, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (626, 4, 12, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (625, 4, 11, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (624, 4, 10, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (793, 9, 97, 2, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (792, 9, 96, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (791, 9, 95, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (790, 9, 94, 2, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (789, 46, 93, NULL, 45, 3821, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (788, 46, 92, NULL, 45, 4598, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (787, 46, 91, NULL, 45, 4368, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (786, 46, 90, NULL, 45, 5127, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (785, 46, 89, NULL, 45, 6108, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (784, 46, 88, NULL, 45, 5878, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (783, 46, 87, NULL, 45, 6661, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (782, 46, 90, NULL, 60, 5713, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (781, 46, 89, NULL, 60, 6796, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (780, 46, 88, NULL, 60, 6567, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (779, 46, 87, NULL, 60, 7419, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (778, 46, 93, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (777, 46, 92, 2, NULL, 219, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (776, 46, 91, 2, NULL, 219, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (775, 46, 90, 2, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (774, 46, 89, 2, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (773, 46, 88, 2, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (772, 46, 87, 2, NULL, 320, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (771, 10, 86, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (770, 10, 86, NULL, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (769, 10, 86, NULL, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (768, 48, 85, NULL, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (767, 45, 84, NULL, 45, 2479, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (766, 45, 83, NULL, 45, 2963, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (765, 45, 82, NULL, 45, 2963, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (764, 45, 81, NULL, 45, 3352, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (763, 45, 80, NULL, 45, 3720, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (762, 45, 79, NULL, 45, 3665, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (761, 45, 78, NULL, 45, 4071, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (760, 45, 81, NULL, 60, 4006, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (759, 45, 80, NULL, 60, 4399, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (758, 45, 79, NULL, 60, 4334, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (757, 45, 78, NULL, 60, 5280, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (756, 45, 84, 2, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (755, 45, 83, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (754, 45, 82, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (753, 45, 81, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (752, 45, 80, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (751, 45, 79, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (750, 45, 78, 2, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (579, 7, 28, NULL, 60, 5272, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (578, 7, 27, NULL, 60, 4850, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (577, 7, 26, NULL, 60, 4651, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (576, 7, 25, NULL, 60, 4068, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (575, 6, 21, NULL, 60, 4578, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (574, 6, 20, NULL, 60, 4053, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (573, 6, 19, NULL, 60, 4103, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (572, 6, 18, NULL, 60, 3622, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (571, 5, 7, NULL, 60, 6422, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (570, 5, 6, NULL, 60, 5571, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (569, 5, 5, NULL, 60, 6000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (568, 5, 4, NULL, 60, 4916, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (567, 4, 14, NULL, 60, 4324, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (566, 4, 13, NULL, 60, 3853, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (565, 4, 12, NULL, 60, 3853, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (564, 4, 11, NULL, 60, 3383, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (563, 7, 28, NULL, 45, 4515, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (562, 7, 27, NULL, 45, 4160, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (561, 7, 26, NULL, 45, 3961, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (560, 7, 25, NULL, 45, 3409, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (559, 7, 24, NULL, 45, 3080, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (558, 7, 23, NULL, 45, 2880, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (557, 7, 22, NULL, 45, 2533, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (556, 6, 21, NULL, 45, 3768, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (555, 6, 20, NULL, 45, 3364, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (554, 6, 19, NULL, 45, 3414, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (553, 6, 18, NULL, 45, 2914, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (552, 6, 17, NULL, 45, 2520, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (551, 6, 16, NULL, 45, 2520, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (550, 6, 15, NULL, 45, 2114, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (549, 5, 7, NULL, 45, 5665, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (548, 5, 6, NULL, 45, 4881, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (547, 5, 5, NULL, 45, 5310, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (546, 5, 4, NULL, 45, 4329, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (545, 5, 3, NULL, 45, 3570, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (544, 5, 2, NULL, 45, 4000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (543, 5, 1, NULL, 45, 3223, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (542, 4, 9, NULL, 45, 2281, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (541, 4, 8, NULL, 45, 1935, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (540, 4, 14, NULL, 45, 3518, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (539, 4, 13, NULL, 45, 3164, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (538, 4, 12, NULL, 45, 3164, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (537, 4, 11, NULL, 45, 2675, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (536, 4, 10, NULL, 45, 2281, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (535, 4, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (534, 4, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (533, 4, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (532, 4, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (531, 7, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (530, 7, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (529, 7, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (528, 7, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (527, 6, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (526, 6, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (525, 6, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (524, 6, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (523, 5, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (522, 5, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (521, 5, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (520, 5, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (652, 14, 57, NULL, 40, 4800, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (653, 15, 58, NULL, 40, 5675, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (654, 16, 59, NULL, 40, 9200, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (655, 17, 60, NULL, 40, 14700, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (656, 18, 29, NULL, 45, 1946, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (657, 19, 38, NULL, 45, 3648, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (658, 20, 70, NULL, 40, 727, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (659, 21, 61, NULL, 45, 2307, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (660, 22, 39, NULL, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (661, 23, 40, NULL, NULL, 223, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (662, 24, 30, NULL, 45, 2089, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (663, 25, 31, NULL, 45, 1554, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (664, 26, 32, NULL, 45, 1418, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (665, 27, 34, NULL, 45, 1710, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (666, 28, 33, NULL, 45, 1485, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (667, 29, 35, NULL, 30, 938, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (668, 30, 36, NULL, 30, 864, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (669, 31, 37, NULL, 30, 1138, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (670, 32, 52, NULL, 60, 19693, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (671, 32, 52, NULL, 95, 25899, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (672, 33, 53, NULL, 60, 21088, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (673, 33, 53, NULL, 95, 27295, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (674, 34, 54, NULL, 45, 7447, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (675, 34, 54, NULL, 60, 8925, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (676, 35, 55, NULL, 45, 7285, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (677, 35, 55, NULL, 60, 8517, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (678, 35, 55, NULL, 95, 11469, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (679, 36, 71, NULL, 45, 2338, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (680, 36, 72, NULL, 45, 2579, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (681, 36, 73, NULL, 45, 3300, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (682, 50, 74, NULL, 45, 2419, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (683, 50, 75, NULL, 45, 2871, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (684, 50, 76, NULL, 45, 3840, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (685, 37, 67, NULL, 40, 1675, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (686, 38, 62, NULL, 45, 1769, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (687, 39, 63, NULL, 45, 2319, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (688, 39, 64, NULL, 45, 2488, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (689, 39, 65, NULL, 45, 2805, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (690, 39, 66, NULL, 45, 3571, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (691, 40, 56, NULL, 60, 14833, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (692, 40, 56, NULL, 95, 19140, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (693, 43, 69, NULL, 40, 1995, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (694, 44, 68, NULL, 40, 1910, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (696, 32, 52, 7, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (697, 33, 53, 7, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (698, 34, 54, 7, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (699, 35, 55, 7, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (700, 14, 57, 10, NULL, 350, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (701, 15, 58, 10, NULL, 350, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (702, 16, 59, 10, NULL, -2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (703, 17, 60, 10, NULL, -2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (704, 14, 57, 11, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (705, 15, 58, 11, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (706, 16, 59, 11, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (707, 17, 60, 11, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (708, 39, 77, NULL, 45, 3197, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (709, 38, 62, 8, NULL, 165, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (710, 39, 63, 8, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (711, 39, 64, 8, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (712, 39, 65, 8, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (713, 39, 77, 8, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (714, 39, 66, 8, NULL, 375, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (715, 39, 63, 11, NULL, 600, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (716, 39, 64, 11, NULL, 600, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (717, 39, 65, 11, NULL, 600, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (718, 39, 77, 11, NULL, 750, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (719, 39, 66, 11, NULL, 800, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (720, 39, 63, 13, NULL, 549, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (721, 39, 64, 13, NULL, 562, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (722, 39, 65, 13, NULL, 562, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (723, 39, 77, 13, NULL, 562, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (724, 39, 66, 13, NULL, 676, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (725, 37, 67, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (726, 44, 68, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (727, 43, 69, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (728, 36, 71, 8, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (729, 36, 72, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (730, 36, 73, 8, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (731, 50, 74, 8, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (732, 50, 75, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (733, 50, 76, 8, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (734, 37, 67, 14, NULL, 606, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (735, 44, 68, 14, NULL, 606, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (736, 43, 69, 14, NULL, 606, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (737, 36, 71, 14, NULL, 564, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (738, 36, 72, 14, NULL, 606, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (739, 36, 73, 14, NULL, 696, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (740, 50, 74, 14, NULL, 564, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (741, 50, 75, 14, NULL, 606, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (742, 50, 76, 14, NULL, 696, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (743, 20, 70, 15, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (744, 36, 71, 9, NULL, 149, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (745, 36, 72, 9, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (746, 36, 73, 9, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (747, 50, 74, 9, NULL, 179, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (748, 50, 75, 9, NULL, 196, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (749, 50, 76, 9, NULL, 207, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (794, 9, 98, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (795, 9, 99, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (796, 9, 100, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (797, 9, 94, NULL, 60, 4802, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (798, 9, 95, NULL, 60, 4310, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (799, 9, 96, NULL, 60, 4410, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (800, 9, 97, NULL, 60, 3710, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (801, 9, 94, NULL, 45, 4202, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (802, 9, 95, NULL, 45, 3603, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (803, 9, 96, NULL, 45, 3620, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (804, 9, 97, NULL, 45, 2964, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (805, 9, 98, NULL, 45, 2634, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (806, 9, 99, NULL, 45, 2545, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (807, 9, 100, NULL, 45, 2199, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (808, 47, 101, NULL, 45, 5173, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (809, 49, 102, NULL, 30, 1138, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (810, 52, 103, NULL, 40, 6000, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (812, 52, 103, 11, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (813, 53, 105, NULL, 40, 4288, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (814, 54, 106, NULL, 40, 2516, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (815, 55, 107, NULL, 40, 4863, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (816, 56, 108, NULL, 40, 3812, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (817, 57, 109, NULL, 40, 5247, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (818, 58, 110, NULL, 45, 4175, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (819, 58, 110, NULL, 60, 4930, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (820, 58, 111, NULL, 45, 3620, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (821, 58, 111, NULL, 60, 4990, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (822, 58, 112, NULL, 45, 3720, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (823, 58, 112, NULL, 60, 5200, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (824, 59, 113, NULL, 45, 3875, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (825, 59, 113, NULL, 60, 4580, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (826, 59, 114, NULL, 45, 5350, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (827, 59, 114, NULL, 60, 6520, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodprices VALUES (829, 60, 115, NULL, 40, 1500, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table prodranges
-- 

CREATE TABLE prodranges (
  id int(11) NOT NULL auto_increment,
  range varchar(50) default NULL,
  category_id int(11) NOT NULL default '0',
  disporder tinyint(4) default NULL,
  short_text varchar(255) default NULL,
  long_text mediumtext,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Ranges' AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table prodranges
-- 

INSERT INTO prodranges VALUES (4, 'Standard Cabins', 2, 10, NULL, 'The 1st Summerhouses Standard Cabins comprises the T-buildings and Borkum.  A well-designed and well-built range of buildings in 45mm wood, suitable  \r\nfor many uses.  Whether it is a children''s playhouse, home office, home beauty salon or smoking room we have something for every purpose.  From the T24, our  \r\nmost popular model, to the T23, the baby of the family, the T buildings are excellent quality and unbelievable value for money.  The Borkum is a 3m x 3m  \r\ncabin with 1.5m terrace ideal for alfresco dining.  With the attention to detail and quality of workmanship standard in all our cabins this range is  \r\nexcellent value for money.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (5, 'Premier Cabins', 2, 20, NULL, 'The 1st Summerhouses Premier Cabins comprises of the Nida and the Tornio Log Cabins.  The Nida range offers a choice of styles in 45mm wood (60mm  \r\noption) with double glazing as standard. The Chalet Nida, coming in 7 different sizes, from 3m x 3m to 5m x 5m and offering add-on choices of terrace,  \r\nshelter or annex in any combination (or all three!) this is true versatility!  The Nida Panorama, a log cabin with the benefits of double doors and window  \r\npanels (all double glazed) has the warmth and strength of a cabin and the advantages of a summerhouse. The Tornio has the advantage of glazed double doors,  \r\n11/2 in the 3m width.   Garden room, hot tub house, spare bedroom, dining room the reasons to buy are too many to mention.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (6, 'Multi-Room Cabins', 2, 30, NULL, 'Our multi-room cabins offer a wide choice of styles suitable for holiday use or longer alternative accommodation.  With double glazing as standard, option of  \r\ndifferent wood thickness and our usual attention to detail the holiday house range are superior buildings in every way.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (7, 'Huts', 1, 1, NULL, 'The range of 1st Summerhouses BBQ Huts has something for every situation.  The 6.9sqm which is ideal for the smaller garden up to the 28.8sqm suitable for  \r\nanything from a  party venue to a prayer hut.  The traditional 8-sided build and steeply pitched roof offer an unbelievable amount of space.  Coming with a  \r\ncomplete package (from fur rugs to butter knife) all you need to buy are the steaks.  For an unforgettable evening try a Finnish BBQ Hut!', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (8, 'Summerhouses', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (9, 'Garages', 4, 10, NULL, 'A 1st Summerhouses garage is traditionally styled with the advantage of 45mm wood and solid double doors.  Quality is paramount in all our cabins and the  \r\ngarage range is no exception.  The standard size is listed here but a double garage can be custom built to your dimensions.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (10, 'Custom Cabins', 2, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (11, 'Pavilions', 2, 40, NULL, '1st Summerhouses offers a range of Pavilions.  The Sida pavilion comes in 2 styles and 3 sizes, the Sida with 1/2 glazed door and windows and window boxes,  \r\nand the Sida Plus 3/4 glazed door and windows is ideal for a corner site.  With 45mm wood and double glazing as standard this is a retreat suitable for  \r\nsummer and winter use.  The Vilnius pavilion has a fairytale quality, too pretty to hide away, it would be a feature in any garden.  All our pavilions are  \r\nbuilt with the careful attention to detail and quality of workmanship which is a feature of all 1st Summerhouses Cabins.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (12, 'Saunas', 1, 2, NULL, 'To traditional sauna enthusiasts, the wood burning sauna is something special. Soft heat, soft steam, the crackling fire.  Even the ritual of tending the fire.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (13, 'Car Ports', 4, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodranges VALUES (14, 'Work from Home', 2, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table products
-- 

CREATE TABLE products (
  id int(11) NOT NULL auto_increment,
  product varchar(50) default NULL,
  htmlname varchar(255) default NULL,
  prodrange_id int(11) NOT NULL default '0',
  prodgroup_id int(11) default NULL,
  brochure varchar(50) default NULL,
  disporder smallint(6) default NULL,
  short_text varchar(255) default NULL,
  long_text mediumtext,
  created_by varchar(50) default NULL,
  created datetime default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated datetime default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Products' AUTO_INCREMENT=61 ;

-- 
-- Dumping data for table products
-- 

INSERT INTO products VALUES (4, 'Nida', NULL, 5, 6, 'nida_nida.pdf', 10, '', 'Roof projection: Front 0.70 m\r\nBack 0.20 m\r\nSide 0.30 m\r\nWalls: 45 mm or (60 mm glued) double tongue and groove logs\r\nFloor: 20 mm tongue and groove floor boards on the impregnated base frame\r\nRoof: 20 mm tongue and groove roof boards\r\nDoor: 1 glued cartridge door 90/196 with seal\r\nWindows: 2 double-glazed 80/94 tilt ''n'' turn units', NULL, NULL, NULL, NULL, '2006-07-05 01:13:24', NULL);
INSERT INTO products VALUES (5, 'Nida A', NULL, 5, 6, 'nida_na.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (6, 'Nida S', NULL, 5, 6, 'nida_ns.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (7, 'Nida T', NULL, 5, 6, 'nida_nt.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (9, 'Nida V', NULL, 5, 6, 'nida_nv.pdf', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (10, 'Nida TAS', NULL, 5, 6, 'nida_ntas.pdf', 80, 'Nida.', '', NULL, NULL, NULL, NULL, '2006-07-05 00:51:19', NULL);
INSERT INTO products VALUES (33, 'Cottage with Terrace', NULL, 6, 5, 'tyla_ct.pdf', 20, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:03:05', NULL);
INSERT INTO products VALUES (32, 'Cottage', NULL, 6, 5, 'tyla_cg.pdf', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (14, '6.9m2', 'Finnish BBQ Hut 6.9 m<sup>2</sup>', 7, NULL, 'kota_k069.pdf', 1, '', 'Finnish BBQ Hut 6.9m2\r\n\r\nproperties\r\nSides:    Octagonal - Seating for 8 persons\r\nRoof projection: 0.37 m\r\nWalls:    40 mm double tongue and groove logs from Red Pine.\r\nFlooring:   Decking that can be removed for cleaning.\r\nRoof:    20 mm tongue and groove roof boards.\r\nDoors:    1 door\r\nWindows:  4 windows, double glazed\r\n\r\nequipment\r\n\r\nIncluded Equipment:\r\nAn octagonal grill \r\nA round table around the grill \r\nA grill set \r\nA brick pan \r\nA steel kettle \r\nReindeer skins \r\nA coffee pot warmer \r\nA pillow \r\nSanta Claus \r\nA visitors book \r\nWood cups \r\nA pan watch \r\nA Lapp knife \r\nA four-cornered hat and scarf \r\nJuniper bun dishes \r\nJuniper servers \r\n\r\nBottle binoculars\r\nStriped wooden mugs\r\nA bottle opener\r\nJuniper underlay\r\nA leather coffee bag\r\nReindeer horn exact\r\nToggle tables\r\nA pot mitten and patches\r\nA thermometer\r\nAn axe block\r\nA fillet knife\r\nFork and knife sets\r\nA jingle bell\r\nA Lapp willow grouse\r\nA reindeer paw\r\nFlower boxes', NULL, NULL, NULL, NULL, '2006-07-09 20:14:52', NULL);
INSERT INTO products VALUES (15, '9.9m2', 'Finnish BBQ Hut 9.9 m<sup>2</sup>', 7, NULL, 'kota_k099.pdf', 2, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:07:22', NULL);
INSERT INTO products VALUES (16, '17.2m2', 'Finnish BBQ Hut 17.2 m<sup>2</sup>', 7, NULL, 'kota_k172.pdf', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (17, '28.8m2', 'Finnish BBQ Hut 28.8 m<sup>2</sup>', 7, NULL, 'kota_k288.pdf', 4, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:34', NULL);
INSERT INTO products VALUES (18, 'T10', NULL, 4, 2, 'tbuild_t10.pdf', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (19, 'Chalet T24', NULL, 4, 2, 'tbuild_t24.pdf', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (20, 'Pavillion', NULL, 11, NULL, 'tbuild_pv.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (21, 'T Garage', NULL, 9, NULL, 'tbuild_tg.pdf', 0, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:40', NULL);
INSERT INTO products VALUES (22, 'T Shelter', NULL, 4, 3, 'tbuild_ts.pdf', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (23, 'T Terrace', NULL, 4, 3, 'tbuild_tt.pdf', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (24, 'T12', NULL, 4, 2, 'tbuild_t12.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (25, 'T14', NULL, 4, 2, 'tbuild_t14.pdf', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (26, 'T15', NULL, 4, 2, 'tbuild_t15.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (27, 'T17+Terrace', NULL, 4, 2, 'tbuild_t17t.pdf', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (28, 'T17', NULL, 4, 2, 'tbuild_t17.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (29, 'T20', NULL, 4, 1, 'tbuild_t20.pdf', 70, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:08:35', NULL);
INSERT INTO products VALUES (30, 'T21', NULL, 4, 1, 'tbuild_t21.pdf', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (31, 'T23', NULL, 4, 1, 'tbuild_t23.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (34, 'Kaiserforst', NULL, 6, 4, 'tyla_kf.pdf', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (35, 'Laura', NULL, 6, 4, 'tyla_la.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (36, 'Sida', NULL, 11, NULL, 'tyla_si.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (37, 'Kaunas Pavilion', NULL, 11, NULL, 'tyla_op.pdf', 10, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:44', NULL);
INSERT INTO products VALUES (38, 'Borkum', NULL, 4, 2, 'tyla_pc.pdf', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (39, 'Tornio', NULL, 5, 6, 'gc_tornio.pdf', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (40, 'Ulmenfield', NULL, 6, 5, 'tyla_uf.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (43, 'Vilnius Pavilion', NULL, 11, NULL, 'tyla_vn.pdf', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (49, 'T23D', NULL, 4, 1, 'tbuild_t23d.pdf', 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (44, 'Riga Pavilion', NULL, 11, NULL, 'tyla_rg.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (45, 'Nida Panorama', NULL, 5, 6, 'nida_np.pdf', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (46, 'Nida TA', NULL, 5, 6, 'nida_nta.pdf', 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (47, 'Nida Tower', NULL, 5, 6, 'nida_ntw.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (48, 'Nida Tyla', NULL, 5, 6, 'nida_nty.pdf', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (50, 'Sida Plus', NULL, 11, NULL, 'tyla_sp.pdf', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (51, 'Custom build', NULL, 10, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (52, '9.9m2 Sauna', 'Finnish Sauna 9.9 m<sup>2</sup>', 12, NULL, 'sauna_s99.pdf', 2, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:07:22', NULL);
INSERT INTO products VALUES (53, 'Large T Garage', NULL, 9, NULL, 'tbuild_dg.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (54, 'F1', NULL, 13, NULL, 'f1.pdf', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (55, 'F2', NULL, 13, NULL, 'f2.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (56, 'SB1', NULL, 13, NULL, 'sb1.pdf', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (57, 'SB2', NULL, 13, NULL, 'sb2.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (58, 'Office', NULL, 14, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (59, 'Therapy', NULL, 14, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO products VALUES (60, 'Spa Pavilion', NULL, 11, NULL, 'tyla_sa.pdf', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table prodvariations
-- 

CREATE TABLE prodvariations (
  id int(11) NOT NULL auto_increment,
  variation varchar(50) default NULL,
  imgfile varchar(40) default NULL,
  brochure varchar(50) default NULL,
  product_id int(11) NOT NULL default '0',
  vlength float default NULL,
  vbreadth float default NULL,
  disporder smallint(6) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Variations' AUTO_INCREMENT=116 ;

-- 
-- Dumping data for table prodvariations
-- 

INSERT INTO prodvariations VALUES (9, NULL, NULL, NULL, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (8, NULL, NULL, NULL, 4, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (7, NULL, NULL, NULL, 5, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (6, NULL, NULL, NULL, 5, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (5, NULL, NULL, NULL, 5, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (4, NULL, NULL, NULL, 5, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (3, NULL, NULL, NULL, 5, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (28, NULL, NULL, NULL, 7, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (27, NULL, NULL, NULL, 7, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (26, NULL, NULL, NULL, 7, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (25, NULL, NULL, NULL, 7, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (24, NULL, NULL, NULL, 7, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (23, NULL, NULL, NULL, 7, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (22, NULL, NULL, NULL, 7, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (21, NULL, NULL, NULL, 6, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (20, NULL, NULL, NULL, 6, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (2, NULL, NULL, NULL, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (19, NULL, NULL, NULL, 6, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (18, NULL, NULL, NULL, 6, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (17, NULL, NULL, NULL, 6, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (16, NULL, NULL, NULL, 6, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (15, NULL, NULL, NULL, 6, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (14, NULL, NULL, NULL, 4, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (13, NULL, NULL, NULL, 4, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (12, NULL, NULL, NULL, 4, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (11, NULL, NULL, NULL, 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (10, NULL, NULL, NULL, 4, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (1, NULL, NULL, NULL, 5, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (29, NULL, NULL, NULL, 18, 3.25, 4.45, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (30, NULL, NULL, NULL, 24, 3.25, 4.45, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (31, NULL, NULL, NULL, 25, 2.95, 3.25, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (32, NULL, NULL, NULL, 26, 2.95, 3.25, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (33, NULL, NULL, NULL, 28, 2.95, 3.25, 50, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (34, NULL, NULL, NULL, 27, 2.95, 3.25, 60, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (35, NULL, NULL, NULL, 29, 2.95, 2.5, 70, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (36, NULL, NULL, NULL, 30, 2.2, 2.5, 80, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (37, NULL, NULL, NULL, 31, 2.95, 3.25, 90, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (38, NULL, NULL, NULL, 19, 4, 6.5, 100, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (39, NULL, NULL, NULL, 22, 3.35, 1.8, 110, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (40, NULL, NULL, NULL, 23, 1.5, 3.05, 120, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (52, NULL, NULL, NULL, 32, 7, 8.5, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (53, NULL, NULL, NULL, 33, 10.45, 8.5, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (54, NULL, NULL, NULL, 34, 4.7, 5.1, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (55, NULL, NULL, NULL, 35, 4.3, 5.5, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (56, NULL, NULL, NULL, 40, 6.45, 6.2, 50, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (57, NULL, NULL, NULL, 14, 3.149, 3.149, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (58, NULL, NULL, NULL, 15, 3.81, 3.81, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (59, NULL, NULL, NULL, 16, 5.009, 5.009, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (60, NULL, NULL, NULL, 17, 6.05, 6.05, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (61, NULL, NULL, NULL, 21, 5.36, 3.8, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (62, NULL, NULL, NULL, 38, 3, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (63, NULL, NULL, NULL, 39, 3, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (64, NULL, NULL, NULL, 39, 3, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (65, NULL, NULL, NULL, 39, 4, 4, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (66, NULL, NULL, NULL, 39, 5, 5, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (67, NULL, NULL, NULL, 37, 3.14, 3.4, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (68, NULL, NULL, NULL, 44, 3.14, 3.4, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (69, NULL, NULL, NULL, 43, 3.14, 3.4, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (70, NULL, NULL, NULL, 20, 3, 3, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (71, 'Type 1: 1/2 glazed door 70/193 and 2 windows 70/94', NULL, NULL, 36, 2.8, 3.03, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (72, 'Type 2: 1/2 glazed door 90/193 and 2 windows 90/94', NULL, NULL, 36, 3.14, 3.4, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (73, 'Type 3: 1/2 glazed door 90/193 and 2 windows 100/9', NULL, NULL, 36, 4, 4.34, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (74, 'Type 1: 3/4 glazed door 70/193 and 2 windows 70/13', NULL, NULL, 50, 2.8, 3.03, 40, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (75, 'Type 2: 3/4 glazed door 90/193 and 2 windows 90/13', NULL, NULL, 50, 3.14, 3.4, 50, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (76, 'Type 3: 3/4 glazed door 90/193 and 2 windows 100/1', NULL, NULL, 50, 4, 4.34, 60, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (77, 'Tornio', NULL, NULL, 39, 5, 4, 35, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (78, NULL, NULL, NULL, 45, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (79, NULL, NULL, NULL, 45, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (80, NULL, NULL, NULL, 45, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (81, NULL, NULL, NULL, 45, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (82, NULL, NULL, NULL, 45, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (83, NULL, NULL, NULL, 45, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (84, NULL, NULL, NULL, 45, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (85, NULL, NULL, NULL, 48, 4.5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (86, NULL, NULL, NULL, 10, 3.5, 3.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (87, NULL, NULL, NULL, 46, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (88, NULL, NULL, NULL, 46, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (89, NULL, NULL, NULL, 46, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (90, NULL, NULL, NULL, 46, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (91, NULL, NULL, NULL, 46, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (92, NULL, NULL, NULL, 46, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (93, NULL, NULL, NULL, 46, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (94, NULL, NULL, NULL, 9, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (95, NULL, NULL, NULL, 9, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (96, NULL, NULL, NULL, 9, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (97, NULL, NULL, NULL, 9, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (98, NULL, NULL, NULL, 9, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (99, NULL, NULL, NULL, 9, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (100, NULL, NULL, NULL, 9, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (101, NULL, NULL, NULL, 47, 3.1, 2.51, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (102, NULL, NULL, NULL, 49, 2.95, 3.25, 90, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (103, NULL, NULL, NULL, 52, 3.81, 3.81, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (105, NULL, NULL, NULL, 53, 5.7, 5.7, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (106, NULL, NULL, NULL, 54, 3.35, 4.93, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (107, NULL, NULL, NULL, 55, 3.56, 7.9, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (108, NULL, NULL, NULL, 56, 3.3, 6.44, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (109, NULL, NULL, NULL, 57, 6, 7, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (110, 'Office with Waiting room', '44_office.jpg', '44_office.pdf', 58, 4, 4, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (111, 'Cyclists Office', '55_office.jpg', '55_office.pdf', 58, 5, 5, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (112, 'L-Shaped Office', '55_officetwo.jpg', '55_officetwo.pdf', 58, 5, 5, 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (113, 'Therapy Room with W/C', '44_therapy.jpg', '44_therapy.pdf', 59, 4, 4, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (114, 'Two Therapy Rooms', '55_therapytwo.jpg', '55_therapytwo.pdf', 59, 5, 5, 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO prodvariations VALUES (115, NULL, NULL, NULL, 60, 3, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table rangeoptions
-- 

CREATE TABLE rangeoptions (
  id int(11) NOT NULL auto_increment,
  rangeoption varchar(50) default NULL,
  prodrange_id int(11) NOT NULL default '0',
  disporder smallint(6) default NULL,
  short_text varchar(255) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Range Options' AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table rangeoptions
-- 

INSERT INTO rangeoptions VALUES (2, 'Shingles', 5, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (3, 'Single Window', 5, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (4, 'Double Window', 5, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (5, 'Single Door', 5, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (6, 'Double Door', 5, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (7, 'Shutters', 0, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (8, 'Roof Shingles', 0, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (9, 'Larger Windows', 0, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (10, 'Smoke Stack', 0, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (11, 'Build', 0, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (12, 'Package 1', 0, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (13, 'Terrace', 0, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (14, 'Furniture', 0, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO rangeoptions VALUES (15, 'Single Fence', 0, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table resellerproducts
-- 

CREATE TABLE resellerproducts (
  id int(11) NOT NULL auto_increment,
  reseller_id int(11) NOT NULL default '0',
  product_id int(11) NOT NULL default '0',
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Reseller Products' AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table resellerproducts
-- 

INSERT INTO resellerproducts VALUES (1, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (2, 2, 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (3, 3, 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (4, 4, 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (5, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (6, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (7, 3, 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (8, 4, 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (9, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (10, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (11, 3, 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (12, 4, 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (13, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (14, 2, 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (15, 3, 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellerproducts VALUES (16, 4, 17, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table resellers
-- 

CREATE TABLE resellers (
  id int(11) NOT NULL auto_increment,
  reseller varchar(50) default NULL,
  address1 varchar(100) default NULL,
  address2 varchar(100) default NULL,
  town varchar(100) default NULL,
  county varchar(100) default NULL,
  postcode varchar(100) default NULL,
  telephone varchar(100) default NULL,
  email varchar(100) default NULL,
  website varchar(100) default NULL,
  locx int(11) default NULL,
  locy int(11) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Resellers' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table resellers
-- 

INSERT INTO resellers VALUES (1, 'Hillmount Nursery Centre', '56-58 Upper Braniel Road', 'Gillnahirk', 'Belfast', NULL, 'BT5 7TX', '(028) 9044 8213', 'info@hillmount.co.uk', 'http://www.hillmount.co.uk/', 550, 330, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellers VALUES (2, 'Noah''s Workshop', '190 New Road', 'West Parley', 'Ferndown', 'Dorset', 'BH22 8EN', '01202 581400', 'info@noahsworkshop.co.uk', 'http://www.noahsworkshop.co.uk/', 670, 495, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellers VALUES (3, 'Champfleurie Estate', 'Champfleurie House', NULL, 'Linlithgow', NULL, 'EH51 0AU', '01506 847999', 'info@champfleurieestate.co.uk', 'http://www.champfleurieestate.co.uk/', 642, 275, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO resellers VALUES (4, 'Hilton Court Nursery', 'Roch', NULL, 'Haverfordwest', 'Pembrokeshire', 'SA62 6AE', '01437 710262', 'information@hiltongardensandcrafts.co.uk', 'http://www.hiltongardensandcrafts.co.uk/', 602, 453, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table tabs
-- 

CREATE TABLE tabs (
  id int(11) NOT NULL auto_increment,
  page varchar(20) NOT NULL default '',
  tab varchar(50) default NULL,
  disporder tinyint(4) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Tabs' AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table tabs
-- 

INSERT INTO tabs VALUES (1, 'product', 'Product', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tabs VALUES (2, 'product', 'Gallery', 20, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tabs VALUES (3, 'product', 'Plans', 30, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table testimonalphotos
-- 

CREATE TABLE testimonalphotos (
  id int(11) NOT NULL auto_increment,
  testimonal_id int(11) NOT NULL default '0',
  imgfile varchar(40) NOT NULL default '',
  disporder int(6) default NULL,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Testimonal Photos' AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table testimonalphotos
-- 

INSERT INTO testimonalphotos VALUES (1, 5, 'busby1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonalphotos VALUES (2, 4, 'irvine1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonalphotos VALUES (3, 4, 'irvine2.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonalphotos VALUES (4, 4, 'irvine3.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonalphotos VALUES (5, 7, 'lambert1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table testimonals
-- 

CREATE TABLE testimonals (
  id int(11) NOT NULL auto_increment,
  testimonal_date date NOT NULL default '0000-00-00',
  customer_name varchar(50) default NULL,
  testimonal mediumtext,
  created_by varchar(50) default NULL,
  created_on date default NULL,
  created_at time default NULL,
  updated_by varchar(50) default NULL,
  updated_on date default NULL,
  updated_at time default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Testimonals' AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table testimonals
-- 

INSERT INTO testimonals VALUES (6, '2007-01-30', 'Chris Currie', 'That''s a year now we''ve had our barbecue house and if I am 100% honest, probably the best money we''ve ever spent socially. My friends love coming round and we have some great nights.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonals VALUES (4, '2004-01-01', 'Scott Irvine (Edinburgh)', 'We are delighted with it and we are already onto BBQ number 6 and the grandchildren have already slept in it overnight once and have booked another overnight stay.\r\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonals VALUES (5, '2007-01-30', 'Gary Busby', 'Went together great and looks even better, looking forward to some great parties.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO testimonals VALUES (7, '2007-01-01', 'Susan Lambert (Woodend Farm)', 'We just love our bbq hut!', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table upload
-- 

CREATE TABLE upload (
  uplfile varchar(255) NOT NULL default '',
  docdate date NOT NULL default '0000-00-00',
  doctype char(1) NOT NULL default 'I',
  PRIMARY KEY  (uplfile)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Uploaded Files';

-- 
-- Dumping data for table upload
-- 

