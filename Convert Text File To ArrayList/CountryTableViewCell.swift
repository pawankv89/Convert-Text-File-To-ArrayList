//
//  CountryTableViewCell.swift
//  Convert Text File To ArrayList
//
//  Created by Pawan kumar on 09/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    //Title
    @IBOutlet weak var titleLabel: UILabel!
    
    //Identifire
    static let identifire: String = "CountryTableViewCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
