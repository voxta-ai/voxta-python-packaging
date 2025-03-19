@echo off
setlocal
echo Entering Voxta Python Virtual Environment
set "PYTHONHOME=%~dp0"
set "PYTHONPATH=%PYTHONHOME%..\..\..\Resources\Python\Lib\site-packages;%PYTHONHOME%Lib\site-packages\;%PYTHONHOME%Lib\;%PYTHONHOME%DLLs\;%PYTHONHOME%"
set "PATH=%PYTHONHOME%Scripts;%PATH%"
set "LIBPATH=%PYTHONHOME%libs"
echo PYTHONHOME = %PYTHON_HOME%
echo PYTHONPATH = %PYTHONPATH%
echo LIBPATH = %LIBPATH%
echo PATH = %PATH%
echo Launching cmd with Voxta Python Virtual Environment. Type exit to exit.
cmd
echo Exited Voxta Python Virtual Environment
endlocal
