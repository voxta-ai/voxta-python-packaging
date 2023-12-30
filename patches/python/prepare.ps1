$scriptFolder = Split-Path -Parent $MyInvocation.MyCommand.Definition
$pythonFolder = $args[0]
Remove-Item $(Join-Path $pythonFolder "Tools/demo") -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $(Join-Path $pythonFolder "Doc") -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $(Join-Path $pythonFolder "Lib/test") -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $(Join-Path $pythonFolder "Scripts/pip*") -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item $(Join-Path $scriptFolder "voxta-python.bat") $pythonFolder/voxta-python.bat
