// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SampleFunctionError {

    function  SampleRequire(uint _x) public pure{
        require(_x < 5, "The value you entered must be less than 5");
    }

    function SampleRevert(uint _x) public pure{
        if (_x >= 5){
            revert("The value you entered is incorrect, try something lesser!");
        }
    }

    function SampleAssert(uint _x) public pure{
        assert(_x < 10);
    }
    
    uint public balance;
    
    function addBalance(uint256 amount) public {
 
        SampleRequire(amount);
        balance += amount;
    }

}
