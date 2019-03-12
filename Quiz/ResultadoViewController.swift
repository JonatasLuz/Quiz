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
    
    
    @IBOutlet weak var ImageResultado: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelQtdAcertos.text=("Qtd de Acertos: \(acertos)")
        if acertos < 2{
            ImageResultado.image = UIImage(named: "lose")

        }else{
            ImageResultado.image = UIImage(named: "win")

        }

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
