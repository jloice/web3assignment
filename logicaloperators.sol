//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Hello class Assignment
// Logical Operators
// Define a Solidity contract called LogicalOperators.
// Add two Boolean variables to the contract: a and b, and initialize them to true and false, respectively.
// Write a function called logicalOperations that returns the results of the following logical operations:
// a && b
// a || b
// !a
// !b

contract logicaloperators {
    bool public a= true;
    bool public b= false;
function logicaloperations()public view returns (bool, bool, bool, bool) {
    bool and  = a && b;
    bool or  = a || b;
    bool nota  = !a;
    bool notb  = !b;
    return (and, or, nota, notb);
    }
}