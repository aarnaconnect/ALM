@echo off    

for /F "eol=# delims== tokens=1,*" %%a in (config.properties) do (

    if NOT "%%a"=="" if NOT "%%b"=="" set config.%%a=%%b
)

set config.

for /F "tokens=1 delims==" %%v in ('set config. 2^>null') do (
    set %%v=
)
pause