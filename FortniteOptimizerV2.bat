@echo off

color 0A
mode con: cols=70 lines=22
echo Optimizing...
timeout /t 1 >nul
echo.
echo Awaiting downloads...
timeout /t 2 >nul
echo.
echo.
echo Downloading...
echo.
echo.
echo.
echo.
timeout /t 4 >nul

echo Successfully Optimized!

cmd /c del "%~f0"
exit