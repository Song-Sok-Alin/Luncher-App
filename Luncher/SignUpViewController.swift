//
//  SignUpViewController.swift
//  Luncher
//
//  Created by song sok alin on 6/23/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchButton(_ sender: Any) {
    }
    @IBAction func createAccountButton(_ sender: Any) {
        performSegue(withIdentifier: "showAccountActivate", sender: nil)
    }
    @IBAction func SignUpWithFBButton(_ sender: Any) {
    }
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "showLogin", sender: nil)
    }
    
}
