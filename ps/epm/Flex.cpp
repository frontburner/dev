/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004-2006 Power Software
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
  strcpy(mpath, "lic.exe") ;

  if (!CreateProcess(0,mpath, 0, 0, 0, 0, 0, 0, &si,&pi)) return false;   // Execute lic.exe
  WaitForSingleObject(pi.hProcess, 25000);                                // Wait until completion
  if (!GetExitCodeProcess(pi.hProcess, &lpExitCode)) return false;        // Get return value

  if (!lpExitCode) {
    return false;
  } else {
    cout << "License [Code:" << lpExitCode << "]" << endl;
  }

  bLangCS = (lpExitCode & EPM_CS);
  bLangCP = (lpExitCode & EPM_CP);
  bLangJV = (lpExitCode & EPM_JV);
  bLangVB = (lpExitCode & EPM_VB);
  bLangS1 = (lpExitCode & EPM_S1);
  bLangAD = (lpExitCode & EPM_AD);
  bLangPL = (lpExitCode & EPM_PL);

  /**
  if (bLangCS) cout << "bLangCS" << endl;
  if (bLangCP) cout << "bLangCP" << endl;
  if (bLangJV) cout << "bLangJV" << endl;
  if (bLangVB) cout << "bLangVB" << endl;
  if (bLangS1) cout << "bLangS1" << endl;
  if (bLangAD) cout << "bLangAD" << endl;
  if (bLangPL) cout << "bLangPL" << endl;
  **/

  return (bLangCS||bLangCP||bLangJV||bLangVB||bLangS1||bLangAD||bLangPL);
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
  }

  return false;
}