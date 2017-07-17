//
//  DetailViewController.swift
//  Luncher
//
//  Created by song sok alin on 5/28/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class DetailViewController: UIViewController {
    
    var foodimage: UIImage!
    var foodnameString: String!
    var ingredientString: String!
    var priceString: String!
    var deliveryString: String!
    var restoString: String!
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var FoodNameLabel: UILabel!
    @IBOutlet weak var IngredientLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var QtyTextField: UITextField!
    @IBOutlet weak var DeliveryLabel: UILabel!
    @IBOutlet weak var RestoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Image.image = foodimage
        FoodNameLabel.text = foodnameString
        IngredientLabel.text = ingredientString
        PriceLabel.text = priceString
        //  DeliveryLabel.text = deliveryString
        // RestoLabel.text = restoString
        
    }

    @IBAction func DeliveryTimeButton(_ sender: Any) {
    }
    @IBAction func OrderButton(_ sender: Any) {
        if FBSDKAccessToken.current() == nil {
            performSegue(withIdentifier: "showSignUp", sender: nil)
        } else {
            print("user already login")
            performSegue(withIdentifier: "ShowMyCartSegue3", sender: nil)
        }
    }
    @IBAction func AddButton(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
