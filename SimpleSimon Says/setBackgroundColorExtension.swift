//
//  setBackgroundColorExtension.swift
//  SimpleSimon Says
//
//  Created by David Schlundt-Bodien on 6/5/20.
//  Copyright © 2020 David Schlundt-Bodien. All rights reserved.
//

import UIKit

extension UIButton {

  func setBackgroundColor(_ color: UIColor, for forState: UIControl.State) {
    UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
    UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
    UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
    let colorImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    self.setBackgroundImage(colorImage, for: forState)
  }

}
