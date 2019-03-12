//
//  ViewController.swift
//  Quiz
//
//  Created by Guest User on 10/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var questoes : [Pergunta] = []

    @IBOutlet weak var botaoSobre: UIButton!
    @IBOutlet weak var Iniciar: UIButton!
    var perguntasTeste : [String] = ["Qual ator de Star Trek: Original Series apareceu também no filme reboot de 2009?","Quem é o capião da USS Enterprise na série The Next Generation?","Qual a raça do comandante Spock?"]
    var respostasTeste:[(resposta : String, indice : Int )] = [(resposta : "Leonard Nimoy",indice : 0),(resposta : "Willian Shatner", indice : 1), (resposta :"Nichelle Nichols", indice : 2),(resposta: "Jean-Luc Picard", indice:0), (resposta:"James T. Kirk", indice:1),(resposta:"Christopher Pike", indice:2),(resposta:"Humano e Vulcan", indice:0),(resposta:"Humano e Klingon", indice:1),(resposta:"Ferengi e Betazoide", indice:2)]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueQuiz" || segue.identifier == "segueIncluir"{
            if segue.identifier == "segueIncluir"{
                let destVC : incluirTableViewController = segue.destination as! incluirTableViewController
                destVC.questoes = questoes
                
            }else{
            let destVC : PerguntaViewController = segue.destination as! PerguntaViewController
                destVC.questoes = questoes
            }
        }
    }

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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func iniciaQuizAction(_ sender: UIButton) {
        if sender.isEqual(Iniciar){
            performSegue(withIdentifier: "segueQuiz", sender: self)
        }
    }
    
    @IBAction func sobreAction(_ sender: UIButton) {
        if sender.isEqual(botaoSobre){
            performSegue(withIdentifier: "segueSobre", sender: self)
        }
    }
    
    @IBAction func incuirAction(_ sender: Any) {
        performSegue(withIdentifier: "segueIncluir", sender: self)
    }
    
}

