<?php
/**
* @version $Id$
* @package Mambo_4.5.1
* @copyright (C) 2000 - 2004 Miro International Pty Ltd
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* Mambo is Free Software
*/

/** Set flag that this is a parent file */
define( "_VALID_MOS", 1 );
/** security check */
require( "../includes/auth.php" );
include_once ( $mosConfig_absolute_path . '/language/' . $mosConfig_lang . '.php' );

$directory = mosGetParam( $_REQUEST, 'directory', '');

$userfile2=(isset($_FILES['userfile']['tmp_name']) ? $_FILES['userfile']['tmp_name'] : "");
$userfile_name=(isset($_FILES['userfile']['name']) ? $_FILES['userfile']['name'] : "");

if (isset($_FILES['userfile'])) {
	if ($directory!="banners") {
		$base_Dir = "../../images/stories/";
	} else {
		$base_Dir = "../../images/banners/";
	}
	if (empty($userfile_name)) {
		echo "<script>alert('Please select an image to upload'); document.location.href='uploadimage.php';</script>";
	}

	$filename = split("\.", $userfile_name);

	if (eregi("[^0-9a-zA-Z_]", $filename[0])) {
		echo "<script> alert('File must only contain alphanumeric characters and no spaces please.'); window.history.go(-1);</script>\n";
		exit();
	}

	if (file_exists($base_Dir.$userfile_name)) {
		echo "<script> alert('Image $userfile_name already exists.'); window.history.go(-1);</script>\n";
		exit();
	}

	if ((strcasecmp(substr($userfile_name,-4),".gif")) && (strcasecmp(substr($userfile_name,-4),".jpg")) && (strcasecmp(substr($userfile_name,-4),".png")) && (strcasecmp(substr($userfile_name,-4),".bmp")) &&(strcasecmp(substr($userfile_name,-4),".doc")) && (strcasecmp(substr($userfile_name,-4),".xls")) && (strcasecmp(substr($userfile_name,-4),".ppt")) && (strcasecmp(substr($userfile_name,-4),".swf")) && (strcasecmp(substr($userfile_name,-4),".pdf"))) {
		echo "<script>alert('The file must be gif, png, jpg, bmp, swf, doc, xls or ppt'); window.history.go(-1);</script>\n";
		exit();
	}


	if (eregi(".pdf", $userfile_name) || eregi(".doc", $userfile_name) || eregi(".xls", $userfile_name) || eregi(".ppt", $userfile_name)) {
		if (!move_uploaded_file ($_FILES['userfile']['tmp_name'],$media_path.$_FILES['userfile']['name']) || !chmod($media_path.$_FILES['userfile']['name'],0777)) {
			echo "<script>alert('Upload of $userfile_name failed'); window.history.go(-1);</script>\n";
			exit();
		}
		else {
			echo "<script>alert('Upload of $userfile_name to $media_path successful'); window.history.go(-1);</script>\n";
			exit();
		}
	} elseif (!move_uploaded_file ($_FILES['userfile']['tmp_name'],$base_Dir.$_FILES['userfile']['name']) || !chmod($base_Dir.$_FILES['userfile']['name'],0777)) {
		echo "<script>alert('Upload of $userfile_name failed'); window.history.go(-1);</script>\n";
		exit();
	}
	else {
		echo "<script>alert('Upload of $userfile_name to $base_Dir successful'); window.history.go(-1);</script>\n";
		exit();
	}


}

$iso = split( '=', _ISO );
// xml prolog
echo '<?xml version="1.0" encoding="'. $iso[1] .'"?' .'>';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload a file</title>
</head>
<body>
<?php
$css = mosGetParam($_REQUEST,"t","");
?>
<link rel="stylesheet" href="../templates/<?php echo $css; ?>/css/template_css.css" type="text/css" />
<table class="adminform">
  <form method="post" action="uploadimage.php" enctype="multipart/form-data" name="filename">
    <tr>
      <th class="title"> File Upload : <?php echo $directory; ?></th>
    </tr>
    <tr>
      <td align="center">
        <input class="inputbox" name="userfile" type="file" />
      </td>
    </tr>
    <tr>
      <td>
        <input class="button" type="submit" value="Upload" name="fileupload" />
      </td>
    <tr>
      <td>
        <input type="hidden" name="directory" value="<?php echo $directory;?>" />
      </td>
    </tr>
  </form>
</table>
</body>
</html>