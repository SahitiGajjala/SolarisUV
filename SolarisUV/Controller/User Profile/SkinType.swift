//
//  SkinType.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/25/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import Foundation
import UIKit

var SDDequivalentOf1IU: Double = 0.0
var userSkinType: Double = 0.0
var SDD: Double = 0.0
var SDDequivalentOf1000IU: Double = 0.0

class SkinType: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let skinTypes = ["Type1", "Type2", "Type3", "Type4", "Type5", "Type6"]
    
    let skinTypeImages: [UIImage] = [
        
        UIImage(named: "type1")!,
        UIImage(named: "type2")!,
        UIImage(named: "type3")!,
        UIImage(named: "type4")!,
        UIImage(named: "type5")!,
        UIImage(named: "type6")!,
    ]
    
    let skinMED: [Double] = [200, 250, 300, 450, 600, 1000]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: (self.collectionView.frame.size.height)/3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skinTypes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.skinType1Label.text = skinTypes[indexPath.item]
        cell.skinType1ImageView.image = skinTypeImages[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
        
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 2
        let SDD = (skinMED[indexPath.item])/4
        let SDDequivalentOf1000IU = ((SDD*2)/3)
        SDDequivalentOf1IU = (SDDequivalentOf1000IU/1000)
        print("For \(skinTypes[indexPath.item]), \(SDDequivalentOf1IU) UVR is equal to 1 IU")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 0.5
        
    }
    
    
}




