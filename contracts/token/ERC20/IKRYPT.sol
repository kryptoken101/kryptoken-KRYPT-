// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract IKRYPT is ERC20 {
    event Deposit(address indexed sender, uint256 amount);
    event Withdrawal(address indexed recipient, uint256 amount);

    function deposit() public payable;

    function withdraw(uint256 amount) public;

    function withdraw(uint256 amount, address user) public;
}
