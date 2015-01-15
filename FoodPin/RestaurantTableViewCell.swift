//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by Marcus Brose on 13.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
}
