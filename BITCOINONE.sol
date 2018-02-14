pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BITCOINONE is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BITCOINONE(address _owner)  UpgradeableToken(_owner) {
    name = "BITCOINONE";
    symbol = "BTCO";
    totalSupply = 21000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}