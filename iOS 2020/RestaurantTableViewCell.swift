//
//  RestaurantTableViewCell.swift
//  iOS 2020
//
//  Created by Christian Calderón on 12/03/20.
//  Copyright © 2020 Christian Calderón. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var resLogo: UIImageView!
    @IBOutlet weak var lblWaitlist: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
