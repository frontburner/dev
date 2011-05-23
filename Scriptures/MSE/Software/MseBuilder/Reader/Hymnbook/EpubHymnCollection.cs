/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine Data Builder
 * Copyright (c) 2007,2010 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  02-Jan-2011  10917 : File created.
 * CAM  03-Jan-2011  10917 : Class renames to make Hymn EPUB more obviously separate.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections.ObjectModel;
using System.Text;

namespace FrontBurner.Ministry.MseBuilder.Reader.Hymnbook
{
  public class EpubHymnCollection : KeyedCollection<long, EpubHymn>
  {
    private EpubHymnbookDocument _doc;

    public EpubHymnCollection(EpubHymnbookDocument doc)
      : base()
    {
      _doc = doc;
    }

    protected override long GetKeyForItem(EpubHymn item)
    {
      return item.HymnNo;
    }

    public EpubHymn CreateHymn(long hymnNo)
    {
      EpubHymn hymn = new EpubHymn(_doc, hymnNo);
      Add(hymn);
      return hymn;
    }
  }
}