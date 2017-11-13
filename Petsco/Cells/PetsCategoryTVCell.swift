//
//  PetsCategoryTVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class PetsCategoryTVCell: UITableViewCell {

    @IBOutlet weak var petsCategoryCV: UICollectionView!
    
    var sourceArray: [String] = ["Dog", "Cat", "Fish", "Bird", "Small Pet", "Reptile"]
    
    override func layoutIfNeeded() {
        //petsCategoryCV.frame = CGRect(x: 8, y: 10, width: contentView.frame.width - 16, height: contentView.frame.height - 20)
        
        petsCategoryCV.dropShadow2()
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
        
        cell.petsCategoryIV.image = UIImage(named: "cart_icon")
        cell.petsCategoryLbl.text = sourceArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}
