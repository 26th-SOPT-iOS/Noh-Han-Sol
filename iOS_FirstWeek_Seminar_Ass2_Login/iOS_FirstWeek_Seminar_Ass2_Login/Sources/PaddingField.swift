//
//  PaddingField.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/04/29.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit
@IBDesignable

class PaddingField: UITextField {
    
    let padding = UIEdgeInsets(top:12, left:18, bottom: 10, right:0)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by:padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by:padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by:padding)
    }
    

    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
