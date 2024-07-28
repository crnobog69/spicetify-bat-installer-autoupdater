@echo off
powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"

echo @echo off > "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify-update.bat"
echo powershell -NoExit -Command "spicetify update" >> "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify.bat"
echo pause >> "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify.bat"

pause
