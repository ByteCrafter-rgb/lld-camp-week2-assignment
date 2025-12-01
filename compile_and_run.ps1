# Simple helper to compile and run the example in impl/ (PowerShell)
Write-Host "Checking for javac..."
try {
    $v = & javac -version 2>&1
}
catch {
    Write-Host "ERROR: 'javac' not found. Install a JDK and ensure 'javac' is in your PATH." -ForegroundColor Red
    exit 1
}

Write-Host "Compiling Java files in impl/";
javac impl\*.java
if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed" -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Running Main...";
# run Main using impl as classpath
java -cp impl Main
