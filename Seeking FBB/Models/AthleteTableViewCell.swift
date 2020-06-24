//
//  AthleteTableViewCell.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/17/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit

class AthleteTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
