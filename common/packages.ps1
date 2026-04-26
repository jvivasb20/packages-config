
$pkgs = @(
    "Mozilla.Firefox",
    "OO-Software.ShutUp10",
    "AnyDesk.AnyDesk"
)

Write-Host "Initializing installation of packages..." -ForegroundColor Cyan

foreach ($pkg in $pkgs) {
    Write-Host "Installing: $pkg" -ForegroundColor Yellow
    
    winget install --id $pkg --exact --accept-package-agreements --accept-source-agreements --silent
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "$pkg installed correctly." -ForegroundColor Green
    } else {
        Write-Host "Error or warning installing $pkg. Exit code: $LASTEXITCODE" -ForegroundColor Red
    }
}

Write-Host "Process completed." -ForegroundColor Cyan