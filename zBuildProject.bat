@echo off
echo Mental Omega World version 0.1 by mah_boi
echo.

: Clearing Build folder
rmdir /s /q Build
mkdir Build

: Copy project files
echo Copy project information files...
copy Source\creditsMOW.txt Build\creditsMOW.txt > nul
copy Source\readmeMOW.txt  Build\readmeMOW.txt  > nul

: Create Build\INI folder and fill it
mkdir Build\INI
echo Copy INI\BattleClient.ini...
copy Source\BattleClient.ini Build\INI\BattleClient.ini > nul

: Create Build\Resources folder and fill it
mkdir Build\Resources
echo Copy Resources\loadingscreen.png...
copy Source\loadingscreen.png Build\Resources\loadingscreen.png > nul

: Copy and create mission files
echo Copy mapselmo.ini...
copy Source\mapselmo.ini      Build\mapselmo.ini      > nul
echo Copy missionmo.ini...
copy Source\missionmo.ini     Build\missionmo.ini     > nul
echo Copy stringtable42.csf...
copy Source\stringtable42.csf Build\stringtable42.csf > nul
echo.
Tools\ccmix.exe --create --lmd --game=ra2 --dir "Source\expandmo42" --mix Build\expandmo42.mix
echo MIX archive has been compiled

echo.
echo Project compilation has been finished. Please check Build folder
echo.
echo.

pause
