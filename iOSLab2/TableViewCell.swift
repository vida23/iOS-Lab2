//
//  TableViewCell.swift
//  iOSLab2
//
//  Created by Vida Rashidi on 2019-12-05.
//  Copyright © 2019 Vida Rashidi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
