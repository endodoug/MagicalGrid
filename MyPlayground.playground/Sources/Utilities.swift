import UIKit

public func randomColor() -> UIColor {
  let red = CGFloat(drand48())
  let blue = CGFloat(drand48())
  let green = CGFloat(drand48())
  return UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
}

