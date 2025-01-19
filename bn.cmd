call set_ayanestorm_vars.bat
pushd %AYANESTORM_DIR%
autobuild configure -A 64 -v -c ReleaseFS_open -- --fmodstudio --package --chan AyaneStorm --avx2 --kdu -DFS_UPGRADECODES='5d85a6d0-b5e6-4f44-a392-6cd470afb0d5,99a4fc81-c1c8-46a0-af60-c0a800a2e419' -DLL_TESTS:BOOL=FALSE
autobuild build -A 64 -c ReleaseFS_open --no-configure
popd