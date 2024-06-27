# spicetify-bat-installer-autoupdater
Spicetify bat installer and autoupdater for Windows 11

# Инсталација и Аутоматско Ажурирање Spicetify

Овај водич објашњава како инсталирати Spicetify и аутоматски ажурирати помоћу batch скрипте на Windows-у.

## Инсталација

1. Отворите Notepad или било који други текстуални едитор и налепите следећи код:

    ```batch
    @echo off
    powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"
    ```

2. Сачувајте фајл са екстензијом `.bat`, на пример `install_spicetify.bat`.

3. Покрените `install_spicetify.bat` двоструким кликом или преко Command Prompt-а.

## Аутоматско Ажурирање

1. Отворите Notepad или било који други текстуални едитор и налепите следећи код:

    ```batch
    echo @echo off > "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify-update.bat"
    echo powershell -NoExit -Command "spicetify update" >> "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify-update.bat"
    echo pause >> "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\spicetify-update.bat"
    ```

2. Сачувајте фајл са екстензијом `.bat`, на пример `setup_spicetify_update.bat`.

3. Покрените `setup_spicetify_update.bat` двоструким кликом или преко Command Prompt-а.

## Како Ради

- `install_spicetify.bat` скрипта користи PowerShell команду за преузимање и инсталацију Spicetify CLI.
- `setup_spicetify_update.bat` скрипта креира batch фајл у Windows Startup фолдеру који ће аутоматски покретати Spicetify update сваки пут када се Windows подигне.

## Додатне Информације

За више информација о Spicetify CLI, посетите [званичну GitHub страницу](https://github.com/spicetify/spicetify-cli).

## Напомена

Ако имате било каквих питања или проблема, слободно отворите issue на GitHub-у.

