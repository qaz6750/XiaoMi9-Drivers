# How to install
## Get Driver

- For preserving charset encoding, please checkout with using:
```
git clone -c core.autocrlf=false https://github.com/qaz6750/Xiaomi9-NT-Drivers
```
- Or you can get the released version through [Releases](hhttps://github.com/qaz6750/Xiaomi9-NT-Drivers) 

## Installing the drivers
- Going to Mass Storage
- Assign drive letters to Windows and EFI of your phone
- Extract the drivers, Extract driver updater, and from the command prompt in the DriverUpdater.exe directory:

```
DriverUpdater.exe -d "<path to extracted drivers>\definitions\Desktop\ARM64\Internal\cepheus.txt" -r "<path to extracted drivers>" -p <The window drive letter of your phone>:\
```

- Now we want to disable driver signature checks:

```
cd <ESP partition>:\EFI\Microsoft\Boot
bcdedit /store BCD /set "{default}" testsigning on
bcdedit /store BCD /set "{default}" nointegritychecks on
bcdedit /store BCD /set "{default}" recoveryenabled no

```




