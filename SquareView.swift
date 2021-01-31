//
//  SquareView.swift
//  touchshapes
//
//  Created by Oleg on 1/29/21.
//

import UIKit

class SquareView : UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
      super.draw(rect)

      let clipPath = UIBezierPath(roundedRect: rect, cornerRadius: 6.0).cgPath

            if let context = UIGraphicsGetCurrentContext() {
            context.addPath(clipPath)
            context.setLineWidth(5)
            UIColor.green.set()
            context.closePath()
            context.fillPath()
    }
    }


}


