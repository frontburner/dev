-- --------------------------------------------------------
-- First Summerhouses
-- Copyright (c) 2006 Frontburner
-- Author Craig McKay <craig@frontburner.co.uk>
--
-- $Id$
--
-- SET PASSWORD FOR 'firstsummer'@'localhost' = OLD_PASSWORD('john21');
-- --------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 2.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2006 at 01:04 PM
-- Server version: 4.1.16
-- PHP Version: 5.1.1
--
-- Database: 1stsummerhouses_com_-_site
-- --------------------------------------------------------

--
-- Table structure for table categories
--

CREATE TABLE categories (
  id int(11) NOT NULL auto_increment,
  category varchar(50) default NULL,
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
) ENGINE=MyISAM COMMENT='Product Categories' AUTO_INCREMENT=4 ;

--
-- Dumping data for table categories
--

INSERT INTO categories (id, category, disporder, short_text, long_text, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (1, 'BBQ Huts', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Log Cabins', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='User Information';

--
-- Dumping data for table member
--

INSERT INTO member (memberid, first_name, last_name, email_address, password, admin, member_type, verify_code, active, dob, signup_date, last_login) VALUES ('CRAIG', 'Craig', 'McKay', 'craig@southesk.com', '1eebdddd1f688244a5861695cb7c3eba', 1, 'A', '0', 1, '1975-09-13', '0000-00-00 00:00:00', '2006-07-05 00:05:03');

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
) ENGINE=MyISAM COMMENT='User Types';

--
-- Dumping data for table member_type
--

INSERT INTO member_type (member_type, type_name, comments, disp_order) VALUES ('U', 'User', 'Ability to View all details on the site', 1),
('N', 'New User', 'No permissions yet - waiting verification', 3),
('A', 'Administrator', 'Full Administrative capabilities', 2);

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
) ENGINE=MyISAM COMMENT='News Items' AUTO_INCREMENT=4 ;

--
-- Dumping data for table newsitems
--

