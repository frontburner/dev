
echo $Id$

@echo off

set SETUPFILE=setup.exe
set INSTALLFILE=KrakatauEpmSetup.exe
set OUTPUT_PATH=C:\Dev\FB\ps\dev\Release\em\emetrics_kepm\Express\SingleImage\DiskImages\DISK1
set ICON=C:\Dev\FB\ps\dev\Release\em\common\VolcanoEPM.ico
set ZIPFILE=kepm_203_0000.zip

echo Copying output SETUP.EXE and replacing Icon

"C:\Dev\bin\ResHack\ResHacker.exe" -addoverwrite "%OUTPUT_PATH%\%SETUPFILE%", "%INSTALLFILE%", "%ICON%", ICONGROUP,MAINICON,0

echo Zipping file

zip %ZIPFILE% %INSTALLFILE%

echo Deleting temp exe 

del %INSTALLFILE%

