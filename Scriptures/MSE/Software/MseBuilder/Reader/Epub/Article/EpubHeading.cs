/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine Data Builder
 * Copyright (c) 2007,2010 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  19-Jan-2010  10540 : File created.
 * CAM  21-Jan-2010  10546 : Added ClassName.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;

namespace FrontBurner.Ministry.MseBuilder.Reader.Epub.Article
{
  public class EpubHeading : EpubItem
  {
    private string _className;

    public EpubHeading(string text)
      : base(text)
    {
      _className = "title";
    }

    public EpubHeading(string text, string className)
      : base(text)
    {
      _className = className;
    }

    public override string RenderToXhtml()
    {
      return String.Format("    <p class=\"{0}\">{1}</p>", _className, Text);
    }
  }
}
