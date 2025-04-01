pragma solidity ^0.8.0;

contract SentimentVoting {
    struct Voter {
        bool voted;
        uint8 vote;
    }
    
    mapping(address => Voter) public voters;
    uint public positiveVotes;
    uint public negativeVotes;
    
    event VoteCast(address indexed voter, uint8 vote);
    
    function vote(uint8 sentimentScore) public {
        require(sentimentScore <= 100, "Invalid sentiment score");
        require(!voters[msg.sender].voted, "Already voted");
        
        voters[msg.sender].voted = true;
        voters[msg.sender].vote = sentimentScore;
        
        if (sentimentScore >= 50) {
            positiveVotes++;
        } else {
            negativeVotes++;
        }
        
        emit VoteCast(msg.sender, sentimentScore);
    }
    
    function getResults() public view returns (uint, uint) {
        return (positiveVotes, negativeVotes);
    }
}
