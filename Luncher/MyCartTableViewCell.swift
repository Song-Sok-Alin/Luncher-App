//
//  MyCartTableViewCell.swift
//  Luncher
//
//  Created by song sok alin on 7/6/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MyCartTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var restoLabel: UILabel!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var deliveryLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var qtyTextField: UITextField!
    
    // Hide keyboard when user touch outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.contentView.endEditing(true)
    }
    
    // Hide keyboard when user press return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        qtyTextField.resignFirstResponder()
        return true
    }
    
}
