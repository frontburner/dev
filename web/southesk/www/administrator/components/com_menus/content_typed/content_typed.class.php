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
class content_typed_menu {

	function edit( &$uid, $menutype, $option ) {
		global $database, $my, $mainframe;
		global $mosConfig_absolute_path;
	
		$menu = new mosMenu( $database );
		$menu->load( $uid );
	
		// fail if checked out not by 'me'
		if ($menu->checked_out && $menu->checked_out <> $my->id) {
			echo "<script>alert('The module $menu->title is currently being edited by another administrator'); document.location.href='index2.php?option=$option'</script>\n";
			exit(0);
		}
	
		if ( $uid ) {
			$menu->checkout( $my->id );
		} else {
			// load values for new entry
			$menu->type = 'content_typed';
			$menu->menutype = $menutype;
			$menu->browserNav = 0;
			$menu->ordering = 9999;
			$menu->parent = intval( mosGetParam( $_POST, 'parent', 0 ) );
			$menu->published = 1;
		}
	
		if ( $uid ) {
			$temp = explode( 'id=', $menu->link );
			 $query = "SELECT a.title, a.title_alias"
			. "\n FROM #__content AS a"
			. "\n WHERE a.id = '". $temp[1] ."'"
			;
			$database->setQuery( $query );
			$content = $database->loadObjectlist();
			// outputs item name, category & section instead of the select list
			if ( $content[0]->title_alias ) {
				$alias = '  (<i>'. $content[0]->title_alias .'</i>)';
			} else {
				$alias = '';
			}
			$lists['content'] = '<input type="hidden" name="content_typed" value="'. $temp[1] .'" />'. $content[0]->title . $alias;
			$contents = '';
		} else {
			$query = "SELECT a.id AS value, CONCAT( a.title, '(', a.title_alias, ')' ) AS text"
			. "\n FROM #__content AS a"
			. "\n WHERE a.state = '1'"
			. "\n AND a.sectionid = '0'"
			. "\n AND a.catid = '0'"
			. "\n ORDER BY a.id, a.title"
			;
			$database->setQuery( $query );
			$contents = $database->loadObjectList( );
	
			//	Create a list of links
			$lists['content'] = mosHTML::selectList( $contents, 'content_typed', 'class="inputbox" size="10"', 'value', 'text', '' );
		}
		
		// build html select list for target window
		$lists['target'] 		= mosAdminMenus::Target( $menu );
	
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
		$params =& new mosParameters( $menu->params, $mainframe->getPath( 'menu_xml', $menu->type ), 'component' );
	
		content_menu_html::edit( $menu, $lists, $params, $option, $contents );
	}
}
?>
