@echo off
echo ========================================================
echo        Starting Decentralized E-Voting System
echo ========================================================
echo.

echo [1/3] Starting Ganache Blockchain on http://127.0.0.1:7545 ...
start "Ganache Blockchain Node" cmd /k "npx ganache --server.port 7545 --chain.networkId 5777 --chain.chainId 1337 --wallet.deterministic"

timeout /t 3 /nobreak >nul

echo [2/3] Starting Express & MongoDB Backend on http://localhost:8000 ...
start "Backend Server (Port 8000)" cmd /k "cd server && npm start"

timeout /t 2 /nobreak >nul

echo [3/3] Starting React Client on http://localhost:3000 ...
start "React Frontend (Port 3000)" cmd /k "cd blockchain && npm start"

echo.
echo ========================================================
echo All services launched!
echo - Frontend:  http://localhost:3000
echo - Backend:   http://localhost:8000
echo - Blockchain: http://127.0.0.1:7545 (Network ID: 5777)
echo.
echo Default Admin Credentials:
echo   Username: admin
echo   Password: admin
echo ========================================================
pause
