//
//  MessageTableViewCell.swift
//  Instagram clone
//
//  Created by Peoplelink on 30/12/22.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MessengerAvatar: UIImageView!
    
    @IBOutlet weak var MessengerName: UILabel!
    
    @IBOutlet weak var SentSnapIcon: UIImageView!
    @IBOutlet weak var MessageTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
