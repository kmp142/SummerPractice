//
//  MistakeViewController.swift
//  SecondHW
//
//  Created by Dmitry on 02.07.2023.
//

import UIKit

class MistakeViewController: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    func changeErrorMessage(str: String?) {
        errorLabel?.text = str
    }
}
