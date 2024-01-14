// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {BasicStorage} from "./BasicStorage.sol";

contract AddFiveStorage is BasicStorage {
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}
