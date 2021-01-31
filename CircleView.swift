//
//  CircleView.swift
//  touchshapes
//
//  Created by Oleg on 1/29/21.
//

import UIKit

class CircleView : UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.setLineWidth(5)
            UIColor.red.set()
            let center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
            let radius = frame.size.width / 2 - 5
            context.addArc(center: center, radius: radius, startAngle: 0, endAngle: .pi * 2, clockwise: true)
            context.strokePath()
            
        }
    }
}
