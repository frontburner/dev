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
class HTML_templates {
	/**
	* @param array An array of data objects
	* @param object A page navigation object
	* @param string The option
	*/
	function showTemplates( &$rows, &$pageNav, $option, $client ) {
		global $my, $mosConfig_live_site;
		if ( isset( $row->authorUrl) && $row->authorUrl != '' ) {
			$row->authorUrl = str_replace( 'http://', '', $row->authorUrl );
		}
		?>
		<div id="overDiv" style="position:absolute; visibility:hidden; z-index:10000;"></div>
		<script language="Javascript">
		function showInfo(name) {
			var pattern = /\b \b/ig;
			name = name.replace(pattern,'_');
			name = name.toLowerCase();
			if (document.adminForm.doPreview.checked) {
				var src = '<?php echo $mosConfig_live_site . ($client == 'admin' ? '/administrator' : '');?>/templates/'+name+'/template_thumbnail.png';
				var html=name;
				html = '<br /><img border="1" src="'+src+'" name="imagelib" alt="No preview available" width="206" height="145" />';
				return overlib(html, CAPTION, name)
			} else {
				return false;
			}
		}
		</script>

		<form action="index2.php" method="post" name="adminForm">
		<table class="adminheading">
		<tr>
			<th class="templates">
			Installed <?php echo $client == 'admin' ? 'Administrator' : 'Site';?> Templates
			</th>
			<td align="right" nowrap="true">
			Preview Template
			</td>
			<td align="right">
			<input type="checkbox" name="doPreview" />
			</td>
		</tr>
		</table>
		<table class="adminlist">
		<tr>
			<th width="5%">#</th>
			<th width="5%">&nbsp;</th>
			<th width="25%" class="title">
			Name
			</th>
			<?php
			if ( $client == 'admin' ) {
				?>
				<th width="10%">
				Default
				</th>
				<?php
			} else {
				?>
				<th width="5%">
				Default
				</th>
				<th width="5%">
				Assigned
				</th>
				<?php
			}
			?>
			<th width="20%" align="left">
			Author
			</th>
			<th width="5%" align="center">
			Version
			</th>
			<th width="10%" align="center">
			Date
			</th>
			<th width="20%" align="left">
			Author URL
			</th>
		</tr>
		<?php
		$k = 0;
		for ( $i=0, $n = count( $rows ); $i < $n; $i++ ) {
			$row = &$rows[$i];
			?>
			<tr class="<?php echo 'row'. $k; ?>">
				<td>
				<?php echo $pageNav->rowNumber( $i ); ?>
				</td>
				<td>
				<?php
				if ( $row->checked_out && $row->checked_out != $my->id ) {
					?>
					&nbsp;
					<?php
				} else {
					?>
					<input type="radio" id="cb<?php echo $i;?>" name="cid[]" value="<?php echo $row->directory; ?>" onClick="isChecked(this.checked);" />
					<?php
				}
				?>
				</td>
				<td>
				<a href="#info" onmouseover="showInfo('<?php echo $row->name;?>')" onmouseout="return nd();">
				<?php echo $row->name;?>
				</a>
				</td>
				<?php
				if ( $client == 'admin' ) {
					?>
					<td align="center">
					<?php
					if ( $row->published == 1 ) {
						?>
					<img src="images/tick.png" alt="Published">
						<?php
					} else {
						?>
						&nbsp;
						<?php
					}
					?>
					</td>
					<?php
				} else {
					?>
					<td align="center">
					<?php
					if ( $row->published == 1 ) {
						?>
						<img src="images/tick.png" alt="Default">
						<?php
					} else {
						?>
						&nbsp;
						<?php
					}
					?>
					</td>
					<td align="center">
					<?php
					if ( $row->assigned == 1 ) {
						?>
						<img src="images/tick.png" alt="Assigned" />
						<?php
					} else {
						?>
						&nbsp;
						<?php
					}
					?>
					</td>
					<?php
				}
				?>
				<td>
				<?php echo $row->authorEmail ? '<a href="mailto:'. $row->authorEmail .'">'. $row->author .'</a>' : $row->author; ?>
				</td>
				<td align="center">
				<?php echo $row->version; ?>
				</td>
				<td align="center">
				<?php echo $row->creationdate; ?>
				</td>
				<td>
				<a href="<?php echo substr( $row->authorUrl, 0, 7) == 'http://' ? $row->authorUrl : 'http://'.$row->authorUrl; ?>" target="_blank">
				<?php echo $row->authorUrl; ?>
				</a>
				</td>
			</tr>
			<?php
		}
		?>
		</table>
		<?php echo $pageNav->getListFooter(); ?>
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="client" value="<?php echo $client;?>" />
		</form>
		<script language="Javascript" src="<?php echo $mosConfig_live_site;?>/includes/js/overlib_mini.js"></script>
		<?php
	}


