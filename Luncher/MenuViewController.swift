//
//  ViewController.swift
//  Luncher
//
//  Created by Student on 5/3/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var TableView: UITableView!
    
    let foodimage = ["pizza", "fried rice"]
    let food = ["Pizza seafood extra cheesy sausage", "Fried rice with octupus and green bean"]
    let Restaurant = ["Pizza Company", "BrewHouse"]
    let Price = ["$15.99   (64000៛)", "$2.99   (12000៛)"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (food.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! MenuTableViewCell
        
        cell.FoodImage.image = UIImage(named: foodimage[indexPath.row])
        cell.FoodName.text = food[indexPath.row]
        cell.Resto.text = "Made by " + Restaurant[indexPath.row]
        cell.Price.text = Price[indexPath.row]
        cell.Delivery.text = "FREE Delivery in Phnom Penh"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
}

