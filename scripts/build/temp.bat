@echo off

for /F "tokens=*" %%i in ('type .env') do set %%i

pfg "src/_main.filter" "%TEMP_OUTPUT%" .import
pfg "%TEMP_OUTPUT%" .combine
pfg "%TEMP_OUTPUT%" .index
if not "%1"=="-ne" (pfg "%TEMP_OUTPUT%" .econ)