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
class HTML_users {

	function showUsers( &$rows, $pageNav, $search, $option ) {
		global $mosConfig_offset;
		?>
		<form action="index2.php" method="post" name="adminForm">

		<table class="adminheading">
		<tr>
			<th class="user">
			User Manager
			</th>
			<td>
			Filter:
			</td>
			<td>
			<input type="text" name="search" value="<?php echo $search;?>" class="inputbox" onChange="document.adminForm.submit();" />
			</td>
		</tr>
		</table>

		<table class="adminlist">
		<tr>
			<th width="2%" class="title">
			#
			</th>
			<th width="3%" class="title">
			<input type="checkbox" name="toggle" value="" onClick="checkAll(<?php echo count($rows); ?>);" />
			</th>
			<th width="20%" class="title">
			Name
			</th>
			<th width="10%" class="title">
			UserID
			</th>
			<th width="5%" class="title" nowrap="nowrap">
			Logged In
			</th>
			<th width="15%" class="title">
			Group
			</th>
			<th width="15%" class="title">
			E-Mail
			</th>
			<th width="15%" class="title">
			Last Visit
			</th>
			<th width="10%" class="title">
			Enabled
			</th>
		</tr>
		<?php
		$k = 0;
		for ($i=0, $n=count( $rows ); $i < $n; $i++) {
			$row =& $rows[$i];
			$img = $row->block ? 'publish_x.png' : 'tick.png';
			$task = $row->block ? 'unblock' : 'block';
			$alt = $row->block ? 'Enabled' : 'Blocked';
			?>
			<tr class="<?php echo "row$k"; ?>">
			<td>
			<?php echo $i+1+$pageNav->limitstart;?>
			</td>
			<td>
			<?php echo mosHTML::idBox( $i, $row->id ); ?>
			</td>
			<td>
			<a href="#edit" onClick="return listItemTask('cb<?php echo $i;?>','edit')">
			<?php echo $row->name; ?>
			</a>
			</td>
			<td>
			<?php echo $row->username; ?>
			</td>
			<td align="center">
			<?php echo $row->loggedin ? '<img src="images/tick.png" width="12" height="12" border="0" alt="" />': ''; ?>
			</td>
			<td>
			<?php echo $row->groupname; ?>
			</td>
			<td>
			<a href="mailto:<?php echo $row->email; ?>">
			<?php echo $row->email; ?>
			</a>
			</td>
			<td>
			<?php echo mosFormatDate( $row->lastvisitDate, "%Y-%m-%d %H:%M:%S" ); ?>
			</td>
			<td width="10%">
			<a href="javascript: void(0);" onClick="return listItemTask('cb<?php echo $i;?>','<?php echo $task;?>')">
			<img src="images/<?php echo $img;?>" width="12" height="12" border="0" alt="<?php echo $alt; ?>" />
			</a>
			</td>
			</tr>
			<?php
			$k = 1 - $k;
		}
		?>
		</table>
		<?php echo $pageNav->getListFooter(); ?>

		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		</form>
		<?php
	}

