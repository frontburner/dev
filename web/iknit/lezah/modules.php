<?php

  // *** BEGIN GOOGLE CHECKOUT ***
  require_once(DIR_FS_CATALOG . 'googlecheckout/inserts/admin/modules1.php');
  // *** END GOOGLE CHECKOUT ***

  $set = (isset($HTTP_GET_VARS['set']) ? $HTTP_GET_VARS['set'] : '');
          tep_db_query("update " . TABLE_CONFIGURATION . " set configuration_value = '" . $value . "' where configuration_key = '" . $key . "'");
        }
        // *** BEGIN GOOGLE CHECKOUT ***
        require(DIR_FS_CATALOG . 'googlecheckout/inserts/admin/modules2.php');
        // *** END GOOGLE CHECKOUT ***

        tep_redirect(tep_href_link(FILENAME_MODULES, 'set=' . $set . '&module=' . $HTTP_GET_VARS['module']));
    include(DIR_FS_CATALOG_LANGUAGES . $language . '/modules/' . $module_type . '/' . $file);