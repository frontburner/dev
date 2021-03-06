<?
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Relaxatub
 * Copyright (c) 2006,2010 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Contact page
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  18-Jul-2006  File added to source control.
 * CAM  14-Feb-2008  10243 : Highlight link associated with current page.
 * CAM  26-Apr-2008  10261 : Added opening hours.
 * CAM  11-Aug-2009  10469 : Auto-year on copyright.
 * CAM  01-Mar-2010  10586 : Reinstate address and telephone number (new business line).
 * CAM  29-Mar-2010  10613 : Changed email address to sales@.
 * * * * * * * * * * * * * * * * * * * * * * * */

$pageId = "pagecontact";
$pageTitle = "Contact us - Visit our Showroom";
include "tpl/top.php";
?>
<table border=0 cellpadding=0 cellspacing=8 align=left width="100%">

<tr>

  <td colspan=2><img src="img/tt/contact.gif" width="110" height="21" alt="Contact Relaxatub.com"></td>

</tr><tr>

  <td align=center>

    <table border=0 cellspacing=4 cellpadding=2>
    <tr>
      <td valign=top>
        <table border=0 cellspacing=0 cellpadding=4>
        <tr>
          <td class="fldlbl">Telephone</td><td class="fldtxt">01224 <b>870 959</b></td>
        </tr>
        <tr>
          <td class="fldlbl" valign=top>Visit our Showroom</td><td class="fldtxt">The Fishing Station<br />
          Burnbanks<br />
          Aberdeen, UK<br />
          AB12 3WN<br /></td></tr>
        </tr>
        </table>
      </td>
      <td valign=top>
        <table border=0 cellspacing=0 cellpadding=4>
        <tr>
          <td valign=top class="fldlbl">Email</td><td valign=top class="fldtxt"><a href="mailto:sales@relaxatub.com?subject=Website%20Response">sales@relaxatub.com</a></td>
        </tr>
        <tr>
          <td class="fldlbl" valign=top>Opening Hours</td><td class="fldtxt">
            <table border=0 cellspacing=0 cellpadding=0>
              <tr><td><b>Mon - Fri</b></td><td>&nbsp;10pm-5pm</td></tr>
              <tr><td><b>Sat</b></td><td>&nbsp;10am-2pm</td></tr>
            </table>
          </td>
        </tr>
        <tr><td colspan=2>Outwith these hours please call 07803 281 752</td></tr>
        </table>
      </td>
    </tr>
    </table>

  </td>

<!--
  <td align=center><img src="img/bcht1.gif"></td>
-->

</tr><tr>

  <td colspan=2 align=center><img src="img/map2.jpg" width="560" height="442" alt="Map to reach us"></td>
</tr>

</table>

<?
  include "tpl/bot.php";
?>