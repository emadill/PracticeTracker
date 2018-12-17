//
//  goalsTableViewCell.swift
//  Practice Tracker
//
//  Created by Evan Madill on 12/16/18.
//  Copyright © 2018 Evan Madill. All rights reserved.
//

import UIKit

class goalsTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var completeButtonStyle: UIButton!
    @IBOutlet weak var unfinishedButtonStyle: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
