@echo off
setlocal enabledelayedexpansion
set strict_file_names=Base Lenient Semi-strict Strict Very-strict Uber-strict
set chaos_types=Bodies Helmets Gloves Boots Boots Nothing
set strictness=0

if not exist ".\generated" mkdir ".\generated"
pfg "src/_main.filter" "generated\temp.filter" .import
pfg "generated\temp.filter" .econ

if not exist ".\generated\chaos" mkdir ".\generated\chaos"

for %%i in (%strict_file_names%) do (
    
    pfg "generated\temp.filter" "generated\%%i.filter" .strict !strictness!
    if not exist ".\generated\chaos\%%i" mkdir ".\generated\chaos\%%i"

    for %%j in (%chaos_types%) do (
        pfg "generated\%%i.filter" "generated\chaos\%%i\%%j.filter" .tag chaos %%j
    )

    set /a strictness+=1
)

del "generated\temp.filter"