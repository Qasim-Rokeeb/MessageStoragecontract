
# 💬 MessageStorage Smart Contract

A simple decentralized message storage contract deployed and verified on **Base Sepolia Testnet**.  
It allows anyone to store a short message (up to 280 characters) on-chain with timestamp and sender details.

---

## 🔗 Deployed Contract

- **Address:** [`0x7738cEEd3340DEe3BFc76E15A40D1f6c2419fC3f`](https://sepolia.basescan.org/address/0x7738cEEd3340DEe3BFc76E15A40D1f6c2419fC3f)
- **Network:** Base Sepolia Testnet
- **Status:** ✅ Verified on BaseScan
- **License:** MIT

---

## 📜 Features

- Store a new message with sender and timestamp
- Retrieve the latest stored message
- Fetch complete message details: content, setter address, and timestamp
- Enforces max message length of **280 characters**
- Emits events for frontend listeners

---

## 🛠️ Functions Overview

| Function                              | Description |
|---------------------------------------|-------------|
| `setMessage(string)`                  | Stores a new message (anyone can call) |
| `getMessage()`                        | Retrieves the current message text |
| `getMessageDetails()`                  | Retrieves message, setter, and timestamp |

---

## 🧪 Example Interaction

```solidity
// Set a new message
messageStorage.setMessage("Hello, Base Sepolia!");

// Get the message
string memory current = messageStorage.getMessage();

// Get message details
(string memory msg, address setter, uint256 time) = messageStorage.getMessageDetails();
````

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

```
