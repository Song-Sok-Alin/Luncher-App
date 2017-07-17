//
//  ViewController.swift
//  Luncher
//
//  Created by Student on 5/3/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var sideMenuButton: UIBarButtonItem!
    @IBOutlet weak var TableView: UITableView!
    
    let foodimage = ["magret-de-canard-miel",
                     "fried rice",
                     "pizza",
                     "burger-set",
                     "Frappucino",
                     "Ham-Sandwich",
                     "Koi",
                     "salmon-spaghetti"]
    let foodname =  ["Magret de canard","Seafood Fried rice","Pizza Ham","Zinger box","COFFEE Frappucino","Ham sandwich","Black Tea machiato","Salmon Spaghetti"]
    let ingredient = ["canard, miel, pineapple",
                      "brown rice, shrimp, octopus, corn, egg",
                      "Ham, chesse, mushroom",
                      "French fried, Pepsi, chicken burger",
                      "  ",
                      "Ham, cheese, lettuce, tomato",
                      "  ",
                      "Salmon, spaghetti, tomato sauce"]
    let Price = ["$15", "$5","$20","$6.7","$3.1","$3","$1.6","$4.5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodimage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        
        cell.FoodImage.image = UIImage(named: foodimage[indexPath.row])
        cell.FoodName.text = foodname[indexPath.row]
        cell.Price.text = Price[indexPath.row]
        cell.Ingredient.text = ingredient[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
    func sideMenus () {
        if revealViewController() != nil {
            sideMenuButton.target = revealViewController()
            sideMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 285
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    // MARK: - Prepare to paste data to next ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "MenuSegue") {
            let upcoming: DetailViewController = segue.destination as! DetailViewController
            
            let indexPath = self.TableView.indexPathForSelectedRow!
            
            let foodnameString = foodname[indexPath.row]
            let ingredientString = ingredient[indexPath.row]
            let Foodimage = UIImage(named: foodimage[indexPath.row])
            let priceString = Price[indexPath.row]
            //  let deliveryString = Delivery[indexPath.row]
            // let restoString = "Made by " + Restaurant[indexPath.row]
            
 
            upcoming.foodnameString = foodnameString
            upcoming.ingredientString = ingredientString
            upcoming.foodimage = Foodimage
            upcoming.priceString = priceString
            // upcoming.deliveryString = deliveryString
            //  upcoming.restoString = restoString
            
            self.TableView.deselectRow(at: indexPath, animated: true)
            
        }
 
    }
    
}

