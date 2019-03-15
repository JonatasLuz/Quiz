//
//  IncluirPerguntaViewController.swift
//  Quiz
//
//  Created by Guest User on 14/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class IncluirPerguntaViewController: UIViewController {
    @IBOutlet weak var resposta1TextField: UITextField!
    @IBOutlet weak var perguntaTextField: UITextField!
    @IBOutlet weak var resposta2: UITextField!
    @IBOutlet weak var resposta3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func perguntaAction(_ sender: UITextField) {
        sender.text=""
    }
    
    @IBAction func resposta1Action(_ sender: UITextField) {
        sender.text=""
    }
    
    @IBAction func resposta2Action(_ sender: UITextField) {
        sender.text=""
    }
    
    @IBAction func resposta3Action(_ sender: UITextField) {
        sender.text=""
    }
    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
