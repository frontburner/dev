/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine Data Builder
 * Copyright (c) 2007,2009 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  22-Sep-2007  File added to source control.
 * CAM  22-Oct-2007  10186 : Added methods for exporting.
 * CAM  12-Nov-2007  10202 : Migrated to goodteaching.org.
 * CAM  24-Nov-2007  10188 : Save Mse_Text.Article_Page.
 * CAM  24-Nov-2007  10208 : Write NewPages to mse_text.
 * CAM  25-Nov-2007  10208 : Added newpages to sql extraction in GetText.
 * CAM  11-May-2008  10264 : Added handling of error refs.
 * CAM  08-Jun-2008  10269 : Update the local volume when deleting to see meaningful info on the home page.
 * CAM  28-Mar-2009  10409 : Added Footnote support.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

using FrontBurner.Ministry.MseBuilder.Abstract;

namespace FrontBurner.Ministry.MseBuilder
{
  /// <summary>
  /// Retrieves MySQL data
  /// </summary>
  public class DatabaseLayer
  {
    private static DatabaseLayer _dbLayer;
    protected static readonly object _semaphore = new object();

    protected MySqlConnection _conn;

    protected MySqlCommand _cmdVolume;
    protected MySqlCommand _cmdVersions;
    protected MySqlCommand _cmdBooks;
    protected MySqlCommand _cmdArticles;
    protected MySqlCommand _cmdText;
    protected MySqlCommand _cmdBibleRef;

    protected MySqlCommand _cmdInsertText;
    protected MySqlCommand _cmdInsertBibleRef;
    protected MySqlCommand _cmdInsertBadBibleRef;

    // Bible commands
    protected MySqlCommand _cmdInsertVerse;
    protected MySqlCommand _cmdInsertFootnote;
    protected MySqlCommand _cmdInsertFootnoteInst;    
    protected MySqlCommand _cmdDeleteVerse;
    protected MySqlCommand _cmdDeleteFootnote;
    protected MySqlCommand _cmdDeleteFootnoteInst;

    protected MySqlDataAdapter _dadAuthor;

    private DatabaseLayer()
    {
    }

    public static DatabaseLayer Instance
    {
      get
      {
        lock (_semaphore)
        {
          if (_dbLayer == null)
          {
            _dbLayer = new DatabaseLayer();
          }
          return _dbLayer;
        }
      }
    }

    public bool Open()
    {
      string DataSource = "localhost";
      string Database = "goodteaching_org_min";
      string UserID = "goodteaching";
      string Password = "psalm45";

      string MyConString = "Data Source=" + DataSource +
          ";Database=" + Database +
          ";User ID=" + UserID +
          ";Password=" + Password;

      lock (_semaphore)
      {
        try
        {
          _conn = new MySqlConnection(MyConString);
          _conn.Open();
        }
        catch (Exception)
        {
          return false;
        }
      }
      return true;
    }

    public void Close()
    {
      lock (_semaphore)
      {
        if (_conn != null && _conn.State == ConnectionState.Open)
        {
          _conn.Close();
        }

      }
    }

    public BibleVersionCollection GetBibleVersions()
    {
      String sql;
      MySqlDataReader dr;
      BibleVersionCollection versions = new BibleVersionCollection();

      sql = "SELECT verid, vercode, versionname " +
            "FROM mse_bible_version ";

      lock (_semaphore)
      {
        if (_cmdVersions == null)
        {
          _cmdVersions = new MySqlCommand(sql, _conn);
        }
        dr = _cmdVersions.ExecuteReader();
      }

      do
      {
        while (dr.Read())
        {
          versions.Add(new BibleVersion(dr.GetInt32(0), dr.GetString(1), dr.GetString(2)));
        }
      } while (dr.NextResult());

      dr.Close();

      return versions;
    }

    public BibleBookCollection GetBooks()
    {
      String sql;
      MySqlDataReader dr;
      BibleBook book;
      BibleBookCollection books = new BibleBookCollection();

      sql = "SELECT bookid, bookname, singlechap " +
            "FROM mse_bible_book ";

      lock (_semaphore)
      {
        if (_cmdBooks == null)
        {
          _cmdBooks = new MySqlCommand(sql, _conn);
        }
        dr = _cmdBooks.ExecuteReader();
      }

      do
      {
        while (dr.Read())
        {
          book = new BibleBook(dr.GetInt32(0), dr.GetString(1));
          if (!dr.IsDBNull(2)) book.SingleChap = (dr.GetInt32(2) == 1);

          books.Add(book);
        }
      } while (dr.NextResult());

      dr.Close();

      return books;
    }

