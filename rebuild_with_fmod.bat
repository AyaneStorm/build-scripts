call set_ayanestorm_vars.bat
set PATH=C:\CMake\bin;C:\cygwin64\bin;C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\x86\;%PATH%
call set_firestorm_vars.bat
call set_fmod_vars.bat
cd %AYANESTORM_DIR%\..
call .venv\Scripts\activate.bat
