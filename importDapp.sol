pragma solidity ^0.4.0;

contract importDapp {
    address owner;
    
    modifier onlyowner() {
        if(owner == msg.sender) {
            _;
        } else {
            throw;
        }
    }
    
    function importDapp() {
        owner = msg.sender;
    }
    
    function kill() onlyowner {
        suicide(owner);
    }
}