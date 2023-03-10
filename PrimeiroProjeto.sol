// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract PrimeiroProjeto {

    event NovaConsulta(uint idConsulta, string nome, string mensagem, uint numeroDaSorte);

    string datadenascimento = "28/02/2023";

    struct QuemMeConsulta {
        string nome;
        string mensagem;
    }
    
    QuemMeConsulta[] public consultas;
    
    mapping (uint => address) enderecoConsulta;
    mapping (address => uint) consultasEndereco;

    function QuandoIniciou() public view returns (string memory) {
        return datadenascimento;
    }

    function FazerConsulta(string memory _nome, string memory _mensagem) public returns (uint) {
        consultas.push(QuemMeConsulta(_nome, _mensagem));
        uint idConsulta = consultas.length - 1;
        uint random = uint(keccak256(abi.encodePacked(_mensagem)));
        enderecoConsultas[idConsulta] = msg.sender;
        consultasEndereco[msg.sender]++;
        emit NovaConsulta(idConsulta, _nome, _mensagem, random);
        return random;
    }

    function ConsultaAnonima(string memory _mensagem) public {
        FazerConsulta("anonimo", _mensagem);
    }
}
