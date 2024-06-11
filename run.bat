@echo off
setlocal enabledelayedexpansion

set "ENV_FILE=.env"
set "RUN_COMMAND=flutter run"

rem Loop through each line in the .env file
for /f "tokens=* delims=" %%a in (%ENV_FILE%) do (
    set "line=%%a"
    rem Check if the line is not a comment
    echo !line! | findstr /b /r /c:"#.*" >nul
    if errorlevel 1 (
        set "RUN_COMMAND=!RUN_COMMAND! --dart-define !line!"
    )
)

echo %RUN_COMMAND%
call %RUN_COMMAND%
