//
//  ModelUser.swift
//  GeekbrainsUI
//
//  Created by Админ on 04.02.2023.
//

import Foundation
import UIKit
class ModelUser{
    var users = [User]()
    init(){
        setup()
    }
    func setup(){
        let man1 = User(name: "Федор Арсенков", city: "СПб", image: UIImage(named: "image8")!, gender: .male)
        let man2 = User(name: "Паша Чернышев", city: "Банкок", image: UIImage(named: "image7")!, gender: .male)
        let man3 = User(name: "Валя Родченков", city: "СПб", image: UIImage(named: "image9")!, gender: .male)
        let women1 = User(name: "Лолита Чернышева", city: "Банкок", image: UIImage(named: "image2")!, gender: .female)

        
        users.append(man1)
        users.append(man2)
        users.append(man3)
        users.append(women1)
    }
}
