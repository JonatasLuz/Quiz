//
//  File.swift
//  Quiz
//
//  Created by Guest User on 14/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import Foundation

class QuizViewModel{
    let quiz : Quiz = Quiz()
    var qtdAcertos : Int = 0
    
    var questaoAtual : Int = 0
    
    var questoes : [Pergunta] {
        return quiz.questoes
    }
    
    var qAtual:  Int  {
        return questaoAtual
    }
    
    var ultimaQuestao : Bool{
        return qAtual == quiz.questoes.count - 1
    }
    
    func embaralhaRespostas(_ questao : Pergunta) -> Pergunta{
        questao.respostas.shuffle()
        return questao
    }
    
    func proximaPergunta(){
        if(questaoAtual < quiz.questoes.count){
            questaoAtual += 1
        }
    }
    
    func verificaResposta(_ valor: Int){
        if valor == 0{
            qtdAcertos += 1
        }
    }
    
    init (){
        
    }
    
}