    public VolumeCollection GetVolumes()
    {
      MySqlDataReader dr;
      Volume vol;
      VolumeCollection rval = new VolumeCollection();

      lock (_semaphore)
      {
        if (_cmdVolume == null)
        {
          string sql =
            "SELECT author,vol,title,added,localfile " +
            "FROM mse_volume " +
            "WHERE author <> 'GRC' ";

          _cmdVolume = new MySqlCommand(sql, _conn);
        }
        dr = _cmdVolume.ExecuteReader();

        do
        {
          while (dr.Read())
          {
            vol = new Volume(dr.GetString(0), dr.GetInt32(1));

            if (!dr.IsDBNull(2)) vol.Title = dr.GetString(2);
            if (!dr.IsDBNull(3)) vol.Added = dr.GetDateTime(3);
            if (!dr.IsDBNull(4)) vol.LocalFile = dr.GetString(4);

            rval.Add(vol);
          }
        } while (dr.NextResult());

        dr.Close();
      }

      return rval;
    }

    public DataSet GetAuthors()
    {
      DataSet ds = new DataSet();

      lock (_semaphore)
      {
        if (_dadAuthor == null)
        {
          string sql =
            "SELECT author, name " +
            "FROM mse_author " +
            "WHERE author <> 'GRC' ";

          _dadAuthor = new MySqlDataAdapter(sql, _conn);
        }

        _dadAuthor.Fill(ds, "Author");
      }

      return ds;
    }

    public DataTable GetArticles(Volume vol)
    {
      if (_cmdArticles == null)
      {
        string sql =
          "SELECT page,article,scriptures,localrow " +
          "FROM mse_article " +
          "WHERE author = ?author " +
          "AND vol = ?vol " +
          "ORDER BY page DESC";

        _cmdArticles = new MySqlCommand(sql, _conn);
        _cmdArticles.Prepare();

        _cmdArticles.Parameters.Add("?author", MySqlDbType.String);
        _cmdArticles.Parameters.Add("?vol", MySqlDbType.Int32);
      }

      _cmdArticles.Parameters["?author"].Value = vol.Author;
      _cmdArticles.Parameters["?vol"].Value = vol.Vol;

      DataTable dt = new DataTable("mse_article");
      MySqlDataAdapter da = new MySqlDataAdapter(_cmdArticles);
      da.Fill(dt);
      return dt;
    }

    public DataTable GetText(Volume vol)
    {
      if (_cmdText == null)
      {
        string sql =
          "SELECT page,para,article_page,text,inits,newpages " +
          "FROM mse_text " +
          "WHERE author = ?author " +
          "AND vol = ?vol " +
          "ORDER BY page,para";

        _cmdText = new MySqlCommand(sql, _conn);
        _cmdText.Prepare();

        _cmdText.Parameters.Add("?author", MySqlDbType.String);
        _cmdText.Parameters.Add("?vol", MySqlDbType.Int32);
      }

      _cmdText.Parameters["?author"].Value = vol.Author;
      _cmdText.Parameters["?vol"].Value = vol.Vol;

      DataTable dt = new DataTable("mse_text");
      MySqlDataAdapter da = new MySqlDataAdapter(_cmdText);
      da.Fill(dt);
      return dt;
    }

    public DataTable GetBibleRefs(Volume vol)
    {
      if (_cmdBibleRef == null)
      {
        string sql =
          "SELECT page,para,ref,bookid,chapter,vstart,vend " +
          "FROM mse_bible_ref " +
          "WHERE author = ?author " +
          "AND vol = ?vol " +
          "ORDER BY page,para,ref";

        _cmdBibleRef = new MySqlCommand(sql, _conn);
        _cmdBibleRef.Prepare();

        _cmdBibleRef.Parameters.Add("?author", MySqlDbType.String);
        _cmdBibleRef.Parameters.Add("?vol", MySqlDbType.Int32);
      }

      _cmdBibleRef.Parameters["?author"].Value = vol.Author;
      _cmdBibleRef.Parameters["?vol"].Value = vol.Vol;

      DataTable dt = new DataTable("mse_bible_ref");
      MySqlDataAdapter da = new MySqlDataAdapter(_cmdBibleRef);
      da.Fill(dt);
      return dt;
    }

