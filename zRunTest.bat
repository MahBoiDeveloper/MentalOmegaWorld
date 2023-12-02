@echo off
call zBuildProject.bat
xcopy /h /y /c /r /s Build\ _Test\ > nul
start "" _Test\Resources\clientxna.exe
