<?php
/**
* @version $Id$
* @package Mambo_4.5.1
* @copyright (C) 2000 - 2004 Miro International Pty Ltd
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* Mambo is Free Software
*/

/** ensure this file is being included by a parent file */
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

// ensure user has access to this function
if (!($acl->acl_check( 'administration', 'edit', 'users', $my->usertype, 'mambots', 'all' )
| $acl->acl_check( 'administration', 'install', 'users', $my->usertype, 'mambots', 'all' ))) {
        mosRedirect( 'index2.php', _NOT_AUTH );
}

require_once( $mainframe->getPath( 'admin_html' ) );

$client = mosGetParam( $_REQUEST, 'client', '' );
$cid = mosGetParam( $_POST, 'cid', array(0) );
if (!is_array( $cid )) {
	$cid = array(0);
}

switch ( $task ) {

	case 'new':
	case 'edit':
		editMambot( $option, $cid[0], $client );
		break;

	case 'save':
		saveMambot( $option, $client );
		break;

	case 'remove':
		removeMambot( $cid, $option, $client );
		break;

	case 'cancel':
		cancelMambot( $option, $client );
		break;

	case 'publish':
	case 'unpublish':
		publishMambot( $cid, ($task == 'publish'), $option, $client );
		break;

	case 'orderup':
	case 'orderdown':
		orderMambot( $cid[0], ($task == 'orderup' ? -1 : 1), $option, $client );
		break;

	case 'accesspublic':	
	case 'accessregistered':
	case 'accessspecial':
		accessMenu( $cid[0], $task, $option, $client );
		break;

	default:
		viewMambots( $option, $client );
		break;
}

/**
* Compiles a list of installed or defined modules
*/
function viewMambots( $option, $client ) {
	global $database, $mainframe, $mosConfig_list_limit;
	global $mosConfig_absolute_path;

	if ($client == 'admin') {
		$where = "client_id='1'";
	} else {
		$where = "client_id='0'";
	}

	$limit = $mainframe->getUserStateFromRequest( "viewlistlimit", 'limit', $mosConfig_list_limit );
	$limitstart = $mainframe->getUserStateFromRequest( "view{$option}limitstart", 'limitstart', 0 );

	// get the total number of records
	$query = "SELECT count(*) FROM #__mambots WHERE $where";
	$database->setQuery( $query );
	$total = $database->loadResult();

	require_once( $GLOBALS['mosConfig_absolute_path'] . '/administrator/includes/pageNavigation.php' );
	$pageNav = new mosPageNav( $total, $limitstart, $limit );

	$query = "SELECT m.*, u.name AS editor, g.name AS groupname"
	. "\n FROM #__mambots AS m"
	. "\n LEFT JOIN #__users AS u ON u.id = m.checked_out"
	. "\n LEFT JOIN #__groups AS g ON g.id = m.access"
	. "\n WHERE $where"
	. "\n GROUP BY m.id"
	. "\n ORDER BY m.folder ASC, m.ordering ASC, m.name ASC"
	. "\n LIMIT $pageNav->limitstart,$pageNav->limit"
	;
	$database->setQuery( $query );
	$rows = $database->loadObjectList();
	if ($database->getErrorNum()) {
		echo $database->stderr();
		return false;
	}

	HTML_modules::showMambots( $rows, $client, $pageNav, $option );
}

/**
* Saves the module after an edit form submit
*/
function saveMambot( $option, $client ) {
	global $database;

	$params = mosGetParam( $_POST, 'params', '' );
	if (is_array( $params )) {
		$txt = array();
		foreach ($params as $k=>$v) {
			$txt[] = "$k=$v";
		}
		$_POST['params'] = implode( "\n", $txt );
	}

	$row = new mosMambot( $database );
	if (!$row->bind( $_POST )) {
		echo "<script> alert('".$row->getError()."'); window.history.go(-1); </script>\n";
		exit();
	}
	if (!$row->check()) {
		echo "<script> alert('".$row->getError()."'); window.history.go(-1); </script>\n";
		exit();
	}
	if (!$row->store()) {
		echo "<script> alert('".$row->getError()."'); window.history.go(-1); </script>\n";
		exit();
	}
	$row->checkin();
	if ($client == 'admin') {
		$where = "client_id='1'";
	} else {
		$where = "client_id='0'";
	}
	$row->updateOrder( "folder='$row->folder' AND ordering > -10000 AND ordering < 10000 AND ($where)" );

	mosRedirect( 'index2.php?option='. $option .'&client='. $client );
}

