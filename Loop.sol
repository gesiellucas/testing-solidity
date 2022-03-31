// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.0;
contract Types {
    uint[] data;
    uint8 j = 0;

    modifier lessTen(uint _value) {
        require( _value <= 10, "Apenas números abaixo de 10");
        _;
    }

    function loop() public returns(uint[] memory) {
        while(j < 5){
            j++;
            data.push(j);
        }
        return data;
    }

    function doLoop (uint _value) public returns (uint[] memory) {
        do{
            j++;
            data.push(j);
        } while(j < _value) ;
            return data;
    }

    function forLoop (uint _value) public lessTen(_value) returns (uint[] memory) {
        for(uint i = 0; i< _value; i++) {
            data.push(i);
        }

        return data;
    }
}
