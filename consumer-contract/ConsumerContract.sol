pragma solidity ^0.4.24;

interface IInvokeOracle {
    function requestData(address _caller) external returns (uint256 requestId);

    function showPrice(uint256 _reqid) external view returns (uint256 answer, uint256 updatedOn);
}

contract ConsumerContract {
    address CONTRACTADDR = 0x90a3053CA217B5Caf1CD2B47B6Bf45E2391168aD;
    uint256 public requestId;
    // uint256 private answer;
    // uint256 private updatedOn;

    //Fund this contract with sufficient PLI, before you trigger below function.
    //Note, below function will not trigger if you do not put PLI in above contract address
    function getPriceInfo() external returns (uint256) {
        (requestId) = IInvokeOracle(CONTRACTADDR).requestData({
            _caller: msg.sender
        });
        return requestId;
    }

    //TODO - you can customize below function as you want, but below function will give you the pricing value
    //This function will give you last stored value in the contract
    function show(uint256 _id) external view returns (uint256, uint256) {
        (uint256 answer, uint256 updatedOn) = IInvokeOracle(CONTRACTADDR).showPrice({_reqid: _id});
        return (answer,updatedOn);
    }
}
