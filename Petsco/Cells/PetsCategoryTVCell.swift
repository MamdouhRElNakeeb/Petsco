//
//  PetsCategoryTVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class PetsCategoryTVCell: UITableViewCell {

    @IBOutlet weak var backgroundV: UIView!
    @IBOutlet weak var petsCategoryCV: UICollectionView!
    
    var sourceArray: [String] = ["Dog", "Cat", "Fish", "Bird", "Small Pet", "Reptile"]
    
    override func layoutIfNeeded() {
        
        backgroundV.dropShadow2()
    }

}

// MARK: - Collection View Data source and Delegate
extension PetsCategoryTVCell: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sourceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "petsCategoryCVCell", for: indexPath) as! PetsCategoryCVCell
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
        //cell.sliderCellIV.sd_setImage(with: URL(string: imgUrl), placeholderImage: UIImage(named: "slidertemp"))
        
        cell.petsCategoryIV.image = UIImage(named: "sale_icon")
        cell.petsCategoryLbl.text = sourceArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}
