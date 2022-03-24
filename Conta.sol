pragma solidity ^0.6.6;

contract Conta {
    uint Numero1;
    uint Numero2;

    function setNumero1(uint x) public {
        Numero1 = x;
    }

    function setNumero2(uint y) public {
        Numero2 = y;
    }

    function getNumero1() view public returns (uint) {
        return Numero1;
    }

    function getNumero2() view public returns (uint) {
        return Numero2;
    }

    function add() view public returns (uint) {
        uint Sum = Numero1 + Numero2;
        return Sum;
    }

    function sub() view public returns (uint) {
        uint Sub = Numero1 - Numero2;
        return Sub;
    }

    function mult() view public returns (uint) {
        return Numero1 * Numero2;
    }

    function div() view public returns (uint) {
        return Numero1 / Numero2;
    }

    function mod() view public returns (uint) {
        return Numero1 % Numero2;
    }

    function exp() view public returns (uint) {
        return Numero1 ** Numero2;
    }
    
    
}
