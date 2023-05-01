//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract RecieveEther {
    //function to recieve ether when msg.data is empty
    recieve() external payable{}

    //fallback function is called when msg.data is empty
    fallback () external payable {}

    function getBalance() public view returns(unit) {
        returns address(this).balance;
    }
}
contract SendEther {
    //defining the recipient to be used during the deployment
    address payable public recipient;

    constructor() payable {
        recipient=payable(msg.sender);
    }

function sendViaTransfer(address payable_to) external payable{
    _to.transfer(msg.value)
}
function sendViaSend(address payable_to) external payable{
    bool sent=_to.send(msg.value);
    require(sent,"Fail to send ether");
}
function sendViaCall(address payable _to)public payable{
    //call return boolean value to indicate the success or the fail
    (bool sent, bytes memory data)=_to.call{value:msg.value}("")
    requrie(sent, "Fail to sent ether");
}
}