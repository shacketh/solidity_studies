// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./PrimeiroProjeto.sol";

contract ConsultaPremiada is PrimeiroProjeto {
    
    function sorteioVencedor(uint _idConsulta) public returns (string memory) {
        require(msg.sender == enderecoConsulta[_idConsulta]);
        QuemMeConsulta storage MinhaConsulta = consultas[_idConsulta];
    }

}
