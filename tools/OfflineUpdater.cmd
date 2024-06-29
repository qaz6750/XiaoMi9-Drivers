@echo off 
( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0""", "", "runas", 1 > "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

set /P DrivePath=Enter the Drive letter of WINCEPHEUS ^(it should be X:^): 
if [%DrivePath%]==[] exit
if not "%DrivePath:~1,1%"==":" set DrivePath=%DrivePath%:

%~dp0.\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r %~sdp0 -d %~sdp0definitions\Desktop\ARM64\Internal\cepheus.xml -p %DrivePath%

pause
exit