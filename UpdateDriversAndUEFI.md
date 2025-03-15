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
> - To ensure the compatibility between UEFI and the drivers, we recommend that all users download the drivers directly from the release version. However, you can choose to use the drivers from the main branch.

### From Release
* You can get the released version through [Releases](https://github.com/qaz6750/XiaoMi9-Drivers/releases) 

### From Main Branch
> [!IMPORTANT]
> - The driver improvements on the main branch usually include some of the latest functional fixes and bug fixes. These improvements have not been released. Therefore, you can choose to obtain the driver from the main branch to experience the latest fixes. Please note that there usually exist some unknown issues or known issues that are still being fixed.

> [!NOTE]
> - If you use the driver from the main branch, then for UEFI, you should select the latest version in the Release (or use the UEFI from the main branch of Project-Aloha).

* First of all, you should clone this repository.
* Secondly, use the "pack-cepheus.cmd" script in the "tools" directory to package the driver.
* Finally, you can find the packaged driver in the parent directory, and then you can proceed to the next step.

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
