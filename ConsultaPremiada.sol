// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./PrimeiroProjeto.sol";

contract ConsultaPremiada is PrimeiroProjeto {
    
    function sorteioVencedor(uint _idConsulta) public view returns (string memory) {
        require(msg.sender == enderecoConsulta[_idConsulta]);
        QuemMeConsulta storage MinhaConsulta = consultas[_idConsulta];
        string memory minhaMensagem = MinhaConsulta.mensagem;
        return minhaMensagem;
    }

}
