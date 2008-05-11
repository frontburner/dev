/* * * * * * * * * * * * * * * * * * * * * * * *
 * Good Teaching Search Engine Data Builder
 * Copyright (c) 2008 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  11-May-2008  10265 : File created (for clarity).
 * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace FrontBurner.Ministry.MseBuilder
{
  public class VolumeThread
  {
    protected Thread _process;
    protected string _author;
    protected int _vol;
    protected bool _specificVolume;
    protected MseEngine _engine;

    public Thread Process
    {
      get
      {
        return _process;
      }
    }
    public MseEngine Engine
    {
      get
      {
        return _engine;
      }
    }

    public VolumeThread(string author, int vol, bool specificVolume)
    {
      _author = author;
      _vol = vol;
      _specificVolume = specificVolume;
    }
  }

  public class BuilderThread : VolumeThread
  {
    public BuilderThread(string author, int vol, bool specificVolume)
      : base(author, vol, specificVolume)
    {
      _process = new Thread(new ThreadStart(Build));
      _process.IsBackground = true;
      _process.Start();
    }

    private void Build()
    {
      _engine = new MseEngine();

      if (_specificVolume)
      {
        _engine.Build(_author, _vol);
      }
      else
      {
        _engine.Build();
      }
    }
  }

  public class ZipperThread : VolumeThread
  {
    public ZipperThread(string author, int vol, bool specificVolume)
      : base(author, vol, specificVolume)
    {
      _process = new Thread(new ThreadStart(Zip));
      _process.IsBackground = true;
      _process.Start();
    }

    private void Zip()
    {
      _engine = new MseEngine();

      if (_specificVolume)
      {
        _engine.Zip(_author, _vol);
      }
      else
      {
        _engine.Zip();
      }
    }
  }
}