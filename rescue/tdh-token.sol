// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
// imports basic-erc20 token contract
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// imports contract to be ownable.
import "@openzeppelin/contracts/access/Ownable.sol";
// defining "contract" (TDH) to be ERC20 & ownable.
contract TDH is ERC20, Ownable {
    // construct the ERC20("token-name","symbol")
    constructor() ERC20("TDH", "TDH") {
        /* calling one time (internal) mint function.
         * calls the contract to internal (initial) mint 10M tokens to the contract deployer.
         * (10**18) defines the decimals for the token.
        */
        _mint(msg.sender, 10000000 * 10**18);
    }
}


// - this is an edition of original files stating the original contract with some defination edits to make things understandable!:)