    public void InsertParagraph(Paragraph para)
    {
      if (_cmdInsertText == null)
      {
        string sql =
          "INSERT INTO mse_text (" +
            "author, vol, page, para, article_page, localrow, inits, text, newpages" +
          ") VALUES (" +
            "?author, ?vol, ?pageNo, ?para, ?articlePage, ?localRow, ?inits, ?text, ?newPages" +
          ")";

        _cmdInsertText = new MySqlCommand(sql, _conn);
        _cmdInsertText.Prepare();

        _cmdInsertText.Parameters.Add("?author", MySqlDbType.String);
        _cmdInsertText.Parameters.Add("?vol", MySqlDbType.Int32);
        _cmdInsertText.Parameters.Add("?pageNo", MySqlDbType.Int32);
        _cmdInsertText.Parameters.Add("?para", MySqlDbType.Int32);
        _cmdInsertText.Parameters.Add("?articlePage", MySqlDbType.Int32);
        _cmdInsertText.Parameters.Add("?localRow", MySqlDbType.Int32);
        _cmdInsertText.Parameters.Add("?inits", MySqlDbType.String);
        _cmdInsertText.Parameters.Add("?text", MySqlDbType.String);
        _cmdInsertText.Parameters.Add("?newPages", MySqlDbType.String);
      }

      _cmdInsertText.Parameters["?author"].Value = para.Volume.Author;
      _cmdInsertText.Parameters["?vol"].Value = para.Volume.Vol;
      _cmdInsertText.Parameters["?pageNo"].Value = para.PageNo;
      _cmdInsertText.Parameters["?para"].Value = para.Para;
      _cmdInsertText.Parameters["?articlePage"].Value = para.Article.PageNo;
      _cmdInsertText.Parameters["?localRow"].Value = para.LocalRow;
      _cmdInsertText.Parameters["?inits"].Value = para.Inits;
      _cmdInsertText.Parameters["?text"].Value = para.Text;

      if (para.NewPages.Length == 0)
      {
        _cmdInsertText.Parameters["?newPages"].Value = DBNull.Value;
      }
      else
      {
        _cmdInsertText.Parameters["?newPages"].Value = para.NewPages;
      }

      _cmdInsertText.ExecuteNonQuery();
    }

    public void InsertBibleRef(Paragraph paragraph, int refNo, BibleRef bref)
    {
      if (_cmdInsertBibleRef == null)
      {
        string sql =
          "INSERT INTO mse_bible_ref (" +
           "author, vol, page, para, ref, " +
            "bookid, chapter, vstart, vend" +
          ") VALUES (" +
            "?author, ?vol, ?pageNo, ?para, ?ref, " +
            "?bookId, ?chapter, ?vStart, ?vEnd" +
          ")";

        _cmdInsertBibleRef = new MySqlCommand(sql, _conn);
        _cmdInsertBibleRef.Prepare();

        _cmdInsertBibleRef.Parameters.Add("?author", MySqlDbType.String);
        _cmdInsertBibleRef.Parameters.Add("?vol", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?pageNo", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?para", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?ref", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?bookId", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?chapter", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?vStart", MySqlDbType.Int32);
        _cmdInsertBibleRef.Parameters.Add("?vEnd", MySqlDbType.Int32);
      }

      _cmdInsertBibleRef.Parameters["?author"].Value = paragraph.Volume.Author;
      _cmdInsertBibleRef.Parameters["?vol"].Value = paragraph.Volume.Vol;
      _cmdInsertBibleRef.Parameters["?pageNo"].Value = paragraph.PageNo;
      _cmdInsertBibleRef.Parameters["?para"].Value = paragraph.Para;
      _cmdInsertBibleRef.Parameters["?ref"].Value = refNo;
      _cmdInsertBibleRef.Parameters["?bookId"].Value = bref.Book.BookId;
      _cmdInsertBibleRef.Parameters["?chapter"].Value = bref.Chapter;
      _cmdInsertBibleRef.Parameters["?vStart"].Value = bref.VerseStart;
      _cmdInsertBibleRef.Parameters["?vEnd"].Value = bref.VerseEnd;

      _cmdInsertBibleRef.ExecuteNonQuery();
    }

