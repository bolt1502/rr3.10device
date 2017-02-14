#Highscreen Prime L (дерево устройства) для сборки (Dirty Unicorns)
---------------
Инструкция по запуску компиляции Dirty Unicorns
---------------

###Установка JAVA
Устанавливаем java командой
```
sudo apt-get install openjdk-8-jdk
```
Добавляем пакеты для java командой
```
sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp
```
###Установка Репозитория

Создаем папку bin командой

```
mkdir ~/bin
```
Патчим папку bin командой
```
PATH=~/bin:$PATH
```
Добавляем repo командой
```
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
```
Делаем разрешение для repo командой
```
chmod a+x ~/bin/repo
```
###Скачка исходников и настройка

Создаем папку DU и в ней запускаем командную строку. 

```
 mkdir ~/DU

 cd ~/DU
```
Логинимся в git (если учетки нету, вам сюда https://github.com/ ) 

```
git config —global user.email "aaa@bbbbbb.com" (емейл на который была зарегистрирована учетка гитхаба) 

git config —global user.name "NAME" (Логин на гитхабе)
```
Скачиваем исходники DU при помощи команды

```
repo init -u http://github.com/DirtyUnicorns/android_manifest.git -b n7x-caf
```


















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

