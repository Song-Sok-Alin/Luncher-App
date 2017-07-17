//
//  MenuTableViewCell.swift
//  Luncher
//
//  Created by song sok alin on 5/24/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var FoodImage: UIImageView!
    @IBOutlet weak var FoodName: UILabel!
    // @IBOutlet weak var Resto: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var Ingredient: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