    public void InsertBadBibleRef(Volume vol, int pageNo, int para, int refNo, char errCode, string text)
    {
      if (_cmdInsertBadBibleRef == null)
      {
        string sql =
          "INSERT INTO mse_bible_ref_error (" +
           "author, vol, page, para, ref, " +
            "error_code, text" +
          ") VALUES (" +
            "?author, ?vol, ?pageNo, ?para, ?ref, " +
            "?errCode, ?text" +
          ")";

        _cmdInsertBadBibleRef = new MySqlCommand(sql, _conn);
        _cmdInsertBadBibleRef.Prepare();

        _cmdInsertBadBibleRef.Parameters.Add("?author", MySqlDbType.String);
        _cmdInsertBadBibleRef.Parameters.Add("?vol", MySqlDbType.Int32);
        _cmdInsertBadBibleRef.Parameters.Add("?pageNo", MySqlDbType.Int32);
        _cmdInsertBadBibleRef.Parameters.Add("?para", MySqlDbType.Int32);
        _cmdInsertBadBibleRef.Parameters.Add("?ref", MySqlDbType.Int32);
        _cmdInsertBadBibleRef.Parameters.Add("?errCode", MySqlDbType.String);
        _cmdInsertBadBibleRef.Parameters.Add("?text", MySqlDbType.String);
      }

      _cmdInsertBadBibleRef.Parameters["?author"].Value = vol.Author;
      _cmdInsertBadBibleRef.Parameters["?vol"].Value = vol.Vol;
      _cmdInsertBadBibleRef.Parameters["?pageNo"].Value = pageNo;
      _cmdInsertBadBibleRef.Parameters["?para"].Value = para;
      _cmdInsertBadBibleRef.Parameters["?ref"].Value = refNo;
      _cmdInsertBadBibleRef.Parameters["?errCode"].Value = errCode;
      _cmdInsertBadBibleRef.Parameters["?text"].Value = text;

      try
      {
        _cmdInsertBadBibleRef.ExecuteNonQuery();
      }
      catch (MySqlException mse)
      {
        if (mse.Number == 1062)
        {
          // ignore duplicates
        }
        else
        {
          MessageBox.Show(mse.ToString());
        }
      }
    }

    public void UpdateArticle(Article art)
    {
      string sql;

      if (art.Scriptures == null)
      {
        sql = String.Format(
          "REPLACE INTO mse_article ( " +
            "author, vol, article, localrow, page " +
          ") VALUES (" +
            "'{0}', '{1}', '{2}', '{3}', '{4}')",
          art.Volume.Author, art.Volume.Vol, DatabaseLayer.SqlText(art.Title), art.LocalRow, art.PageNo);
      }
      else
      {
        sql = String.Format(
          "UPDATE mse_article " +
          "SET scriptures = '{0}' " +
          "WHERE author = '{1}' " +
          "AND vol = '{2}' " +
          "AND localrow = '{3}'",
          DatabaseLayer.SqlText(art.Scriptures), art.Volume.Author, art.Volume.Vol, art.LocalRow);
      }

      ExecuteSql(sql);
    }

    public void TruncateTables()
    {
      this.ExecuteSql("TRUNCATE TABLE mse_article");
      this.ExecuteSql("TRUNCATE TABLE mse_text");
      this.ExecuteSql("TRUNCATE TABLE mse_bible_ref");
    }

    public void DeleteVolume(Volume vol)
    {
      this.ExecuteSql(String.Format("UPDATE mse_volume SET added=NOW() WHERE author = '{0}' and vol = {1}", vol.Author, vol.Vol), true);
      this.ExecuteSql(String.Format("DELETE FROM mse_article WHERE author = '{0}' and vol = {1}", vol.Author, vol.Vol), true);
      this.ExecuteSql(String.Format("DELETE FROM mse_text WHERE author = '{0}' and vol = {1}", vol.Author, vol.Vol), true);
      this.ExecuteSql(String.Format("DELETE FROM mse_bible_ref WHERE author = '{0}' and vol = {1}", vol.Author, vol.Vol), true);
      this.ExecuteSql(String.Format("DELETE FROM mse_bible_ref_error WHERE author = '{0}' and vol = {1}", vol.Author, vol.Vol), true);
    }

    public void SaveBibleBook(BibleBook book)
    {
      DeleteVerse(book);
      DeleteFootnoteInstance(book);
      DeleteFootnote(book);

      foreach (BibleVerse verse in book.Verses)
      {
        InsertVerse(verse);
      }

      foreach (BibleFootnote footnote in book.Footnotes)
      {
        InsertFootnote(footnote);

        foreach (BibleXref xref in footnote)
        {
          InsertFootnoteInst(xref);
        }
      }
    }

