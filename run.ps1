<#
  PowerShell run script: execute Main class from impl/
  Usage: .\run.ps1
#>
Write-Host "Running Main from impl\" -ForegroundColor Cyan
# Compile first (javac is incremental and will only recompile changed files)
javac impl\*.java
if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed. Not running." -ForegroundColor Red
    exit $LASTEXITCODE
}

java -cp impl Main
if ($LASTEXITCODE -ne 0) {
    Write-Host "Execution failed" -ForegroundColor Red
    exit $LASTEXITCODE
}
