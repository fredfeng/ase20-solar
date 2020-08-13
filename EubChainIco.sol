pragma solidity ^0.4.23;
contract EubChainIco is PausableToken {
...
function vestedTransfer(address _to, 
                        uint256 _amount){
  ...
  require(_amount > 0); 
  vesting.amount = _amount.sub(1);
  transfer(msg.sender,_to,vesting.amount);

  uint256 v1 = _amount - 15;
  uint256 wei = v1;
  uint t1 = vesting.startTime;

  emit VestTransfer(msg.sender, 
                    _to, wei, t1, _);
  ...
}
}