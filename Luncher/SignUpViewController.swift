//
//  SignUpViewController.swift
//  Luncher
//
//  Created by song sok alin on 6/23/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class SignUpViewController: UIViewController, FBSDKLoginButtonDelegate  {
   
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var FBLoginButton: FBSDKLoginButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if FBSDKAccessToken.current() == nil {
            FBLoginButton.readPermissions = ["email", "user_friends", "user_birthday"]
            FBLoginButton.delegate = self
            print("nil")
        } else {
            print("user already login")
            performSegue(withIdentifier: "showAccountActivate", sender: nil)
        }
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("Login Completed")
        if FBSDKAccessToken.current() != nil {
            let profile = FBSDKProfile.current()
            print("Name: ", profile?.name as Any)
            performSegue(withIdentifier: "showAccountActivate", sender: nil)
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Log out...")
    }    
    
    @IBAction func switchButton(_ sender: Any) {
    }
    @IBAction func createAccountButton(_ sender: Any) {
        performSegue(withIdentifier: "showAccountActivate", sender: nil)
    }
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "showLogin", sender: nil)
    }
    
}
