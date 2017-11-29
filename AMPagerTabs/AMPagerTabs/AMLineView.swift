//
//  AMLineView.swift
//  EMS
//
//  Created by abedalkareem omreyh on 10/26/17.
//  Copyright © 2017 sdvision. All rights reserved.
//

import UIKit

class AMLineView: UIView {
    
    var lineHeight:CGFloat = 7
    var lineColor = UIColor.white
    
    override func draw(_ rect: CGRect) {
        drawSelectedTabLine()
    }
    
    func drawSelectedTabLine(){
        let height = frame.height
        let width = frame.width
        let triangleSize:CGFloat = 5
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: height-lineHeight))
        path.addLine(to: CGPoint(x: (width/2)-triangleSize, y: height-lineHeight))
        path.addLine(to: CGPoint(x: (width/2), y: height-lineHeight-triangleSize))
        path.addLine(to: CGPoint(x: (width/2)+triangleSize , y: height-lineHeight))
        path.addLine(to: CGPoint(x: width , y: height-lineHeight))
        path.addLine(to: CGPoint(x: width , y: height))
        path.addLine(to: CGPoint(x: 0 , y: height))
        path.addLine(to: CGPoint(x: 0 , y: height-lineHeight))
        path.close()
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
        clipsToBounds = true
    }

    
}
