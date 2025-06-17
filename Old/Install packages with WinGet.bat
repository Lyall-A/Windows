@echo off
echo Checking if WinGet has been installed...
winget -v
if %errorlevel% equ 0 (
    echo Installing packages

    set attempted=0
    set successful=0

    setlocal enabledelayedexpansion

    for /f "tokens=*" %%x in (%0\..\WinGet packages.txt) do (
        echo Installing %%x...
        set /a attempted+=1
        winget install %%x
        if !errorlevel! equ 0 (
            set /a successful = successful + 1
            echo %%x: installed successfully
        ) else (
            echo %%x: failed to install
        )
    )

    echo Finished installing WinGet packages, !successful! of !attempted! successful
    endlocal
) else (
    echo WinGet not installed!
    start https://aka.ms/getwingetpreview
)

pause