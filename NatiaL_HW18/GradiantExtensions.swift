//
//  GradiantExtensions.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import Foundation
import UIKit

extension UIView {
func applyGradient(colours: [UIColor]) -> Void {
 let gradient: CAGradientLayer = CAGradientLayer()
 gradient.frame = self.bounds
 gradient.colors = colours.map { $0.cgColor }
 gradient.startPoint = CGPoint(x : 0.0, y : 0.0)
    gradient.endPoint = CGPoint(x :0.0, y: 1.0)
 self.layer.insertSublayer(gradient, at: 0)
 }
}




