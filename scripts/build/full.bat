call scripts/build/temp.bat %1

setlocal enabledelayedexpansion
set strict_file_names=Base Lenient Semi-strict Strict Very-strict Uber-strict
set chaos_types=Bodies Helmets Gloves Boots Boots Weapons Nothing
set strictness=0

if not exist ".\build" mkdir ".\build"

for %%i in (%strict_file_names%) do (
    
    pfg "%TEMP_OUTPUT%" "build\%%i.filter" .strict !strictness!
    pfg "build\%%i.filter" .format

    if not exist ".\build\chaos\%%i" mkdir ".\build\chaos\%%i"
    for %%j in (%chaos_types%) do (
        pfg "build\%%i.filter" "build\chaos\%%i\%%j.filter" .tag chaos %%j
        pfg "build\chaos\%%i\%%j.filter" .format
    )

    set /a strictness+=1
)

del "%TEMP_OUTPUT%"