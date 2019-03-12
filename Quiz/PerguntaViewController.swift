//
//  PerguntaViewController.swift
//  Quiz
//
//  Created by Guest User on 10/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class PerguntaViewController: UIViewController {

    @IBOutlet weak var pergunta: UITextView!
    
    @IBOutlet weak var resposta1: UIButton!
    @IBOutlet weak var resposta2: UIButton!
    
    @IBOutlet weak var resposta3: UIButton!
    
    @IBOutlet weak var PerguntaAtualView: UILabel!
    var questoes : [Pergunta] = []
    let perguntasTeste : [String] = ["Qual ator de Star Trek: Original Series apareceu também no filme reboot de 2009?","Quem é o capião da USS Enterprise na série The Next Generation?","Qual a raça do comandante Spock?"]
    var respostasTeste:[(resposta : String, indice : Int )] = [(resposta : "Leonard Nimoy",indice : 0),(resposta : "Willian Shatner", indice : 1), (resposta :"Nichelle Nichols", indice : 2),(resposta: "Jean-Luc Picard", indice:0), (resposta:"James T. Kirk", indice:1),(resposta:"Christopher Pike", indice:2),(resposta:"Humano e Vulcan", indice:0),(resposta:"Humano e Klingon", indice:1),(resposta:"Ferengi e Betazoide", indice:2)]
    
    var qtdAcertos : Int = 0

     var questaoAtual : Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        var contador : Int = 0
        for carregaArrayPergunta in 0 ... 2{
            let questao = Pergunta()
            questao.setPergunta(perguntasTeste[carregaArrayPergunta])
            for _ in 0 ... 2{
                questao.setResposta(resp: respostasTeste[contador])
                contador += 1
            }
            questoes.append(questao)
            
        }

        
       
        
        PerguntaAtualView.text=("Pergunta \(questaoAtual) de \(questoes.count)")
        pergunta.text=(questoes[0].questao)
        resposta1.setTitle(questoes[0].respostas[0].resposta, for:[])
        resposta1.tag = questoes[0].respostas[0].indice
        resposta2.setTitle(questoes[0].respostas[1].resposta, for: [])
        resposta2.tag = questoes[0].respostas[1].indice
        resposta3.setTitle(questoes[0].respostas[2].resposta, for: [])
        resposta2.tag = questoes[0].respostas[2].indice
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC : ResultadoViewController = segue.destination as! ResultadoViewController
        destVC.acertos = qtdAcertos
    }

    
    @IBAction func respostaAction(_ sender: UIButton) {
        if sender.isEqual(resposta1) {
            if resposta1.tag == 0{
                qtdAcertos += 1
            }
        }else if sender.isEqual(resposta2){
            if resposta2.tag == 0{
                qtdAcertos += 1
            }
        }else if sender.isEqual(resposta3){
            if resposta2.tag == 0{
                qtdAcertos += 1
            }
        }
        if questaoAtual != questoes.count{
            pergunta.text=(questoes[questaoAtual].questao)
            resposta1.setTitle(questoes[questaoAtual].respostas[0].resposta, for:[])
            resposta1.tag = questoes[questaoAtual].respostas[0].indice
            resposta2.setTitle(questoes[questaoAtual].respostas[1].resposta, for: [])
            resposta2.tag = questoes[questaoAtual].respostas[1].indice
            resposta3.setTitle(questoes[questaoAtual].respostas[2].resposta, for: [])
            resposta3.tag = questoes[questaoAtual].respostas[1].indice
            questaoAtual += 1
            PerguntaAtualView.text=("Pergunta \(questaoAtual) de \(questoes.count)")
        }
            else{
                var tipoImagem : String = "Lose"
                if qtdAcertos >= 2{
                    tipoImagem = "Win"
                }
                performSegue(withIdentifier: "telaResultado", sender: self)
            }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
