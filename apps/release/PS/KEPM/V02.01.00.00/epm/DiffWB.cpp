/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2009 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * Windows Batch language diff
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  22-Aug-2009  10455 : File created.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include "DiffWB.h"

#include <iostream>
using namespace std;

DiffWB::DiffWB(const char *filename1, const char *filename2) : Diff(filename1, filename2, false)
{
  theNSCValid = false;
}


void DiffWB::getLineCR(FILE *input, char *&currline)
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

    char prev1, prev2, prev3, prev4;
    prev1 = prev2 = prev3 = prev4 = 0;

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
            currline = check_for_comment_line(retval);
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
                currline = check_for_comment_line(retval);
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
              currline = check_for_comment_line(retval);
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
          if (!skip)
            skip = true;
          else
            skip = false;

          retval[retLength] = *c;
          retLength++;

          c++;
          i++;

          break;
        }
      case ' ':
      case '\t':
        {                             
          if (!_strnicmp(retval, "rem", 3))
          {
            retval[retLength] = *c;
            retLength++;
          }

          c++;
          i++;
          break;
        }
      case '\n':
        {
          if (retLength>0)
          {            
            retval[retLength] = '\0';
            currline = check_for_comment_line(retval);
            return;
          }
          c++;
          i++;
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

char* DiffWB::check_for_comment_line(char* source_line) 
{
  int len = strlen(source_line);

  if (!_strnicmp(source_line, "rem", 3) && (len == 3))
  {
    source_line[0] = '\0';
  }
  else if (!_strnicmp(source_line, "rem ", 4) && (len > 3))
  {
    source_line[0] = '\0';
  }

  return source_line;
}

void DiffWB::getLineSC(FILE *input, char *&currline) {}
