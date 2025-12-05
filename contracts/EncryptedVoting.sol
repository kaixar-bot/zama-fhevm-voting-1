// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.20;

import "fhevm/lib/TFHE.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EncryptedVoting is Ownable {
    euint32 private encryptedYesCount;
    euint32 private encryptedNoCount;
    bool public isVotingActive;

    constructor() Ownable() {
        isVotingActive = true;
        encryptedYesCount = TFHE.asEuint32(0);
        encryptedNoCount = TFHE.asEuint32(0);
    }

    function castVote(bytes calldata inputProof, bytes calldata encryptedVote) public {
        require(isVotingActive, "Voting ended");
        euint32 vote = TFHE.asEuint32(encryptedVote, inputProof);
        // Cộng dồn phiếu bầu mà không cần giải mã (Tính năng FHE)
        encryptedYesCount = TFHE.add(encryptedYesCount, vote);
    }

    function stopVoting() public onlyOwner {
        isVotingActive = false;
    }
}
