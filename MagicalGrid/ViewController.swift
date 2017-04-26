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
    
    for i in 0...5 {
      let redView = UIView()
      redView.backgroundColor = .red
      redView.frame = CGRect(x: i * 100, y: 0, width: 100, height: 100)
      view.addSubview(redView)
    }
    
  }

}

