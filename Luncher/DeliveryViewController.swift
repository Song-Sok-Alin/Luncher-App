//
//  DeliveryViewController.swift
//  Luncher
//
//  Created by song sok alin on 7/11/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class DeliveryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func DoneButton(_ sender: Any) {
        performSegue(withIdentifier: "paymentSegue", sender: nil)
    }
}
