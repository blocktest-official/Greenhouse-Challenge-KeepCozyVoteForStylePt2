pragma solidity 0.4.25;

import "./VoteForSweaterPt2.sol";

contract TestVoteForSweaterPt2 is VoteForSweaterPt2 {

  function test_sweaterVote() {
    // Voting for a valid option 'blue'
    uint blueVotes = getVotes("blue");
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);

    // Voting for an invalid option 'turtle neck'
    assert(getVotes("turtle neck") == 0);
    sweaterVote("turtle neck");
    assert(getVotes("turtle neck") == 0);

  }
}
