//
//  AddButtonExtension.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import Foundation
import UIKit

extension ViewController {
    func addButtonToView (){
        signBtn.setTitle("Sign in", for: .normal)
        signBtn.backgroundColor = .green
        //signBtn.setTitleColor(<#T##color: UIColor?##UIColor?#>, for: <#T##UIControl.State#>)
        signBtn.titleLabel?.textColor = .blue
        signBtn.layer.cornerRadius = 15
        signBtn.layer.shadowOffset = CGSize(width: 15, height: 20)
        signBtn.layer.shadowRadius = 10
        signBtn.layer.shadowOpacity = 0.3
        
        let left = NSLayoutConstraint(item: signBtn,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 50).isActive = true
        let top = NSLayoutConstraint(item: signBtn,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: userPasswordTextfield,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        let right = NSLayoutConstraint(item: signBtn,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -50).isActive = true
        let height = NSLayoutConstraint(item: signBtn,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 45).isActive = true
    
    
    }
}
