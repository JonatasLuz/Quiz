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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC : ResultadoViewController = segue.destination as! ResultadoViewController
        destVC.acertos = quiz.qtdAcertos
    }
    
    
    @IBOutlet weak var PerguntaAtualView: UILabel!
    var quiz : QuizViewModel!
    
    func mostraQuestao(_ questao : Pergunta){
        let questaoAtual : Pergunta = quiz.embaralhaRespostas(questao)
        pergunta.text=(questaoAtual.questao)
        resposta1.setTitle(questaoAtual.respostas[0].resposta, for:[])
        resposta1.tag = questaoAtual.respostas[0].indice
        resposta2.setTitle(questaoAtual.respostas[1].resposta, for: [])
        resposta2.tag = questaoAtual.respostas[1].indice
        resposta3.setTitle(questaoAtual.respostas[2].resposta, for: [])
        resposta3.tag = questaoAtual.respostas[2].indice
        PerguntaAtualView.text=("Pergunta \(quiz.questaoAtual + 1) de \(quiz.questoes.count)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Chama as perguntas a primeira vez
        quiz.questaoAtual = 0
        mostraQuestao(quiz.questoes[quiz.questaoAtual])
        quiz.proximaPergunta()
    }

    
    @IBAction func respostaAction(_ sender: UIButton) {
        if(quiz.questaoAtual != quiz.questoes.count){
            quiz.verificaResposta(sender.tag)
            mostraQuestao(quiz.questoes[quiz.questaoAtual])
            quiz.proximaPergunta()
        }else{
            quiz.verificaResposta(sender.tag)
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
