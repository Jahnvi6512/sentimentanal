# Sentiment-Based Voting Smart Contract

This Solidity smart contract enables voting influenced by sentiment analysis. Votes are cast based on sentiment scores (0-100), where scores >= 50 count as positive votes, and scores < 50 count as negative votes.

## Features
- Allows users to cast a vote based on sentiment scores.
- Prevents duplicate voting.
- Keeps track of positive and negative votes.
- Provides a function to retrieve voting results.

## Smart Contract Code
The Solidity contract can be found in `SentimentVoting.sol`.

## How It Works
1. A user calls the `vote(uint8 sentimentScore)` function with a sentiment score (0-100).
2. If the score is 50 or higher, it counts as a positive vote; otherwise, it's negative.
3. The contract keeps track of votes and prevents duplicate voting.
4. The `getResults()` function returns the total count of positive and negative votes.

## Deployment
To deploy the contract:
1. Use Remix IDE or any Ethereum development framework (e.g., Hardhat, Truffle).
2. Compile the contract with Solidity version `0.8.0` or later.
3. Deploy to a test network (e.g., Goerli, Sepolia) or a local blockchain.

## Usage
- **Vote:** Call `vote(sentimentScore)` from a wallet.
- **Get Results:** Call `getResults()` to retrieve the voting outcome.

## License
This project is open-source and available under the MIT License.

## Contact
For any inquiries or contributions, contact:

**Email:** [your-email@example.com]  
**GitHub:** [your-github-profile]  
