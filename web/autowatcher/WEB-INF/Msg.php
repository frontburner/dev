<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Msg Class
 * Copyright (c) 2006 frontburner.co.uk
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  30-Sep-2006  File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

/**
* Error handling.
*
* @author Craig McKay
* @version 2004
* @public
*/
class Msg {

  /**
  * Return the specific question in a formatted string.
  *
  * @public
  * @returns String
  */
  function question($quest) {
    echo "<p class=\"quest\">$quest?</p>";
  }

  /**
  * Return the specific statement in a formatted string.
  *
  * @public
  * @returns String
  */
  function statement($statement) {
    echo "<p class=\"statement\">$statement</p>";
  }

  /**
  * Return the specific error message in a formatted string.
  *
  * @public
  * @returns String
  */
  function error($err) {
    echo "<p class=\"err\">$err</p>";
  }
}
?>