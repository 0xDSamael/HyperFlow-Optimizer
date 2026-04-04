@echo off
title HyperOS-Optimizer v1.1 [0xDSamael]
color 0b
echo ======================================================
echo    HYPEROS-OPTIMIZER: DEBLOAT + PERFORMANCE + FPS
echo ======================================================
echo Checking for connected devices...
echo Waiting for device...
adb wait-for-device
echo Device connected!
adb devices
echo.

echo [1/4] NUKING LIMITERS (Joyose & PowerKeeper)
:: Disabling the frame rate governor (Fixes 60fps cap)
adb shell pm disable-user --user 0 com.xiaomi.joyose
:: Restricting PowerKeeper (Prevents background app killing)
adb shell appops set com.miui.powerkeeper WRITE_SETTINGS deny
adb shell appops set com.miui.powerkeeper GET_USAGE_STATS deny
adb shell appops set com.miui.powerkeeper RUN_IN_BACKGROUND deny
echo Done.

echo.
echo [2/4] REMOVING BLOATWARE (Categorized Deep Clean)

:: ==============================================
:: 1. SOCIAL MEDIA & COMMUNICATION
:: ==============================================
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.facebook.orca
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.linkedin.android
adb shell pm uninstall -k --user 0 com.skype.raider
adb shell pm uninstall -k --user 0 com.zhiliaoapp.musically
adb shell pm uninstall -k --user 0 com.google.android.talk
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

:: ==============================================
:: 2. SHOPPING & TRAVEL
:: ==============================================
adb shell pm uninstall -k --user 0 com.alibaba.aliexpresshd
adb shell pm uninstall -k --user 0 com.amazon.appmanager
adb shell pm uninstall -k --user 0 com.amazon.mshop.android
adb shell pm uninstall -k --user 0 com.amazon.mshop.android.shopping
adb shell pm uninstall -k --user 0 com.amazon.venezia
adb shell pm uninstall -k --user 0 com.booking
adb shell pm uninstall -k --user 0 com.einnovation.temu
adb shell pm uninstall -k --user 0 com.lemon.lvoverseas
adb shell pm uninstall -k --user 0 com.tripadvisor.tripadvisor
adb shell pm uninstall -k --user 0 de.autodoc.gmbh

:: ==============================================
:: 3. PRE-INSTALLED GAMES
:: ==============================================
adb shell pm uninstall -k --user 0 com.block.juggle
adb shell pm uninstall -k --user 0 com.block.puzzle.game.hippo.mi
adb shell pm uninstall -k --user 0 com.crazy.juicer.xm
adb shell pm uninstall -k --user 0 com.enhance.gameservice
adb shell pm uninstall -k --user 0 com.fugo.wow
adb shell pm uninstall -k --user 0 com.funtomic.matchmasters
adb shell pm uninstall -k --user 0 com.gameduell.tarot
adb shell pm uninstall -k --user 0 com.jewelsblast.ivygames.adventure.free
adb shell pm uninstall -k --user 0 com.nf.snake
adb shell pm uninstall -k --user 0 com.oakever.tiletrip
adb shell pm uninstall -k --user 0 com.plarium.raidlegends
adb shell pm uninstall -k --user 0 com.soulcompany.bubbleshooter.relaxing
adb shell pm uninstall -k --user 0 com.sukhavati.gotoplaying.bubble.bubbleshooter.mint
adb shell pm uninstall -k --user 0 com.tripledot.solitaire
adb shell pm uninstall -k --user 0 com.vitastudio.mahjong
adb shell pm uninstall -k --user 0 net.wooga.junes_journey_hidden_object_mystery_game

