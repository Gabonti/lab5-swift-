//
//  secondViewController.swift
//  lab5
//
//  Created by Gabdilkarim Ata on 31.03.2024.
//

import UIKit

class secondViewController: UIViewController {
    
    var message: String?
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let message = message {
            messageLabel.text = message
        }
        // Do any additional setup after loading the view.
    }

}
