//
//  RestoTableViewCell.swift
//  Luncher
//
//  Created by song sok alin on 5/29/17.
//  Copyright © 2017 CKCC. All rights reserved.
//

import UIKit

class RestoTableViewCell: UITableViewCell {

    @IBOutlet weak var RestoLogo: UIImageView!
    @IBOutlet weak var RestoName: UILabel!
    @IBOutlet weak var RestoOpen: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
