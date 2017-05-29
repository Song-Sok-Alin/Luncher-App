//
//  ViewController.swift
//  Luncher
//
//  Created by Student on 5/3/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableView: UITableView!
    
    let foodimage = ["pizza", "fried rice"]
    let food = ["Pizza seafood extra cheesy sausage", "Fried rice with octupus and green bean"]
    let ingredient = ["Shrimp, crab, onion, oyster, mushroom, sausage, extra cheese",
                      "Rice, octopus, green bean, egg, olive oil, cucumber"]
    let Restaurant = ["Pizza Company", "BrewHouse"]
    let Price = ["$15.99   (64000៛)", "$2.99   (12000៛)"]
    let Delivery = ["FREE Delivery in Phnom Penh", "FREE Delivery in Phnom Penh"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (food.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! MenuTableViewCell
        
        cell.FoodImage.image = UIImage(named: foodimage[indexPath.row])
        cell.FoodName.text = food[indexPath.row]
        cell.Resto.text = "Made by " + Restaurant[indexPath.row]
        cell.Price.text = Price[indexPath.row]
        cell.Delivery.text = Delivery[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
    // MARK: - Prepare to paste data to next ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "MenuSegue") {
            let upcoming: DetailViewController = segue.destination as! DetailViewController
            
            let indexPath = self.TableView.indexPathForSelectedRow!
            
            let foodnameString = food[indexPath.row]
            let ingredientString = ingredient[indexPath.row]
            let Foodimage = UIImage(named: foodimage[indexPath.row])
            let priceString = Price[indexPath.row]
            let deliveryString = Delivery[indexPath.row]
            let restoString = "Made by " + Restaurant[indexPath.row]
            
 
            upcoming.foodnameString = foodnameString
            upcoming.ingredientString = ingredientString
            upcoming.foodimage = Foodimage
            upcoming.priceString = priceString
            upcoming.deliveryString = deliveryString
            upcoming.restoString = restoString
            
            self.TableView.deselectRow(at: indexPath, animated: true)
            
        }
 
    }
    
}