	/**
	* @param string Template name
	* @param string Source code
	* @param string The option
	*/
	function editTemplateSource( $template, &$content, $option, $client ) {
		global $mosConfig_absolute_path;
		?>
		<form action="index2.php" method="post" name="adminForm">
		<table class="adminheading">
		<tr>
			<th class="templates">
			Template Editor
			</th>
		</tr>
		</table>

		<table class="adminform">
		<tr>
			<th colspan="4">
			Path: templates/<?php echo $template; ?>/index.php
      		<?php
      		$template_path = $mosConfig_absolute_path . ( $client == 'admin' ? '/administrator' : '' )
      		. '/templates/' . $template . '/index.php';
      		echo is_writable( $template_path ) ? '<b><font color="green"> - Writeable</font></b>' : '<b><font color="red"> - Unwriteable</font></b>';
      		?>
			</th>
		</tr>
		<tr>
			<td>
			<textarea cols="110" rows="25" name="filecontent" class="inputbox">
			<?php echo $content; ?>
			</textarea>
			</td>
		</tr>
		</table>
		<input type="hidden" name="template" value="<?php echo $template; ?>" />
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="client" value="<?php echo $client;?>" />
		</form>
		<?php
	}


	/**
	* @param string Template name
	* @param string Source code
	* @param string The option
	*/
	function editCSSSource( $template, &$content, $option, $client ) {
		global $mosConfig_absolute_path;
		?>
		<form action="index2.php" method="post" name="adminForm">
		<table class="adminheading">
		<tr>
			<th class="templates">
			Template Stylesheet Editor
			</th>
		</tr>
		</table>

		<table class="adminform">
		<tr>
			<th colspan="4">
			Path: <?php echo $client == 'admin' ? 'administrator/' : ''; ?>templates/<?php echo $template; ?>/css/template_css.php
			<?php
			$css_path = $mosConfig_absolute_path . ($client == 'admin' ? '/administrator' : '')
			. '/templates/' . $template . '/css/template_css.css';
			echo is_writable( $css_path ) ? '<b><font color="green">
			 - Writeable</font></b>' : '<b><font color="red"> - Unwriteable</font></b>';
      		?>
			</th>
		</tr>
		<tr>
			<td>
			<textarea cols="110" rows="25" name="filecontent" class="inputbox">
			<?php echo $content; ?>
			</textarea>
			</td>
		</tr>
		</table>
		<input type="hidden" name="template" value="<?php echo $template; ?>" />
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="client" value="<?php echo $client;?>" />
		</form>
		<?php
	}


	/**
	* @param string Template name
	* @param string Menu list
	* @param string The option
	*/
	function assignTemplate( $template, &$menulist, $option ) {
		?>
		<form action="index2.php" method="post" name="adminForm">
		<table class="adminform">
		<tr>
			<th class="left" colspan="2">
			Assign template <?php echo $template; ?> to menu items
			</th>
		</tr>
		<tr>
			<td valign="top" align="left">
			Page(s):
			</td>
			<td width="90%">
			<?php echo $menulist; ?>
			</td>
		</tr>
		</table>
		<input type="hidden" name="template" value="<?php echo $template; ?>" />
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		</form>
		<?php
	}


	/**
	* @param array
	* @param string The option
	*/
	function editPositions( &$positions, $option ) {
		$rows = 25;
		$cols = 2;
		$n = $rows * $cols;
		?>
		<form action="index2.php" method="post" name="adminForm">
		<table class="adminheading">
		<tr>
			<th class="templates">
			Module Positions
			</th>
		</tr>
		</table>

		<table class="adminlist">
		<tr>
		<?php
		for ( $c = 0; $c < $cols; $c++ ) {
			?>
			<th width="25">
			#
			</th>
			<th align="left">
			Position
			</th>
			<th align="left">
			Description
			</th>
			<?php
		}
		?>
		</tr>
		<?php
		$i = 1;
		for ( $r = 0; $r < $rows; $r++ ) {
			?>
			<tr>
			<?php
			for ( $c = 0; $c < $cols; $c++ ) {
				?>
				<td>(<?php echo $i; ?>)</td>
				<td>
				<input type="text" name="position[<?php echo $i; ?>]" value="<?php echo @$positions[$i-1]->position; ?>" size="10" maxlength="10" />
				</td>
				<td>
				<input type="text" name="description[<?php echo $i; ?>]" value="<?php echo htmlspecialchars( @$positions[$i-1]->description ); ?>" size="50" maxlength="255" />
				</td>
				<?php
				$i++;
			}
			?>
			</tr>
			<?php
		}
		?>
		</table>
		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		</form>
		<?php
	}
}
?>
