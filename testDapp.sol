pragma solidity ^0.4.0;

import "github.com/bitgord/eth-melb-sol/importDapp.sol";

contract testDapp is importDapp{
    
    uint myVar;
    
    function testDapp() payable {
        myVar = 5;
    }
    
    function setVar(uint myNewVar) onlyowner{
        myVar = myNewVar;
    }
    
    function getVar() constant returns(uint) {
        return myVar;
    }
    
    function getBalance() constant returns(uint) {
        return this.balance;
    }
    
    function () payable {
        
    }
}