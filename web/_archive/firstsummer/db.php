<?
/* * * * * * * * * * * * * * * * * * * * * * * *
 * First Summerhouses
 * Copyright (c) 2006 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Database Connectivity
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  10-Feb-2006  File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

global $cfg;

$cfg['Site']['Db']['Username'];

$connection = mysql_pconnect($cfg['Site']['Db']['Hostname'],
                             $cfg['Site']['Db']['Username'],
                             $cfg['Site']['Db']['Password'])
              or die ("Couldn't connect to server.");

$db = mysql_select_db($cfg['Site']['Db']['Database'], $connection)
      or die("Couldn't select database.");
?>