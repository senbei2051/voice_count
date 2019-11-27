//
//  CustomButton.swift
//  voice_count_app
//
//  Created by 林拓実 on 2019/11/26.
//  Copyright © 2019年 林拓実. All rights reserved.
//

import Foundation
import UIKit

//課題#########################################################
//buttonだけでなくlabelもIdentity Inspectorで設定できるようにしたい。
//#############################################################

//このクラスではbuttonを配置したのち、Identity InspectorでCustomClassを設定することで、buttonの角丸縁取りが行えるようになる。
@IBDesignable class CustomButton: UIButton {
    
    // 角丸の半径(0で四角形)
    @IBInspectable var cornerRadius: CGFloat = 0.0
    
    // 枠
    @IBInspectable var borderColor: UIColor = UIColor.clear
    @IBInspectable var borderWidth: CGFloat = 0.0
    
    override func draw(_ rect: CGRect) {
        // 角丸
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = (cornerRadius > 0)
        
        // 枠線
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        
        super.draw(rect)
    }
}
