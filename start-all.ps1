Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "       Starting Decentralized E-Voting System" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

Write-Host "`n[1/3] Starting Ganache Blockchain (127.0.0.1:7545)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "npx ganache --server.port 7545 --chain.networkId 5777 --chain.chainId 1337 --wallet.deterministic"
Start-Sleep -Seconds 3

Write-Host "[2/3] Starting Backend Server (localhost:8000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd server; npm start"
Start-Sleep -Seconds 2

Write-Host "[3/3] Starting React Frontend (localhost:3000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd blockchain; npm start"

Write-Host "`n========================================================" -ForegroundColor Green
Write-Host "All services launched successfully!" -ForegroundColor Green
Write-Host " - Frontend:    http://localhost:3000" -ForegroundColor White
Write-Host " - Backend:     http://localhost:8000" -ForegroundColor White
Write-Host " - Blockchain:  http://127.0.0.1:7545 (Network ID: 5777)" -ForegroundColor White
Write-Host "`nDefault Admin Credentials:" -ForegroundColor Yellow
Write-Host "   Username: admin" -ForegroundColor White
Write-Host "   Password: admin" -ForegroundColor White
Write-Host "========================================================" -ForegroundColor Green
