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
    
    func verificaTextField(_ conteudoTexField : String)-> Bool{
        return conteudoTexField == "Pergunta" || conteudoTexField == "Resposta Correta" || conteudoTexField == "Resposta"
    }
    
    func verificaTextFieldVazio(_ textField : String) -> Bool{
        return textField == ""
    }
    
    func cadastraPergunta(_ pergunta : String, _ resposta1 : String, _ resposta2: String, _ resposta3 : String){
        let questaoCadastro : Pergunta = Pergunta()
        questaoCadastro.setPergunta(pergunta)
        questaoCadastro.setResposta(resp: (resposta1,0))
        questaoCadastro.setResposta(resp: (resposta2,1))
        questaoCadastro.setResposta(resp: (resposta3,2))
        quiz.adicionaPergunta(questaoCadastro)
        print("Qtd de questoes \(quiz.questoes.count)")
    }
    
}
