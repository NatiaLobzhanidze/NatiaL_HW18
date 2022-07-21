//
//  ImageViewWithBackViewAndShadows.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
  
//MARK: create View for image background and set Contstraints
func addBackViewForImage() {

    let screenWidth = UIScreen.main.bounds.width
    
    let top = NSLayoutConstraint(item: imageBackView,
                                 attribute: .top,
                                 relatedBy: .equal,
                                 toItem: titleLb,
                                 attribute: .bottom,
                                 multiplier: 1,
                                 constant: 50).isActive = true
    
    let width = NSLayoutConstraint(item: imageBackView,
                                   attribute: .width,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: screenWidth/2).isActive = true
    
    let aspectRatio = NSLayoutConstraint(item: imageBackView,
                                         attribute: .height,
                                         relatedBy: .equal,
                                         toItem: imageBackView,
                                         attribute: .width,
                                         multiplier: 1,
                                         constant: 0).isActive = true
    let xConstraint = NSLayoutConstraint(item: imageBackView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
    
    imageBackView.layer.cornerRadius = screenWidth/4
    
}
    
    //MARK: create  imageView  and set Contstraints
    
    func setMyImageView(){
        myImageView.image = UIImage(named: "rocket")
        myImageView.contentMode = .scaleAspectFill
        
        let left = NSLayoutConstraint(item: myImageView,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: imageBackView,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        let right = NSLayoutConstraint(item: myImageView,
                                       attribute: .right,
                                      relatedBy: .equal,
                                      toItem: imageBackView,
                                       attribute: .right,
                                      multiplier: 1,
                                      constant: -30).isActive = true
        let top = NSLayoutConstraint(item: myImageView,
                                     attribute: .top,
                                      relatedBy: .equal,
                                      toItem: imageBackView,
                                     attribute: .top,
                                      multiplier: 1,
                                      constant: 30).isActive = true

    
        let bottom = NSLayoutConstraint(item: myImageView,
                                        attribute: .bottom,
                                      relatedBy: .equal,
                                      toItem: imageBackView,
                                        attribute: .bottom,
                                      multiplier: 1,
                                      constant: -30).isActive = true
    }
}
