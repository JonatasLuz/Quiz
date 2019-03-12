//
//  ResultadoViewController.swift
//  Quiz
//
//  Created by ALUNO on 11/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var acertos : Int = 0
    @IBOutlet weak var labelQtdAcertos: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelQtdAcertos.text=("Qtd de Acertos: \(acertos)")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
