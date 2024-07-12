# Main Status
- Device: Xiaomi 9(Cepheus)
> [!IMPORTANT]
> **This description is for reference only. It does not represent any commitment to develop Windows on XIAOMI 9 in any way, nor does it mean that all functions will be available or development will be completed forever. You should not buy this device for the purpose of using Windows on it, and hope that it will have complete functions in the end. The functions available today should be considered as the most you can get.We should take this into consideration when purchasing. Don't think we will make everything normal.**

| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🔊 Audio               |                                                                                         | ✅            |
| ♋ Cellular Data       |                                                                                         | ✅            |
| ♋ WiFi                |                                                                                         | ✅            |
| 📦 UFS                 |                                                                                         | ✅            |
| 🔵 Bluetooth           |                                                                                         | ✅            |
| 🎆 GPU                 |                                                                                         | ✅            |
| 🔋 Battery             |                                                                                         | ✅            |
| ⌨️ Buttons             |                                                                                         | ✅            |
| 📌 Location            |                                                                                         | ✅            |
| 🪵 USB                 |                                                                                         | ✅            |
| 🧭 Sensor              |                                                                                         | ✅            |
| 🛡️ TPM                 | Not support Windows 10 18362/18363.                                                     | ✅            |
| 👆 Touch               | The touch driver still has issues with multi finger touch.                              | ✅            |
| 🔌 Charge              | Slow charging only.                                                                     | ✅            |
| 📳 Vibration motor     | Testing required.                                                                       | ⚠️            |
| 🔦 LED                 | Testing required.                                                                       | ⚠️            |
| 📸 Camera Flash        | Drivers needs to be tested and repaired.                                                | ⚠️            |
| 🏷️ NFC                 |                                                                                         | ❌            |
| 📸 Camera              | Need to fix bin configuration file and driver.                                          | ⚠️            |
| 🧬 Fingerprint         |                                                                                         | ❌            |

# Detailed status

## 🔊 Audio
### Various functions of Audio
| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🔉 Audio Speaker       |                                                                                         | ✅            |
| 🔉 Handset Speaker     |                                                                                         | ✅            |
| 🎙️ Internal Top Mic    |                                                                                         | ✅            |
| 🎙️ Internal Bottom Mic |                                                                                         | ✅            |

## 🧭 Sensors
### Various functions of Sensors
| Feature                            | Notes                                                                                   | Status         |
|------------------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🧭 Accelerometer Sensor            |                                                                                         | ✅            |
| 🧭 Compass Sensor                  |                                                                                         | ✅            |
| 🧭 Gyroscope Sensor                |                                                                                         | ✅            |
| 🧭 Inclinometer Sensor             |                                                                                         | ✅            |
| 🧭 Light Sensor                    | The sensor driver does not support this sensor.                                         | ❌            |
| 🧭 Magnetometer Sensor             |                                                                                         | ✅            |
| 🧭 (Device)   Orientation Sensor   |                                                                                         | ✅            |
| 🧭 (Absolute) Orientation Sensor   |                                                                                         | ✅            |
| 🧭 (Relative) Orientation Sensor   |                                                                                         | ✅            |

## 🪵 USB
> [!NOTE]
> - Currently using USB Host mode by default. The user can however get such functionality back and out with the help of a simple reg commands:
> - RoleSwitchMode 1 -> USB Host
> - RoleSwitchMode 3 -> USB Fn
```batch
REM Force USB Host mode (identical to the older driver release of this month):
REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\ACPI\QCOM0597\0\Device Parameters" /v RoleSwitchMode /t REG_DWORD /d 1
```
```batch
REM Restore default auto detection functionality:
REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\ACPI\QCOM0597\0\Device Parameters" /v RoleSwitchMode /t REG_DWORD /d 3
```

### Various functions of USB
| Feature                         | Notes                                                                                   | Status         |
|---------------------------------|-----------------------------------------------------------------------------------------|----------------|
| 🪵 USB-Fn   (Charging & MTP)   |                                                         	                                | ✅            |
| 🪵 USB-Host (OTG)              | **[Default]** Some of the features are work in progress (USB Powerless Dongles)          | ⚠️            |


## 🎆 GPU 
### Various functions of GPU
| Feature                | Notes                                                                                   | Status         |
|------------------------|-----------------------------------------------------------------------------------------|----------------|
| 📲 Brightness control  |                                                                                         | ✅            |
| 🎆 X64 simulation      |                                                                                         | ✅            |

### GPU-Panel Status
> [!NOTE]
> - Generally, it should be ea8076-f1mp, but it can still be other panels. This problem is usually caused by changing the screen

| Panel                          | Notes                                                                                   | Status         |
|---------------------------------|----------------------------------------------------------------------------------------|----------------|
| 🖥️ Samsung-fhd-ea8076-f1mp-cmd  | Main support                                                                            | ✅            |
| 🖥️ Samsung-fhd-ea8076-f1p2-cmd  | It is only slightly different from f1mp and can still be used                           | ✅            |
| 🖥️ Samsung-fhd-ea8076-f1p2_2-cmd| Not tested                                                                              | ❌            |
| 🖥️ Samsung-fhd-ea8076-f1-cmd    | Not tested                                                                              | ❌            |
| 🖥️ Samsung-fhd-ea8076-cmd       | Not tested                                                                              | ❌            |