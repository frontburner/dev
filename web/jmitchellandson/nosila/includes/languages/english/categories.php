<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * J.Mitchell & Son (jmitchellandson.co.uk)
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
 * CAM  03-Jun-2010  10684 : Removed colons from field labels.
 * CAM  15-Jul-2010  10750 : Changed 'Tax' to 'VAT'.
 * * * * * * * * * * * * * * * * * * * * * * * */

define('HEADING_TITLE', 'Categories / Products');
define('HEADING_TITLE_SEARCH', 'Search:');
define('HEADING_TITLE_GOTO', 'Go To:');

define('TABLE_HEADING_ID', 'ID');
define('TABLE_HEADING_CATEGORIES_PRODUCTS', 'Categories / Products');
define('TABLE_HEADING_ACTION', 'Action');
define('TABLE_HEADING_STATUS', 'Status');

define('TEXT_NEW_PRODUCT', 'New Product in &quot;%s&quot;');
define('TEXT_CATEGORIES', 'Categories');
define('TEXT_SUBCATEGORIES', 'Subcategories');
define('TEXT_PRODUCTS', 'Products');
define('TEXT_PRODUCTS_PRICE_INFO', 'Price');
define('TEXT_PRODUCTS_TAX_CLASS', 'VAT Class');
define('TEXT_PRODUCTS_AVERAGE_RATING', 'Average Rating');
define('TEXT_PRODUCTS_QUANTITY_INFO', 'Quantity');
define('TEXT_DATE_ADDED', 'Date Added');
define('TEXT_DATE_AVAILABLE', 'Date Available');
define('TEXT_LAST_MODIFIED', 'Last Modified');
define('TEXT_IMAGE_NONEXISTENT', 'IMAGE DOES NOT EXIST');
define('TEXT_NO_CHILD_CATEGORIES_OR_PRODUCTS', 'Please insert a new category or product in this level.');
define('TEXT_PRODUCT_MORE_INFORMATION', 'For more information, please visit this products <a href="http://%s" target="blank"><u>webpage</u></a>.');
define('TEXT_PRODUCT_DATE_ADDED', 'This product was added to our catalog on %s.');
define('TEXT_PRODUCT_DATE_AVAILABLE', 'This product will be in stock on %s.');

define('TEXT_EDIT_INTRO', 'Please make any necessary changes');
define('TEXT_EDIT_CATEGORIES_ID', 'Category ID');
define('TEXT_EDIT_CATEGORIES_NAME', 'Category Name');
define('TEXT_EDIT_CATEGORIES_IMAGE', 'Category Image');
define('TEXT_EDIT_SORT_ORDER', 'Sort Order');

define('TEXT_INFO_COPY_TO_INTRO', 'Please choose a new category you wish to copy this product to');
define('TEXT_INFO_CURRENT_CATEGORIES', 'Current Categories:');

define('TEXT_INFO_HEADING_NEW_CATEGORY', 'New Category');
define('TEXT_INFO_HEADING_EDIT_CATEGORY', 'Edit Category');
define('TEXT_INFO_HEADING_DELETE_CATEGORY', 'Delete Category');
define('TEXT_INFO_HEADING_MOVE_CATEGORY', 'Move Category');
define('TEXT_INFO_HEADING_DELETE_PRODUCT', 'Delete Product');
define('TEXT_INFO_HEADING_MOVE_PRODUCT', 'Move Product');
define('TEXT_INFO_HEADING_COPY_TO', 'Copy To');

define('TEXT_DELETE_CATEGORY_INTRO', 'Are you sure you want to delete this category?');
define('TEXT_DELETE_PRODUCT_INTRO', 'Are you sure you want to permanently delete this product?');

define('TEXT_DELETE_WARNING_CHILDS', '<b>WARNING:</b> There are %s (child-)categories still linked to this category!');
define('TEXT_DELETE_WARNING_PRODUCTS', '<b>WARNING:</b> There are %s products still linked to this category!');

define('TEXT_MOVE_PRODUCTS_INTRO', 'Please select which category you wish <b>%s</b> to reside in');
define('TEXT_MOVE_CATEGORIES_INTRO', 'Please select which category you wish <b>%s</b> to reside in');
define('TEXT_MOVE', 'Move <b>%s</b> to:');

define('TEXT_NEW_CATEGORY_INTRO', 'Please fill out the following information for the new category');
define('TEXT_CATEGORIES_NAME', 'Category Name:');
define('TEXT_CATEGORIES_IMAGE', 'Category Image:');
define('TEXT_SORT_ORDER', 'Sort Order:');

define('TEXT_PRODUCTS_STATUS', 'Product Status');
define('TEXT_PRODUCTS_DATE_AVAILABLE', 'Date Available');
define('TEXT_PRODUCT_AVAILABLE', 'In Stock');
define('TEXT_PRODUCT_NOT_AVAILABLE', 'Out of Stock');
define('TEXT_PRODUCTS_MANUFACTURER', 'Product Manufacturer');
define('TEXT_PRODUCTS_NAME', 'Product Name');
define('TEXT_PRODUCTS_DESCRIPTION', 'Product Description');
define('TEXT_PRODUCTS_QUANTITY', 'Product Quantity');
define('TEXT_PRODUCTS_MODEL', 'Product Model');
define('TEXT_PRODUCTS_IMAGE', 'Product Image');
define('TEXT_PRODUCTS_URL', 'Product URL');
define('TEXT_PRODUCTS_URL_WITHOUT_HTTP', '<small>(without http://)</small>');
define('TEXT_PRODUCTS_PRICE_NET', 'Product Price (Net)');
define('TEXT_PRODUCTS_PRICE_GROSS', 'Product Price (Gross)');
define('TEXT_PRODUCTS_WEIGHT', 'Product Weight');

define('EMPTY_CATEGORY', 'Empty Category');

define('TEXT_HOW_TO_COPY', 'Copy Method:');
define('TEXT_COPY_AS_LINK', 'Link product');
define('TEXT_COPY_AS_DUPLICATE', 'Duplicate product');

define('ERROR_CANNOT_LINK_TO_SAME_CATEGORY', 'Error: Can not link products in the same category.');
define('ERROR_CATALOG_IMAGE_DIRECTORY_NOT_WRITEABLE', 'Error: Catalog images directory is not writeable: ' . DIR_FS_CATALOG_IMAGES);
define('ERROR_CATALOG_IMAGE_DIRECTORY_DOES_NOT_EXIST', 'Error: Catalog images directory does not exist: ' . DIR_FS_CATALOG_IMAGES);
define('ERROR_CANNOT_MOVE_CATEGORY_TO_PARENT', 'Error: Category cannot be moved into child category.');
?>
