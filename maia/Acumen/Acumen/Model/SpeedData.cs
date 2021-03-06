/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Maia Systems Acumen
 * Copyright (c) 2006 Maia Systems
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Speed-specific graphing data
 *
 * $Id$
 * 
 * Who  When       Why
 * CAM  6-Apr-06   100 : Added to Source Safe.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Windows.Forms;
using Gigasoft.ProEssentials;
using Gigasoft.ProEssentials.Enums;

using frontburner.maia.Acumen;
using frontburner.maia.Acumen.Nodes;

namespace frontburner.maia.Acumen.Model
{
  /// <summary>
  /// Summary description for Speed.
  /// </summary>
  public class SpeedData : AcumenData
  {
    public SpeedData(ComponentNode component): base(component, "Speed RPM x 1000", 1)
    {
      //double[] minmax = DataLayer.getDataLayer().GetMinMax(2);
      this._min = 0.0f;
      this._max = 3000.0f;
    }

    protected override void StartMessage(StatusBarPanel sbp) 
    {
      sbp.Text = "Loading Speed data...";
      sbp.Parent.Refresh();
    }
    protected override void CompleteMessage(StatusBarPanel sbp)
    {
      sbp.Text = "Finished loading Speed data.";
      sbp.Parent.Refresh();
    }

    public override MeasurementTypes MeasurementType 
    {
      get 
      {
        return MeasurementTypes.Speed;
      }
    }
  }
}
