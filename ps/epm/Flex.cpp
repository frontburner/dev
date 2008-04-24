/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004,2008 SourceCodeMetrics.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * License Validation
 *
 * $Id$
 *
 * Who  When       Why
 * CAM  04-Jan-05  File added.
 * CAM  08-Jan-05  Added called to separate 'lic.exe'.
 * CAM  09-May-05    49 : Changed interrogation of lic results.
 * CAM  18-May-05    97 : Added Language Validation
 * CAM  02-Aug-05    76 : Added ADA.
 * CAM  12-Aug-05   110 : Glorious Twelfth - Correct license problems.
 * CAM  13-Aug-05   114 : Added Perl.
 * CAM  23-Aug-05   115 : Standard Code/Error in brackets.
 * CAM  19-Sep-06   117 : Added ASP.
 * CAM  04-Nov-06   301 : Added PHP.
 * CAM  28-Jun-07   314 : Added Ericsson IDL.
 * CAM  26-Jul-07   316 : Added VHDL.
 * CAM  04-Dec-07   324 : Added JSP/XML (#325).
 * CAM  24-Apr-08   358 : Corrected compiler warnings moving to VS2008 (from VC++6).
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include <windows.h>
#include <iostream>
using namespace std;

bool bLangCS = false;
bool bLangCP = false;
bool bLangJV = false;
bool bLangVB = false;
bool bLangS1 = false;
bool bLangAD = false;
bool bLangPL = false;
bool bLangAS = false;
bool bLangPH = false;
bool bLangID = false;
bool bLangVH = false;
bool bLangJS = false;
bool bLangXM = false;

#include "LicConfig.h"
#include "Lang.h"
using namespace metrics;

bool validLicense() {
  STARTUPINFO si;
  PROCESS_INFORMATION pi;
  DWORD lpExitCode;

  memset(&pi, 0, sizeof(pi));
  memset(&si, 0, sizeof(si));

  si.cb = sizeof(si) ;
  si.dwFlags |= STARTF_USESHOWWINDOW;
  si.wShowWindow |= SW_SHOWMINIMIZED;

  char mpath[256] ;
  strcpy_s(mpath, 256, "lic.exe") ;

  if (!CreateProcess(0,mpath, 0, 0, 0, 0, 0, 0, &si,&pi)) return false;   // Execute lic.exe
  WaitForSingleObject(pi.hProcess, 25000);                                // Wait until completion
  if (!GetExitCodeProcess(pi.hProcess, &lpExitCode)) return false;        // Get return value

  if (!lpExitCode) {
    return false;
  } else {
    cout << "License [Code:" << lpExitCode << "]" << endl;
  }

  bLangCS = !((lpExitCode & EPM_CS) == 0);
  bLangCP = !((lpExitCode & EPM_CP) == 0);
  bLangJV = !((lpExitCode & EPM_JV) == 0);
  bLangVB = !((lpExitCode & EPM_VB) == 0);
  bLangS1 = !((lpExitCode & EPM_S1) == 0);
  bLangAD = !((lpExitCode & EPM_AD) == 0);
  bLangPL = !((lpExitCode & EPM_PL) == 0);
  bLangAS = !((lpExitCode & EPM_AS) == 0);
  bLangPH = !((lpExitCode & EPM_PH) == 0);
  bLangID = !((lpExitCode & EPM_ID) == 0);
  bLangVH = !((lpExitCode & EPM_VH) == 0);
  bLangJS = !((lpExitCode & EPM_JS) == 0);
  bLangXM = !((lpExitCode & EPM_XM) == 0);

  /**
  if (bLangCS) cout << "bLangCS" << endl;
  if (bLangCP) cout << "bLangCP" << endl;
  if (bLangJV) cout << "bLangJV" << endl;
  if (bLangVB) cout << "bLangVB" << endl;
  if (bLangS1) cout << "bLangS1" << endl;
  if (bLangAD) cout << "bLangAD" << endl;
  if (bLangPL) cout << "bLangPL" << endl;
  if (bLangAS) cout << "bLangAS" << endl;
  if (bLangPH) cout << "bLangPH" << endl;
  if (bLangID) cout << "bLangID" << endl;
  if (bLangVH) cout << "bLangVH" << endl;
  if (bLangJS) cout << "bLangJS" << endl;
  if (bLangXM) cout << "bLangXM" << endl;
  **/

  return (bLangCS||bLangCP||bLangJV||bLangVB||bLangS1||bLangAD||bLangPL||bLangAS||bLangPH||bLangID||bLangVH||bLangJS||bLangXM);
}

bool validLanguage(Langs l) {
  switch (l) {
    case LANG_CPP:  return bLangCP;
    case LANG_CS:   return bLangCS;
    case LANG_JAVA: return bLangJV;
    case LANG_VB:   return bLangVB;
    case LANG_S1:   return bLangS1;
    case LANG_ADA:  return bLangAD;
    case LANG_PERL: return bLangPL;
    case LANG_ASP:  return bLangAS;
    case LANG_PHP:  return bLangPH;
    case LANG_IDL:  return bLangID;
    case LANG_VHDL: return bLangVH;
    case LANG_JSP:  return bLangJS;
    case LANG_XML:  return bLangXM;
  }

  return false;
}
