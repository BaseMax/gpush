@echo off
:: gpush.bat: A Git helper script for Windows
:: Simplifies adding, committing, and pushing changes with Git

set DEFAULT_MESSAGE=Update

if "%1"=="-h" (
    echo Usage: gpush [commit_message]
    echo If no commit message is provided, defaults to: "Update"
    exit /b 0
)

if "%1"=="" (
    set COMMIT_MESSAGE=%DEFAULT_MESSAGE%
) else (
    set COMMIT_MESSAGE=%*
)

call git add .
if errorlevel 1 goto :error

call git commit -m "%COMMIT_MESSAGE%"
if errorlevel 1 goto :error

call git push
if errorlevel 1 goto :error

echo Changes pushed successfully!
goto :eof

:error
echo An error occurred during the Git operation.
exit /b 1
