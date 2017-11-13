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
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let labelTitle = UILabel()
        labelTitle.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        labelTitle.text = "Home"
        labelTitle.textAlignment = .center
        labelTitle.textColor = UIColor.white
        
        self.tabBarController?.navigationItem.titleView = labelTitle
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 160
        case 1:
            return 100
        default:
            return 140
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "sliderTVCell", for: indexPath) as! SliderTVCell
            cell.setNeedsLayout()
            cell.layoutIfNeeded()
            break
            
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "petsCategoryTVCell", for: indexPath) as! PetsCategoryTVCell
            
            cell.setNeedsLayout()
            cell.layoutIfNeeded()
            
            break
        default:
            break
        }
        return cell
    }
    
}

