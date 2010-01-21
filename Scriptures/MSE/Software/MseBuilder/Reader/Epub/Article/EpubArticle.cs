/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine Data Builder
 * Copyright (c) 2007,2010 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  19-Jan-2010  10540 : File created.
 * CAM  21-Jan-2010  10546 : Moved Header/Footer elements to WriteHeader/WriteFooter.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Text;
using System.IO;

namespace FrontBurner.Ministry.MseBuilder.Reader.Epub.Article
{
  public class EpubArticle : IEpubGenerator
  {
    private long _id;
    private EpubDocument _doc;
    private EpubItemCollection _items;
    private string _title;
    private string _scriptures;

    public long Id
    {
      get { return _id; }
    }
    public string QualifiedId
    {
      get { return String.Format("{0}-{1:000}-{2:0000}", _doc.Volume.Author.Inits.ToLower(), _doc.Volume.Vol, Id); }
    }
    public FileInfo XmlFile
    {
      get { return new FileInfo(String.Format(@"{0}\{1}.html", Document.OpsDir.FullName, QualifiedId)); }
    }
    public EpubDocument Document
    {
      get { return _doc; }
    }
    public EpubItemCollection Items
    {
      get { return _items; }
    }
    public string Title
    {
      get
      {
        if (_title == null) return String.Empty;
        return _title;
      }
      set { _title = value; }
    }
    public string Scriptures
    {
      get
      {
        if (_scriptures == null) return String.Empty;
        return _scriptures;
      }
      set { _scriptures = value; }
    }

    public EpubArticle(long id, EpubDocument doc)
    {
      _id = id;
      _doc = doc;
      _items = new EpubItemCollection();
    }

    public virtual void GenerateEpub()
    {
    }

    public virtual void SaveFile()
    {
      using (StreamWriter writer = new StreamWriter(XmlFile.FullName))
      {
        EpubHeading heading = new EpubHeading(Title);
        EpubScriptures scriptures = new EpubScriptures(Scriptures);

        WriteHeader(writer, heading.Text);
        writer.WriteLine(heading.RenderToXhtml());
        writer.WriteLine(scriptures.RenderToXhtml());

        foreach (EpubItem item in Items)
        {
          writer.WriteLine(item.RenderToXhtml());
        }

        WriteFooter(writer);
      }
    }

    public void WriteHeader(StreamWriter writer, string title)
    {
      writer.WriteLine(@"<?xml version=""1.0"" encoding=""UTF-8""?>");
      writer.WriteLine(@"<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.1//EN"" ""http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"">");
      writer.WriteLine(@"<html xmlns=""http://www.w3.org/1999/xhtml"" xml:lang=""en"">");
      writer.WriteLine(@"  <head>");
      writer.WriteLine(@"    <title>" + title + "</title>");
      writer.WriteLine(@"    <link rel=""stylesheet"" href=""css/epub-ministry.css"" type=""text/css""/>");
      writer.WriteLine(@"    <meta http-equiv=""Content-Type"" content=""application/xhtml+xml; charset=utf-8""/>");
      writer.WriteLine(@"    <meta name=""EPB-UUID"" content=""" + Document.Opf.BookId + @"""/>");
      writer.WriteLine(@"  </head>");
      writer.WriteLine(@"  <body>");
    }

    public void WriteFooter(StreamWriter writer)
    {
      writer.WriteLine(@"  </body>");
      writer.WriteLine(@"</html>");
    }
  }
}
