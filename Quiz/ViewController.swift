//
//  ViewController.swift
//  Quiz
//
//  Created by Guest User on 10/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoSobre: UIButton!
    @IBOutlet weak var Iniciar: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
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
            performSegue(withIdentifier: "segueSobre", sender: self)
    }
    
    @IBAction func incuirAction(_ sender: Any) {
        performSegue(withIdentifier: "segueIncluir", sender: self)
    }
    
}

