//
//  TalkInformation.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/05/15.
//  Copyright © 2020 노한솔. All rights reserved.
//
import UIKit

struct TalkInformation {
    var image : UIImage?
    var name : String
    var message : String
    
    init(name : String, message: String, imageName: String) {
        self.image = UIImage(named: imageName)
        self.name = name
        self.message = message
    }
    
}
