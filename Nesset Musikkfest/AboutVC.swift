//
//  AboutVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 23/03/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit
import SafariServices

class AboutVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var aboutArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutArray = ["Billetter", "Booklet", "Organisasjon og kontakt", "Samarbeidspartnere"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return aboutArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AboutTableViewCell
        
        cell.aboutLabel.text = aboutArray[indexPath.row]
        
        cell.backgroundCardView.layer.cornerRadius = 8.0
        cell.backgroundCardView.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let url = URL(string: "https://nessetmusikkfest.hoopla.no/sales")
        let webVC = SFSafariViewController(url: url!)
        
        if indexPath.row == 0 {
            
          present(webVC, animated: true, completion: nil)
            
        } else if indexPath.row == 1 {
            
            performSegue(withIdentifier: "bookletSegue", sender: self)
            
        } else if indexPath.row == 2 {
            
            performSegue(withIdentifier: "orgSegue", sender: self)
            
        } else if indexPath.row == 3 {
            
            performSegue(withIdentifier: "partnerSegue", sender: self)
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
