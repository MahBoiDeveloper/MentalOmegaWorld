@echo off
call zBuildProject.bat
xcopy /h /y /c /r /s Build\ _Test\
start "" _Test\Resources\clientxna.exe
