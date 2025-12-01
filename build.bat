@echo off
REM Simple build script (Windows batch)
echo Compiling Java sources in impl\ ...
javac impl\*.java
if ERRORLEVEL 1 (
  echo Compilation failed.
  exit /b 1
)
echo Compilation finished.
exit /b 0
