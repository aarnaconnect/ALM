@echo off    

for /f "delims=" %%a in (config.properties) do set ###%%a
echo %###country%
pause