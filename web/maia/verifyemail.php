<?
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Verify Email Address
 * Copyright (c) 2006 frontburner.co.uk
 *
 * $Log: /web/maia/verifyemail.php $
 * 
 * 1     3/02/06 1:52 Craig
 * 1000
 *
 * Who  When         Why
 * CAM  02-Feb-2006  File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

$title = "Email Verification";
include_once 'Main.php';
include 'tpl/top.php';

$username = NULL;         if (!empty($_GET['username'])) $username = $_GET['username'];
$code = NULL;             if (!empty($_GET['code'])) $code = $_GET['code'];

$sql = "UPDATE member SET verify_code = NULL, active = 1 ".
       "WHERE memberid='$username' ".
       "AND verify_code='$code'";

mysql_query($sql);

if(mysql_affected_rows() == 1){
  Msg::statement("Your email address has been verified - thank you.");
} else {
  Msg::error("Your email address could not be verified - please try again.");
}

include 'tpl/bot.php';
?>
