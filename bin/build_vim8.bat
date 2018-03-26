@echo off

REM configuration
if not "%1"=="" set VIM_SRC=%1
if not "%2"=="" set VIM_BIN=%2
if "%VIM_SRC%"=="" set VIM_SRC=c:\work\vim8\vim
if "%VIM_BIN%"=="" set VIM_BIN=c:\opt\vim8
echo.
echo    Source directory: %VIM_SRC%
echo    Target directory: %VIM_BIN%
echo.

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

