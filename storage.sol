// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import './winner.sol';
/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */

contract Storage is Owner{

    uint256 public number = 5;
    

    string public name = "badoo";

    enum State { Waiting, Ready, Active }

    State public state;

    constructor() {

    state = State.Waiting;

    
    }

    function collectpay() payable public {
        require(msg.value > 0, "issufiicient fund");
       
    //    address sender = msg.sender;

       uint256 amount = msg.value;
       store(amount);
    }

    /**
     * @dev Store value in variable
     * @param _num value to store
     */
    function store(uint256 _num) public {
        number = _num;
    }

    function changeState(uint _state) public {
    state = State(_state);
    }
    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
