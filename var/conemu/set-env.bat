@echo off
call "%ConEmuBaseDir%\CmdInit.cmd"
call "%ConEmuBaseDir%\SetEscChar.cmd"
call "%ConEmuBaseDir%\GitShowBranch.cmd" /i
c:\opt\clink\0.4.9\clink.bat inject -q
