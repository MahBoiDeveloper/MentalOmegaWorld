@echo off

: Clearing Build folder
rmdir /s /q Build
mkdir Build

: Copy project files
copy Source\creditsMOW.txt Build\creditsMOW.txt
copy Source\readmeMOW.txt  Build\readmeMOW.txt

: Create Build\INI folder and fill it
mkdir Build\INI
copy Source\BattleClient.ini Build\INI\BattleClient.ini

: Create Build\Resources folder and fill it
mkdir Build\Resources
copy Source\loadingscreen.png Build\Resources\loadingscreen.png

: Copy and create mission files
copy Source\mapselmo.ini  Build\mapselmo.ini
copy Source\missionmo.ini Build\missionmo.ini
Tools\ccmix.exe --create --lmd --game=ra2 --dir "Source\expandmo42" --mix Build\expandmo42.mix

pause
