<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Parkers Retreat
 * Copyright (c) 2006 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Home Page Context
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  13-Apr-2006  File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

$tabs = 'OFF';

include 'tpl/top.php';
?>

<table border=0 cellpadding=0 cellspacing=0 width="100%" height="400">
<tr><td valign=middle align=center><table border=0 cellpadding=0 cellspacing=0  style="border:#D8D8D8 2px solid;"><tr>

<td><OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=600 HEIGHT=330>
 <PARAM NAME=movie VALUE="parkers.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF>
<EMBED src="parkers.swf" quality=high bgcolor=#FFFFFF  WIDTH=600 HEIGHT=330 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT></td></tr></table>
  </td></tr>
  <tr height=30><td valign=top align=center><a href="page.php?&tab=1">Skip Intro</a></td></tr>
  </table>
<?
include 'tpl/bot.php';
?>