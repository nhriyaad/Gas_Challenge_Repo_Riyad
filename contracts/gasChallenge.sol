// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    //Implement Fixed-Size Array Technique Here
    uint256[10] numbers ;
    
    //Function to check for sum of array
    //No changes required in this function
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    
    function notOptimizedFunction() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }
    
    //Implement Remaining Gas Optimization Techniques Here
    
    //Sum of elements in the numbers array should equal 0
    function optimizedFunction() public {
        unchecked {
            for (uint256 i = 0; i < numbers.length; i++) {
                numbers[i] = ~numbers[i] + 1;
            }
        }
    
    }
 }
