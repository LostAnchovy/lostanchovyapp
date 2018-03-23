//
//  fishTableViewCell.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 3/3/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

class fishTableViewCell: UITableViewCell {
    

    @IBAction func fishButton(_ sender: Any) {
        let url = URL(string:"http://thelostanchovy.com/kayak-fishing-tutorials/halibut-fishing-tutorial/")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)

    }
    @IBOutlet weak var fishLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
