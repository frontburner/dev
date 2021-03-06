/* * * * * * * * * * * * * * * * * * * * * * * *
 * Airylea Motors Website
 * Copyright (c) 2008 Frontburner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Javascript - AJAXesque stuff!
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  28-Aug-2008  10280 : File created.
 * CAM  14-Mar-2009  10334 : Moved to JS folder along with Lightbox.
 * * * * * * * * * * * * * * * * * * * * * * * */

function getObjRef(ref) {
  return document.all ? document.all[ref] : document.getElementById(ref);
}

var tbtab;
var tb;
var tbGrow;
var tbShrink;

var tbMin = 10;
var tbMax = 24;
var tbInc = 2;
var tbDel = 10;

function growToolbar() {
  var h = tb.style.height;
  if (h == "") h=tbMin;
  h = parseInt(h);

  if (h >= tbMax) {
    clearTimeout(tbGrow);
    tbtab.style.display = "inline";
  } else {
    tb.style.height = (h + tbInc) + "px";
    tbGrow = setTimeout("growToolbar();", tbDel);
  }
}

function shrinkToolbar() {
  var h = tb.style.height;
  if (h == "") h=tbMax;
  h = parseInt(h);

  if (h <= tbMin) {
    clearTimeout(tbShrink);
  } else {
    tb.style.height = (h - tbInc) + "px";

    if (tbtab.style.display != "none") {
      tbtab.style.display = "none";
    }

    tbShrink = setTimeout("shrinkToolbar();", tbDel);
  }
}

function toogleToolbar() {
  tbtab = getObjRef("tbtab");
  tb = getObjRef("toolbar");

  if (tbtab.style.display == "none") {
    tbGrow = setTimeout("growToolbar();", tbDel);
  } else {
    tbShrink = setTimeout("shrinkToolbar();", tbDel);
  }
}