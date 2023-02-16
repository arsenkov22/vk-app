//
//  ModelNewGroups.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import Foundation
import UIKit
class ModelNewGroups{
    var newGroups = [NewGroups]()
    init(){
        setup()
    }
    func setup(){
        let group1 = NewGroups(name: "Вконтакте", image: UIImage(named: "image1")!)
        let group2 = NewGroups(name: "ОГОНЬ", image: UIImage(named: "image10")!)
        let group3 = NewGroups(name: "Я МАСТЕР", image: UIImage(named: "image11")!)
        let group4 = NewGroups(name: "Федор Емельяненко", image: UIImage(named: "image13")!)
        let group5 = NewGroups(name: "Универ спорта", image: UIImage(named: "image12")!)

        
        newGroups.append(group1)
        newGroups.append(group2)
        newGroups.append(group3)
        newGroups.append(group4)
        newGroups.append(group5)
    }
}
