//
//  Quiz.swift
//  Quiz
//
//  Created by Guest User on 14/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import Foundation


class Quiz{
    var questoes : [Pergunta]
    var perguntaTeste : String
    var respostasTeste:[(resposta : String, indice : Int )]
    var qtdAcertos : Int = 0
    init(){
        var questaoTeste = Pergunta()
        questoes = [Pergunta]()
        
        //Respostas corretas possuem indice 0
        perguntaTeste = ("Qual ator de Star Trek: Original Series apareceu também no filme reboot de 2009?")
        respostasTeste = [(resposta : "Leonard Nimoy",indice : 0),(resposta : "Willian Shatner", indice : 1), (resposta :"Nichelle Nichols", indice : 2)]
        questaoTeste.questao = perguntaTeste
        questaoTeste.respostas = respostasTeste
        adicionaPergunta(questaoTeste)
        
        questaoTeste = Pergunta()
        perguntaTeste = ("Quem é o capitão da USS Enterprise na série The next Generation?")
        respostasTeste = [(resposta: "Jean-Luc Picard", indice:0), (resposta:"James T. Kirk", indice:1),(resposta:"Christopher Pike", indice:2)]
        questaoTeste.questao = perguntaTeste
        questaoTeste.respostas = respostasTeste
        adicionaPergunta(questaoTeste)
        
        questaoTeste = Pergunta()
        perguntaTeste = ("Qual a raça do comandante Spock?")
        respostasTeste = [(resposta:"Humano e Vulcan", indice:0),(resposta:"Humano e Klingon", indice:1),(resposta:"Ferengi e Betazoide", indice:2)]
        questaoTeste.questao = perguntaTeste
        questaoTeste.respostas = respostasTeste
        adicionaPergunta(questaoTeste)
        
        questaoTeste = Pergunta()
        perguntaTeste = ("Em qual filme a USS Enterprise precisou voltar no tempo para roubar uma baleia?")
        respostasTeste = [(resposta:"Star Trek: IV: The Voyage Home ", indice:0),(resposta:"Star Trek: Nemesis", indice:1),(resposta:"Star Trek: The Wrath of Khan", indice:2)]
        questaoTeste.questao = perguntaTeste
        questaoTeste.respostas = respostasTeste
        adicionaPergunta(questaoTeste)
        
        questaoTeste = Pergunta()
        perguntaTeste = ("Qual o nome da raça de humanóides cibernéticos organizados como uma coletividade interconectada, como uma coméia?")
        respostasTeste = [(resposta:"Borg", indice:0),(resposta:"Andoriano", indice:1),(resposta:"Klingon", indice:2)]
        questaoTeste.questao = perguntaTeste
        questaoTeste.respostas = respostasTeste
        adicionaPergunta(questaoTeste)
    }
    
    func adicionaPergunta(_ pergunta: Pergunta){
        questoes.append(pergunta)
    }
    
    
    
}
