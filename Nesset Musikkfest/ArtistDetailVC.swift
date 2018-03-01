//
//  ArtistDetailVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 30/03/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class ArtistDetailVC: UIViewController {

    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistDescriptionLabel: UILabel!
    
    var artistImage = UIImage()
    var artistName = String()
    var artistDescription = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artistImageView.image = artistImage
        artistDescriptionLabel.text = artistDescription
        
        artistImageView.layer.cornerRadius = 8.0
        artistImageView.layer.masksToBounds = true
        
        artistDescriptionLabel.sizeToFit()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
