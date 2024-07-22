# Installing Or Updating Drivers and UEFI 

> [!WARNING]
> - Don't create partitions from Mass Storage Mode on Windows (because ABL will break with blank/spaces in names), your phone may be irrecoverable otherwise.
> - Ensure the use of UEFI corresponding to the driver program.

## Preparation

* UEFI Image
* Windows Drivers
* [Platform Tools from Google (ADB and Fastboot)](https://developer.android.com/studio/releases/platform-tools)
* Mass Storage Shell Script
* A Windows PC
* [.NET 8.0 Desktop Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/8.0/runtime)

## Get Driver and UEFI
> [!NOTE]
> - To ensure the matching between UEFI and drivers, we recommend that all users download drivers directly from Releases

* You can get the released version through [Releases](https://github.com/qaz6750/XiaoMi9-Drivers/releases) 

## Installing Or Updating the drivers
* Going to Mass Storage
* Assign drive letters to Windows and EFI of your phone
* Extract the driver package, and go to the folder where you extracted it.
* Double click the ```OfflineUpdater.cmd``` file as an administrator.
* Then enter 'the window drive letter of your phone' in the command prompt. Assuming the drive letter is 'X' , you should enter 'X:' in the command prompt.
* This process may take some time, please be patient and once completed, the system will prompt you to press any key. In this case, press the enter key.

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

## Updating Or Flashing UEFI
Simply use the latest UEFI image
* Assuming you are in XiaoMi9's bootloader, run the following command to boot into Windows:

```batch
fastboot boot <MuCepheusSecureBoot.img or MuCepheusDisableSecureBoot.img>
```

## In the end
* Now you can try starting the Windows system
