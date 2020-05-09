//
//  WeatherCell.swift
//  iOS_ThirdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/05/09.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    static let identifier : String = "WeatherCell"
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setdateInformation(weatherImageName: String, date: String, subTitle:String) {
        weatherImageView.image = UIImage(named: weatherImageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }

}
