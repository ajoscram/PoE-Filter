@echo off

for /F "tokens=*" %%i in ('type .env') do set %%i

pfg "src/_main.filter" "%TEST_OUTPUT%" .import