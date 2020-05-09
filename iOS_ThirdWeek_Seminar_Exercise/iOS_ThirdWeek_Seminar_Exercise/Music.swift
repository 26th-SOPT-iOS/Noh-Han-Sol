//
//  Music.swift
//  iOS_ThirdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/05/09.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: title)
        self.musicTitle = coverName
        self.singer = singer
    }
    
}
