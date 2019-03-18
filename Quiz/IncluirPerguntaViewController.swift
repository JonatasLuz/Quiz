//
//  IncluirPerguntaViewController.swift
//  Quiz
//
//  Created by Guest User on 14/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class IncluirPerguntaViewController: UIViewController {
    
    var quiz: QuizViewModel!
    
    @IBOutlet weak var perguntaTextField: UITextField!

    @IBOutlet weak var salvarPergunta: UIBarButtonItem!
    @IBOutlet weak var voltarButton: UIBarButtonItem!
    @IBOutlet weak var resposta1TextField: UITextField!
    @IBOutlet weak var resposta2: UITextField!
    @IBOutlet weak var resposta3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func perguntaAction(_ sender: UITextField) {
        let verificaTexto = quiz.verificaTextField(sender.text!)
        if verificaTexto == true{
            perguntaTextField.text=""
            perguntaTextField.textColor = UIColor.black
        }
    }
    
    
  

    @IBAction func resposta1Action(_ sender: UITextField) {
        let verificaTexto = quiz.verificaTextField(sender.text!)
        if verificaTexto == true{
            resposta1TextField.text=""
            resposta1TextField.textColor = UIColor.black
        }
    }
    

    
    
    
    @IBAction func resposta2Action(_ sender: UITextField) {
        let verificaTexto = quiz.verificaTextField(sender.text!)
        if verificaTexto == true{
            resposta2.text=""
            resposta2.textColor = UIColor.black
        }
    }
    
    @IBAction func resposta3Action(_ sender: UITextField) {
        let verificaTexto = quiz.verificaTextField(sender.text!)
        if verificaTexto == true{
            resposta3.text=""
            resposta3.textColor = UIColor.black
        }
    }
    @IBAction func voltarAction(_ sender: UIBarButtonItem) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let incluirTableViewController = storyBoard.instantiateViewController(withIdentifier: "Incluir") as! incluirTableViewController
        incluirTableViewController.quiz = quiz
        self.present(incluirTableViewController, animated: true, completion: nil)
    }
    
    @IBAction func salvarPerguntaAction(_ sender: UIBarButtonItem) {
        if ((perguntaTextField.text?.isEmpty)! || (resposta1TextField.text?.isEmpty)! || (resposta2.text?.isEmpty)! || (resposta3.text?.isEmpty)!){
            print("Nulo")
        }else{
            quiz.cadastraPergunta(perguntaTextField.text!, resposta1TextField.text!, resposta2.text!, resposta3.text!)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let incluirTableViewController = storyBoard.instantiateViewController(withIdentifier: "Incluir") as! incluirTableViewController
            quiz.questaoAtual = 0
            incluirTableViewController.quiz = quiz
            self.present(incluirTableViewController, animated: true, completion: nil)
        }
    }
    
    
    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
