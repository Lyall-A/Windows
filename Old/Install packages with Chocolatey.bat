@echo off
echo Checking if Chocolatey has been installed...
choco -v
if %errorlevel% equ 0 (
    echo Installing packages

    set attempted=0
    set successful=0

    setlocal enabledelayedexpansion

    for /f "tokens=*" %%x in (%0\..\Chocolatey packages.txt) do (
        echo Installing %%x...
        set /a attempted+=1
        choco install %%x -y --force
        if !errorlevel! equ 0 (
            set /a successful = successful + 1
            echo %%x: installed successfully
        ) else (
            echo %%x: failed to install
        )
    )

    echo Finished installing Chocolatey packages, !successful! of !attempted! successful
    endlocal
) else (
    echo Chocolatey not installed!
    start https://chocolatey.org/install#individual
)

pause