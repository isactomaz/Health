//
//  TestTableViewCell.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 20/12/21.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
