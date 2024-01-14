// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {BasicStorage} from "./BasicStorage.sol";

contract StorageFactory {
    BaiscStorage[] public listOfBasicStorageContracts;

    function createBasicStorageContract() public {
        BasicStorage basicStorageContractVariable = new BasicStorage();
        // BasicStorage basicStorage = new BasicStorage();
        listOfBasicStorageContracts.push(basicStorageContractVariable);
    }

    function sfStore(
        uint256 _basicStorageIndex,
        uint256 _basicStorageNumber
    ) public {
        // Address
        // ABI
        // BasicStorage(address(basicStorageArray[_basicStorageIndex])).store(_basicStorageNumber);
        listOfBasicStorageContracts[_basicStorageIndex].store(
            _basicStorageNumber
        );
    }

    function sfGet(uint256 _basicStorageIndex) public view returns (uint256) {
        // return BasicStorage(address(basicStorageArray[_basicStorageIndex])).retrieve();
        return listOfBasicStorageContracts[_basicStorageIndex].retrieve();
    }
}
