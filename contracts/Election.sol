// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Store Candidates
    mapping(uint256 => Candidate) public candidates;

    // Fetch Candidate

    // Store Candidates Count
    uint256 public candidatesCount;

    constructor() public {
        addCandidate("Buhari");
        addCandidate("Atiku");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