    public void DeleteVerse(BibleBook book)
    {
      if (_cmdDeleteVerse == null)
      {
        string sql =
          "DELETE FROM mse_bible_text " +
          "WHERE verid = ?verid " +
          "AND bookid = ?bookid";

        _cmdDeleteVerse = new MySqlCommand(sql, _conn);
        _cmdDeleteVerse.Prepare();

        _cmdDeleteVerse.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdDeleteVerse.Parameters.Add("?bookid", MySqlDbType.Int32);
      }

      _cmdDeleteVerse.Parameters["?verid"].Value = book.Version.VersionId;
      _cmdDeleteVerse.Parameters["?bookid"].Value = book.BookId;

      _cmdDeleteVerse.ExecuteNonQuery();
    }

    public void DeleteFootnoteInstance(BibleBook book)
    {
      if (_cmdDeleteFootnoteInst == null)
      {
        string sql =
          "DELETE FROM mse_bible_footnote_instance " +
          "WHERE EXISTS (SELECT 1 FROM mse_bible_footnote " +
                        "WHERE verid = ?verid " +
                        "AND bookid = ?bookid " +
                        "AND footnoteid = mse_bible_footnote_instance.footnoteid)";

        _cmdDeleteFootnoteInst = new MySqlCommand(sql, _conn);
        _cmdDeleteFootnoteInst.Prepare();

        _cmdDeleteFootnoteInst.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdDeleteFootnoteInst.Parameters.Add("?bookid", MySqlDbType.Int32);
      }

      _cmdDeleteFootnoteInst.Parameters["?verid"].Value = book.Version.VersionId;
      _cmdDeleteFootnoteInst.Parameters["?bookid"].Value = book.BookId;

      _cmdDeleteFootnoteInst.ExecuteNonQuery();
    }

    public void DeleteFootnote(BibleBook book)
    {
      if (_cmdDeleteFootnote == null)
      {
        string sql =
          "DELETE FROM mse_bible_footnote " +
          "WHERE verid = ?verid " +
          "AND bookid = ?bookid";

        _cmdDeleteFootnote = new MySqlCommand(sql, _conn);
        _cmdDeleteFootnote.Prepare();

        _cmdDeleteFootnote.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdDeleteFootnote.Parameters.Add("?bookid", MySqlDbType.Int32);
      }

      _cmdDeleteFootnote.Parameters["?verid"].Value = book.Version.VersionId;
      _cmdDeleteFootnote.Parameters["?bookid"].Value = book.BookId;

      _cmdDeleteFootnote.ExecuteNonQuery();
    }

    public void InsertVerse(BibleVerse verse)
    {
      if (_cmdInsertVerse == null)
      {
        string sql =
          "INSERT INTO mse_bible_text (" +
            "verid, bookid, chapter, verse, text" +
          ") VALUES (" +
            "?verid, ?bookid, ?chapter, ?verse, ?text" +
          ")";

        _cmdInsertVerse = new MySqlCommand(sql, _conn);
        _cmdInsertVerse.Prepare();

        _cmdInsertVerse.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdInsertVerse.Parameters.Add("?bookid", MySqlDbType.Int32);
        _cmdInsertVerse.Parameters.Add("?chapter", MySqlDbType.Int32);
        _cmdInsertVerse.Parameters.Add("?verse", MySqlDbType.Int32);
        _cmdInsertVerse.Parameters.Add("?text", MySqlDbType.String);
      }

      _cmdInsertVerse.Parameters["?verid"].Value = verse.Book.Version.VersionId;
      _cmdInsertVerse.Parameters["?bookid"].Value = verse.Book.BookId;
      _cmdInsertVerse.Parameters["?chapter"].Value = verse.Chapter;
      _cmdInsertVerse.Parameters["?verse"].Value = verse.Verse;
      _cmdInsertVerse.Parameters["?text"].Value = verse.Text;

      _cmdInsertVerse.ExecuteNonQuery();
    }

