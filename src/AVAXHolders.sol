// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract AVAXHolders {
    struct Holders {
        string name;
        uint amount;
    }

    Holders[] public AVAXholders;
    mapping(string => uint) public userholdings;

    function addHolder(string memory name, uint amount) public {
        AVAXholders.push(Holders({name: name, amount: amount}));
        userholdings[name] = amount;
    }
}
