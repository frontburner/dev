<?php
/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine
 * Copyright (c) 2008,2009 Southesk.com
 *
 * 1962 Hymn Book Search CSS
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  29-Sep-2008  10302 : Moved to GoodTeaching.org
 * CAM  12-Apr-2009  10419 : Renamed CSS class to include module name.
 * * * * * * * * * * * * * * * * * * * * * * * */

function select_meters($meter_id) {
?><select name="meter_id" id="meter_id" class="dropdown">
      <option value="ALL">All Meters</option>
<?
  $meterSql = "SELECT m.id, m.meter, m.rhythm, m.chorus, m.disp_order ".
              "FROM hymn$language h, hymn_meter m ".
              "WHERE h.meter_id=m.id ".
              "GROUP BY disp_order, id, meter, rhythm, chorus ".
              "ORDER BY disp_order, meter, rhythm, chorus";
  $meterRes = mysql_query($meterSql) or die("</select><h1>Query failed</h1><pre>$meterSql</pre>");

  while ($row = mysql_fetch_row($meterRes)) {
    $sel = "";
    if ($row[0] == $meter_id) {
      $sel = "SELECTED ";
    }
?>
    <option <?echo $sel; ?>value="<? echo $row[0]; ?>"><? echo trim("$row[1] $row[2] $row[3]"); ?></option>
<?
  }

  mysql_free_result($meterRes);

?></select><?
}

function select_categories($category_id) {
?><select name="category_id" id="category_id" class="dropdown">
      <option value="ALL">All Categories</option>
<?
  $meterSql = "SELECT c.id, s.code scheme_code, c.code category, c.name ".
              "FROM hymn_scheme_categories c, hymn_schemes s ".
              "WHERE c.scheme_id = s.id ".
              "ORDER BY c.disp_order, c.name";
  $meterRes = mysql_query($meterSql) or die("</select><h1>Query failed</h1><pre>$meterSql</pre>");

  while ($row = mysql_fetch_row($meterRes)) {
    $sel = "";
    if ($row[0] == $category_id) {
      $sel = "SELECTED ";
    }
?>
      <option <?echo $sel; ?>value="<? echo $row[0]; ?>"><? echo trim("$row[3]"); ?></option>
<?
  }

  mysql_free_result($meterRes);

?></select><?
}

function nbsp($value) {
  if ($value == "") {
    return "&nbsp;";
  }

  return $value;
}

function describe_search($searchType) {
?>
  <div class="hymnSearchType"><? echo $searchType; ?></div>
<?
}

function output_hymn_table_start() {
?>
<table border=0 cellspacing=0 cellpadding=4>
<?
}

function output_hymn_line($hymn_no, $hymn_line, $meter) {
?>
  <tr><td><a href="javascript:void();" onClick="view_hymn('<? echo $hymn_no; ?>');return false;"><? echo
  nbsp($hymn_no); ?></a></td><td title="<? echo $meter; ?>"><? echo $hymn_line; ?></td></tr>
<?
}

function output_hymn_table_end() {
?>
</table>
<?
}

function body_search($keywordsList, $searchType) {
  global $database, $language, $meter_id, $category_id;

  describe_search($searchType);

  $whereClause = "";
  $extraTables = "";

  $i = 0;
  foreach($keywordsList as $keyword) {
    if ($keyword != "") {
      $whereClause = $whereClause . "and d.line_text like '%".$keyword."%' ";
      $i++;
    }
  }

  if (!empty($meter_id) && $meter_id != "ALL") {
    $whereClause .= "AND h.meter_id='$meter_id' ";
    if ($i == 0) {
      $whereClause .= "AND d.vers_no=1 and d.line_no=1 ";
    }
  }

  if (!empty($category_id) && $category_id != "ALL") {
    $whereClause .= "AND h.hymn_no = c.hymn_no AND c.category_id = '$category_id' ";
    $extraTables .= ", hymn_categories c ";
    if ($i == 0) {
      $whereClause .= "AND d.vers_no=1 and d.line_no=1 ";
    }
  }

  $verseSql = "SELECT DISTINCT d.hymn_no, d.line_text, h.meter " . //, d.vers_no, d.line_no, d.line_text, h.meter ".
              "FROM hymn_line$language d, hymn$language h $extraTables ".
              "WHERE d.hymn_no = h.hymn_no $whereClause ".
              "ORDER BY d.hymn_no,d.vers_no,d.line_no";

  $res = mysql_query($verseSql) or die("</select><h1>Query failed</h1><pre>$verseSql</pre>");
  output_hymn_table_start();
  while ($row = mysql_fetch_row($res)) {
    output_hymn_line($row[0], $row[1], $row[2]);
  }
  output_hymn_table_end();
}

