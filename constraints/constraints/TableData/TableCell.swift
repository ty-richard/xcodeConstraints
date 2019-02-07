//
//  TableCell.swift
//  constraints
//
//  Created by Ty Richard on 2/6/19.
//  Copyright © 2019 Ty Richard. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    
    @IBOutlet weak var Body: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
