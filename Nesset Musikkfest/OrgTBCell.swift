//
//  OrgTBCell.swift
//  Nesset
//
//  Created by Thomas Swatland on 10/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class OrgTBCell: UITableViewCell {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var backgroundCard: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundCard.layer.cornerRadius = 8.0
        backgroundCard.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
