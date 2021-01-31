//
//  TriangleView.swift
//  touchshapes
//
//  Created by Oleg on 1/31/21.
//
import UIKit
class TriangleView : UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if let context = UIGraphicsGetCurrentContext() {
            context.move(to: CGPoint(x: rect.minX, y: rect.minY))
            context.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            context.addLine(to: CGPoint(x: (rect.minX), y: rect.maxY))
            context.closePath()
            UIColor.yellow.set()
            context.fillPath()
            
        }
    }
    
    
}
