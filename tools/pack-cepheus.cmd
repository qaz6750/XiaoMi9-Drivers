@echo off
REM rmdir /Q /S ..\..\XiaoMi9-Drivers-Release
mkdir ..\..\XiaoMi9-Drivers-Release

echo @echo off > ..\OnlineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\cepheus.xml >> ..\OnlineUpdater.cmd
echo pause >> ..\OnlineUpdater.cmd

echo @echo off > ..\OfflineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\cepheus.xml -p %%DrivePath%% >> ..\OfflineUpdater.cmd
echo pause >> ..\OfflineUpdater.cmd

echo apps\IPA >> filelist_cepheus.txt
echo CODE_OF_CONDUCT.md >> filelist_cepheus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE >> filelist_cepheus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_BRIDGE >> filelist_cepheus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_COMPONENTS >> filelist_cepheus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL >> filelist_cepheus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL_EXTRAS >> filelist_cepheus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.CEPHEUS >> filelist_cepheus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.CEPHEUS_MINIMAL >> filelist_cepheus.txt
echo components\QC8150\Graphics\GRAPHICS.SOC_QC8150.CEPHEUS_DESKTOP_WDDM26 >> filelist_cepheus.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE >> filelist_cepheus.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE_MINIMAL >> filelist_cepheus.txt
echo definitions\Desktop\ARM64\Internal\cepheus.txt >> filelist_cepheus.txt
echo definitions\Desktop\ARM64\Internal\cepheus.xml >> filelist_cepheus.txt
echo tools\DriverUpdater >> filelist_cepheus.txt
echo LICENSE.md >> filelist_cepheus.txt
echo OfflineUpdater.cmd >> filelist_cepheus.txt
echo OnlineUpdater.cmd >> filelist_cepheus.txt
echo README.md >> filelist_cepheus.txt

cd ..
"%ProgramFiles%\7-zip\7z.exe" a -tzip ..\XiaoMi9-Drivers-Release\XiaoMi9-Drivers-Desktop.zip @tools\filelist_cepheus.txt -scsWIN
"%ProgramFiles%\7-zip\7z.exe" a -t7z ..\XiaoMi9-Drivers-Release\XiaoMi9-Drivers-Desktop.7z @tools\filelist_cepheus.txt -scsWIN
cd tools

del ..\OfflineUpdater.cmd
del ..\OnlineUpdater.cmd
del filelist_cepheus.txt