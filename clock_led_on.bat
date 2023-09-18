@echo off
 
echo --------------------------------------------------------
echo Get devices
adb devices > devices.txt
type devices.txt
 
echo --------------------------------------------------------
echo [LV]start turn on all clock leds
echo -------------------------------------------------------- 
for /f  "skip=1 tokens=1 delims=	" %%i in (devices.txt) do (
echo [LV]device ID is:%%i
echo [LV]turn on clock leds...
adb -s %%i shell "echo 160 | tee /sys/class/leds/cucumber\:white\:*/brightness"
echo --------------------------------------------------------
pause



)
rem del devices.txt
echo --------------------------------------------------------
pause