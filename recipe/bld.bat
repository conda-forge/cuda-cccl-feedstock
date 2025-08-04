if not exist %PREFIX% mkdir %PREFIX%
mkdir %LIBRARY_LIB%\x64
mkdir %LIBRARY_INC%\targets
mkdir %LIBRARY_INC%\targets\x64

move lib\cmake %LIBRARY_LIB%\x64
for /D %%D in ("include\*") do move "%%~D" "%LIBRARY_INC%\targets\x64"
