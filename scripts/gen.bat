@echo off
setlocal enabledelayedexpansion
set strict_file_names=Base Lenient Semi-strict Strict Very-strict Uber-strict
set chaos_types=bodies helmets gloves boots boots nothing
set strictness=0

if not exist ".\generated" mkdir ".\generated"
pfg "src/_main.filter" "generated\Ajo's.filter" .import
pfg "generated\Ajo's.filter" .econ

if not exist ".\generated\Subfilters\" mkdir ".\generated\Subfilters\"

for %%i in (%strict_file_names%) do (
    
    pfg "generated\Ajo's.filter" "generated\Subfilters\%%i.filter" .strict !strictness!
    if not exist ".\generated\Subfilters\%%i - chaos" mkdir ".\generated\Subfilters\%%i - chaos"

    for %%j in (%chaos_types%) do (
        pfg "generated\Subfilters\%%i.filter" "generated\Subfilters\%%i - chaos\%%j.filter" .tag chaos %%j
    )

    set /a strictness+=1
)