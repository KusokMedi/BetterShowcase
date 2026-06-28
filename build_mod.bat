@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
set PATH=%PATH%;C:\Program Files\Git\cmd;C:\Users\KusokMedi\AppData\Local\Microsoft\WinGet\Packages\GeodeSDK.GeodeCLI_Microsoft.Winget.Source_8wekyb3d8bbwe
set GEODE_SDK=C:\Users\KusokMedi\Documents\Geode
cd /d "%~dp0"
if exist build rmdir /s /q build
cmake -B build
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
cmake --build build --config Release
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
echo Build completed successfully!
