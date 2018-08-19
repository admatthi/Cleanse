//
//  ApprovedTableViewCell.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/18/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

class ApprovedTableViewCell: UITableViewCell {

    @IBOutlet weak var checkimage: UIImageView!
    @IBOutlet weak var servings: UILabel!
    @IBOutlet weak var food: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
