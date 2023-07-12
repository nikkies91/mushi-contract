// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMushi {
    function sendRequest(string memory, string memory, address) external payable;
    function getData(uint256) external view returns (string memory);
    function getRequestId(address) external view returns (uint256);

}

contract Test{
    address public mushiAddress = 0x5B079d5705788762bed6dDDaF6BF4bB4400Ea1D3;
    address mushi;

    constructor(){
        mushi = mushiAddress;
    }

    function sendRequest(string memory _url, string memory _path, address _sender ) public payable {
        IMushi(mushi).sendRequest(_url,_path,_sender);
    }
    function getData(uint256 _requestId) public view returns (string memory) {
        return IMushi(mushi).getData(_requestId);
    }
    function getRequestId(address _sender ) public view returns (uint256){
        return IMushi(mushi).getRequestId(_sender);
    }

}
