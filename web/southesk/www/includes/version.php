<?php
/**
* @version $Id$
* @package Mambo_4.5.1
* @copyright (C) 2000 - 2004 Miro International Pty Ltd
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* Mambo is Free Software
*/

/** Version information */
class version {
	/** @var string Product */
	var $PRODUCT = 'Mambo';
	/** @var int Main Release Level */
	var $RELEASE = '4.5';
	/** @var string Development Status */
	var $DEV_STATUS = 'Stable';
	/** @var int Sub Release Level */
	var $DEV_LEVEL = '1a';
	/** @var string Codename */
	var $CODENAME = 'Three For Rum';
	/** @var string Date */
	var $RELDATE = '29/09/2004';
	/** @var string Time */
	var $RELTIME = '20:11';
	/** @var string Timezone */
	var $RELTZ = 'GMT';
	/** @var string Copyright Text */
	var $COPYRIGHT = 'Copyright 2000 - 2004 Miro International Pty Ltd.  All rights reserved.'; 
	/** @var string URL */
	var $URL = '<a href="http://www.mamboserver.com">Mambo</a> is Free Software released under the GNU/GPL License.';
}
$_VERSION =& new version();

$version = "Version: " . $_VERSION->PRODUCT . " " . $_VERSION->RELEASE . ".". $_VERSION->DEV_LEVEL . " "
. $_VERSION->DEV_STATUS
. " [".$_VERSION->CODENAME ."] " . $_VERSION->RELDATE . " "
. $_VERSION->RELTIME . " " . $_VERSION->RELTZ;
?>
