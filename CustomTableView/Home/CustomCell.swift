//
//  CustomCell.swift
//  CustomTableView
//
//  Created by hytkgami on 2018/04/25.
//  Copyright © 2018年 hytkgami. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
