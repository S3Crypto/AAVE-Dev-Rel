// SPDX-License-Identifier: MIT
pragma solidity >0.4.22 <=0.8.15;

import {IPoolAddressesProvider} from "https://github.com/aave/aave-v3-core/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "https://github.com/aave/aave-v3-core/contracts/interfaces/IPool.sol";
import {ERC20} from "../node_modules/OpenZeppelin/contracts/token/ERC20/ERC20.sol";

contract Main {
    address key;

    function main(address _key) external {
        key = _key;
        getBalance();
    }

    function getBalance() returns (uint256) {
        address tokenContract = new web3.eth.Contract(ERC20).at(
            
        );
        int256 balance = tokenContract.balanceOf(0x3E937B4881CBd500d05EeDAB7BA203f2b7B3f74f);
        return balance / Math.pow(10, decimal);
    }
}
