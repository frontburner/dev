/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004,2008 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Perl language Diff
 *
 * $Id$
 *
 * Who  When       Why
 * CAM  18-Mar-06   212 : File created.
 * CAM  18-Jul-06   272 : Implement CHG,DEL,ADD LLOC.
 * CAM  25-Oct-07   319 : Correct leak in getLine*.
 * CAM  24-Apr-08   358 : Corrected compiler warnings moving to VS2008 (from VC++6).
 * CAM  16-Sep-2013  11148 : Skip logic and breaks to ensure getLineSC operates correctly.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include "DiffPerl.h"

#include <iostream>
using namespace std;

DiffPerl::DiffPerl(const char *filename1, const char *filename2) : Diff(filename1, filename2, false)
{
  theNSCValid = false;
}


void DiffPerl::getLineCR(FILE *input, char *&currline)
{

  try
  {
    char buffer[1000];
    if (!fgets(buffer,1000,input)) {
      currline = NULL;     // EOF or error
      return;
    }

    char *c = buffer;

    char *retval = (char*) malloc(1000*sizeof(char));

    int currAvailLength = 1000;    // The current allocated size of retval
    int buffLength = strlen(buffer); // The length of the string in the buffer
    int i=0;
    int retLength = 0;         // Used to keep track of the created string

    bool skip = false;
    bool finishedML = true;

    if (theMultiLine)
      finishedML = false;

    while (true)
    {
      if (*c=='\0')   // We have reached the end of the buffer but not found
      {         // a newline
        // Get the next 1000 chars from the file
        if (!fgets(buffer,1000,input))  // EOF or error
        {
          if (retLength>0)  // If there is a return value return it
          {
            retval[retLength] = '\0';
            currline = retval;
            return;
          }
          else // otherwise return NULL
          {
            try { free(retval); } catch (...) {}
            currline = NULL;
            return;
          }
        }

        c = buffer;

        buffLength = strlen(buffer); // Set the length of the buffer string
        i = 0;             // Reset i
      }

      if (retLength>=currAvailLength-1)
      {
        currAvailLength+=1000;

        // Re-size the return string
        retval = (char*) realloc(retval, currAvailLength*sizeof(char*));
      }

      while (!finishedML)
      {

        switch (*c)
        {
        case '\0':
          {
            if (!fgets(buffer,1000,input))  // EOF or error
            {
              if (retLength>0)  // If there is a return value return it
              {
                retval[retLength] = '\0';
                currline = retval;
                return;
              }
              else        // otherwise return NULL
              {
                try { free(retval); } catch (...) {}
                currline = NULL;
                return;
              }
            }

            c = buffer;
            break;
          }
        case '\n':
          {
            if (retLength>0)  // If there is a return value return it
            {
              retval[retLength] = '\0';
              currline = retval;
              return;
            }

            c++;
            break;
          }
        default:
          {
            c++;
          }
        }
      }

      switch (*c)
      {
      case '"':
        {
          skip = !skip;
          retval[retLength] = *c;
          retLength++;

          c++;
          i++;

          break;
        }
      case ' ':
      case '\t':
        {
          c++;
          i++;
          break;
        }
      case '\n':
        {
          if (retLength>0)
          {
            retval[retLength] = '\0';
            currline = retval;
            return;
          }
          c++;
          i++;
          break;
        }
      case '#':
        {
          if (!skip)
          {
            *c = '\n';
            *(c+1) = '\0';
          }
          else
          {
            // Skip was true, ie we are in a string so just output the '
            retval[retLength] = *c;
            retLength++;

            c++;
            i++;
          }

          break;
        }
      case '\\':
        {
          if (skip)
          {
            // We are in a string so this is the start of an escape sequence
            // so output the '\' then move onto the next char

            retval[retLength] = *c;
            retLength++;

            c++;
            i++;

            // Do not break - instead move onto the defualt clause to output
            // the char following the '\'
          }
        }
      default:
        {
          retval[retLength] = *c;
          retLength++;

          c++;
          i++;
        }
      }
    }
  }
  catch (...)
  {
    currline = _strdup("");
    return;
  }
}

void DiffPerl::getLineSC(FILE *input, char *&currline) {}
