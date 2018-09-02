//
//  ExerciseTableViewCell.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/1/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var repstitle: UILabel!
    @IBOutlet weak var exercisetitle: UILabel!
    @IBOutlet weak var circuitminute: UILabel!
    @IBOutlet weak var circuitexercise: UILabel!
    @IBOutlet weak var circuititle: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
