//
//  CodoTableViewCell.swift
//  FinalTests
//
//  Created by Juan carlos on 16/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class CodoTableViewCell: UITableViewCell {

   
    @IBOutlet var CodoCellImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var objetivoLabel: UILabel!
    
    @IBOutlet var iccLabel: UILabel!
    
    @IBOutlet var LRpositivoLabel: UILabel!
    
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
