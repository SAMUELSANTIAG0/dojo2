//
//  TableViewCell.swift
//  dojo2
//
//  Created by Student on 3/8/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var musicName: UILabel!
    @IBOutlet weak var duration: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
