//
//  AccountCreatedViewController.swift
//  Luncher
//
//  Created by song sok alin on 6/23/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class AccountCreatedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        // self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func ContinueButton(_ sender: Any) {
        performSegue(withIdentifier: "SuccessfulSignUpSegue", sender: nil)
    }
}
