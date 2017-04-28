//
//  ViewController.swift
//  MagicalGrid
//
//  Created by doug harper on 4/25/17.
//  Copyright © 2017 Doug Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let numberOfBoxesPerRow = 15
    let numberOfRows = 30
    let width = view.frame.width / CGFloat(numberOfBoxesPerRow)
    
    for j in 0...numberOfRows {
      for i in 0...numberOfBoxesPerRow {
        let boxView = UIView()
        boxView.backgroundColor = randomColor()
        boxView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height: width)
        boxView.layer.borderWidth = 0.5
        boxView.layer.borderColor = UIColor.black.cgColor
        view.addSubview(boxView)
      }
    }
  }
  
  func randomColor() -> UIColor {
    let red = CGFloat(drand48())
    let blue = CGFloat(drand48())
    let green = CGFloat(drand48())
    return UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
  }

}

