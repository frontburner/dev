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

/**
* @package Mambo_4.5.1
*/
class components_menu {
	/**
	* @param database A database connector object
	* @param integer The unique id of the category to edit (0 if new)
	*/
	function edit( $uid, $menutype, $option ) {
		global $database, $my, $mainframe;

		$menu = new mosMenu( $database );
		$menu->load( $uid );

		$row = new mosComponent( $database );
		// load the row from the db table
		$row->load( $menu->componentid );

		// fail if checked out not by 'me'
		if ( $menu->checked_out && $menu->checked_out <> $my->id ) {
			echo "<script>alert('The module $menu->title is currently being edited by another administrator'); document.location.href='index2.php?option=$option'</script>\n";
			exit(0);
		}

		if ( $uid ) {
			// do stuff for existing item
			$menu->checkout( $my->id );
		} else {
			// do stuff for new item
			$menu->type = 'components';
			$menu->menutype = $menutype;
			$menu->browserNav = 0;
			$menu->ordering = 9999;
			$menu->parent = intval( mosGetParam( $_POST, 'parent', 0 ) );
			$menu->published = 1;
		}

		$query = "SELECT c.id AS value, c.name AS text, c.link" 
		. "\n FROM #__components AS c"
		. "\n WHERE c.link <> ''" 
		. "\n ORDER BY c.name"
		;
		$database->setQuery( $query );
		$components = $database->loadObjectList( );

		// build the html select list for section
		$lists['componentid'] 	= mosAdminMenus::Component( $menu, $uid );

		// build the html select list for ordering
		$lists['ordering'] 		= mosAdminMenus::Ordering( $menu, $uid );
		// build the html select list for the group access
		$lists['access'] 		= mosAdminMenus::Access( $menu );
		// build the html select list for paraent item
		$lists['parent'] 		= mosAdminMenus::Parent( $menu );
		// build published button option
		$lists['published'] 	= mosAdminMenus::Published( $menu );
		// build the url link output
		$lists['link'] 		= mosAdminMenus::Link( $menu, $uid );
		
		// get params definitions
		$params =& new mosParameters( $menu->params, $mainframe->getPath( 'com_xml', $row->option ), 'component' );

		components_menu_html::edit( $menu, $components, $lists, $params, $option );
	}
}
?>
