//
//  SliderTVCell.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class SliderTVCell: UITableViewCell {
    
    @IBOutlet weak var sliderCV: UICollectionView!
    
    
    var sourceArray: [String] = ["slide1.jpg", "slide2.jpg", "slide3.jpg", "slide4.jpg", "slide5.jpg"]
    
    override func layoutIfNeeded() {
        sliderCV.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
    }
    
}


// MARK: - Collection View Data source and Delegate
extension SliderTVCell: UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sliderCVCell", for: indexPath) as! SliderCVCell
        
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
        
        //cell.sliderCellIV.sd_setImage(with: URL(string: imgUrl), placeholderImage: UIImage(named: "slidertemp"))
        cell.sliderCellIV.image = UIImage(named: "sliderTemp")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}

