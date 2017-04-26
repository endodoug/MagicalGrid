//: Playground - noun: a place where people can play

import UIKit
import MagicalGridiOS

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = .white

for i in 0...5 {
  let redView = UIView()
  redView.backgroundColor = randomColor()
  redView.frame = CGRect(x: Double(i) * 100, y: 0.0, width: 100.0, height: 100.0)
  containerView.addSubview(redView)
}



