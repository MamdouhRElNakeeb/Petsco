//
//  PromotionsTVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/14/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class PromotionsTVCell: UITableViewCell {

    @IBOutlet weak var promo1IV: UIImageView!
    @IBOutlet weak var promo2IV: UIImageView!
    
    override func layoutIfNeeded() {
        
        promo1IV.frame = CGRect(x: 0, y: 0, width: contentView.frame.width / 2, height: contentView.frame.height)
        
        promo2IV.frame = CGRect(x: contentView.frame.width / 2, y: 0, width: contentView.frame.width / 2, height: contentView.frame.height)
    }
    
}
