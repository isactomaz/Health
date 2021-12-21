//
//  ProfileTableViewCell.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var valueSwitch: UISwitch!

    @IBAction func clickedSwitch(_ sender: Any) {
        if valueSwitch.isOn {
            valueSwitch.setOn(true, animated: true)
            print("on")
        } else {
            valueSwitch.setOn(false, animated: true)
            print("off")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
