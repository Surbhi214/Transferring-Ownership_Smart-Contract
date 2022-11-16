// SPDX-License-Identifier: MIT

pragma solidity ^0.8;
  

contract  ownable{
    address public owner;

    constructor(){
        owner=msg.sender; 
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"not owner");
        _;
    }

    function setOwnere(address _newOwner) public onlyOwner{
        require(_newOwner != address(0),"invalid address");
        owner=_newOwner;
    }

    function onlyOwnerCanAcess() public onlyOwner{
        //code
    }

    function anyOneCanAcess() public{
        //code
    }
}