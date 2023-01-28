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
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let login = Login.text!
        let password = Password.text!
        if login == "1" && password == "1" { return true
        } else {
            // Создаем контроллер
            let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            // Создаем кнопку для UIAlertController
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            // Добавляем кнопку на UIAlertController
            alert.addAction(action)
            // Показываем UIAlertController
            present(alert, animated: true, completion: nil)
            return false
        }
    }
    
}

