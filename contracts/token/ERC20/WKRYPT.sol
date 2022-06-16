contract WKRYPT is IKRYPT {
    string public name = "Wrapped Kryptoken";
    string public symbol = "WKRYPT";
    uint8 public decimals = 18;

    function deposit() public payable {
        _mint(msg.sender, msg.value);
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount);
        address payable recipient = msg.sender;
        _burn(msg.sender, amount);
        recipient.transfer(amount);
        emit Withdrawal(recipient, amount);
    }

    function withdraw(uint256 amount, address payable recipient) public {
        require(balanceOf(msg.sender) >= amount);
        recipient.transfer(amount);
        _burn(msg.sender, amount);
        emit Withdrawal(recipient, amount);
    }
}
