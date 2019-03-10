//
//  pergunta.swift
//  Quiz
//
//  Created by Guest User on 09/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import Foundation

class Pergunta{
    var questao : String
    var respostas :[(resposta : String, indice : Int )]
    
    init(){
        questao = ""
        respostas = []
    }
    
    func setPergunta(_ questao : String){
        self.questao = questao
    }
    func setResposta(resp: (resposta: String, indice: Int)){
        respostas.append(resp)
    }
}
