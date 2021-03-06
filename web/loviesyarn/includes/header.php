<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Lovie's Yarns (loviesyarn.com)
 *
 * osCommerce, Open Source E-Commerce Solutions
 * http://www.oscommerce.com
 * Copyright (c) 2007 osCommerce
 * Released under the GNU General Public License
 *
 * Customised by Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  29-May-2010  10670 : Call table_header.
 * CAM  13-Jul-2010  10740 : Added RBS WorldPay logo and Credit Card logos.
 * CAM  12-Dec-2010  10833 : Changed RBS WorldPay logo to Google Checkout.
 * CAM  15-Mar-2011  10949 : Removed Checkout button at top right of screen.
 * CAM  16-Aug-2011  10992 : Added Free Postage message.
 * CAM  16-Aug-2011  11011 : Added Google Logo PNG rather than script.
 * CAM  05-Nov-2011  11053 : Need to replace with Worldnet Logo.
 * CAM  12-Nov-2011  11053 : Replaced with Worldnet Logo.
 * CAM  14-Apr-2012  11106 : Added Facebook Plugin.
 * CAM  19-Apr-2012  11115 : Renamed to Lovie's Yarn.
 * CAM  12-May-2012  11119 : Reinstated Facebook and changed free postage graphic.
 * * * * * * * * * * * * * * * * * * * * * * * */

// check if the 'install' directory exists, and warn of its existence
  if (WARN_INSTALL_EXISTENCE == 'true') {
    if (file_exists(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/install')) {
      $messageStack->add('header', WARNING_INSTALL_DIRECTORY_EXISTS, 'warning');
    }
  }

// check if the configure.php file is writeable
  if (WARN_CONFIG_WRITEABLE == 'true') {
    if ( (file_exists(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/includes/configure.php')) && (is_writeable(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/includes/configure.php')) ) {
      $messageStack->add('header', WARNING_CONFIG_FILE_WRITEABLE, 'warning');
    }
  }

// check if the session folder is writeable
  if (WARN_SESSION_DIRECTORY_NOT_WRITEABLE == 'true') {
    if (STORE_SESSIONS == '') {
      if (!is_dir(tep_session_save_path())) {
        $messageStack->add('header', WARNING_SESSION_DIRECTORY_NON_EXISTENT, 'warning');
      } elseif (!is_writeable(tep_session_save_path())) {
        $messageStack->add('header', WARNING_SESSION_DIRECTORY_NOT_WRITEABLE, 'warning');
      }
    }
  }

// check session.auto_start is disabled
  if ( (function_exists('ini_get')) && (WARN_SESSION_AUTO_START == 'true') ) {
    if (ini_get('session.auto_start') == '1') {
      $messageStack->add('header', WARNING_SESSION_AUTO_START, 'warning');
    }
  }

  if ( (WARN_DOWNLOAD_DIRECTORY_NOT_READABLE == 'true') && (DOWNLOAD_ENABLED == 'true') ) {
    if (!is_dir(DIR_FS_DOWNLOAD)) {
      $messageStack->add('header', WARNING_DOWNLOAD_DIRECTORY_NON_EXISTENT, 'warning');
    }
  }

  if ($messageStack->size('header') > 0) {
    echo $messageStack->output('header');
  }
?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<?php require(DIR_WS_INCLUDES . 'table_header_top.php'); ?>
  <tr class="header">
    <td valign="middle" rowspan="2"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image(DIR_WS_IMAGES . 'loviesyarn2.png', STORE_NAME) . '</a>'; ?></td>
    <td>
      <div id="contentbox">
        <div id="fblike" class="fb-like" data-href="http://www.facebook.com/loviesyarn" data-send="true" data-width="530" data-show-faces="false" data-font="segoe ui"></div>
      </div>
    </td>
    <td align="center" valign="middle" width="240" rowspan="2"><a href="<?=tep_href_link(FILENAME_SECUREPAYMENT)?>"><img src='https://www.worldnettps.com/permanent/logos/branding/Secure payments by WorldNet3.png' alt='Secure payments by WorldNet' /></a></td>
  </tr>
</table>
<?php require(DIR_WS_INCLUDES . 'table_header_top.php'); ?>
  <tr class="headerNavigation">
    <td class="headerNavigation">&nbsp;&nbsp;<?php echo $breadcrumb->trail(' &raquo; '); ?></td>
    <td align="right" class="headerNavigation"><?php if (tep_session_is_registered('customer_id')) { ?><a href="<?php echo tep_href_link(FILENAME_LOGOFF, '', 'SSL'); ?>" class="headerNavigation"><?php echo HEADER_TITLE_LOGOFF; ?></a> &nbsp;|&nbsp; <?php } ?><a href="<?php echo tep_href_link(FILENAME_ACCOUNT, '', 'SSL'); ?>" class="headerNavigation"><?php echo HEADER_TITLE_MY_ACCOUNT; ?></a> &nbsp;|&nbsp; <a href="<?php echo tep_href_link(FILENAME_SHOPPING_CART); ?>" class="headerNavigation"><?php echo HEADER_TITLE_CART_CONTENTS; ?></a>
    <!--&nbsp;|&nbsp; <a href="<?php echo tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL'); ?>" class="headerNavigation"><?php echo HEADER_TITLE_CHECKOUT; ?></a> -->
    &nbsp;&nbsp;</td>
  </tr>
</table>
<?php
  if (isset($HTTP_GET_VARS['error_message']) && tep_not_null($HTTP_GET_VARS['error_message'])) {
?>
<?php require(DIR_WS_INCLUDES . 'table_header_top.php'); ?>
  <tr class="headerError">
    <td class="headerError"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['error_message']))); ?></td>
  </tr>
</table>
<?php
  }

  if (isset($HTTP_GET_VARS['info_message']) && tep_not_null($HTTP_GET_VARS['info_message'])) {
?>
<?php require(DIR_WS_INCLUDES . 'table_header_top.php'); ?>
  <tr class="headerInfo">
    <td class="headerInfo"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['info_message']))); ?></td>
  </tr>
</table>
<?php
  }
?>
