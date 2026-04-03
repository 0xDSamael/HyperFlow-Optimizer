# HyperFlow-Optimizer
Advanced all-in-one debloat and performance optimization script for Xiaomi HyperOS/MIUI devices.

An all-in-one ADB optimization suite designed to unlock the full potential of Xiaomi devices running HyperOS/MIUI.

## ✨ Features
- **FPS Uncap:** Disables `Joyose` to remove artificial 60 FPS caps in games like CODM.
- **Power Management:** Restricts `PowerKeeper` to prevent aggressive background app killing.
- **144Hz Force:** Forcibly enables high refresh rates (optimized for Xiaomi Pad 6).
- **Extreme Debloat:** Removes tracking, ads, and telemetry (MSA, Analytics, Daemon).
- **UI Responsiveness:** Sets animation scales to 0.25x for an instant feel.
- **Multitasking Fix:** Increases the Phantom Process limit for heavy multitasking.

## 📱 Tested Devices
- Redmi Note 14 Pro 5G
- Xiaomi Pad 6 (144Hz Force)
- Poco F1 (Legacy support)
- K70E
- Redmi Note 11

## 📋 Prerequisites
Before running the script, ensure your PC and device meet these requirements:

1. **ADB Platform Tools:** - Download the official [Google SDK Platform Tools for Windows](https://developer.android.com/tools/releases/platform-tools).
   - **Tip:** Extract the folder and add it to your System PATH so you can run `adb` from any folder.

2. **Xiaomi USB Drivers:**
   - Install the [Xiaomi Official USB Drivers](https://adb.clockworkmod.com/) this is to ensure your PC recognizes your device.

3. **Device Setup:**
   - **Developer Options:** Go to *Settings > About Phone* and tap "OS Version" 6 to 7 times.
   - **USB Debugging:** Enable this in *Additional Settings > Developer Options*.
   - **USB Debugging (Security Settings):** This **MUST** be ON so the script can modify app permissions.
   
## 🛠️ How to Use
1. Enable **Developer Options** on your device.
2. Turn on **USB Debugging** and **USB Debugging (Security Settings)**. USB Debugging (Security Settings) sometimes requires you to sign in to Xiaomi, just ignore it.
3. Download the file from this repo.
4. Connect your device to your PC and run the script.

## ⚠️ Disclaimer
*I am not responsible for bricked devices or lost data. This script modifies system-level app permissions. Use at your own risk.*
