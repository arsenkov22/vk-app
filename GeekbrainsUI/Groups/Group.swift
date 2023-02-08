//
//  Group.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import Foundation
import UIKit

class Group: NSObject{
    
    var name:String
    var image:UIImage
    init(name:String, image:UIImage) {
        self.name = name
        self.image = image
    }
}


