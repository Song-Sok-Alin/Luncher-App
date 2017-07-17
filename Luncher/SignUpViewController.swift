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

class SignUpViewController: UIViewController, FBSDKLoginButtonDelegate, UITextFieldDelegate  {
   
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
        
        self.emailTextField.delegate = self
        self.PhoneNumberTextField.delegate = self
        self.passwordTextField.delegate = self
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
    
    // Hide keyboard when user touch outside keyboard 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Hide keyboard when user press return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        PhoneNumberTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return (true)
    }
    
}
