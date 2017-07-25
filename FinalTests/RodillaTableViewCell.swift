//
//  RodillaTableViewCell.swift
//  FinalTests
//
//  Created by Juan carlos on 3/3/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class RodillaTableViewCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!
  
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var objetivoLabel: UILabel!
    
    @IBOutlet var iccLabel: UILabel!
    @IBOutlet var LRpositiveLabel: UILabel!
    @IBOutlet var LRnegativeLabel: UILabel!
    @IBOutlet var sensLabel: UILabel!
    @IBOutlet var especfLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
