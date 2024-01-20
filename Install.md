# How to install

> [!WARNING]
> - Don't create partitions from Mass Storage Mode on Windows (because ABL will break with blank/spaces in names), your phone may be irrecoverable otherwise
> - Ensure the use of UEFI corresponding to the driver program
> - For some users, we recommend using MindowsV8 to complete the installation, although there are still issues, please feel free to raise them

## Get Driver
> [!NOTE]
> - To ensure the matching between UEFI and drivers, we recommend that all users download drivers directly from Releases

* For preserving charset encoding, please checkout with using:
```
git clone -c core.autocrlf=false https://github.com/qaz6750/XiaoMi9-Drivers
```
* Or you can get the released version through [Releases](https://github.com/qaz6750/XiaoMi9-Drivers/releases) 

## Installing the drivers
* Going to Mass Storage
* Assign drive letters to Windows and EFI of your phone
* Extract the drivers, Extract driver updater, and from the command prompt in the DriverUpdater2.0.exe directory:

```
DriverUpdater.exe -d "<path to extracted drivers>\definitions\Desktop\ARM64\Internal\cepheus.txt" -r "<path to extracted drivers>" -p <The window drive letter of your phone>:\
```
## About Choosing the Right UEFI
### Enable SecureBoot
> [!NOTE]
> - Under normal conditions, please use MuCepheusSecureBoot.img
### Disable SecureBoot
> [!NOTE]
> - If you need to enable testing mode, please use MuCepheusDisableSecureBoot.img
> - If you need to start systems like Linux, you also need to disable secure boot
> - And it requires disable driver signature checks
```
cd <ESP partition>:\EFI\Microsoft\Boot
bcdedit /store BCD /set "{default}" testsigning on
bcdedit /store BCD /set "{default}" nointegritychecks on
bcdedit /store BCD /set "{default}" recoveryenabled no

```
## In the end
* Now you can try starting the Windows system

## Other
### [Temporary and Optional] Copy over calibration files/configuration files for the sensors
> [!NOTE]
> - These steps are temporary and will not be needed in future releases. These steps are also not as fully detailed as others and may get updated at a later time
> - In order to get most sensors currently working, some manual steps are required.
* You will need to backup from mass storage or twrp the following directory: /vendor/persist/sensors/
* Copy over the contents to [Windows Drive Letter]\Windows\System32\Drivers\DriverData\QUALCOMM\fastRPC\persist\sensors (the following directory should already exist after booting Windows once, otherwise create it)