/* * * * * * * * * * * * * * * * * * * * * * * *
 * Ministry Search Engine Data Builder
 * Copyright (c) 2008 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  17-May-2008  10266 : File created.
 * CAM  18-May-2008  10267 : Added MpowerCompletedJobsTableAdapter.
 * CAM  28-Mar-2009  10412 : Moved mpower code to Bugzilla table adapter.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace FrontBurner.Ministry.MseBuilder.Data.MseDataTableAdapters
{
  public partial class CompletedBugsTableAdapter
  {
    public void CopyToMySQL()
    {
      MseData.CompletedBugsDataTable release = new MseData.CompletedBugsDataTable();
      this.Fill(release);

      string tableName = "mse_release_history";
      DataSet ds = new DataSet();

      MySqlConnection myConn = new MySqlConnection("Server=localhost;Database=goodteaching_org_min;Uid=goodteaching;Pwd=psalm45;");
      MySqlDataAdapter myDataAdapter = new MySqlDataAdapter();
      myDataAdapter.SelectCommand = new MySqlCommand("SELECT release_no, task_id, description, completion_date FROM mse_release_history", myConn);
      MySqlCommandBuilder cb = new MySqlCommandBuilder(myDataAdapter);

      myConn.Open();
      myDataAdapter.Fill(ds, tableName);
      DataTable myReleaseHistory = ds.Tables[tableName];

      foreach (DataRow existingRow in myReleaseHistory.Rows)
      {
        // Remove the exising rows
        existingRow.Delete();
      }

      foreach (DataRow bugRow in release)
      {
        // Add the new rows from Bugzilla
        DataRow copyRow = myReleaseHistory.NewRow();
        copyRow["release_no"] = bugRow[release.VersionColumn];
        copyRow["task_id"] = bugRow[release.BugIdColumn];
        copyRow["description"] = bugRow[release.DescriptionColumn];
        copyRow["completion_date"] = bugRow[release.LastChangedTimeColumn];
        myReleaseHistory.Rows.Add(copyRow);
      }

      // Update MySQL
      myDataAdapter.Update(ds, tableName);
      myConn.Close();
    }
  }
}

namespace FrontBurner.Ministry.MseBuilder.Data
{
    
    
    public partial class MseData {
    }
}
