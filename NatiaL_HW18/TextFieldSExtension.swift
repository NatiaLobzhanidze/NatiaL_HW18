//
//  TextFieldSExtension.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import Foundation
import UIKit
extension ViewController {
    
    // add userTxTField
    func configureTxtFLD(textField: UITextField, placeHolder: String) {
        textField.placeholder = placeHolder
            textField.keyboardType = UIKeyboardType.default
            textField.returnKeyType = UIReturnKeyType.done
            textField.autocorrectionType = UITextAutocorrectionType.no
            textField.font = UIFont.systemFont(ofSize: 13)
            textField.borderStyle = UITextField.BorderStyle.roundedRect
            textField.clearButtonMode = UITextField.ViewMode.whileEditing;
            textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
    }
    func addUserTextField (){
        configureTxtFLD(textField: userNameTextfield, placeHolder: " Username")
        let left = NSLayoutConstraint(item: userNameTextfield,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        let top = NSLayoutConstraint(item: userNameTextfield,
                                     attribute: .top,
                                     relatedBy: .equal ,
                                     toItem: myImageView,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 100).isActive = true
        let right = NSLayoutConstraint(item: userNameTextfield,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -30).isActive = true
        let height = NSLayoutConstraint(item: userNameTextfield,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 45).isActive = true
    }
    func addUserPassTxtFld(){
        configureTxtFLD(textField: userPasswordTextfield, placeHolder: " Password")
        
        let left = NSLayoutConstraint(item: userPasswordTextfield,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        let top = NSLayoutConstraint(item: userPasswordTextfield,
                                     attribute: .top,
                                     relatedBy: .equal ,
                                     toItem: userNameTextfield,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 25).isActive = true
        let right = NSLayoutConstraint(item: userPasswordTextfield,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -30).isActive = true
        let height = NSLayoutConstraint(item: userPasswordTextfield,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 45).isActive = true
       
    cornerField(txtfield: userPasswordTextfield)
        cornerField(txtfield: userNameTextfield)
       
    }
    
    func cornerField(txtfield: UITextField){
        txtfield.layer.masksToBounds = true
        txtfield.layer.borderColor = UIColor.white.cgColor
        txtfield.layer.borderWidth = 2
        txtfield.layer.cornerRadius = 15
        
        txtfield.layer.shadowOffset = CGSize(width: 25,
            height: 30)
        txtfield.layer.shadowRadius = 20
        txtfield.layer.shadowOpacity = 1.0
       
    }
   
}
