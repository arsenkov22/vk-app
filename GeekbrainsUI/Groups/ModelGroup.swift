//
//  ModelGroup.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import Foundation
import UIKit
class ModelGroup{
    var groups = [Group]()
    init(){
        setup()
    }
    func setup(){
        let group1 = Group(name: "Вконтакте", image: UIImage(named: "image1")!)
        let group2 = Group(name: "ОГОНЬ", image: UIImage(named: "image10")!)
        let group3 = Group(name: "Я МАСТЕР", image: UIImage(named: "image11")!)
        let group4 = Group(name: "Федор Емельяненко", image: UIImage(named: "image13")!)
        let group5 = Group(name: "Универ спорта", image: UIImage(named: "image12")!)

        
        groups.append(group1)
        groups.append(group2)
        groups.append(group3)
        groups.append(group4)
        groups.append(group5)
    }
}
