//
//  CategoriesVC.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let labelTitle = UILabel()
        labelTitle.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        labelTitle.text = "Categories"
        labelTitle.textAlignment = .center
        labelTitle.textColor = UIColor.white
        
        self.tabBarController?.navigationItem.titleView = labelTitle
    }
    
}
