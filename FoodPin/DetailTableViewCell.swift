//
//  DetailTableViewCell.swift
//  FoodPin
//
//  Created by Marcus Brose on 13.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var mapButton: UIButton!
}
