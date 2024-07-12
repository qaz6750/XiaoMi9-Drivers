# How to install Drivers

> [!WARNING]
> - Don't create partitions from Mass Storage Mode on Windows (because ABL will break with blank/spaces in names), your phone may be irrecoverable otherwise.
> - Ensure the use of UEFI corresponding to the driver program.

> [!NOTE]
> - There may be errors, please point them out
> - For some users, we recommend using MindowsV8 to complete the installation, although there are still issues, please feel free to raise them.

## Get Driver
> [!NOTE]
> - To ensure the matching between UEFI and drivers, we recommend that all users download drivers directly from Releases

* You can get the released version through [Releases](https://github.com/qaz6750/XiaoMi9-Drivers/releases) 

## Installing the drivers
* Going to Mass Storage
* Assign drive letters to Windows and EFI of your phone
* Extract the drivers, Extract driver updater, and from the command prompt in the DriverUpdater2.0.exe directory:

```
DriverUpdater.X86.exe -d "<path to extracted drivers>\definitions\Desktop\ARM64\Internal\cepheus.xml" -r "<path to extracted drivers>" -p <The window drive letter of your phone>:\
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
<ESP partition>:
cd <ESP partition>:\EFI\Microsoft\Boot
bcdedit /store BCD /set "{default}" testsigning on
bcdedit /store BCD /set "{default}" nointegritychecks on
bcdedit /store BCD /set "{default}" recoveryenabled no
```
## In the end
* Now you can try starting the Windows system
