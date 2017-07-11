//
//  paymentViewController.swift
//  Luncher
//
//  Created by song sok alin on 7/11/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class paymentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let logo = ["visacard","mastercard","wing","paygo","smartluy","emoney","cash_on_deliver"]
    let name = ["Visa Card","Master Card","Wing","PayGo","SmartLuy","eMoney","Cash on Deliver"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell", for: indexPath) as! paymentTableViewCell
        
        cell.logoImageView.image = UIImage(named: logo[indexPath.row])
        cell.companyNameLabel.text = name[indexPath.row]
        
        return cell
    }
}
