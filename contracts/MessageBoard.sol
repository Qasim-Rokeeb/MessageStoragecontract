// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MessageStorage {
    // State variable to store a message
    string private storedMessage;
    
    // Address of the person who set the message
    address public messageSetter;
    
    // Timestamp when message was set
    uint256 public messageTimestamp;
    
    // Event emitted when message is updated
    event MessageUpdated(address indexed setter, string message, uint256 timestamp);
    
    // Constructor - runs once when contract is deployed
    constructor() {
        storedMessage = "Hello Web3 World!";
        messageSetter = msg.sender;
        messageTimestamp = block.timestamp;
    }
    
    // Function to set a new message
    function setMessage(string memory _newMessage) public {
        require(bytes(_newMessage).length > 0, "Message cannot be empty");
        require(bytes(_newMessage).length <= 280, "Message too long (max 280 chars)");
        
        storedMessage = _newMessage;
        messageSetter = msg.sender;
        messageTimestamp = block.timestamp;
        
        emit MessageUpdated(msg.sender, _newMessage, block.timestamp);
    }
    
    // Function to get the stored message
    function getMessage() public view returns (string memory) {
        return storedMessage;
    }
    
    // Function to get message details
    function getMessageDetails() public view returns (
        string memory message,
        address setter,
        uint256 timestamp
    ) {
        return (storedMessage, messageSetter, messageTimestamp);
    }
}