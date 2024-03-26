@echo off
echo Mental Omega World version 0.1 by mah_boi
echo.

: Clearing Build folder
rmdir /s /q Build > nul 2> nul
mkdir Build
mkdir Build\INI
mkdir Build\Resources
mkdir Build\Resources\MOW

: Copy and create mission files
echo Copy mapselmo.ini...
copy Source\mapselmo.ini  Build\mapselmo.ini  > nul
echo Copy missionmo.ini...
copy Source\missionmo.ini Build\missionmo.ini > nul
echo Copy stringtable42.csf...
copy Source\stringtable42ENG.csf Build\stringtable42.csf > nul

echo Copy language packages files...
copy Source\stringtable42ENG.csf Build\Resources\MOW\stringtable42ENG.csf > nul
copy Source\stringtable42RUS.csf Build\Resources\MOW\stringtable42RUS.csf > nul
copy Source\stringtable42CHN.csf Build\Resources\MOW\stringtable42CHN.csf > nul
copy Source\BattleClientENG.ini  Build\Resources\MOW\BattleClientENG.ini  > nul
copy Source\BattleClientRUS.ini  Build\Resources\MOW\BattleClientRUS.ini  > nul
copy Source\BattleClientCHN.ini  Build\Resources\MOW\BattleClientCHN.ini  > nul

: Copy project files
echo Copy project files...
copy Source\readmeMOW.txt       Build\readmeMOW.txt               > nul
copy Source\creditsMOW.txt      Build\creditsMOW.txt              > nul
copy Source\BattleClientENG.ini Build\INI\BattleClient.ini        > nul
copy Source\OptionsWindow.ini   Build\Resources\OptionsWindow.ini > nul
copy Source\loadingscreen.png   Build\Resources\loadingscreen.png > nul
echo.

for /f "tokens=*" %%f in ('dir "Source\MIX\" /a:d /b') do (
	echo Compiling %%f.mix...
	Tools\ccmix.exe --create --lmd --game=ra2 --dir "Source\MIX\%%f" --mix "Build\%%f.mix"
	)
echo.
echo MIX archives has been compiled
echo Project compilation has been finished. Please check Build folder
