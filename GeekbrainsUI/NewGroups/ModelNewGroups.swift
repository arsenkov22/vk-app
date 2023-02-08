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
        let group2 = NewGroups(name: "ОГОНЬ", image: UIImage(named: "Image10")!)
        let group3 = NewGroups(name: "Я МАСТЕР", image: UIImage(named: "Image11")!)
        let group4 = NewGroups(name: "Федор Емельяненко", image: UIImage(named: "Image13")!)
        let group5 = NewGroups(name: "Универ спорта", image: UIImage(named: "Image12")!)

        
        newGroups.append(group1)
        newGroups.append(group2)
        newGroups.append(group3)
        newGroups.append(group4)
        newGroups.append(group5)
    }
}
