<?
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Relaxatub
 * Copyright (c) 2006 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Tuple class
 *
 * $Id: activate.php 84 2006-05-11 18:55:49Z craig $
 *
 * Who  When         Why
 * CAM  18-Jul-2006  File added to source control.
 * * * * * * * * * * * * * * * * * * * * * * * */

class Tuple {

  // ----- Instance Variables --------------------------------------------- //

  /**
  * The ID.
  * @private
  * @type Object
  */
  var $id = NULL;


  /**
  * The Description.
  * @private
  * @type String
  */
  var $desc = NULL;


  // ----- Properties ----------------------------------------------------- //

  /**
  * Set the ID.
  *
  * @public
  * @returns Object
  */
  function setID($id) {
    $this->id = $id;
  }

  /**
  * Return the ID.
  *
  * @public
  * @returns
  */
  function getID() {
    return $this->id;
  }


  /**
  * Set the Description.
  *
  * @public
  * @returns
  */
  function setDesc($desc) {
    $this->desc = $desc;
  }

  /**
  * Return the ID.
  *
  * @public
  * @returns String
  */
  function getDesc() {
    return $this->desc;
  }


  // ----- Constructors --------------------------------------------------- //

  /**
  * Construct a new Tuple.
  *
  * @param Object The ID.
  * @param String The Description.
  *
  * @public
  * @returns
  */
  function Tuple($id='', $desc='') {
    $this->id = $id;
    $this->desc = $desc;
  }


  // ----- Public Methods ------------------------------------------------- //

  /**
  * Format this Tuple as an HTML String.
  *
  * @param boolean Show ID
  *
  * @public
  * @returns String
  */
  function toHtmlString($showID=false) {
    $rval = "<b>" . $this->desc . "</b>";

    if ($showID) $rval .= " (<b>" . $this->id . "</b>)";

    return $rval;
  }

  /**
  * Format this Tuple as an HTML String.
  *
  * @param boolean Show ID
  *
  * @public
  * @returns String
  */
  function toString($showID=false) {
    $rval = $this->desc;

    if ($showID) $rval .= " (" . $this->id . ")";

    return $rval;
  }
}
?>