@echo off

set SETUPFILE=setup.exe
set INSTALLFILE=setup_kp_java.exe
set OUTPUT_PATH=C:\Dev\SCM\Release\kr\kp_java\kpjava\Express\SingleImage\DiskImages\DISK1
set ICON=C:\Dev\PS\kepm\KrakatauEPM\VolcanoEPM.ico
set ZIPFILE=emetrics_java_100_003.zip

echo Copying output SETUP.EXE and replacing Icon

"C:\Dev\bin\ResHack\ResHacker.exe" -addoverwrite "%OUTPUT_PATH%\%SETUPFILE%", "%INSTALLFILE%", "%ICON%", ICONGROUP,MAINICON,0

echo Zipping file

rem winzip32 -min -a %ZIPFILE% %INSTALLFILE%

echo Deleting temp exe 

rem del %INSTALLFILE%


