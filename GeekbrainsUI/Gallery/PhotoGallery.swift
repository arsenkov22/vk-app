//
//  PhotoGallery.swift
//  GeekbrainsUI
//
//  Created by Админ on 16.02.2023.
//

import Foundation
import UIKit

class PhotoGallery{
    
    var images = [UIImage]()
    init(){
        setupGallery()
    }
    
    
    func setupGallery(){
        for i in 0...7{
            guard let image = UIImage(named:"image\(i)") else { return }
            images.append(image)
        }
    }
}

