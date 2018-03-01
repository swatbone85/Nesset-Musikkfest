//
//  PartnerCollectionView.swift
//  Nesset
//
//  Created by Thomas Swatland on 06/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit
import SafariServices

class PartnerCollectionView: UICollectionViewController {

    var partnerArray = [UIImage]()
    var linkArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SAMARBEIDSPARTNERE"
        
        partnerArray = [#imageLiteral(resourceName: "nessetSpareBank"), #imageLiteral(resourceName: "langset"), #imageLiteral(resourceName: "nessetKommune"), #imageLiteral(resourceName: "kulturRådet"), #imageLiteral(resourceName: "fureStiftelsen"), #imageLiteral(resourceName: "nessetKraft"), #imageLiteral(resourceName: "okonomiSenteret"), #imageLiteral(resourceName: "suComAS"), #imageLiteral(resourceName: "vorpenes"), #imageLiteral(resourceName: "hbeFoto"), #imageLiteral(resourceName: "nardoBil"), #imageLiteral(resourceName: "tpp"), #imageLiteral(resourceName: "norskFolkeHjelp"), #imageLiteral(resourceName: "bunnpris"), #imageLiteral(resourceName: "eiraWater"), #imageLiteral(resourceName: "humaneDesignLabo"), #imageLiteral(resourceName: "eidsvagRor"), #imageLiteral(resourceName: "bdo"), #imageLiteral(resourceName: "fylkesKommune"), #imageLiteral(resourceName: "kulturRabatt")]
        
        linkArray = ["http://www.nessetbanken.no/", "http://www.langset.no/", "http://www.nesset.kommune.no/", "http://www.kulturradet.no/", "http://www.furestiftelsen.no", "http://www.nessetkraft.no/", "http://www.okonomisenteret.no/Kontakt/Nesset.aspx", "http://www.sucom.no/", "http://www.vorpenes.no/", "https://www.facebook.com/hbe.foto/","https://nardobil.no/kontakt-oss/molde", "http://www.tppartner.no/", "https://www.folkehjelp.no/nesset", "https://bunnpris.no/butikker/bunnpris-eidsvag", "http://www.eirawater.no/", "https://www.humanedesignlabo.com/", "http://www.eidsvagror.no/", "https://www.bdo.no/nb-no/kontorer/molde", "https://mrfylke.no/Tenesteomraade/Kultur/Kulturrabatt", "https://mrfylke.no/Tenesteomraade/Kultur/Kulturrabatt"]


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return partnerArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
    
        let partnerImage = cell.viewWithTag(2) as! UIImageView
        
        partnerImage.layer.cornerRadius = 8.0
        partnerImage.layer.masksToBounds = true
        
        partnerImage.image = partnerArray[indexPath.row]
        
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let url = URL(string: linkArray[indexPath.row])
        let webVC = SFSafariViewController(url: url!)
        present(webVC, animated: true, completion: nil)
    }

}
