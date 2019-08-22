//
//  ViewController.swift
//  CustomUICollectionViewPart1
//
//  Created by Mohamed on 8/22/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    
    
    @IBOutlet weak var collectionView: UICollectionView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.collectionView.delegate = self
        
        self.collectionView.dataSource = self
        
     
        
    }


}


extension ViewController : UICollectionViewDataSource , UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return PhotoLibrary.Images().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell
    
        
        
        cell?.imageView.image = PhotoLibrary.Images()[indexPath.row]
       
        return cell!
    
    }
    
    
}
