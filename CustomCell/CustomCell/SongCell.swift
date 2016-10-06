//
//  SongCell.swift
//  CustomCell
//
//  Created by Rama Milaneh on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    
    @IBOutlet weak var singerImagelabel: UIImageView!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var songNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
