<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * West Coast Express Website
 * Copyright (c) 2006-2007 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Top of the page
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  13-Apr-2006  File created.
 * CAM  31-May-2006  Added hidden toolbar navigation.
 * CAM  02-Feb-2007  10069 : Added Change Password.
 * CAM  11-Aug-2007  10149 : Remove height restriction on table.
 * CAM  11-Aug-2007  10151 : Display a random boattrans image - either 2 or 3.
 * CAM  11-Aug-2007  10154 : Added Feedback option.
 * * * * * * * * * * * * * * * * * * * * * * * */

include_once 'Main.php';
$member = NULL;  if (session_is_registered('member_person')) $member = $_SESSION['member_person'];
$loggedin = (session_is_registered('memberid') && session_is_registered('westcoastexpress_net'));

if (empty($title)) {
  $title = $cfg['Site']['Name'];
} else {
  $title = $cfg['Site']['Name'] . " - $title";
}

$toolbar = "none";
if ($loggedin || (endsWith($_SERVER['REQUEST_URI'], "login.php"))) {
  $toolbar = "inline";
}

$boattrans_idx = ((rand()%2)+2);  // a number between 2 and 3

?>
<html>
<head>
  <title><? echo $title;?></title>
  <link href="wce.css" rel=stylesheet type="text/css" />
  <script language="Javascript" src="date.js"></script>
  <script language="Javascript" src="ajax.js"></script>
</head>
<body topmargin=8 leftmargin=0>
<table border=0 cellspacing=0 cellpadding=0 align=center ><tr>
<td valign=top><table border=0 cellspacing=0 cellpadding=0 align=center>

<tr>
  <td><table border=0 cellpadding=0 cellspacing=0 class="topbanner" width=800>
    <tr>
      <td align=right class="toolbar" colspan=6 height=10 id="tb"><table id="tbtab" style="display:<? echo $toolbar; ?>" border=0 cellpadding=5 cellspacing=0>
        <tr height=24>
<?
if (!$loggedin) {
?>
          <td><a class="tbr" href="login.php">LOGIN</a></td>
<?
}
if ($loggedin) {
?>
          <td><a class="tbr" href="changepass.php">CHANGE PASSWORD</a></td>
          <td><a class="tbr" href="logout.php">LOGOUT</a></td>
<?
}
?>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width=175 align=center><img src="img/boattrans<? echo $boattrans_idx; ?>.jpg"></td>
      <td colspan=4 class="whitebox" align=center><img src="img/wce1.gif"></td>
      <td width=175 align=center><img onclick="toogleToolbar();" src="img/parceldel1.jpg"></td>
    </tr>
    <tr height=26>
      <td class="redbanner" align=center><a class="nav" href="index.php">BOAT TRANSPORT</a></td>
      <td class="redbanner" align=center><a class="nav" href="feedback.php">FEEDBACK</a></td>
      <td class="redbanner" width=150 align=center><a class="nav" href="contact.php">CONTACT US</a></td>
      <td class="redbanner" width=150 align=center><a class="nav" href="request.php">REQUEST QUOTE</a></td>
      <td class="redbanner" width=150 align=center><a class="nav" href="photos.php">PHOTOS</a></td>
      <td class="redbanner" align=center><a class="nav" href="express.php">EXPRESS DELIVERY</a></td>
    </tr>
  </table></td>
</tr>

<tr>
  <td align=center class="bodybox">
