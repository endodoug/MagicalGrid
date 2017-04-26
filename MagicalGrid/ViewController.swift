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
    
    
    let redView = UIView()
    redView.backgroundColor = .red
    redView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    view.addSubview(redView)
  }

}

