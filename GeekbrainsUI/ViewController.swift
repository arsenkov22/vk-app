//
//  ViewController.swift
//  GeekbrainsUI
//
//  Created by Админ on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func Registration(_ sender: Any) {
        guard let loginInput = Login.text,
              let passWordInput = Password.text else {
            return
        }
        print(loginInput + " " + passWordInput)
    }
}