/**
* Compiles information to add or edit a module
* @param string The current GET/POST option
* @param integer The unique id of the record to edit
*/
function editMambot( $option, $uid, $client ) {
	global $database, $my, $mainframe;
	global $mosConfig_absolute_path;

	$lists = array();
	$row = new mosMambot($database);

	// load the row from the db table
	$row->load( $uid );

	// fail if checked out not by 'me'
	if ($row->checked_out && $row->checked_out <> $my->id) {
		echo "<script>alert('The module $row->title is currently being edited by another administrator'); document.location.href='index2.php?option=$option'</script>\n";
		exit(0);
	}

	if ($uid) {
		$row->checkout( $my->id );
	}
	if ($client == 'admin') {
		$where = "client_id='1'";
	} else {
		$where = "client_id='0'";
	}

	if ( !$uid ) {
		$row->folder = '';
		$row->ordering = 999;
		$row->published = 1;
	}

	// get list of groups
	if ($row->access == 99 || $row->client_id == 1) {
		$lists['access'] = 'Administrator<input type="hidden" name="access" value="99" />';
	} else {
		// build the html select list for the group access
		$lists['access'] = mosAdminMenus::Access( $row );
	}

	$lists['published'] = mosHTML::yesnoRadioList( 'published', 'class="inputbox"', $row->published );

	if ($uid) {
	    if ($row->ordering > -10000 && $row->ordering < 10000) {
			// build the html select list for ordering
			$query = "SELECT ordering AS value, name AS text"
			. "\n FROM #__mambots"
			. "\n WHERE folder='$row->folder'"
			. "\n AND published > 0"
			. "\n AND $where"
			. "\n AND ordering > -10000"
			. "\n AND ordering < 10000"
			. "\n ORDER BY ordering"
			;
			$order = mosGetOrderingList( $query );
			$lists['ordering'] = mosHTML::selectList( $order, 'ordering', 'class="inputbox" size="1"', 'value', 'text', intval( $row->ordering ) );
		} else {
			$lists['ordering'] = '<input type="hidden" name="ordering" value="'. $row->ordering .'" />This mambot cannot be reordered';
		}
		$lists['folder'] = '<input type="hidden" name="folder" value="'. $row->folder .'" />'. $row->folder;
	} else {
		$lists['ordering'] = '<input type="hidden" name="ordering" value="'. $row->ordering .'" />New items default to the last place';

		$folders = mosReadDirectory( $mosConfig_absolute_path . '/mambots/' );
		$folders2 = array();
		foreach ($folders as $folder) {
		    if (is_dir( $mosConfig_absolute_path . '/mambots/' . $folder )) {
		        $folders2[] = mosHTML::makeOption( $folder );
			}
		}
		$lists['folder'] = mosHTML::selectList( $folders2, 'folder', 'class="inputbox" size="1"', 'value', 'text', null );
	}

    $row->description = '';
	// XML library
	require_once( $mosConfig_absolute_path . '/includes/domit/xml_domit_lite_include.php' );
	// xml file for module
	$xmlfile = $mosConfig_absolute_path . '/mambots/' .$row->folder . '/' . $row->element .'.xml';
	$xmlDoc =& new DOMIT_Lite_Document();
	$xmlDoc->resolveErrors( true );
	if ($xmlDoc->loadXML( $xmlfile, false, true )) {
		$element = &$xmlDoc->documentElement;

		if ($element->getTagName() == 'mosinstall' && $element->getAttribute( 'type' ) == 'mambot' ) {
			$element = &$xmlDoc->getElementsByPath( 'description', 1 );
			$row->description = $element ? trim( $element->getText() ) : '';
		}
	}

	// get params definitions
	$params =& new mosParameters( $row->params, $mainframe->getPath( 'bot_xml', $row->folder.'/'.$row->element ), 'mambot' );

	HTML_modules::editMambot( $row, $lists, $params, $option );
}

