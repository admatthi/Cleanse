//
//  MealsTableViewCell.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/8/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

class MealsTableViewCell: UITableViewCell {

    @IBOutlet weak var foodimage: UIImageView!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var nutrient: UILabel!
    @IBOutlet weak var category: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
