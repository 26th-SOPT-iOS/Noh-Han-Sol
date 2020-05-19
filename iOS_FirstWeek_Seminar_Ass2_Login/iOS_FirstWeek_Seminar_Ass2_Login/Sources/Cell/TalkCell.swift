//
//  TalkCell.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/05/15.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class TalkCell: UITableViewCell {
    static let identifier : String = "TalkCell"
    
    @IBOutlet weak var talkImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    func set(_ talkInformation : TalkInformation) {
        talkImageView.image = talkInformation.image
        nameLabel.text = talkInformation.name
        messageLabel.text = talkInformation.message
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