INSERT INTO newsitems (id, newsitem, news_text, news_date, news_img, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (1, 'IDEAL HOME AND GARDEN SHOW', 'From the 5th - 9th April we will be at the <a target="_blank" href="http://www.secc.co.uk/whatson/index.cfm?inc_dsp=view&eventRef=E67C67E6-508B-E9FB-9810CA3259FDBB77">SECC</a> in Glasgow for the <a target="_blank" href="http://www.idealhomeandgardenshow.co.uk/">Ideal Home and Garden Show</a> - come and see us there!', '2006-04-02', 'secc.gif', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'NEW SITE LAUNCHED', 'Our new-look website has been launched, corresponding with the fantastic new ranges of log cabins and BBQ huts we have added to our portfolio.  <a href="mailto:firstsummerhouses@msn.com?Subject=New%20Website">Let us know</a> what you think!', '2006-03-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'GARDENING SCOTLAND 2006', 'We will be showing at <a target="_blank" href="http://www.gardeningscotland.com/">Gardening Scotland</a> on Friday 2nd, Saturday 3rd &\r\nSunday 4th June at <a target="_blank" href="http://www.royalhighlandcentre.co.uk/">The Royal Highland Centre</a> Ingliston, Edinburgh.  See our quality Log Cabins firsthand.\r\n\r\n', '2006-05-29', 'gs06.gif', NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Photos' AUTO_INCREMENT=201 ;

--
-- Dumping data for table photos
--

INSERT INTO photos (id, product_id, imgfile, disporder, title, default_flag, comments, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (1, 16, 'kota_k172_00020.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 16, 'kota_k172_00040.jpg', 40, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 16, 'kota_k172_00060.jpg', 60, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 16, 'kota_k172_00100.jpg', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, 'kota_k172_00120.jpg', 120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 5, 'nida_na_03380.jpg', 3380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 5, 'nida_na_03360.jpg', 3360, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 16, 'kota_k172_00200.jpg', 200, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 16, 'kota_k172_00220.jpg', 220, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 5, 'nida_na_03340.jpg', 3340, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 5, 'nida_na_03300.jpg', 3300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 'kota_k172_00320.jpg', 320, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 5, 'nida_na_03280.jpg', 3280, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 16, 'kota_k172_00380.jpg', 380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 5, 'nida_na_03240.jpg', 3240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 5, 'nida_na_03260.jpg', 3260, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 17, 'kota_k288_00440.jpg', 440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 17, 'kota_k288_00480.jpg', 480, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 17, 'kota_k288_00500.jpg', 500, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 17, 'kota_k288_00520.jpg', 520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 17, 'kota_k288_00540.jpg', 540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 17, 'kota_k288_00560.jpg', 560, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 17, 'kota_k288_00580.jpg', 580, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 5, 'nida_na_03200.jpg', 3200, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 5, 'nida_na_03220.jpg', 3220, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 14, 'kota_k069_00640.jpg', 640, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 14, 'kota_k069_00660.jpg', 660, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 14, 'kota_k069_00680.jpg', 680, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 14, 'kota_k069_00700.jpg', 700, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 14, 'kota_k069_00720.jpg', 720, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 14, 'kota_k069_00740.jpg', 740, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 37, 'tyla_op_04380.jpg', 4380, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 7, 'nida_nt_03660.jpg', 3660, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 14, 'kota_k069_00800.jpg', 800, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 6, 'nida_ns_03640.jpg', 3640, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 15, 'kota_k099_00840.jpg', 840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 15, 'kota_k099_00860.jpg', 860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 6, 'nida_ns_03600.jpg', 3600, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 15, 'kota_k099_00900.jpg', 900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 15, 'kota_k099_00920.jpg', 920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 15, 'kota_k099_00940.jpg', 940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 6, 'nida_ns_03620.jpg', 3620, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 6, 'nida_ns_03580.jpg', 3580, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 15, 'kota_k099_01000.jpg', 1000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 15, 'kota_k099_01020.jpg', 1020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 15, 'kota_k099_01040.jpg', 1040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 15, 'kota_k099_01060.jpg', 1060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 15, 'kota_k099_01080.jpg', 1080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 42, 'nida_na_03560.jpg', 3560, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 15, 'kota_k099_01120.jpg', 1120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 15, 'kota_k099_01140.jpg', 1140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 15, 'kota_k099_01160.jpg', 1160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 15, 'kota_k099_01180.jpg', 1180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 15, 'kota_k099_01220.jpg', 1220, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 15, 'kota_k099_01240.jpg', 1240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 5, 'nida_na_03520.jpg', 3520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 5, 'nida_na_03540.jpg', 3540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 15, 'kota_k099_01300.jpg', 1300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 15, 'kota_k099_01320.jpg', 1320, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 15, 'kota_k099_01340.jpg', 1340, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 15, 'kota_k099_01360.jpg', 1360, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 15, 'kota_k099_01380.jpg', 1380, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 15, 'kota_k099_01400.jpg', 1400, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 15, 'kota_k099_01420.jpg', 1420, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 15, 'kota_k099_01440.jpg', 1440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 15, 'kota_k099_01480.jpg', 1480, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 15, 'kota_k099_01500.jpg', 1500, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 15, 'kota_k099_01520.jpg', 1520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 15, 'kota_k099_01540.jpg', 1540, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 15, 'kota_k099_01560.jpg', 1560, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 15, 'kota_k099_01580.jpg', 1580, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 5, 'nida_na_03460.jpg', 3460, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 5, 'nida_na_03440.jpg', 3440, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 10, 'nida_ntas_03700.jpg', 3700, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 10, 'nida_ntas_03720.jpg', 3720, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 33, 'tyla_ct_04340.jpg', 4340, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 32, 'tyla_cg_04320.jpg', 4320, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 21, 'tbuild_tg_04620.jpg', 4620, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 10, 'nida_ntas_03800.jpg', 3800, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 9, 'nida_nv_03820.jpg', 3820, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 9, 'nida_nv_03840.jpg', 3840, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 9, 'nida_nv_03860.jpg', 3860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 4, 'nida_nida_02840.jpg', 2840, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 4, 'nida_nida_02860.jpg', 2860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 4, 'nida_nida_02880.jpg', 2880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 4, 'nida_nida_02900.jpg', 2900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 4, 'nida_nida_02940.jpg', 2940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 4, 'nida_nida_02960.jpg', 2960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 4, 'nida_nida_02980.jpg', 2980, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 4, 'nida_nida_03000.jpg', 3000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 4, 'nida_nida_03020.jpg', 3020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 4, 'nida_nida_03040.jpg', 3040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 4, 'nida_nida_03060.jpg', 3060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 4, 'nida_nida_03080.jpg', 3080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 4, 'nida_nida_03100.jpg', 3100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 4, 'nida_nida_02920.jpg', 2920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 4, 'nida_nida_03120.jpg', 3120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 4, 'nida_nida_03140.jpg', 3140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 4, 'nida_nida_03160.jpg', 3160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 4, 'nida_nida_03180.jpg', 3180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 24, 'tbuild_t12_03880.jpg', 3880, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 27, 'tbuild_t17t_03900.jpg', 3900, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 41, 'tbuild_t22_03920.jpg', 3920, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 41, 'tbuild_t22_03940.jpg', 3940, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 34, 'tyla_kf_03960.jpg', 3960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 34, 'tyla_kf_03980.jpg', 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 34, 'tyla_kf_04000.jpg', 4000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 34, 'tyla_kf_04020.jpg', 4020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 19, 'tbuild_t24_04820.jpg', 4820, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 35, 'tyla_la_04060.jpg', 4060, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 35, 'tyla_la_04080.jpg', 4080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 35, 'tyla_la_04100.jpg', 4100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 35, 'tyla_la_04120.jpg', 4120, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 35, 'tyla_la_04140.jpg', 4140, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 35, 'tyla_la_04160.jpg', 4160, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 35, 'tyla_la_04180.jpg', 4180, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 35, 'tyla_la_04200.jpg', 4200, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 35, 'tyla_la_04220.jpg', 4220, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 35, 'tyla_la_04240.jpg', 4240, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 40, 'tyla_uf_04260.jpg', 4260, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 40, 'tyla_uf_04280.jpg', 4280, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 40, 'tyla_uf_04300.jpg', 4300, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 36, 'tyla_oc_04360.jpg', 4360, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 43, 'tyla_op_04400.jpg', 4400, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 44, 'tyla_op_04420.jpg', 4420, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 38, 'tyla_pc_04440.jpg', 5082, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 46, 'nida_nta_04760.jpg', 4760, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 18, 'tbuild_t10_04480.jpg', 4480, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 26, 'tbuild_t15_04540.jpg', 4540, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 28, 'tbuild_t17_04720.jpg', 4720, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 29, 'tbuild_t20_04560.jpg', 4560, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 30, 'tbuild_t21_04580.jpg', 4580, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 31, 'tbuild_t23_04600.jpg', 4600, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 39, 'gc_tornio_04920.jpg', 4920, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 20, 'tbuild_pv_04640.jpg', 4640, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 22, 'tbuild_ts_04680.jpg', 4680, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 23, 'tbuild_tt_04700.jpg', 4700, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 25, 'tbuild_t14_04520.jpg', 4520, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 45, 'nida_np_04740.jpg', 4740, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 47, 'nida_ntw_04780.jpg', 4780, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 48, 'nida_nty_04800.jpg', 4800, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 40, 'tyla_uf_05100.jpg', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 34, 'tyla_kf_05000.jpg', 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 19, 'tbuild_t24_04840.jpg', 4840, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 19, 'tbuild_t24_04860.jpg', 4860, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 19, 'tbuild_t24_04880.jpg', 4880, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 19, 'tbuild_t24_04900.jpg', 4900, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 39, 'gc_tornio_04940.jpg', 4940, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 39, 'gc_tornio_04960.jpg', 4960, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 39, 'gc_tornio_04980.jpg', 4980, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 39, 'gc_tornio_05000.jpg', 5000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 39, 'gc_tornio_05020.jpg', 5020, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 39, 'gc_tornio_05040.jpg', 5040, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 38, 'gc_borkum_05060.jpg', 5060, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 38, 'gc_borkum_05080.jpg', 5080, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Plan Images' AUTO_INCREMENT=59 ;

--
-- Dumping data for table plans
--

INSERT INTO plans (id, product_id, imgfile, disporder, title, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (1, 32, 'tyla_cg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 32, 'tyla_cg_01.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 33, 'tyla_ct_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 33, 'tyla_ct_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 34, 'tyla_kf_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 34, 'tyla_kf_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 34, 'tyla_kf_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 35, 'tyla_la_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 35, 'tyla_la_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 40, 'tyla_uf_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 40, 'tyla_uf_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 40, 'tyla_uf_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 40, 'tyla_uf_04.jpg', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 'nida_na_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 4, 'nida_nida_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 45, 'nida_np_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 6, 'nida_ns_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 7, 'nida_nt_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 46, 'nida_nta_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 47, 'nida_ntw_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 47, 'nida_ntw_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 48, 'nida_nty_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 9, 'nida_nv_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 20, 'tbuild_pv_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 20, 'tbuild_pv_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 18, 'tbuild_t10_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 24, 'tbuild_t12_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 24, 'tbuild_t12_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 25, 'tbuild_t14_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 25, 'tbuild_t14_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 26, 'tbuild_t15_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 26, 'tbuild_t15_01.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 28, 'tbuild_t17_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 28, 'tbuild_t17_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 27, 'tbuild_t17t_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 27, 'tbuild_t17t_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 29, 'tbuild_t20_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 29, 'tbuild_t20_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 30, 'tbuild_t21_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 30, 'tbuild_t21_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 31, 'tbuild_t23_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 31, 'tbuild_t23_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 19, 'tbuild_t24_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 19, 'tbuild_t24_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 21, 'tbuild_tg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 21, 'tbuild_tg_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 22, 'tbuild_ts_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 23, 'tbuild_tt_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 36, 'tyla_oc_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 36, 'tyla_oc_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 36, 'tyla_oc_03.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 37, 'tyla_op_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 38, 'tyla_pc_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 38, 'tyla_pc_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 44, 'tyla_rg_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 39, 'tyla_sw_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 39, 'tyla_sw_02.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 43, 'tyla_vn_01.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Product Prices' AUTO_INCREMENT=750 ;

--
-- Dumping data for table prodprices
--

INSERT INTO prodprices (id, product_id, prodvariation_id, rangeoption_id, pivot, price, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (651, 7, 28, 2, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 7, 27, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 7, 26, 2, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 7, 25, 2, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 7, 24, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 7, 23, 2, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 7, 22, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 6, 21, 2, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 6, 20, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 6, 19, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 6, 18, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 6, 17, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 6, 16, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 6, 15, 2, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 5, 7, 2, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 5, 6, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 5, 5, 2, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 5, 4, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 5, 3, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 5, 2, 2, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 5, 1, 2, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 4, 9, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 4, 8, 2, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 4, 14, 2, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 4, 13, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 4, 12, 2, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 4, 11, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 4, 10, 2, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 7, 28, 1, 60, 225, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 7, 27, 1, 60, 200, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 7, 26, 1, 60, 194, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 7, 25, 1, 60, 172, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 6, 21, 1, 60, 173, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 6, 20, 1, 60, 154, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 6, 19, 1, 60, 149, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 6, 18, 1, 60, 132, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 5, 7, 1, 60, 232, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 5, 6, 1, 60, 206, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 5, 5, 1, 60, 200, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 5, 4, 1, 60, 177, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 4, 14, 1, 60, 173, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 4, 13, 1, 60, 154, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 4, 12, 1, 60, 149, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 4, 11, 1, 60, 132, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 7, 28, 1, 45, 224, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 7, 27, 1, 45, 198, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 7, 26, 1, 45, 191, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 7, 25, 1, 45, 169, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 7, 24, 1, 45, 140, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 7, 23, 1, 45, 140, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 7, 22, 1, 45, 117, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 6, 21, 1, 45, 172, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 6, 20, 1, 45, 152, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 6, 19, 1, 45, 147, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 6, 18, 1, 45, 130, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 6, 17, 1, 45, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 6, 16, 1, 45, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 6, 15, 1, 45, 90, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 5, 7, 1, 45, 230, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 5, 6, 1, 45, 204, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 5, 5, 1, 45, 197, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 5, 4, 1, 45, 174, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 5, 3, 1, 45, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 5, 2, 1, 45, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 5, 1, 1, 45, 121, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 4, 9, 1, 45, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 4, 8, 1, 45, 90, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 4, 14, 1, 45, 172, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 4, 13, 1, 45, 152, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 4, 12, 1, 45, 147, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 4, 11, 1, 45, 130, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 4, 10, 1, 45, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 7, 28, NULL, 60, 4447, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 7, 27, NULL, 60, 3680, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 7, 26, NULL, 60, 3897, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 7, 25, NULL, 60, 3538, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 6, 21, NULL, 60, 3981, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 6, 20, NULL, 60, 3206, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 6, 19, NULL, 60, 3495, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 6, 18, NULL, 60, 3150, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 5, 7, NULL, 60, 4725, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 5, 6, NULL, 60, 3936, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 5, 5, NULL, 60, 4239, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 5, 4, NULL, 60, 3880, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 4, 14, NULL, 60, 3760, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 4, 13, NULL, 60, 2998, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 4, 12, NULL, 60, 3274, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 4, 11, NULL, 60, 2942, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 7, 28, NULL, 45, 3552, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 7, 27, NULL, 45, 3258, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 7, 26, NULL, 45, 3159, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 7, 25, NULL, 45, 2873, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 7, 24, NULL, 45, 2495, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 7, 23, NULL, 45, 2341, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 7, 22, NULL, 45, 2055, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 6, 21, NULL, 45, 3141, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 6, 20, NULL, 45, 2838, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 6, 19, NULL, 45, 2811, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 6, 18, NULL, 45, 2534, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 6, 17, NULL, 45, 2162, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 6, 16, NULL, 45, 2192, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 6, 15, NULL, 45, 1838, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 5, 7, NULL, 45, 3708, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 5, 6, NULL, 45, 3391, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 5, 5, NULL, 45, 3378, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 5, 4, NULL, 45, 3087, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 5, 3, NULL, 45, 2636, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 5, 2, NULL, 45, 2745, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 5, 1, NULL, 45, 2312, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 4, 9, NULL, 45, 1984, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 4, 8, NULL, 45, 1660, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 4, 14, NULL, 45, 2920, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 4, 13, NULL, 45, 2630, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 4, 12, NULL, 45, 2590, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 4, 11, NULL, 45, 2326, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 4, 10, NULL, 45, 1984, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 4, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 4, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 4, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 4, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 7, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 7, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 7, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 7, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 6, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 6, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 6, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 6, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 5, NULL, 6, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 5, NULL, 5, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 5, NULL, 4, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 5, NULL, 3, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 14, 57, NULL, 40, 4800, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 15, 58, NULL, 40, 5675, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 16, 59, NULL, 40, 9200, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 17, 60, NULL, 40, 14700, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 18, 29, NULL, 45, 1742, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 19, 38, NULL, 45, 3242, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 20, 70, NULL, NULL, 727, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 21, 61, NULL, 45, 2025, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 22, 39, NULL, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 23, 40, NULL, NULL, 223, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 24, 30, NULL, 45, 1863, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 25, 31, NULL, 45, 1215, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 26, 32, NULL, 45, 1315, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 27, 34, NULL, 45, 1519, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 28, 33, NULL, 45, 1296, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 29, 35, NULL, 30, 724, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 30, 36, NULL, 30, 620, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 31, 37, NULL, 30, 1034, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 32, 52, NULL, 60, 12522, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 32, 52, NULL, 95, -1, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 33, 53, NULL, 60, 14100, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 33, 53, NULL, 95, -1, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 34, 54, NULL, 45, 6645, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 34, 54, NULL, 60, 8765, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 35, 55, NULL, 45, 4968, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 35, 55, NULL, 60, 6919, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 35, 55, NULL, 95, 9868, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 36, 71, NULL, 45, 2250, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 36, 72, NULL, 45, 2500, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 36, 73, NULL, 45, 3300, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 36, 74, NULL, 45, 2330, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 36, 75, NULL, 45, 2600, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 36, 76, NULL, 45, 3415, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 37, 67, NULL, NULL, 1675, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 38, 62, NULL, 45, 1660, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 39, 63, NULL, 45, 1523, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 39, 64, NULL, 45, 1775, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 39, 65, NULL, 45, 2126, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 39, 66, NULL, 45, 2543, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 40, 56, NULL, 60, 11354, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 40, 56, NULL, 95, 15054, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 43, 69, NULL, NULL, 1995, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 44, 68, NULL, NULL, 1910, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 32, 52, 7, NULL, 427, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 33, 53, 7, NULL, 427, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 34, 54, 7, NULL, 427, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 35, 55, 7, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 14, 57, 10, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 15, 58, 10, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 16, 59, 10, NULL, -2, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 17, 60, 10, NULL, -2, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 14, 57, 11, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 15, 58, 11, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 16, 59, 11, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 17, 60, 11, NULL, 600, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 39, 77, NULL, 45, 3197, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 38, 62, 8, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 39, 63, 8, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 39, 64, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 39, 65, 8, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 39, 77, 8, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 39, 66, 8, NULL, 375, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 39, 63, 11, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 39, 64, 11, NULL, 350, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 39, 65, 11, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 39, 77, 11, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 39, 66, 11, NULL, 600, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 39, 63, 13, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 39, 64, 13, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 39, 65, 13, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 39, 77, 13, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 39, 66, 13, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 37, 67, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 44, 68, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 43, 69, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 36, 71, 8, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 36, 72, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 36, 73, 8, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 36, 74, 8, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 36, 75, 8, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 36, 76, 8, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 37, 67, 14, NULL, 505, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 44, 68, 14, NULL, 505, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 43, 69, 14, NULL, 505, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 36, 71, 14, NULL, 470, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 36, 72, 14, NULL, 505, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 36, 73, 14, NULL, 580, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 36, 74, 14, NULL, 470, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 36, 75, 14, NULL, 505, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 36, 76, 14, NULL, 580, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 20, 70, 15, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 36, 71, 9, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 36, 72, 9, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 36, 73, 9, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 36, 74, 9, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 36, 75, 9, NULL, 165, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 36, 76, 9, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Product Ranges' AUTO_INCREMENT=12 ;

--
-- Dumping data for table prodranges
--

INSERT INTO prodranges (id, range, category_id, disporder, short_text, long_text, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (4, 'T-Buildings', 2, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Nida', 2, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Holiday Houses', 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Kota', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Summerhouses', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Garages', 2, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Garden Cabins', 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Pavilions', 2, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  id int(11) NOT NULL auto_increment,
  product varchar(50) default NULL,
  prodrange_id int(11) NOT NULL default '0',
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
) ENGINE=MyISAM COMMENT='Products' AUTO_INCREMENT=49 ;

--
-- Dumping data for table products
--

INSERT INTO products (id, product, prodrange_id, brochure, disporder, short_text, long_text, created_by, created, created_at, updated_by, updated, updated_at) VALUES (4, 'Nida', 5, 'nida_nida.pdf', 10, '', 'Roof projection: Front 0.70 m\r\nBack 0.20 m\r\nSide 0.30 m\r\nWalls: 45 mm or (60 mm glued) double tongue and groove logs\r\nFloor: 20 mm tongue and groove floor boards on the impregnated base frame\r\nRoof: 20 mm tongue and groove roof boards\r\nDoor: 1 glued cartridge door 90/196 with seal\r\nWindows: 2 double-glazed 80/94 tilt ‘n‘ turn units', NULL, NULL, NULL, NULL, '2006-07-05 01:13:24', NULL),
(5, 'Nida A', 5, 'nida_na.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Nida S', 5, 'nida_ns.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Nida T', 5, 'nida_nt.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Nida V', 5, 'nida_nv.pdf', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Nida TAS', 5, 'nida_ntas.pdf', 80, 'Nida.', '', NULL, NULL, NULL, NULL, '2006-07-05 00:51:19', NULL),
(33, 'Cottage with Terrace', 6, 'tyla_ct.pdf', 20, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:03:05', NULL),
(32, 'Cottage', 6, 'tyla_cg.pdf', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '6.9m2', 7, 'kota_k069.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '9.9m2', 7, 'kota_k099.pdf', 2, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:07:22', NULL),
(16, '17.2m2', 7, 'kota_k172.pdf', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '27m2', 7, 'kota_k288.pdf', 4, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:34', NULL),
(18, 'T10', 4, 'tbuild_t10.pdf', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Chalet T24', 4, 'tbuild_t24.pdf', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Pavillion', 11, 'tbuild_pv.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'T Garage', 9, 'tbuild_tg.pdf', 0, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:40', NULL),
(22, 'T Shelter', 4, 'tbuild_ts.pdf', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'T Terrace', 4, 'tbuild_tt.pdf', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'T12', 4, 'tbuild_t12.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'T14', 4, 'tbuild_t14.pdf', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'T15', 4, 'tbuild_t15.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'T17+Terrace', 4, 'tbuild_t17t.pdf', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'T17', 4, 'tbuild_t17.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'T20', 4, 'tbuild_t20.pdf', 70, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:08:35', NULL),
(30, 'T21', 4, 'tbuild_t21.pdf', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'T23', 4, 'tbuild_t23.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Kaiserforst', 6, 'tyla_kf.pdf', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Laura', 6, 'tyla_la.pdf', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Sida', 11, 'tyla_oc.pdf', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Kaunas Pavilion', 11, 'tyla_op.pdf', 10, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:12:44', NULL),
(38, 'Borkum', 10, 'tyla_pc.pdf', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Tornio', 10, 'gc_tornio.pdf', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Ulmenfield', 6, 'tyla_uf.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Vilnius Pavilion', 11, 'tyla_vn.pdf', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Nida D', 5, 'nida_na.pdf', 30, '', '', NULL, NULL, NULL, NULL, '2006-07-05 01:08:40', NULL),
(44, 'Riga Pavilion', 11, 'tyla_rg.pdf', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Nida Panorama', 5, 'nida_np.pdf', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Nida TA', 5, 'nida_nta.pdf', 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Nida Tower', 5, 'nida_ntw.pdf', 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Nida Tyla', 5, 'nida_nty.pdf', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table prodvariations
--

CREATE TABLE prodvariations (
  id int(11) NOT NULL auto_increment,
  variation varchar(50) default NULL,
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
) ENGINE=MyISAM COMMENT='Product Variations' AUTO_INCREMENT=78 ;

--
-- Dumping data for table prodvariations
--

INSERT INTO prodvariations (id, variation, product_id, vlength, vbreadth, disporder, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (9, NULL, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 4, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 5, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 5, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 5, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 5, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 5, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 7, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 7, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 7, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 7, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 7, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 7, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 7, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 6, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 6, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 6, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 6, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 6, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 6, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 6, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 4, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 4, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 4, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 4, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, NULL, 5, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 18, 3.25, 4.45, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 24, 3.25, 4.45, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 25, 2.95, 3.25, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 26, 2.95, 3.25, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 28, 2.95, 3.25, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 27, 2.95, 3.25, 60, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 29, 2.95, 2.5, 70, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, 30, 2.2, 2.5, 80, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 31, 2.95, 3.25, 90, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 19, 4, 6.5, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 22, 3.35, 1.8, 110, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 23, 1.5, 3.05, 120, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, 32, 7, 8.5, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, 33, 10.45, 8.5, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, 34, 4.7, 5.1, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, 35, 4.3, 5.5, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, 40, 6.45, 6.2, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, 14, 3.149, 3.149, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, 15, 3.81, 3.81, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, 16, 5.009, 5.009, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, 17, 6.05, 6.05, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, 21, 5.36, 3.8, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, 38, 3, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, 39, 3, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, 39, 3, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, 39, 4, 4, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, 39, 5, 5, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, 37, 3.14, 3.4, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, 44, 3.14, 3.4, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, 43, 3.14, 3.4, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, 20, 3, 3, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Type 1: 1/2 glazed door 70/193 and 2 windows 70/94', 36, 2.8, 3.03, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Type 2: 1/2 glazed door 90/193 and 2 windows 90/94', 36, 3.14, 3.4, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Type 3: 1/2 glazed door 90/193 and 2 windows 100/9', 36, 4, 4.34, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Type 1: 3/4 glazed door 70/193 and 2 windows 70/13', 36, 2.8, 3.03, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Type 2: 3/4 glazed door 90/193 and 2 windows 90/13', 36, 3.14, 3.4, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Type 3: 3/4 glazed door 90/193 and 2 windows 100/1', 36, 4, 4.34, 60, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Tornio', 39, 5, 4, 35, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Range Options' AUTO_INCREMENT=16 ;

--
-- Dumping data for table rangeoptions
--

INSERT INTO rangeoptions (id, rangeoption, prodrange_id, disporder, short_text, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (2, 'Shingles', 5, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Single Window', 5, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Double Window', 5, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Single Door', 5, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Double Door', 5, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Shutters', 0, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Roof Shingles', 0, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Larger Windows', 0, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Smoke Stack', 0, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Build', 0, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Package 1', 0, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Terrace', 0, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Furniture', 0, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Single Fence', 0, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM COMMENT='Tabs' AUTO_INCREMENT=6 ;

--
-- Dumping data for table tabs
--

INSERT INTO tabs (id, page, tab, disporder, created_by, created_on, created_at, updated_by, updated_on, updated_at) VALUES (1, 'product', 'Product', 10, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'product', 'Gallery', 20, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'product', 'Plans', 30, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table upload
--

CREATE TABLE upload (
  uplfile varchar(255) NOT NULL default '',
  docdate date NOT NULL default '0000-00-00',
  doctype char(1) NOT NULL default 'I',
  PRIMARY KEY  (uplfile)
) ENGINE=MyISAM COMMENT='Uploaded Files';

--
-- Dumping data for table upload
--

