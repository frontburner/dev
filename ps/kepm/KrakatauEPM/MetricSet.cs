/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Krakatau Essential PM (KEPM)
 * Copyright (c) 2004-2006 Power Software
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Representation of Metric Definition in Metric Set
 *
 * $Id: Prefs.cs 147 2006-06-06 23:06:48Z craig $
 * 
 * Who  When       Why
 * CAM  13-Jun-06   258 : File created.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections;

namespace KrakatauEPM
{
	/// <summary>
	/// Metric Definition
	/// </summary>
	public class MetricSet
	{
    private string _name;
    private Hashtable _defs;

    public MetricSet(string name)
    {
      this._name = name;
      this._defs = new Hashtable();
    }
    
    public void Add(MetricDef d) 
    {      
      this._defs[d.Id] = d;
    }

    public IEnumerator GetEnumerator() 
    {
      return this._defs.Values.GetEnumerator();
    }   
   
    public string Name 
    {
      get 
      {
        return this._name;
      }
      set 
      {
        this._name = value;
      }

    }
  }
}