/**
* Deletes one or more mambots
*
* Also deletes associated entries in the #__mambots table.
* @param array An array of unique category id numbers
*/
function removeMambot( &$cid, $option, $client ) {
	global $database, $my;

	if (count( $cid ) < 1) {
		echo "<script> alert('Select a module to delete'); window.history.go(-1);</script>\n";
		exit;
	}

	$cids = implode( ',', $cid );
	
	mosRedirect( 'index2.php?option=com_installer&element=mambot&client='. $client .'&task=remove&cid[]='. $cid );


	/*$database->setQuery( "SELECT id, name, iscore FROM #__mambots WHERE id IN ($cids)" );
	if (!($rows = $database->loadObjectList())) {
		echo "<script> alert('".$database->getErrorMsg()."'); window.history.go(-1); </script>\n";
	}

	$err = array();
	$cid = array();
	foreach ($rows as $row) {
		if ($row->iscore == 0) {
			$cid[] = $row->id;
		} else {
			$err[] = $row->name;
		}
	}

	if (count( $cid )) {
		$cids = implode( ',', $cid );
		$database->setQuery( "DELETE FROM #__mambots WHERE id IN ($cids)" );
		if (!$database->query()) {
			echo "<script> alert('".$database->getErrorMsg()."'); window.history.go(-1); </script>\n";
			exit;
		}
	}

	if (count( $err )) {
		$cids = addslashes( implode( "', '", $err ) );
		echo "<script>alert('Mambot(s): \'$cids\' cannot be deleted they can only be un-installed as they are Mambo modules.');</script>\n";
	}

	mosRedirect( 'index2.php?option='. $option .'&client='. $client );
	*/
}

/**
* Publishes or Unpublishes one or more modules
* @param array An array of unique category id numbers
* @param integer 0 if unpublishing, 1 if publishing
*/
function publishMambot( $cid=null, $publish=1, $option, $client ) {
	global $database, $my;

	if (count( $cid ) < 1) {
		$action = $publish ? 'publish' : 'unpublish';
		echo "<script> alert('Select a mambot to $action'); window.history.go(-1);</script>\n";
		exit;
	}

	$cids = implode( ',', $cid );

	$query = "UPDATE #__mambots SET published='$publish'"
	. "\n WHERE id IN ($cids)" 
	. "\n AND (checked_out=0 OR (checked_out='$my->id'))"
	;
	$database->setQuery( $query );
	if (!$database->query()) {
		echo "<script> alert('".$database->getErrorMsg()."'); window.history.go(-1); </script>\n";
		exit();
	}

	if (count( $cid ) == 1) {
		$row = new mosMambot( $database );
		$row->checkin( $cid[0] );
	}

	mosRedirect( 'index2.php?option='. $option .'&client='. $client );
}

/**
* Cancels an edit operation
*/
function cancelMambot( $option, $client ) {
	global $database;

	$row = new mosMambot( $database );
	$row->bind( $_POST );
	$row->checkin();

	mosRedirect( 'index2.php?option='. $option .'&client='. $client );
}

/**
* Moves the order of a record
* @param integer The unique id of record
* @param integer The increment to reorder by
*/
function orderMambot( $uid, $inc, $option, $client ) {
	global $database;

	// Currently Unsupported
	if ($client == 'admin') {
		$where = "client_id='1'";
	} else {
		$where = "client_id='0'";
	}
	$row = new mosMambot( $database );
	$row->load( $uid );
	$row->move( $inc, "folder='$row->folder' AND ordering > -10000 AND ordering < 10000 AND ($where)"  );

	mosRedirect( 'index2.php?option='. $option );
}

/**
* changes the access level of a record
* @param integer The increment to reorder by
*/
function accessMenu( $uid, $access, $option, $client ) {
	global $database;

	switch ( $access ) {
		case 'accesspublic':	
			$access = 0;
			break;

		case 'accessregistered':
			$access = 1;
			break;

		case 'accessspecial':
			$access = 2;
			break;
	} 

	$row = new mosMambot( $database );
	$row->load( $uid );
	$row->access = $access;

	if ( !$row->check() ) {
		return $row->getError();
	}
	if ( !$row->store() ) {
		return $row->getError();
	}

	mosRedirect( 'index2.php?option='. $option );
}

?>
