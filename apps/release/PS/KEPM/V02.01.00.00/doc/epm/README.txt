
Essential Project Manager
=========================

Please read the UserGuide.pdf to learn how to create a filelist.

Filelists have the following format:

Line 1:      Project Name
Line 2:      Project Snapshot date (a text representation
             of the date snapshot taken)
Line 3:      Base directory (useful for cropping long paths and
             essential for PM comparisons)
Line 4-end:  full path and filename of each file


EPM supports multiple parser language types.  By default these are:
 * ADA (files ending .a, .ada, .adb, .ads)
 * ASP (files ending .asp, .aspx)
 * Assembly (files ending .asm)
 * C# as before (files ending .cs)
 * IDL (files ending .idl)
 * HTML (files ending .htm, .html, .htp)
 * Java (files ending .java)
 * JavaScript (files ending .js)
 * JSP (files ending .jsp)
 * PHP (files ending .php)
 * PL/SQL (files ending .sql, .ora)
 * Perl (files ending .pl)
 * Python (files ending .py)
 * VB6/VB.NET/VBScript (files ending .vb, .frm, .cls, .bas, .vbs)
 * VHDL (files ending .vhdl)
 * XML (files ending .xml .xsd .wsml .xsl .xslt)
 * C/C++ (all other file extensions)

Please consult UserGuide.pdf for detailed information regarding
the EPM XML Configuration file that can be used to modify how
EPM parses your files, based on your naming conventions.

Simply include the files together in any order and EPM will
automatically differentiate for you!


SourceCodeMetrics.com