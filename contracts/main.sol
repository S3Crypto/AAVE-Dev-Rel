pragma solidity >0.4.22 <0.8.16;

//import {IPoolAddressesProvider} from "https://github.com/aave/aave-v3-core/contracts/interfaces/IPoolAddressesProvider.sol";
//import {IPool} from "https://github.com/aave/aave-v3-core/contracts/interfaces/IPool.sol";
//import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//import {Contract} from "@web3-eth-contract";

contract Main {
    function main(string _key) external returns (int256, int256) {
        //IPoolAddressesProvider public provider = new provider();
        //IPool public pool = IPool(provider.getPool());
        string key = _key;

        int256 userBalance = getUserBalance();
        if (userBalance > 0) {
            deposit(pool, userBalance);
            borrow(pool);
        }
        return (getCollateralBalance(key, pool), getDebtBalance(key, pool));
    }

    function getUserBalance() internal returns (int256) {
        Contract tokenContract = new Contract(
            web3
            .eth
            .Contract().at() /*USDC-ABI*/ /*USDC-Address*/
        );
        int256 balance = tokenContract.balanceOf(); /*User-Address*/
        return (balance / Math.pow(10, decimal));
    }

    function deposit(IPool pool, int256 amount) internal {
        pool.deposit({/*User-Address, USDC-Address, amount*/});
    }

    function borrow(IPool pool) internal {
        //Borrowing Amount Calculation
        pool.borrow({/*User-Address, USDC-Address, amount, 'Stable';*/});
    }

    function getCollateralBalance(string _key, IPool) internal returns (int256 collateral) {
        return pool.getUserAccountData(_key).totalCollateralBase;
    }

    function getDebtBalance(string _key, IPool) internal returns (int256 debt) {
        return pool.getUserAccountData(_key).totalDebtBase;
    }
}
