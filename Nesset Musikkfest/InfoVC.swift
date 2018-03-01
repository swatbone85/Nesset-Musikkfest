//
//  InfoVC.swift
//  Nesset Musikkfest
//
//  Created by Thomas Swatland on 17/03/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit
import SafariServices

class InfoVC: UIViewController {

    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var ticketButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    
    var detailImage = UIImage()
    var headline = String()
    var detail = String()
    var ticketUrl = URL(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = detailImage
        detailLabel.text = detail
        detailLabel.sizeToFit()
        
        detailImageView.layer.cornerRadius = 8.0
        detailImageView.layer.masksToBounds = true
        
        ticketButton.layer.borderColor = UIColor.blue.cgColor
        ticketButton.layer.borderWidth = 2.0
        ticketButton.layer.cornerRadius = 15.0
        ticketButton.sizeToFit()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func ticketButtonPressed(_ sender: Any) {
        
        let webVC = SFSafariViewController(url: ticketUrl!)
        present(webVC, animated: true, completion: nil)
        
        
    }

}
