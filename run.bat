@echo off
REM Simple run script (Windows batch)
echo Running Main from impl\ ...
REM First compile changed sources (javac is incremental and will only recompile modified files)
javac impl\*.java
if ERRORLEVEL 1 (
  echo Compilation failed. Not running.
  exit /b 1
)

java -cp impl Main
if ERRORLEVEL 1 (
  echo Runtime failed.
  exit /b 1
)
exit /b 0