:: ==============================================
:: 4. ENTERTAINMENT, NEWS & MEDIA
:: ==============================================
adb shell pm uninstall -k --user 0 com.amazon.fv
adb shell pm uninstall -k --user 0 com.amazon.kindle
adb shell pm uninstall -k --user 0 com.amazon.mp3
adb shell pm uninstall -k --user 0 com.audible.application
adb shell pm uninstall -k --user 0 com.blurb.checkout
adb shell pm uninstall -k --user 0 com.cnn.mobile.android.phone.edgepanel
adb shell pm uninstall -k --user 0 com.flipboard.app
adb shell pm uninstall -k --user 0 com.flipboard.boxer.app
adb shell pm uninstall -k --user 0 com.google.android.apps.books
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
adb shell pm uninstall -k --user 0 com.google.android.apps.plus
adb shell pm uninstall -k --user 0 com.google.android.apps.subscriptions.red
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.music
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.imdb.mobile
adb shell pm uninstall -k --user 0 com.netflix.mediaclient
adb shell pm uninstall -k --user 0 com.netflix.partner.activation

:: ==============================================
:: 5. PRODUCTIVITY & BROWSERS
:: ==============================================
adb shell pm uninstall -k --user 0 cn.wps.moffice_eng
adb shell pm uninstall -k --user 0 cn.wps.xiaomi.abroad.lite
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
adb shell pm uninstall -k --user 0 com.infraware.polarisoffice5
adb shell pm uninstall -k --user 0 com.microsoft.office.excel
adb shell pm uninstall -k --user 0 com.microsoft.office.officehubrow
adb shell pm uninstall -k --user 0 com.microsoft.office.outlook
adb shell pm uninstall -k --user 0 com.microsoft.office.powerpoint
adb shell pm uninstall -k --user 0 com.microsoft.office.word
adb shell pm uninstall -k --user 0 com.microsoft.skydrive
adb shell pm uninstall -k --user 0 com.opera.browser
adb shell pm uninstall -k --user 0 com.opera.max.oem
adb shell pm uninstall -k --user 0 com.opera.preinstall

:: ==============================================
:: 6. XIAOMI & OEM JUNK
:: ==============================================
adb shell pm uninstall -k --user 0 com.duokan.phone.remotecontroller
adb shell pm uninstall -k --user 0 com.mi.global.pocobbs
adb shell pm uninstall -k --user 0 com.mi.global.pocostore
adb shell pm uninstall -k --user 0 com.mi.globalbrowser
adb shell pm uninstall -k --user 0 com.micredit.in
adb shell pm uninstall -k --user 0 com.miui.compass
adb shell pm uninstall -k --user 0 com.miui.misightservice
adb shell pm uninstall -k --user 0 com.miui.weather2
adb shell pm uninstall -k --user 0 com.mygalaxy
adb shell pm uninstall -k --user 0 com.sec.android.app.withtv
adb shell pm uninstall -k --user 0 com.singtel.mysingtel
adb shell pm uninstall -k --user 0 com.sohu.inputmethod.sogou.xiaomi
adb shell pm uninstall -k --user 0 com.vlingo.midas
adb shell pm uninstall -k --user 0 com.xiaomi.discover
adb shell pm uninstall -k --user 0 com.xiaomi.midrop
adb shell pm uninstall -k --user 0 com.xiaomi.ugd

:: ==============================================
:: 7. CORE TELEMETRY & ADS (Original List)
:: ==============================================
adb shell pm uninstall -k --user 0 com.miui.msa.global
adb shell pm uninstall -k --user 0 com.miui.analytics
adb shell pm uninstall -k --user 0 com.miui.daemon
adb shell pm uninstall -k --user 0 com.miui.hybrid
adb shell pm uninstall -k --user 0 com.miui.hybrid.accessory
adb shell pm uninstall -k --user 0 com.miui.contentcatcher
adb shell pm uninstall -k --user 0 com.xiaomi.mipicks

echo Done.

echo.
echo [3/4] SYSTEM TWEAKS (Multitasking)
:: Infinite Multitasking (Phantom Process Killer Fix)
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
echo Done.

echo.
echo [4/4] CACHE CLEANUP
:: Clears Security Center cache and Battery and Performance to refresh FPS profiles
adb shell pm clear com.miui.securitycenter
echo Done.

echo.
echo ======================================================
echo    OPTIMIZATION COMPLETE! 
echo    1. Restart your device.
echo    2. Turn OFF "Memory Extension" in Settings.
echo    3. GitHub: github.com/0xDSamael/HyperOS-Optimizer
echo ======================================================
pause
