//
//  RestoViewController.swift
//  Luncher
//
//  Created by song sok alin on 5/29/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class RestoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let restoName = ["KFC", "BURGER KING", "The Pizza Company", "Domino's Pizza", "Bonchon"]
    let restoOpen = ["Open hours: Mon - Sun, 7am - 10pm",]
    let restoLogo = ["KFC", "burger king", "the pizza company", "dominos pizza", "bonchon"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return (restoName.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! RestoTableViewCell
        
        cell.RestoName.text = restoName[indexPath.row]
        cell.RestoOpen.text = "Open hours: Mon - Sun, 7am - 10pm"
        cell.RestoLogo.image = UIImage(named: restoLogo[indexPath.row])
        
        return cell
    }
}
