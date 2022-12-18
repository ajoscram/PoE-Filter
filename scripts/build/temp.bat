@echo off

for /F "tokens=*" %%i in ('type .env') do set %%i

if "%1"=="-ne" ( set econ= ) else ( set econ=.econ )

pfg "src/_main.filter" "%TEMP_OUTPUT%" .import .index .combine %econ%