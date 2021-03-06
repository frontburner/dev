/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004,2008 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * MetricSet and MetricConfig classes to support the Metric Set configuration.
 *
 * $Id$
 *
 * Who  When       Why
 * CAM  06-Jan-06  168 : Added Metrics Sets.
 * CAM  24-Apr-08   358 : Corrected compiler warnings moving to VS2008 (from VC++6).
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#ifndef METRICSET_H
#define METRICSET_H

#include "Metric.h"
#include "Tuple.h"
//#include <iostream.h>

#define MAXSET 10

  class MetricConfig {
    public:
      int fId;
      long lLower,lUpper;
      bool bLower,bUpper;
      MetricConfig() {
        fId = lLower = lUpper = 0;
        bLower = bUpper = false;
      }
      void lower(long value) { lLower = value; bLower = true; }
      void upper(long value) { lUpper = value; bUpper = true; }
  };

  class MetricSet {
    public:
      Tuple sSet[MAXSET];
      MetricConfig metConfig[MAXSET][METS];

      int     nSet,nActive;
      int     nMet[MAXSET];
      int     nErrors;

      MetricSet() {
        nErrors = nSet = 0;
        nActive = -1;
        for (int i=0; i<MAXSET; i++) {
          nMet[i] = 0;
        }
      }

      void addSet(const char* setName) {
        char id[256];
        _itoa_s(nSet, id, 256, 10);
        sSet[nSet].set(id, setName);
        nSet++;
      }

      bool setActive(const char *setName) {
        nActive = -1;

        for (int i=0; i<nSet; i++) {
          if (!strcmp(sSet[i].fDesc, setName)) {
            nActive = i;
            return true;
          }
        }

        return false;
      }

      bool isActive() {
        if (nActive < 0) return false;

        return true;
      }

      bool isActive(int mid) {
        if (nActive < 0) return true;

        for (int i=0; i < nMet[nActive]; i++) {
          if (metConfig[nActive][i].fId == mid) return true;
        }

        return false;
      }

  };

#endif