function author_search($authorList, $searchType) {
  global $database, $language, $meter_id;

  describe_search($searchType);

  $whereClause = "WHERE ";

  $i = 0;
  foreach($authorList as $auth) {
    if ($i > 0) {
      $whereClause .= "AND ";
    }
    $whereClause .= "fullname LIKE '%".$auth."%' ";
    $i++;
  }

?>
  <table border=0 cellspacing=0 cellpadding=4>
<?
  $verseSql = "SELECT id,fullname,surname,firstnames,author_life,bio_url ".
              "FROM authors $whereClause order by surname,fullname";
  $verseRes = mysql_query($verseSql) or die("<h1>Query failed</h1><pre>$verseSql</pre>");

  for ($count = 1; $row = mysql_fetch_row($verseRes); ++$count) {
    $details = "$row[3] $row[2] $row[4]";

    if (!empty($row[5])) {
      $details = "<a target=\"_blank\" href=\"$row[5]\">$details</a>";
    }
?>
  <tr>
    <td><b><? echo $row[1]; ?></b><br>
      <? echo $details; ?></td>
  </tr>
<?
    $compSql = "SELECT h.hymn_no, d.line_text, h.meter " .
               "FROM hymn$language h, hymn_line$language d " .
               "WHERE h.hymn_no = d.hymn_no " .
               "AND d.line_no = 1 " .
               "AND d.vers_no = 1 " .
               "AND h.author_id = $row[0] " .
               "ORDER BY h.hymn_no";

?><tr><td colspan=4><?

  $res = mysql_query($compSql) or die("</select><h1>Query failed</h1><pre>$compSql</pre>");
  output_hymn_table_start();
  while ($row = mysql_fetch_row($res)) {
    output_hymn_line($row[0], $row[1], $row[2]);
  }
  output_hymn_table_end();

  ?></td></tr><?
  }

  mysql_free_result($verseRes);

?>
</table>
<?
}

function show_hymn($hymn, $language) {
  global $database;
  $verseCount = 0;

  if ($hymn < 0 || $hymn > 456) {
    echo "<h1 class=error>Please enter a Hymn from 1 to 456.</h1>";
    return;
  }
?>
  <table border=0 cellspacing=0 cellpadding=2><tr><td class=hymn><? echo $hymn; ?></td>
<?
  $hymnSql = "SELECT m.meter, m.rhythm, m.chorus ".
             "FROM hymn$language h, hymn_meter m ".
             "WHERE h.meter_id=m.id ".
             "AND hymn_no=$hymn";

  $metdesc = "";
  $res = mysql_query($hymnSql) or die("<h1>Query failed</h1><pre>$hymnSql</pre>");
  if ($row = mysql_fetch_row($res)) {
    $metdesc = $row[0];
    if (!empty($row[1])) $metdesc .= "&nbsp;<i>" . $row[1] ."</i>";
    if (!empty($row[2])) $metdesc .= "<br>Chorus ". $row[2];
  }

  echo "<td class=\"meter\">$metdesc</td></tr>";

  $hymnSql = "SELECT vers_no, COUNT(*) line_count ".
             "FROM hymn_line$language ".
             "WHERE hymn_no=$hymn ".
             "GROUP BY vers_no ".
             "ORDER BY if(vers_no=1,0,if(vers_no=99,1,vers_no)) ";
  
  $res = mysql_query($hymnSql) or die("<h1>Query failed</h1><pre>$hymnSql</pre>");
  while ($row = mysql_fetch_row($res)) {
    $verseSql = "SELECT line_no,line_text FROM hymn_line$language ".
          "where hymn_no=$hymn and vers_no=".$row[0]." ".
            "order by vers_no,line_no";
    //mysql_query("set names 'utf8';");
    $res2 = mysql_query($verseSql) or die("<h1>Query failed</h1><pre>$verseSql</pre>");
    while ($row2 = mysql_fetch_row($res2)) {
?>
  <tr>
<?
      $verse_desc = "&nbsp;";
      $verse_class = "lines";
      if ($row[0]==99) {
        $verse_class = "chorus";
      } else {
        if ($row2[0] == 1) {
          echo "<td valign=top rowspan=" . $row[1] . "><span class=verse>" . $row[0] . "</span></td>\n";
        }
      }

      echo "<td class=$verse_class>" . $row2[1] . "</td></tr>\n";
    }

?>
  </tr><tr><td colspan=2>&nbsp;</td></tr>
<?
  }

  $hymnSql = "SELECT a.fullname FROM hymn$language h, authors a where h.author_id = a.id and h.hymn_no=$hymn";
  $res = mysql_query($hymnSql) or die("<h1>Query failed</h1><pre>$hymnSql</pre>");
  if ($row = mysql_fetch_row($res)) {
    echo "<tr><td colspan=2 class=author><a href=\"javascript:void();\" onclick=\"view_author('" . $row[0] . "');\">" . $row[0] . "</a></td></tr>\n";
    echo "</table>\n";
  }
}

?>