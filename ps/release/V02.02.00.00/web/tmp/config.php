<?php
/* $Id$ */
/**
 * Database Server Data
 * Example:
 * $db = array(
 *   "type" => "mysql|pgsql",
 *   "host" => "localhost",
 *   "port" => "",
 *   "name" => "issue-tracker",
 *   "user" => "ituser",
 *   "pass" => "password"
 * );
 */
$db = array(
  "type"  =>  "mysql",
  "host"  =>  "localhost",
  "port"  =>  "",
  "name"  =>  "powersoftware_com_-_issues",
  "user"  =>  "powersoftware",
  "pass"  =>  "lja30"
);

/**
 * Email address of the head administrator.  This is the person that
 * will get notified in the case of fatal system errors.
 */
define("_ADMINEMAIL_","craig.mckay@powersoftware.com");

/**
 * Email address to show that outgoing mails came from
 */
define("_EMAIL_","issue-tracker@powersoftware.com");

/**
 * Page Title
 */
define("_TITLE_","Issue Tracker 4.0.4");

/**
 * Your Company Name
 */
define("_COMPANY_","Powersoftware.com");

/**
 * Default theme to use.
 * This must be a complete theme, see docs/THEMES for more information.
 */
$default_theme = "default";

/**
 * Whether or not to use the issue-tracker error handler
 * If this is set to false then the standard php error
 * behavior will occur.
 */
$error_handler = TRUE;

/**
 * Whether or not to use the php backtrace functionality
 * Requires PHP 4.3.x or higher
 */
$backtrace = TRUE;

/**
 * Whether or not to use the issue-tracker session handler (database sessions)
 * If you run into issues having this turned on, set it to FALSE and make
 * sure to create a sessions directory and to make it writeable by your
 * webserver.  By default if this is set false Issue-Tracker will assume
 * the sessions directory is named sessions and located in the issue-tracker
 * root.  If this is not the case then you will need to edit the _SESSIONS_
 * constant in conf/const.php
 */
$session_handler = FALSE;

/**
 * Event Editting
 * This allows you to disable event editting for everyone except the
 * administrative users.
 */
$disable_edit = FALSE;

/**
 * Allow Registration
 * This will allow people that view the login page to register for an
 * account on your system.
 */
$allow_register = FALSE;

/**
 * Default Group
 * This is the default group that users who register for an account
 * are added to.  This is not used for users that are manually added
 * by an administrator.
 */
define("_DEFGRP_",2);

/**
 * Maximum Length
 * This is the maximum number of characters allowed per event.  If
 * commented out or set to 0, then unlimited characters will be allowed.
 */
define("MAXLENGTH",256000);

/**
 * Files uploaded with these extentions will have .dl added onto
 * the end of the filename, this is to prevent people form possibly
 * uploading material that might be used to breech the system
 */
$bad_mime = array(
  "php",
  "php3",
  "php4",
  "cgi",
  "pl",
  "htm",
  "html",
  "shtml",
  "dhtml",
  "asp",
  "py",
  "xml",
  "wmls",
  "css",
  "sh"
);

/**
 * Which tables to cache data for, currently the list is as follows:
 * - users
 * - groups
 * - statuses
 * - categories
 * - products
 * - permissions
 * By default all of these are set to cache.
 */
$cache_data = array(
  "users",
  "groups",
  "statuses",
  "categories",
  "products",
  "permissions"
);

/**
 * Include const.php, do not edit anything in this file unless
 * you know what you are doing
 */
include_once(_PATH_."/conf/const.php");
?>
