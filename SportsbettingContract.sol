// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "@ OluwaniShola Jegede/IERC20.sol";
import "@ OluwaniShola Jegede/IERC721.sol";

contract MySmartWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function Withdraw(uint _amount) external {
        require(msg.sender == owner, "Your are not the owner of this wallet.");
        payable(msg.sender).transfer(_amount);
    }

    function WalletBalance() external view returns (uint) {
        return address(this).balance;
    }

}