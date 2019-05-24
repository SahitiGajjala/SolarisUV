//
//  PeripheralTableViewCell.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/24/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class PeripheralTableViewCell: UITableViewCell {
    
    @IBOutlet weak var peripheralLabel: UILabel!
    @IBOutlet weak var rssiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
