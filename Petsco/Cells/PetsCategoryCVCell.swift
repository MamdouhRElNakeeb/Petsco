//
//  PetsCategoryCVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class PetsCategoryCVCell: UICollectionViewCell {
    
    @IBOutlet weak var petsCategoryIV: UIImageView!
    @IBOutlet weak var petsCategoryLbl: UILabel!
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()

        petsCategoryIV.frame = CGRect(x: 0, y: 5, width: contentView.frame.width, height: contentView.frame.height * 0.56)
        petsCategoryLbl.frame = CGRect(x: 0, y: contentView.frame.maxY - 26, width: contentView.frame.width, height: 21)
    
        petsCategoryIV.layer.masksToBounds = true
        
        //petsCategoryIV.setMask(with: contentView.frame)
    }
}
