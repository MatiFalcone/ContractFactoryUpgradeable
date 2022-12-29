// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/proxy/Proxy.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract TokenProxyR is ERC1967Proxy, Ownable {
    uint32 private version;
    
    constructor(address _logic, bytes memory _data) ERC1967Proxy(_logic, _data) {
        transferOwnership(tx.origin);
    }

}
