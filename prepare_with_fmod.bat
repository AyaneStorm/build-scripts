call set_ayanestorm_vars.bat
set PATH=C:\CMake\bin;C:\cygwin64\bin;C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\x86\;%PATH%
python -m venv .venv
call .venv\Scripts\activate.bat
pip install -r %AYANESTORM_DIR%\requirements.txt
pip install git+https://github.com/secondlife/autobuild.git#egg=autobuild
call set_firestorm_vars.bat
call set_fmod_vars.bat
pushd %AYANESTORM_DIR%
copy autobuild.xml my_autobuild.xml
autobuild installables edit fmodstudio platform=windows64 hash=%FMOD_HASH% hash_algorithm=md5 url=%FMOD_URL%
popd