    public void InsertFootnote(BibleFootnote footnote)
    {
      if (_cmdInsertFootnote == null)
      {
        string sql =
          "INSERT INTO mse_bible_footnote (" +
            "footnoteid, verid, bookid, chapter, verse, symbol, text" +
          ") VALUES (" +
            "?footnoteid, ?verid, ?bookid, ?chapter, ?verse, ?symbol, ?text" +
          ")";

        _cmdInsertFootnote = new MySqlCommand(sql, _conn);
        _cmdInsertFootnote.Prepare();

        _cmdInsertFootnote.Parameters.Add("?footnoteid", MySqlDbType.Int32);
        _cmdInsertFootnote.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdInsertFootnote.Parameters.Add("?bookid", MySqlDbType.Int32);
        _cmdInsertFootnote.Parameters.Add("?chapter", MySqlDbType.Int32);
        _cmdInsertFootnote.Parameters.Add("?verse", MySqlDbType.Int32);
        _cmdInsertFootnote.Parameters.Add("?symbol", MySqlDbType.Char);
        _cmdInsertFootnote.Parameters.Add("?text", MySqlDbType.String);
      }

      _cmdInsertFootnote.Parameters["?footnoteid"].Value = footnote.FoonoteId;
      _cmdInsertFootnote.Parameters["?verid"].Value = footnote.Book.Version.VersionId;
      _cmdInsertFootnote.Parameters["?bookid"].Value = footnote.Book.BookId;
      _cmdInsertFootnote.Parameters["?chapter"].Value = footnote.Chapter;
      _cmdInsertFootnote.Parameters["?verse"].Value = footnote.Verse;
      _cmdInsertFootnote.Parameters["?symbol"].Value = footnote.Symbol;
      _cmdInsertFootnote.Parameters["?text"].Value = footnote.Text;

      _cmdInsertFootnote.ExecuteNonQuery();
    }

    public void InsertFootnoteInst(BibleXref xref)
    {
      if (xref.Type != XrefType.VerseToFootnote) return;
      BibleFootnote refTo = xref.RefTo as BibleFootnote;
      BibleVerse refFrom = xref.RefFrom;

      if (_cmdInsertFootnoteInst == null)
      {
        string sql =
          "INSERT INTO mse_bible_footnote_instance (" +
            "footnoteid, verid, bookid, chapter, verse, instance, word" +
          ") VALUES (" +
            "?footnoteid, ?verid, ?bookid, ?chapter, ?verse, ?instance, ?word" +
          ")";

        _cmdInsertFootnoteInst = new MySqlCommand(sql, _conn);
        _cmdInsertFootnoteInst.Prepare();

        _cmdInsertFootnoteInst.Parameters.Add("?footnoteid", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?verid", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?bookid", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?chapter", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?verse", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?instance", MySqlDbType.Int32);
        _cmdInsertFootnoteInst.Parameters.Add("?word", MySqlDbType.String);
      }


      _cmdInsertFootnoteInst.Parameters["?footnoteid"].Value = refTo.FoonoteId;
      _cmdInsertFootnoteInst.Parameters["?verid"].Value = refFrom.Book.Version.VersionId;
      _cmdInsertFootnoteInst.Parameters["?bookid"].Value = refFrom.Book.BookId;
      _cmdInsertFootnoteInst.Parameters["?chapter"].Value = refFrom.Chapter;
      _cmdInsertFootnoteInst.Parameters["?verse"].Value = refFrom.Verse;
      _cmdInsertFootnoteInst.Parameters["?instance"].Value = xref.InstanceId;
      _cmdInsertFootnoteInst.Parameters["?word"].Value = xref.Word;

      _cmdInsertFootnoteInst.ExecuteNonQuery();
    }

    public void ExecuteSql(string sql)
    {
      ExecuteSql(sql, false);
    }

    public void ExecuteSql(string sql, bool longRunning)
    {
      MySqlCommand cmd = new MySqlCommand(sql, _conn);

      if (longRunning)
      {
        cmd.CommandTimeout = 300;
      }

      cmd.ExecuteNonQuery();
    }

    public static string SqlText(object text)
    {
      return SqlText(text.ToString(), false);
    }

    public static string SqlText(string text)
    {
      return SqlText(text, false);
    }

    public static string SqlText(string text, bool quotes)
    {
      text = text.Replace("'", "\\'");
      if (quotes)
      {
        text = String.Format("'{0}'", text);
      }
      return text;
    }

    public static bool IsInteger(string text)
    {
      if (text.Length == 0) return true;

      try
      {
        Int32.Parse(text);
      }
      catch (Exception)
      {
        return false;
      }

      return true;
    }
  }
}