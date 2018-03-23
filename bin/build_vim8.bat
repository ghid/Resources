@echo off

REM configuration
set VIM_SRC=c:\work\vim8\vim
set VIM_BIN=c:\opt\vim8

pushd %VIM_SRC%\src

echo Run builds...
mingw32-make.exe -f Make_ming.mak gvim.exe
mingw32-make.exe -f Make_ming.mak GUI=no vim.exe
mingw32-make.exe -f Make_ming.mak
echo.
echo Copy executables...
copy /Y *.exe %VIM_BIN%\vim80\
echo.
echo Copy runtime files...
xcopy /E /D ..\runtime\*.* %VIM_BIN%\vim80\

popd

