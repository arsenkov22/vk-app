//
//  GalleryViewController.swift
//  GeekbrainsUI
//
//  Created by Админ on 16.02.2023.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var collection: UICollectionView!
    
    let identifier = "PhotoCollectionViewCell"
    let photoGallery = PhotoGallery()
    
    let countCells = 3
    let offset:CGFloat = 2.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        
        collection.register(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifier)
    }
    
}
extension GalleryViewController:UICollectionViewDataSource,UIScrollViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! PhotoCollectionViewCell
        cell.photoView.image = photoGallery.images[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collection.frame
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCell = widthCell
        
        let spacing = CGFloat((countCells + 1)) * offset / CGFloat(countCells)
        return CGSize(width:widthCell - spacing, height: heightCell - (offset * 2))
    }
   
 
}
    

