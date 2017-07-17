//
//  DeliveryViewController.swift
//  Luncher
//
//  Created by song sok alin on 7/11/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class DeliveryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phonenumberTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameTextField.delegate = self
        self.addressTextField.delegate = self
        self.phonenumberTextField.delegate = self
    }
    
    @IBAction func DoneButton(_ sender: Any) {
        performSegue(withIdentifier: "paymentSegue", sender: nil)
    }
    
    // Hide keyboard when user touch outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Hide keyboard when user press return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        addressTextField.resignFirstResponder()
        phonenumberTextField.resignFirstResponder()
        return true
    }
}


