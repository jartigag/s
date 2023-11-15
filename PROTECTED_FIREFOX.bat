rem author: @jartigag
rem date: 2023-11-15
rem version: 1.0

setlocal enabledelayedexpansion

set "base_path=C:\Users\javier.artiga\AppData\Roaming\Mozilla\Firefox\Profiles"

cd %base_path%
"C:\Program Files\7-Zip\7z.exe" x -y *.7z
"C:\Program Files\Mozilla Firefox\firefox.exe"|more

for /d %%i in ("%base_path%\*.default-release") do (
    cd %base_path%
    set "directory=%%~nxi"
    echo "[.] backup !directory!.7z:"
    mv "!directory!.7z" "!directory!.7z.bak"
    echo "[.] create new !directory!.7z:"
    "C:\Program Files\7-Zip\7z.exe" a "!directory!.7z" "!directory!\*" -p
    echo "[.] delete %%i:"
    rmdir /s /q "%%i"
)