	function edituser( &$row, &$contact, &$lists, $option, $uid ) {
		global $my, $acl;
		global $mosConfig_live_site;
		$tabs =& new mosTabs( 0 );

		$canBlockUser = $acl->acl_check( 'administration', 'edit', 'users', $my->usertype, 'user properties', 'block_user' );
		$canEmailEvents = $acl->acl_check( 'workflow', 'email_events', 'users', $acl->get_group_name( $row->gid, 'ARO' ) );
		?>
		<script language="javascript" type="text/javascript">
		function submitbutton(pressbutton) {
			var form = document.adminForm;
			if (pressbutton == 'cancel') {
				submitform( pressbutton );
				return;
			}
			var r = new RegExp("[\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-]", "i");

			// do field validation
			if (trim(form.name.value) == "") {
				alert( "You must provide a name." );
			} else if (form.username.value == "") {
				alert( "You must provide a user login name." );
			} else if (r.exec(form.username.value) || form.username.value.length < 3) {
				alert( "You login name contains invalid characters or is too short." );
			} else if (trim(form.email.value) == "") {
				alert( "You must provide an email address." );
			} else if (form.gid.value == "") {
				alert( "You must assign user to a group." );
			} else if (trim(form.password.value) != "" && form.password.value != form.password2.value){
				alert( "Password do not match." );
			} else {
				submitform( pressbutton );
			}
		}
		</script>
		<form action="index2.php" method="post" name="adminForm">

		<table class="adminheading">
		<tr>
			<th>
			<?php echo $row->id ? 'Edit' : 'Add';?> User
			</th>
		</tr>
		</table>

		<table width="100%">
		<tr>
			<td width="60%" valign="top">
				<table class="adminform">
				<tr>
					<th colspan="2">
					User Details
					</th>
				</tr>
				<tr>
					<td width="100">
					Name:
					</td>
					<td width="85%">
					<input type="text" name="name" class="inputbox" size="40" value="<?php echo $row->name; ?>" />
					</td>
				</tr>
				<tr>
					<td>
					Username:
					</td>
					<td>
					<input type="text" name="username" class="inputbox" size="40" value="<?php echo $row->username; ?>" />
					</td>
				<tr>
					<td>
					Email:
					</td>
					<td>
					<input class="inputbox" type="text" name="email" size="40" value="<?php echo $row->email; ?>" />
					</td>
				</tr>
				<tr>
					<td>
					New Password:
					</td>
					<td>
					<input class="inputbox" type="password" name="password" size="40" value="" />
					</td>
				</tr>
				<tr>
					<td>
					Verify Password:
					</td>
					<td>
					<input class="inputbox" type="password" name="password2" size="40" value="" />
					</td>
				</tr>
				<tr>
					<td valign="top">
					Group:
					</td>
					<td>
					<?php echo $lists['gid']; ?>
					</td>
				</tr>
				<?php
				if ($canBlockUser) {
					?>
					<tr>
						<td>
						Block User
						</td>
						<td>
						<?php echo $lists['block']; ?>
						</td>
					</tr>
					<?php
				}
				if ($canEmailEvents) {
					?>
					<tr>
						<td>
						Receive Submission Emails
						</td>
						<td>
						<?php echo $lists['sendEmail']; ?>
						</td>
					</tr>
					<?php
				}
				if( $uid ) {
					?>
					<tr>
						<td>
						Register Date
						</td>
						<td>
						<?php echo $row->registerDate;?>
						</td>
					</tr>
				<tr>
					<td>
					Last Visit Date
					</td>
					<td>
					<?php echo $row->lastvisitDate;?>
					</td>
				</tr>
					<?php
				}
				?>
				<tr>
					<td colspan="2">&nbsp;

					</td>
				</tr>
				</table>
			</td>
			<td width="40%" valign="top">
			<?php
			if ( !$contact ) {
				?>
				<table class="adminform">
				<tr>
					<th>
					Contact Information
					</th>
				</tr>
				<tr>
					<td>
					<br />
					No Contact details linked to this User:
					<br />
					See 'Components -> Contact -> Manage Contacts' for details.
					<br /><br />
					</td>
				</tr>
				</table>
				<?php
			} else {
				?>
				<table class="adminform">
				<tr>
					<th colspan="2">
					Contact Information
					</th>
				</tr>
				<tr>
					<td width="15%">
					Name:
					</td>
					<td>
					<strong>
					<?php echo $contact[0]->name;?>
					</strong>
					</td>
				</tr>
				<tr>
					<td>
					Position:
					</td>
					<td >
					<strong>
					<?php echo $contact[0]->con_position;?>
					</strong>
					</td>
				</tr>
				<tr>
					<td>
					Telephone:
					</td>
					<td >
					<strong>
					<?php echo $contact[0]->telephone;?>
					</strong>
					</td>
				</tr>
				<tr>
					<td>
					Fax:
					</td>
					<td >
					<strong>
					<?php echo $contact[0]->fax;?>
					</strong>
					</td>
				</tr>
				<tr>
					<td></td>
					<td >
					<strong>
					<?php echo $contact[0]->misc;?>
					</strong>
					</td>
				</tr>
				<?php
				if ($contact[0]->image) {
					?>
					<tr>
						<td></td>
						<td valign="top">
						<img src="<?php echo $mosConfig_live_site;?>/images/stories/<?php echo $contact[0]->image; ?>" align="middle" alt="Contact" />
						</td>
					</tr>
					<?php
				}
				?>
				<tr>
					<td colspan="2">
					<i>
					<br /><br />
					To change this information:
					<br />
					See 'Components -> Contact -> Manage Contacts'.
					</i>
					</td>
				</tr>
				</table>
				<?php
			}
			?>
			</td>
		</tr>
		</table>

		<input type="hidden" name="id" value="<?php echo $row->id; ?>" />
		<input type="hidden" name="option" value="<?php echo $option; ?>" />
		<input type="hidden" name="task" value="" />
		<?php
		if (!$canEmailEvents) {
			?>
			<input type="hidden" name="sendEmail" value="0" />
			<?php
		}
		?>
		</form>
		<?php
	}
}
?>
