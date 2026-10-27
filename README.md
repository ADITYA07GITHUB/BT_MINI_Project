# E-Voting App (Decentralized Voting D-App)

A simple E-voting Decentralised App using the Ethereum Blockchain, Solidity and the MERN (MongoDB, Express.js, ReactJS, Node.js) stack.

---

## 🚀 Quick Start (All-in-One)

You can launch all services (Ganache blockchain, Express backend, and React frontend) with a single click:

- **Windows Batch**: Double-click `start-all.bat`
- **PowerShell**: Run `.\start-all.ps1`

### Service Endpoints
| Component | URL | Details |
|---|---|---|
| **React Frontend** | [http://localhost:3000](http://localhost:3000) | User & Admin UI |
| **Express Backend** | [http://localhost:8000](http://localhost:8000) | REST API & Election list |
| **Ganache Blockchain** | [http://127.0.0.1:7545](http://127.0.0.1:7545) | Network ID: `5777`, Chain ID: `1337` |
| **MongoDB** | `mongodb://127.0.0.1:27017` | Database: `elections` |

---

## 🔑 Default Credentials

- **Admin Portal**: [http://localhost:3000/login](http://localhost:3000/login)
- **Username**: `admin`
- **Password**: `admin`

---

## 🦊 MetaMask Configuration

To interact with the smart contracts (add candidates, cast votes):

1. Install the **MetaMask** browser extension.
2. Add a new Custom Network in MetaMask:
   - **Network Name**: `Ganache Local`
   - **New RPC URL**: `http://127.0.0.1:7545`
   - **Chain ID**: `1337`
   - **Currency Symbol**: `ETH`
3. Import one of the pre-funded deterministic Ganache test accounts:
   - **Account 0 (Contract Owner)**:
     - Address: `0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1`
     - Private Key: `0x4f3edf983ac636a65a842ce7c78d9aa706d3b113bce9c46f30d7d21715b23b1d`
   - **Account 1 (Voter)**:
     - Address: `0xFFcf8FDEE72ac11b5c542428B35EEF5769C409f0`
     - Private Key: `0x6cbed15c793ce57650b9877cf6fa156fbef513c4e6134f022a85b1ffdd59b2a1`

---

## 🛠 Manual Commands

### 1. Compile & Deploy Smart Contracts
```bash
npm run migrate
```
*(Runs `truffle migrate --reset` to compile Solidity contracts and save ABI/addresses to `blockchain/src/build`)*

### 2. Start Blockchain Node
```bash
npm run ganache
```

### 3. Start Backend Server
```bash
cd server
npm start
```

### 4. Start React Frontend
```bash
cd blockchain
npm start
```

---

## 🗳 Application Workflow

1. **Admin Login**:
   Navigate to [http://localhost:3000/login](http://localhost:3000/login) and log in using `admin` / `admin`.
2. **Create Election**:
   Enter election title, organizer, and password.
3. **Add Candidates**:
   From the elections dashboard, click **Add candidate** to add candidate names and details onto the Ethereum Blockchain.
4. **Voters Vote**:
   Users go to `/choose`, select an election, choose a candidate, and sign the voting transaction using MetaMask.
5. **View Results**:
   Real-time vote counts stored immutably on the Ethereum Blockchain are displayed under **View vote Count**.
