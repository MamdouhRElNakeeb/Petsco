//
//  RegisterVC.swift
//  Petsco
//
//  Created by Mamdouh El Nakeeb on 11/13/17.
//  Copyright © 2017 Petsco. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var fbSignupBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fbSignupBtn.layer.cornerRadius = fbSignupBtn.frame.height / 2
        signupBtn.layer.cornerRadius = signupBtn.frame.height / 2
    }

    @IBAction func signupBtnClick(_ sender: UIButton) {
        
    }
    
    @IBAction func linkToLoginClick(_ sender: UIButton) {
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "loginVC") as? LoginVC
        self.present(loginVC!, animated: true, completion: nil)
    }
}
