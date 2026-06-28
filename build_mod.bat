@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
set GEODE_SDK=C:\Users\KusokMedi\Documents\Geode
cd /d "%~dp0"
if exist build rmdir /s /q build
cmake -B build
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
cmake --build build --config Release
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
echo Build completed successfully!
