# zama-fhevm-voting-1
# 🗳️ Zama FHEVM Encrypted Voting Example

> A privacy-preserving voting smart contract built on Zama's FHEVM.

## 🌟 Why is this cool?
This example demonstrates the power of **Fully Homomorphic Encryption (FHE)** in a governance context. 
- **Privacy:** User votes are encrypted (`einput`). No one, not even the admin, can see individual votes.
- **On-chain Computation:** The vote tally (`encryptedYesCount`) is updated on-chain using `TFHE.add` without ever decrypting the data.
- **Trust:** Only the final result is revealed.

## 🛠️ Tech Stack
- **Solidity:** v0.8.20
- **FHEVM Lib:** v0.6.2 (Latest Stable)

## 📜 Contract Logic
The contract uses `TFHE.asEuint32` to process encrypted inputs and `TFHE.add` to aggregate votes securely.

---
*Built for Zama Bounty Track December 2025*
