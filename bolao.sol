// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18 < 0.9.0;

/*
Contrato De aposta
*/
contract Bolao{

    //Variavel pra guarda os endereco de wallet dos jogadores.
    address payable[] private jogadores;

    //Variavel que vai guarda o carteira do dono do bolao
    address private dono;


    //funcao "pagavel" a ser usado pelo apostador
    function apostar() public payable {
        //assim que uma aposta e feita garda o endereco da wallet do jogador.
        jogadores.push(payable(msg.sender));
    }

    //Funcao getJogador() retorna os endereco de carteira dos apostador.
    function getJogadores()public view returns (address payable[] memory ){
        return jogadores;
    }

    // Funcao retorna o valor total em custodia no momento
    function getSaldo() public view  returns(uint){
       return (payable(address(this))).balance; 
    } 
}


