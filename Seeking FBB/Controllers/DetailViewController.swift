//
//  DetailViewController.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/19/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var name = String()
    var info = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = name
        img.image = image
        infoLbl.text = "This will show"
        
    }
    
    
    @IBAction func voteBtnPressed(_ sender: Any) {
    }
    
}
