//
//  ViewController.swift
//  SecondHW
//
//  Created by Dmitry on 02.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logInButtonDidTap(_ sender: Any) {
        if numberTextField.text?.prefix(4) == "8908", passwordTextField.text == password {
            guard let tableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else { return }
            navigationController?.pushViewController(tableViewController, animated: true)
        } else {
            guard let mistakeViewController = storyboard?.instantiateViewController(withIdentifier: "MistakeViewController") as? MistakeViewController else { return }
            present(mistakeViewController, animated: true)
        }
        
        
        
    }

}

