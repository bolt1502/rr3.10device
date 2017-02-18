#Highscreen Prime L (дерево устройства) для сборки прошивки *Resurrection Remix-N*
###Это дерево создано на основе работы @divis1969 , без него ничего бы не было.###
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

Создаем папку RR и в ней запускаем командную строку. 

```
 mkdir ~/RR

 cd ~/RR
```
Логинимся в git (если учетки нету, вам сюда https://github.com/ ) 

```
git config —global user.email "aaa@bbbbbb.com" (емейл на который была зарегистрирована учетка гитхаба) 

git config —global user.name "NAME" (Логин на гитхабе)
```
Скачиваем исходники RR при помощи команды
```
repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b nougat
```
Cинховать исходники при помощи команды
```
repo sync -f --force-sync --no-clone-bundle
```
###Настройка дерева и Вендора устройства

####Дерево

Заходим в папку
```
cd ~/RR
```
Заходим в папку "Device"
```
cd device
```
Создаем папку "Highscreen" командой
```
mkdir highscreen
```
Заходим в папку "Highscreen"
```
cd highscreen
```
Скачиваем Дерево командой
```
git clone https://github.com/lunik1981/android_device_highscreen_primel -b Resurrection-Remix-N primel
```
####Вендор

Заходим в папку RR
```
cd ~/DU
```
Заходим в папку "Vendor"
```
cd vendor
```
Создаем папку "Highscreen" командой
```
mkdir highscreen
```
Скачиваем Вендор командой
```
git clone https://github.com/lunik1981/android_vendor_highscreen_primel -b Resurrection-Remix-N primel
```
###Кеш,Сборка,Джек сервер

####Кеш

Устанавливаем КЕШ при сборке (Я делаю в ручную потому что так надежнее)

Открывает свою домашнюю папку (HOME), Нажимаем Ctrl+H, Открываем файл ***.bashrc*** и в самый низ вставляем
```
 export USE_CCACHE=1
```
```
 export ANDROID_JACK_VM_ARGS="-Xmx8192m -Xms512m -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
```
(Где Xmx8192m это количество оперативной памяти)

####Джек сервер

Пишем команду в корне папки RR
```
./prebuilts/sdk/tools/jack-admin kill-server
```
(Эта команда удаляет процесс рабочего сервера ДЖЭК, если он вдруг сейчас работает)

Нормальный ответ (означает что процесса не было)
```
/android/system$ ./prebuilts/sdk/tools/jack-admin kill-server
Writing local settings in /home/hard/.jack
Killing background server
ERROR: No Jack server to kill
```
Запускаем сервер командой из папки RR
```
./prebuilts/sdk/tools/jack-admin start-server
```
###Сборка

Заходим в папку RR командой
```
cd ~/RR
```
Вводим команду
```
. build/envsetup.sh
```
Вводим команду
```
lunch
```
Выбираем телефон
```
rr_primel-userdebug
```
Вводим команду
```
mka bacon
```
НАЧИНАЕТСЯ СБОРКА))))

PS. Если  Будет ошибка ДЖЕКА то заходим в паку **RR/device/highscreen/primel находим там файл device_primel.mk** и разкоментируем
```
# Off ninja
#USE_NINJA=false
```
Чтобы было вот так
```
# Off ninja
USE_NINJA=false 
```

