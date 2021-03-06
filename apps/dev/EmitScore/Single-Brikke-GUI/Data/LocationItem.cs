﻿/* * * * * * * * * * * * * * * * * * * * * * * *
 * EmitScore
 * Copyright (c) 2009 Front Burner Ltd
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  07-May-2009  10444 : Changed to Front Burner.
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections.ObjectModel;
using System.Text;

namespace FrontBurner.Apps.EmitScore.Data
{
  public class LocationItem
  {
    private int _locationId;
    private string _locationName;
    private int _points;

    public int Id
    {
      get { return _locationId; }
      set { _locationId = value; }
    }
    public string LocationName
    {
      get { return _locationName; }
      set { _locationName = value; }
    }
    public int Points
    {
      get { return _points; }
      set { _points = value; }
    }

    public LocationItem(int locationId)
    {
      _locationId = locationId;
    }

    public LocationItem(int locationId, string locationName, int points)
    {
      _locationId = locationId;
      _locationName = locationName;
      _points = points;
    }
  }

  public class LocationMap : KeyedCollection<int, LocationItem>
  {
    public LocationMap()
      : base()
    {
    }
    protected override int GetKeyForItem(LocationItem item)
    {
      return item.Id;
    }
  }
}
