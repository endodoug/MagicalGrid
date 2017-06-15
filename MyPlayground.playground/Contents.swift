//: Playground - noun: a place where people can play

import UIKit
import MagicalGridiOS

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = .white

//: Render boxes on a horizontal row
let numberOfBoxesPerRow = 15
let width = containerView.frame.width / CGFloat(numberOfBoxesPerRow)

//: Render horizontal rows vertically -> stack them up!
let numberOfRows = 30


for j in 0...numberOfRows {
  for i in 0...numberOfBoxesPerRow {
    let boxView = UIView()
    boxView.backgroundColor = randomColor()
    boxView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height: width)
    boxView.layer.borderWidth = 0.5
    boxView.layer.borderColor = UIColor.black.cgColor
    containerView.addSubview(boxView)
  }
}




