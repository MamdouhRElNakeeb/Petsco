//
//  SliderCVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class SliderCVCell: UICollectionViewCell {
    @IBOutlet weak var sliderCellIV: UIImageView!
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        sliderCellIV.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
        
    }
}
