<#
  PowerShell build script: compile all .java files in impl/
  Usage: .\build.ps1
#>
Write-Host "Compiling Java sources in impl\" -ForegroundColor Cyan
javac impl\*.java
if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed" -ForegroundColor Red
    exit $LASTEXITCODE
}
Write-Host "Compilation finished" -ForegroundColor Green
