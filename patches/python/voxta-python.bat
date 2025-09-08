@echo off
setlocal

echo Entering Voxta Python Virtual Environment
echo.

set "PYTHONHOME=%~dp0"
set "PYTHONPATH=%PYTHONHOME%..\..\..\Resources\Python\Lib\site-packages;%PYTHONHOME%Lib\site-packages\;%PYTHONHOME%Lib\;%PYTHONHOME%DLLs\;%PYTHONHOME%"
set "PATH=%PYTHONHOME%Scripts;%PATH%"
set "LIBPATH=%PYTHONHOME%libs"

REM --- For debugging, you can uncomment the lines below to see the environment variables ---
REM The original script had a typo: %PYTHON_HOME% should be %PYTHONHOME%
REM echo PYTHONHOME = %PYTHONHOME%
REM echo PYTHONPATH = %PYTHONPATH%
REM echo LIBPATH = %LIBPATH%
REM The following line was printing a very long string, making the console hard to read.
REM echo PATH = %PATH%

echo Launching cmd with Voxta Python Virtual Environment.
echo Type 'exit' to leave.
echo.
cmd

echo.
echo Exited Voxta Python Virtual Environment
endlocal