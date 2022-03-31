// SPDX-License-Identifier: GPL 3.0
pragma solidity 0.5.5;

contract Restricao {

    enum semanas {
        Domingo,
        Segunda,
        Terca,
        Quarta,
        Quinta,
        Sexta,
        Sabado
    }
    
    modifier eSabado(semanas _dia) {
        require(_dia != semanas.Sabado, "Sabado nao e dia de trabalhar");
        _;
    }
}


contract Datatypes is Restricao{

    semanas dia2;

    semanas constant default_value = semanas.Domingo;

    function setSemanas(semanas _dia) public eSabado(_dia) {
        
        dia2 = _dia;
    }

    function getSemanas() public view returns (semanas) {
        return dia2;
    }

    function getDefaultValue() public pure returns (semanas) {
        return default_value;
    }
}

