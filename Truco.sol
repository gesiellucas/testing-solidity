// SPDX-License-Identifier: GPL 3.0
pragma solidity ^0.5.5;

contract Truco {
    enum Naipe { Espada, Copa, Paus, Ouro }
    enum Carta {
        A, Dois, Tres, Quatro, Cinco, Seis, Sete, J, Q, K
    }

    struct Mao {
        Naipe naipex;
        Carta cartax;
    }

    Mao public minhaMao;

    function euTenho(Carta _carta, Naipe _naipe) public returns (Carta, Naipe) {
        minhaMao.naipex = _naipe;
        minhaMao.cartax = _carta;

        return (minhaMao.cartax,minhaMao.naipex);
    }

    function trocarNaipeNum(uint _value) public {
        minhaMao.naipex = Naipe(_value);
    }

    function trocarNaipeEnum(Naipe _naipe) public {
        minhaMao.naipex = _naipe;
    }
}
