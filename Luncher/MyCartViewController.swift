//
//  MyCartViewController.swift
//  Luncher
//
//  Created by song sok alin on 7/6/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MyCartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1", for: indexPath) as! MyCartTableViewCell
        return cell
    }
    @IBAction func CheckoutButton(_ sender: Any) {
        performSegue(withIdentifier: "showDeliverySegue", sender: nil)
    }
    
}
