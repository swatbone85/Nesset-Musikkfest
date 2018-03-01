//
//  BookletVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 06/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class BookletVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "BOOKLET"

        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "Booklet", ofType: "pdf")!)
        let request = URLRequest(url: path)
        webView.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
