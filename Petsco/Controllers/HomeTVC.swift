//
//  ViewController.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 10/18/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class HomeTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let labelTitle = UILabel()
        labelTitle.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        labelTitle.text = "Home"
        labelTitle.textAlignment = .center
        labelTitle.textColor = UIColor.white
        self.parent?.navigationItem.titleView = labelTitle
        
        
        print("home vc")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

