//
//  incluirTableViewController.swift
//  Quiz
//
//  Created by Guest User on 12/03/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class incluirTableViewController: UITableViewController {
    
    @IBOutlet var incluirPerguntaButton: UITableView!
    @IBOutlet weak var voltarMenu: UIBarButtonItem!
    var quiz : QuizViewModel!
    var indexPath = -1
    override func viewDidLoad() {
        quiz.questaoAtual = 0
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
  

    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quiz.questoes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizCell", for: indexPath)
        
        //cell.textLabel?.text = quiz.questoes[indexPath.row].questao
        
        if let perguntaButton = cell.viewWithTag(1000) as? UIButton{
            perguntaButton.setTitle(quiz.questoes[quiz.questaoAtual].questao, for:[])
            quiz.proximaPergunta()
        }
        return cell
    }

    @IBAction func voltarMenuAction(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ViewController = storyBoard.instantiateViewController(withIdentifier: "menu") as! ViewController
        ViewController.quiz = quiz
        self.present(ViewController, animated: true, completion: nil)
    }
    @IBAction func incluirPerguntaAction(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let IncluirPerguntaViewController = storyBoard.instantiateViewController(withIdentifier: "IncluirEditar") as! IncluirPerguntaViewController
        IncluirPerguntaViewController.quiz = quiz
        self.present(IncluirPerguntaViewController, animated: true, completion: nil)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
