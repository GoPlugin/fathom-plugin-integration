pragma solidity ^0.4.24;

interface IInvokeOracle {
    function requestData(address _caller) external returns (uint256 requestId);

    function showPrice(uint256 _reqid) external view returns (uint256);
}

contract ConsumerContract {
    address CONTRACTADDR = 0x5C0137f5c029dC4992dA9d7341b0B320e69768cb;
    uint256 public requestId;

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
    function show(uint256 _id) external view returns (uint256) {
        return IInvokeOracle(CONTRACTADDR).showPrice({_reqid: _id});
    }
}
