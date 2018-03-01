//
//  OrgVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 09/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class OrgVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    class BoardMember {
        
        var name: String
        var title: String
        var email: String
        
        init(name: String, title: String, email: String) {
            self.name = name
            self.title = title
            self.email = email
            
        }
    }
    
    var boardMembers = [BoardMember]()
    
    //Declaring BoardMember objects
    
    let larsPetterBjerkeset = BoardMember(name: "Lars Petter Bjerkeset",
                                          title: "Festivalsjef",
                                          email: "nessetmusikkfest@gmail.com")
    
    let knutMariusDjupvik = BoardMember(name: "Knut Marius Djupvik",
                                        title: "Styremedlem",
                                        email: "nessetmusikkfest@gmail.com")
    
    let oleChristianHaagenrud = BoardMember(name: "Ole Christian Haagenrud",
                                            title: "Styremedlem",
                                            email: "ole_haagenrud@hotmail.com")
    
    let runeSkjorsaether = BoardMember(name: "Rune Skjørsæther",
                                       title: "Assisterende festivalsjef",
                                       email: "runeskj@gmail.com")
    
    let stigBjarneSilseth = BoardMember(name: "Stig Bjarne Silseth",
                                        title: "Økonomisjef",
                                        email: "nessetmusikkfest@gmail.com")
    
    let josteinHindhammer = BoardMember(name: "Jostein Hindhammer",
                                        title: "Logistikksjef",
                                        email: "nessetmusikkfest.frivillig@gmail.com")
    
    let larsErikAarstad = BoardMember(name: "Lars Erik Aarstad",
                                      title: "Markedsansvarlig",
                                      email: "nessetmusikkfest.sponsor@gmail.com")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "ORG & KONTAKT"
        
        boardMembers = [larsPetterBjerkeset, runeSkjorsaether, knutMariusDjupvik, oleChristianHaagenrud, stigBjarneSilseth, josteinHindhammer, larsErikAarstad]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return boardMembers.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrgTBCell
        
        cell.nameLabel.text = boardMembers[indexPath.row].name
        cell.titleLabel.text = boardMembers[indexPath.row].title
        cell.emailLabel.text = boardMembers[indexPath.row].email
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: "mailto:\(boardMembers[indexPath.row].email)") {
            UIApplication.shared.open(url)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}
