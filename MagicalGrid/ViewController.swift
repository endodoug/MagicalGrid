//
//  ViewController.swift
//  MagicalGrid
//
//  Created by doug harper on 4/25/17.
//  Copyright © 2017 Doug Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let numberOfBoxesPerRow = 15
  let numberOfRows = 30
  var cells = [String: UIView]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let width = view.frame.width / CGFloat(numberOfBoxesPerRow)
    
    for j in 0...numberOfRows {
      for i in 0...numberOfBoxesPerRow {
        let boxView = UIView()
        boxView.backgroundColor = randomColor()
        boxView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height: width)
        boxView.layer.borderWidth = 0.5
        boxView.layer.borderColor = UIColor.black.cgColor
        view.addSubview(boxView)
        
        let key = "\(i) | \(j)" // creates the dictionary key
        cells[key] = boxView    // assign the boxView (dictionary UIView) to the value of the key
      }
    }
    
    view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    
  }
  
  func handlePan(gesture: UIPanGestureRecognizer) {
    let location = gesture.location(in: view)
    print(location)
    
    // determine which view is being touched
    let width = view.frame.width / CGFloat(numberOfBoxesPerRow)
    let i = Int(location.x / width)
    let j = Int(location.y / width)
//    print(i, j)
    
    let key = "\(i) | \(j)"   // get the key from location that's touched
    let boxView = cells[key]  // retrieve the UIView associated with the key and give it to boxView
//    boxView?.backgroundColor = .white
    
    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: { 
      boxView?.backgroundColor = .black
    }, completion: nil)
    
    
//    for subview in view.subviews {
//      if subview.frame.contains(location){
//        subview.backgroundColor = .black
//      }
//    }
    
  }
  
  fileprivate func randomColor() -> UIColor {
    let red = CGFloat(drand48())
    let blue = CGFloat(drand48())
    let green = CGFloat(drand48())
    return UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
  }
  
}

