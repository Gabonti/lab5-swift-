//
//  ViewController.swift
//  lab5
//
//  Created by Gabdilkarim Ata on 31.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func toSecondVC(_ sender: Any) {
        // Mark - using StoryBoard
//        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") {
//            navigationController?.pushViewController(secondVC, animated: true)
//        }
        
        // Mark - using segue
        self.performSegue(withIdentifier: "screen", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "screen" {
            if let secondVC = segue.destination as? secondViewController {
                secondVC.message = textField.text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

