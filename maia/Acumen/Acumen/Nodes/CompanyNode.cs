/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Maia Systems Acumen
 * Copyright (c) 2006 Maia Systems
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Company Node in the tree
 *
 * $Id$
 * 
 * Who  When       Why
 * CAM  6-Apr-06   100 : Added to Source Safe.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Windows.Forms;

namespace frontburner.maia.Acumen.Nodes
{
	/// <summary>
  /// Root Node representing the Company.
	/// </summary>
	public class CompanyNode : AcumenNode
	{
		public CompanyNode(int id, string code, string name) : base(id, code, name)
		{      
      this.ImageIndex = 0;
      this.SelectedImageIndex = this.ImageIndex;
		}
	}
}
