<?
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Relaxatub
 * Copyright (c) 2006 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * FAQ
 *
 * $Id: activate.php 84 2006-05-11 18:55:49Z craig $
 *
 * Who  When         Why
 * CAM  18-Jul-2006  File added to source control.
 * * * * * * * * * * * * * * * * * * * * * * * */

$pageTitle = "Frequently Asked Questions";
include_once 'main.php';
include "tpl/top.php";
?>

<table align=left valign=top border=0 cellpadding=0 cellspacing=5>

<?
    $sql = "SELECT * FROM faq ORDER BY faqno";
    $res = mysql_query($sql) or die('<pre>Error in <b>'.$sql.'</b></pre>');

    while ($row = mysql_fetch_array($res)) {
      foreach($row AS $key => $val) {
        $$key = stripslashes($val);
      }

      print "<tr><td class=\"faqno\" rowspan=\"4\" valign=top width=\"25\">$faqno</td><td class=\"faqsum\"><b>$summary</b></td></tr>";
      print "<tr><td class=\"faqq\">$question</td></tr>";
      print "<tr><td class=\"faqa\">$answer</td></tr>";
      print "<tr><td>&nbsp;</td></tr>";
    }
?>

</table>

<?
  include "tpl/bot.php";
?>