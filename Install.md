# How to install

> [!WARNING]
> - Don't create partitions from Mass Storage Mode on Windows (because ABL will break with blank/spaces in names), your phone may be irrecoverable otherwise
> - Ensure the use of UEFI corresponding to the driver program

## Get Driver

- For preserving charset encoding, please checkout with using:
```
git clone -c core.autocrlf=false https://github.com/qaz6750/Xiaomi9-NT-Drivers
```
- Or you can get the released version through [Releases](hhttps://github.com/qaz6750/Xiaomi9-NT-Drivers) 

## Installing the drivers
- Going to Mass Storage
- Assign drive letters to Windows and EFI of your phone
- Extract the drivers, Extract driver updater, and from the command prompt in the DriverUpdater2.0.exe directory:

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