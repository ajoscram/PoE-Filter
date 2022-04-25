@echo off

setlocal enabledelayedexpansion
set strict_file_names=Base Lenient Semi-strict Strict Very-strict Uber-strict
set chaos_types=Bodies Helmets Gloves Boots Boots Nothing
set strictness=0

if not exist ".\build" mkdir ".\build"
pfg "src\_main.filter" "build\temp.filter" .import
pfg "build\temp.filter" .econ

if not exist ".\build\chaos" mkdir ".\build\chaos"

for %%i in (%strict_file_names%) do (
    
    pfg "build\temp.filter" "build\%%i.filter" .strict !strictness!
    if not exist ".\build\chaos\%%i" mkdir ".\build\chaos\%%i"

    for %%j in (%chaos_types%) do (
        pfg "build\%%i.filter" "build\chaos\%%i\%%j.filter" .tag chaos %%j
    )

    set /a strictness+=1
)

del "build\temp.filter"

@echo on