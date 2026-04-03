@echo off
title HyperFlow-Optimizer v1.0 [0xDSamael]
color 0b
echo ======================================================
echo    HYPERFLOW-OPTIMIZER: DEBLOAT + PERFORMANCE + FPS
echo ======================================================
echo Checking for connected devices...
adb devices
echo.

echo [1/5] NUKING LIMITERS (Joyose & PowerKeeper)
:: Disabling the frame rate governor (Fixes 60fps cap)
adb shell pm disable-user --user 0 com.xiaomi.joyose
:: Restricting PowerKeeper (Prevents background app killing)
adb shell appops set com.miui.powerkeeper WRITE_SETTINGS deny
adb shell appops set com.miui.powerkeeper GET_USAGE_STATS deny
adb shell appops set com.miui.powerkeeper RUN_IN_BACKGROUND deny
echo Done.

echo.
echo [2/5] REMOVING BLOATWARE (Ads & Tracking)
:: System Ads & Analytics
adb shell pm uninstall -k --user 0 com.miui.msa.global
adb shell pm uninstall -k --user 0 com.miui.analytics
adb shell pm uninstall -k --user 0 com.miui.daemon
:: Tracking and Background Junk
adb shell pm disable-user --user 0 com.miui.aiengine
adb shell pm uninstall -k --user 0 com.miui.hybrid
adb shell pm uninstall -k --user 0 com.miui.hybrid.accessory
adb shell pm uninstall -k --user 0 com.miui.contentcatcher
:: Non-Essential Apps
adb shell pm uninstall -k --user 0 com.miui.android.fashiongallery
adb shell pm uninstall -k --user 0 com.xiaomi.mipicks
echo Done.

echo.
echo [3/5] MAXIMIZING HARDWARE (144Hz & Touch)
:: Forcing highest refresh rate globally (Optimized for Pad 6)
adb shell settings put system peak_refresh_rate 144.0
adb shell settings put system min_refresh_rate 144.0
adb shell settings put system user_refresh_rate 1
:: Reducing input lag for gaming
adb shell settings put system touch_response_boost 1
adb shell settings put global touch_blocking_period 0
echo Done.

echo.
echo [4/5] SYSTEM TWEAKS (Multitasking & UI)
:: Animation Speed (0.25x for instant feel)
adb shell settings put global window_animation_scale 0.25
adb shell settings put global transition_animation_scale 0.25
adb shell settings put global animator_duration_scale 0.25
:: Infinite Multitasking (Phantom Process Killer Fix)
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
echo Done.

echo.
echo [5/5] CACHE CLEANUP
:: Clears security center cache to refresh FPS profiles
adb shell pm clear com.miui.securitycenter
echo Done.

echo.
echo ======================================================
echo    OPTIMIZATION COMPLETE! 
echo    1. Restart your device.
echo    2. Turn OFF "Memory Extension" in Settings.
echo    3. GitHub: github.com/0xDSamael/HyperFlow-Optimizer
echo ======================================================
pause