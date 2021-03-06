<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Top of the page
 * Copyright (c) 2005 frontburner.co.uk
 *
 * $Id$
 *
 * 2     11/02/06 22:14 Craig
 *
 * 1     28/12/05 15:47 Craig
 *
 * Who  When         Why
 * CAM  24-Nov-2005  File created.
 * CAM  11-Feb-2006  Included link to Addresses.
 * * * * * * * * * * * * * * * * * * * * * * * */

include_once 'Main.php';
$member = NULL;  if (session_is_registered('member_person')) $member = $_SESSION['member_person'];
$loggedin = session_is_registered('memberid');

if (empty($title)) {
  $title = $cfg['Site']['Name'];
} else {
  $title = $cfg['Site']['Name'] . " - $title";
}


?>
<head>
  <title><? echo $title;?></title>
  <link href="cc.css" rel=stylesheet type="text/css" />
  <script language="Javascript" src="date.js"></script>
  <script language="Javascript" src="fn.js"></script>
</head>

<body topmargin=0 leftmargin=0>

<table border=0 cellpadding=0 cellspacing=0 align=center>
<tr><td><table border=0 cellpadding=0 cellspacing=0 width="600" height="450" class=outerBox>
  <tr>
  <td valign=top><table border=0 cellpadding=4 cellspacing=0 width="100%" height="100%" class="thinBox">
    <tr><td class="title"><b><? echo $cfg['Site']['Name']; ?></b>&nbsp;-&nbsp;<? echo strftime("%a %d %b %H:%M"); ?></td>

    <td class="title" align=right><?php
      if ($loggedin) {
        echo $member->toHtmlString(true);
      } else {
        echo "&nbsp;";
      }
    ?></td>

    </tr>
    <tr><td colspan=2 class="topnav"><table border=0 cellpadding=0 cellspacing=0 class="topnav">
      <tr>
        <?
          if ($loggedin) {
?>
            <td><a class="nav" href="list.php">list</a><span class="sep">|</sep></td>
            <td><a class="nav" href="address.php">address</a><span class="sep">|</sep></td>
            <td><a class="nav" href="question.add.php">add question</a><span class="sep">|</sep></td>
            <td><a class="nav" href="quiz.php">quiz me</a><span class="sep">|</sep></td>
            <td><a class="nav" href="changepass.php">change password</a><span class="sep">|</sep></td>
<?
            if ($member->isAdmin()) {
?>
            <td><a class="nav" href="verify.php">verify</a><span class="sep">|</sep></td>
            <td><a class="nav" href="pdfupload.php">pdf upload</a><span class="sep">|</sep></td>
<?
            }
?>
            <td><a class="nav" href="logout.php">logout</a><span class="sep">|</sep></td>
<?
          } else {
?>
            <td><a class="nav" href="login.php">login</a><span class="sep">|</sep></td>
            <td><a class="nav" href="register.php">register</a><span class="sep">|</sep></td>
<?
          }
        ?>
        <td><a class="nav" href="help.php">help</a></td>
      </tr>
    </table></td></tr>
    </table></td></tr>

    <tr><td colspan=2 width="100%" height="100%" valign=top style="padding:5px">
