<?php
        </form>
<?php
          // *** BEGIN GOOGLE CHECKOUT ***
          if (defined('MODULE_PAYMENT_GOOGLECHECKOUT_STATUS') && MODULE_PAYMENT_GOOGLECHECKOUT_STATUS == 'True') {
            include_once('googlecheckout/gcheckout.php');
          }
          // *** END GOOGLE CHECKOUT *** 
?>
        </td>
      </tr>
    </table></td>
<!-- body_text_eof //-->
    <td width="<?php echo BOX_WIDTH; ?>" valign="top"><table border="0" width="<?php echo BOX_WIDTH; ?>" cellspacing="0" cellpadding="2">