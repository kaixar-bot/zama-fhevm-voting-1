# Encrypted Voting System (fhEVM Zama)

A private voting smart contract using Fully Homomorphic Encryption on Zama's fhEVM.

## Features

- ✅ Private voting with encrypted votes
- ✅ Vote only once per address
- ✅ Get total votes count
- ✅ Check if address has voted

## Contract Details

- **Language:** Solidity
- **Chain:** Zama fhEVM Testnet
- **Encryption:** Fully Homomorphic Encryption (FHE)

## How to Use

1. Clone this repository
2. Deploy `EncryptedVoting.sol` using Remix IDE
3. Call `vote(uint8 candidateId)` to vote
4. Call `getVotes0()` or `getVotes1()` to check results
5. Call `getTotalVotes()` to see total votes

## Testing

Tested and verified on Zama Remix VM:
- ✅ Deployment successful
- ✅ Vote function working
- ✅ Results tracking functional

## License

MIT
