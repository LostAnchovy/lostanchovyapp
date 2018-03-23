//
//  locationTableViewCell.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 2/27/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

class locationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
