//
//  ViewController.swift
//  touchshapes
//
//  Created by Oleg on 1/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let center = touch.location(in: view)
            let size  = CGFloat(25 + Int.random(in: 0...50))
            let rect = CGRect(x: center.x-size/2, y: center.y-size/2, width: size, height: size)
            if let shape = [CircleView(frame: rect), SquareView(frame:  rect), TriangleView(frame: rect)].randomElement() {
                    view.addSubview(shape)
            }
        }
    }

}

