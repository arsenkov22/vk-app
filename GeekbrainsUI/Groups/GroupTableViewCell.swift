//
//  GroupTableViewCell.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    @IBOutlet weak var groupImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
