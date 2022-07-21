//
//  AddLabelExtension.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
   
    
    func setUPTitleLabel(){
        titleLb.text = "IOS App Templates"
        titleLb.textAlignment = .center
        titleLb.font = .systemFont(ofSize: 32, weight: .bold)
        titleLb.textColor = .white
        let left = NSLayoutConstraint(item: titleLb,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        
        let top = NSLayoutConstraint(item: titleLb,
                                     attribute: .top,
                                      relatedBy: .equal,
                                      toItem: view,
                                     attribute: .top,
                                      multiplier: 1,
                                      constant:70).isActive = true
        
        let right = NSLayoutConstraint(item: titleLb,
                                       attribute: .right,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .right,
                                      multiplier: 1,
                                      constant: -30).isActive = true
        
        let height = NSLayoutConstraint(item: titleLb,
                                        attribute: .height,
                                      relatedBy: .equal,
                                      toItem: nil,
                                        attribute: .notAnAttribute,
                                      multiplier: 1,
                                      constant: 50).isActive = true
    }
    
    func addLastLabel(){
        lastLineLb.text = "Don't have an acount? Sign Up"
        lastLineLb.textAlignment = .center
        lastLineLb.font = .systemFont(ofSize: 17, weight: .semibold)
        let left = NSLayoutConstraint(item: lastLineLb,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        
        let top = NSLayoutConstraint(item: lastLineLb,
                                     attribute: .top,
                                      relatedBy: .equal,
                                      toItem: signBtn,
                                     attribute: .top,
                                      multiplier: 1,
                                      constant:70).isActive = true
        
        let right = NSLayoutConstraint(item: lastLineLb,
                                       attribute: .right,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .right,
                                      multiplier: 1,
                                      constant: -30).isActive = true
        
        let bottom = NSLayoutConstraint(item: lastLineLb,
                                        attribute: .bottom,
                                      relatedBy: .equal,
                                      toItem: view,
                                        attribute: .bottom,
                                      multiplier: 1,
                                      constant: -20).isActive = true
    }
    
}
