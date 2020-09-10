//SPDX-License-Identifier: MIT
pragma solidity 0.7.1;

contract SimpleStorage {
    
        //Variables
        address public owner;
        uint storedInt;
        string storedString;
        uint[] public arrayInt;
        
        //Eventos
        event SetInt(uint set);
        event SetString(string set);
        event PushToArray(uint pushed);
        
        //Modifiers
        modifier onlyOwner{
            require (msg.sender == owner);
            _;
        }
        //constructor
        constructor(){
            owner = msg.sender;
        }
        
        //Methods
        function setInt(uint _toSet) public onlyOwner {
            
            storedInt = _toSet;
            //emit SetInt(_toSet);
        }
        
        function getInt () public view returns (uint) {
            return storedInt;
        }
        
        function setString (string memory _storedString) public onlyOwner {
            storedString = _storedString;
            //emit setString(_storedString);
        }
        
        function getString () public view returns (string memory){
            return storedString;
        }
        
        function PushArray (uint toPush) public {
            arrayInt.push(toPush);
            emit PushToArray(toPush);
        }
            
        
}
