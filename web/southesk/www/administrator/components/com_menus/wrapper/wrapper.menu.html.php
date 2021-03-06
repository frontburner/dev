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
* Display wrapper
* @package Mambo_4.5.1
*/
class wrapper_menu_html {


	function edit( &$menu, &$lists, &$params, $option ) {
		global $mosConfig_live_site;
		$tabs = new mosTabs(0);
		?>
		<div id="overDiv" style="position:absolute; visibility:hidden; z-index:10000;"></div>
		<script language="Javascript" src="<?php echo $mosConfig_live_site;?>/includes/js/overlib_mini.js"></script>
		<script language="javascript" type="text/javascript">
		function submitbutton(pressbutton) {
			if ( pressbutton == 'cancel' ) {
				submitform( pressbutton );
				return;
			}
			var form = document.adminForm;
			if ( form.name.value == "" ) {
				alert( 'This Menu item must have a title' );
			} else {
				<?php
				if ( !$menu->id ) {
					?>
					if ( form.url.value == "" ){
						alert( "You must provide a url." );
					} else {
						submitform( pressbutton );
					}
					<?php
				} else {
					?>
					submitform( pressbutton );
					<?php
				}
				?>
			}
		}
		</script>
		<form action="index2.php" method="post" name="adminForm">
		<table class="adminheading">
		<tr>
			<th>
			<?php echo $menu->id ? 'Edit' : 'Add';?> Menu Item :: Wrapper
			</th>
		</tr>
		</table>
		<?php
		$tabs->startPane("module");
		$tabs->startTab("Details","Details-page");
		?>
		<table class="adminform">
		<tr>
			<td width="10%" align="right" valign="top">
			Title:
			</td>
			<td width="200px">
			<input type="text" name="name" size="30" maxlength="100" class="inputbox" value="<?php echo $menu->name; ?>"/>
			</td>
		</tr>
		<tr>
			<td width="20%" align="right">
			Wrapper Link:
			</td>
			<td width="80%">
			<input class="inputbox" type="text" name="url" size="50" maxlength="250" value="<?php echo @$menu->url; ?>" />
			</td>
		</tr>
		<tr>
			<td width="10%" align="right">
			Url:
			</td>
			<td width="80%">
			<?php echo $lists['link']; ?>
			</td>
		</tr>
		<tr>
			<td align="right">
			Parent Item:
			</td>
			<td colspan="2">
			<?php echo $lists['parent'];?>
			</td>
		</tr>
		<tr>
			<td valign="top" align="right">
			Ordering:
			</td>
			<td colspan="2">
			<?php echo $lists['ordering']; ?>
			</td>
		</tr>
		<tr>
			<td valign="top" align="right">
			Access Level:
			</td>
			<td colspan="2">
			<?php echo $lists['access']; ?>
			</td>
		</tr>
		<tr>
			<td valign="top" align="right">
			Published:
			</td>
			<td colspan="2">
			<?php echo $lists['published']; ?>
			</td>
		</tr>
		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
		</table>
		<?php
		$tabs->endTab();
		$tabs->startTab("Parameters","params-page");
		?>
		<table class="adminform">
		<tr>
			<td>
			<?php echo $params->render();?>
			</td>
		</tr>
		</table>
		<?php
		$tabs->endTab();
		$tabs->endPane();
		?>
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="id" value="<?php echo $menu->id; ?>" />
		<input type="hidden" name="menutype" value="<?php echo $menu->menutype; ?>" />
		<input type="hidden" name="type" value="<?php echo $menu->type; ?>" />
		<input type="hidden" name="link" value="<?php echo $menu->link; ?>" />
		<input type="hidden" name="task" value="" />
		</form>
		<?php
	}

}
?>