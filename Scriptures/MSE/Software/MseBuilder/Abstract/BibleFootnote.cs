/* * * * * * * * * * * * * * * * * * * * * * * *
 * Ministry Search Engine Data Builder
 * Copyright (c) 2008 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id: $
 *
 * Who  When         Why
 * CAM  15-Jun-2008  10409 : File created.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections.ObjectModel;
using System.Text;

namespace FrontBurner.Ministry.MseBuilder.Abstract
{
  public class BibleFootnote : BibleVerse
  {
    private int _foonoteId;
    private char _symbol;

    public override string FullId
    {
      get
      {
        return String.Format("n_{0}?n={1}", Book.ShortCode, this.ShortCode);
      }
    }
    public int FoonoteId
    {
      get
      {
        return _foonoteId;
      }
    }
    public char Symbol
    {
      get
      {
        return _symbol;
      }
      set
      {
        _symbol = value;
      }
    }

    public BibleFootnote(BibleBook book, string shortCode, char symbol, string text)
      : base(book, shortCode, text)
    {
      _foonoteId = BusinessLayer.Instance.GetNextFootnoteId();
      _symbol = symbol;
    }
  }

  public class BibleFootnoteCollection : KeyedCollection<string, BibleFootnote>
  {
    private BibleBook _book;

    public BibleFootnoteCollection(BibleBook book)
      : base()
    {
      _book = book;
    }

    protected override string GetKeyForItem(BibleFootnote item)
    {
      return item.ShortCode;
    }

    protected override void InsertItem(int index, BibleFootnote item)
    {
      base.InsertItem(index, item);
      _book.Elements.Add(item);
    }
  }
}