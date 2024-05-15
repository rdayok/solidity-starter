// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
contract GreatestNumber{

    uint private a;
    uint private b;
    uint private c;
    uint private d;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require (owner == msg.sender, "Only the owner of this contract can access");
        _;
    }

    function setNumbers(uint _a, uint _b, uint _c, uint _d) public onlyOwner {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getGreatestNumnber() public view onlyOwner returns(uint){
        if (a > b && a > c && a > d){
            return a;
        }
        else if ( b > a && b > c && b > d) {
            return  b;
        }
        else if ( c > a && c > b && c > d){
            return c;
        }
        else {
            return d;
        }
    }
}
