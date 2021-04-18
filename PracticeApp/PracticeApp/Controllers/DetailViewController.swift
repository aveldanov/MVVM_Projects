//
//  DetailViewController.swift
//  PracticeApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import UIKit

class DetailViewController: UIViewController {
    var nameSelected: String?
    var idSelected: Int?
    var licenseSelected: String?
    var linkSelected: String?

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var lisenseLabel: UILabel!
    @IBOutlet weak var linkSelectedLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        linkSelectedLabel.adjustsFontSizeToFitWidth = false
        linkSelectedLabel.lineBreakMode = .byTruncatingTail
        // Do any additional setup after loading the view.
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        detailLabel.text = nameSelected
        if let idSelected = idSelected{
            idLabel.text = String(idSelected)
        }else{
            idLabel.text = "No ID"
        }
        
        if let licenseSelected = licenseSelected{
            lisenseLabel.text = licenseSelected
        }
        
        if let linkSelected = linkSelected{
            linkSelectedLabel.text = linkSelected
        }
        
        
    }
    
    

}
