<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * ASRC.biz (Aberdeen Squash Racquets Club)
 *
 * Copyright (c) 2006 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * EmailMsg - Sends an Email
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  4-May-2005  File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

include_once 'Main.php';

/**
* EmailMsg information.
*
* @author Craig McKay
* @version 2005
* @public
*/
class EmailMsg {

  /**
  * Email Type (Notification or Reminder).
  * @private
  * @type String
  */
  var $emailType;

  /**
  * Description of Email Type (Notification or Reminder).
  * @private
  * @type String
  */
  var $typeDesc;

  /**
  * Booking Date (formatted).
  * @private
  * @type date (String)
  */
  var $bookDate;

  /**
  * Start time of Booking (formatted).
  * @private
  * @type time (String)
  */
  var $startTime;

  /**
  * Court ID.
  * @private
  * @type int
  */
  var $court;

  /**
  * Originator Member
  * @private
  * @type String
  */
  var $memberId;

  /**
  * Opponent Member
  * @private
  * @type String
  */
  var $opponentId;

  /**
  * Email for booking made on behalf on the Opponent
  * @private
  * @type boolean
  */
  var $behalf;

  function EmailMsg($emailType, $bookDate, $startTime, $court, $memberId, $opponentId='', $behalf=false) {
    $this->emailType = $emailType;
    $this->bookDate = date("l d M", strtotime($bookDate));
    $this->startTime = $startTime;
    $this->court = $court;
    $this->memberId = $memberId;
    $this->opponentId = $opponentId;
    $this->behalf = $behalf;

    if ($emailType == 'N') {
      $this->typeDesc = "Notification";
    } else {
      $this->typeDesc = "Reminder";
    }
  }

  function send() {
    $memPerson = Person::getPerson($this->memberId);

    $opp = false;
    if (!empty($this->opponentId)) {
      $oppPerson = Person::getPerson($this->opponentId);
      $opp = true;
    }

    $cr = "\r\n";
    $to = "";
    $cc = "";

    if ($this->behalf) {
      $to = $oppPerson->getEmail();
      if ($this->emailType == 'R') $cc = $memPerson->getEmail();
    } else {
      $to = $memPerson->getEmail();
      if ($opp) $cc = $oppPerson->getEmail();
    }

    $headers = "From: ASRC <bookings@asrc.biz>$cr";
    if (!empty($cc)) $headers .= "Cc: $cc$cr";
    $headers .= "MIME-Version: 1.0$cr";
    $headers .= "X-Priority: 1$cr";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1$cr";

    $base = "http://www.asrc.biz";

    $title = "Squash Booking " . $this->typeDesc;
    $subject = $title . ": " . $this->bookDate . " at " . $this->startTime;

    $message = "<html><head>".
    "<link href=$base/asrc.css rel=stylesheet type=text/css>".
    "</head><body>".
    "<table cellspacing=0 cellpadding=0 border=0 width=\"100%\">".
      "<tr><td valign=center align=center><table cellspacing=5 cellpadding=0 border=0>".
        "<tr>".
          "<td colspan=2 align=center><b>$title</b></td>".
        "</tr><tr>".
          "<td class=topnav><table width=\"100%\" border=0 cellpadding=2 class=thinBox>$cr".
            "<tr><td class=fld>Booking on </td><td>" . $this->bookDate . "</td></tr>$cr".
            "<tr><td class=fld>At </td><td>" . $this->startTime . "</td></tr>$cr".
            "<tr><td class=fld>On Court </td><td>" . $this->court . "</td></tr>$cr";

            if ($this->behalf) {
              $message .= "<tr><td class=fld>For you </td><td>" . $oppPerson->toHtmlString(true) . "</td></tr>$cr".
              "<tr><td class=fld>On your behalf by </td><td>" . $memPerson->toHtmlString(true) . "</td></tr>$cr";
            } else {
              $message .= "<tr><td class=fld>For you </td><td>" . $memPerson->toHtmlString(true) . "</td></tr>$cr";
              if ($opp) {
                $message .= "<tr><td class=fld>With </td><td>" . $oppPerson->toHtmlString(true) . "</td></tr>$cr";
              }
            }

          $message .= "</table></td>".
        "</tr></table>".
      "</td></tr>".
    "</table>".
    "</body></html>";

    mail($to,$subject,$message,$headers);
  }
}
?>