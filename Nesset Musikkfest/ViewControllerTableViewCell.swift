//
//  ViewControllerTableViewCell.swift
//  Nesset Musikkfest
//
//  Created by Thomas Swatland on 17/03/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var background_Image: UIImageView!
    @IBOutlet weak var backgroundCardView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
