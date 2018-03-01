//
//  TicketVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 04/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit
import WebKit

class SocialVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.instagram.com/nessetmusikkfest/")
        let request = URLRequest(url: url!)
        webView.load(request)
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
