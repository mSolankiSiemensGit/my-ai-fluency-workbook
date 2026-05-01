@echo off
setlocal enabledelayedexpansion

set /p REPO_URL=Enter the public GitHub repo URL (https://github.com/user/repo.git): 
if "%REPO_URL%"=="" (
  echo Repo URL is required.
  exit /b 1
)

set TMP_DIR=%TEMP%\commit-history-temp-%RANDOM%
mkdir "%TMP_DIR%"

echo Cloning repository into temporary folder...

git clone --depth 50 "%REPO_URL%" "%TMP_DIR%"
if errorlevel 1 (
  echo Git clone failed.
  rmdir /s /q "%TMP_DIR%"
  exit /b 1
)

set "BASE_DIR=%CD%"
set "OUTPUT_FILE=commit_history.txt"
set "OUTPUT_PATH=%BASE_DIR%\%OUTPUT_FILE%"

pushd "%TMP_DIR%"
git log --oneline --decorate --max-count=50 --date=short > "%OUTPUT_PATH%"
popd

rmdir /s /q "%TMP_DIR%"
echo Created %OUTPUT_FILE% in %BASE_DIR%.
echo Open %OUTPUT_PATH% and copy the commit history into your certificate prompt.
