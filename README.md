Highscreen Prime L (дерево устройства) для (Dirty Unicorns)
===========================

Getting Started
---------------

Initialize a repository with LineageOS:

    repo init -u git://github.com/divis1969/android.git -b los-14.1-meilan2

Optinally use a specific manifest (not a tip):

    repo init -u git://github.com/divis1969/android.git -b los-14.1-meilan2 -m los-14.1-meilan2-v0.1.xml

Build the code:

    source build/envsetup.sh
    breakfast meilan2
    make -j 4 bacon showcommands 2>&1 | tee build.log

Current state
-------------

- System boots
- Touch, screen, keyboard, central key are working
- Wifi is working
- Audio is working
- Telephony is working (see Known Issues)
    - USIM (3G) supported
    - Incoming/outgoung call
    - SMS, USSD
    - Data connectivity
- GPS
- Bluetooth (pairing only testes so far)
- Sensors
- Camera

Known Issues
-------------
- Android Camera App is not stable (hangs) ex. with location enabled
- Meizu Camera App is crasing when switching to front camera
- Telephony crashes eventually on location request from camera. 
- Hardware OMX codecs are not working

All issues: https://github.com/divis1969/android_device_meizu_meilan2/issues

Change log
----------

### v0.1 (LineageOS)
- Switch from CyanogenMod to LineageOS (use LineageOS manifest, repositories)
- Fix for offline charging
- Remove -6dB limit for system sounds

### v0.2 (CyanogenMod 14.1)
- Fixed an issue with proximity on some devices
- Fixed an issue with ICC IO in MTK ril (no radio with some SIM cards)
- Fixed a modem crash caused by mtk_agps request
- Fixed an issue with WiFi SoftAP
- Ported power HAL from CyanogenMod 6735 (also implements Double Tap To Wake feature)
- Ported FOTA solution from meilan2 cm-12.1

### v0.1 (CyanogenMod 14.1)
- Initial port from cm-14.0 (v0.3) to cm-14.1

