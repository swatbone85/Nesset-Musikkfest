//
//  ArtistTBCell.swift
//  Nesset
//
//  Created by Thomas Swatland on 11/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class ArtistTBCell: UITableViewCell {
    
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
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
