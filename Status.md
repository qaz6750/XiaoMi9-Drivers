# Main Status
- Device: Xiaomi 9(Cepheus)
- #### Note : This description is for reference only. It does not represent any commitment to develop Windows on XIAOMI 9 in any way, nor does it mean that all functions will be available or development will be completed forever. You should not buy this device for the purpose of using Windows on it, and hope that it will have complete functions in the end. The functions available today should be considered as the most you can get.We should take this into consideration when purchasing. Don't think we will make everything normal.

| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| ♋ Wifi                |                                                                                         | ✅            |
| 📦 UFS                 |                                                                                         | ✅            |
| 🔵 Bluetooth           |                                                                                         | ✅            |
| 🎆 GPU                 |                                                                                         | ✅            |
| 🔋 Battery             |                                                                                         | ✅            |
| ⌨️ Buttons             |                                                                                         | ✅            |
| 📌 GPS                 |                                                                                         | ✅            |
| 🪵 USB                 |                                                                                         | ✅            |
| 🔊 Audio               |                                                                                         | ✅            |
| 👆 Touch               | Right click is not supported.BSOD occurs during shutdown or restart                     | ⚠️            |
| ✏️ Pen Digitizer       | Right click is not supported.BSOD occurs during shutdown or restart                     | ⚠️            |
| 🔌 Charge              | slow charging only                                                                      | ⚠️            |
| 🧭 Sensor              | Sensor not provided correctly on Windows                                                | ⚠️            |
| ♋ Cellular Data       |                                                                                         | ⚠️            |
| ⚙️ SPSS & TPM          | Because the signature of the spss8150v2p firmware is incorrect                          | ❌            |
| 📳 Vibration motor     | Requires PMIC Driver for Haptics                                                        | ❌            |
| 🏷️ NFC                 | The corresponding I2C channel needs to be repaired                                      | ❌            |
| 🧬 Fingerprint         | Need touch driver to add support                                                        | ❌            |
| 📸 Camera              |                                                                                         | ❌            |

# Detailed status

## 🔊 Audio
### Various functions of Audio
| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🔉 Audio Speaker       |                                                                                         | ✅            |
| 🎙️ Internal Top Mic    |                                                                                         | ❌            |
| 🎙️ Internal Bottom Mic |                                                                                         | ✅            |

## 🪵 USB
*  USB Host is not forced anymore, this means OTG dongles requiring external power from the device will once again be misdetected. The reasoning behind this is the "fix" for this particular issue broke more than it helped with. The user can however get such functionality back and out with the help of a simple reg commands:
```batch
REM Force USB Host mode (identical to the older driver release of this month):
REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\ACPI\QCOM0597\0\Device Parameters" /v RoleSwitchMode /t REG_DWORD /d 1
```
```batch
REM Restore default auto detection functionality (default behavior):
REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\ACPI\QCOM0597\0\Device Parameters" /v RoleSwitchMode /t REG_DWORD /d 3
```

### Various functions of USB
| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🪵 USB-FN   (Default)  | This is used to detect whether it is charging and MTP	                               | ✅            |
| 🪵 USB-HOST (USB C )   | Some of the features are work in progress (USB Powerless Dongles)                       | ⚠️            |


## 🎆 GPU 
### Various functions of GPU
| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 📲 Brightness control  |                                                                                         | ✅            |

### GPU-Panel Status
* Generally, it should be ea8076-f1mp, but it can still be other panels. This problem is usually caused by changing the screen

| Panel                          | Notes                                                                                   | Status         |
|---------------------------------|----------------------------------------------------------------------------------------|----------------|
| 🖥️ Samsung-fhd-ea8076-f1mp-cmd  | Main support                                                                            | ✅            |
| 🖥️ Samsung-fhd-ea8076-f1p2-cmd  | It is only slightly different from f1mp and can still be used                           | ✅            |
| 🖥️ Samsung-fhd-ea8076-f1p2_2-cmd| Not tested                                                                              | ❌            |
| 🖥️ Samsung-fhd-ea8076-f1-cmd    | Not tested                                                                              | ❌            |
| 🖥️ Samsung-fhd-ea8076-cmd       | Not tested                                                                              | ❌            |