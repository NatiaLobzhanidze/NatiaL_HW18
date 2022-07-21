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
        textField.borderStyle = UITextField.BorderStyle.none
            textField.clearButtonMode = UITextField.ViewMode.whileEditing;
            textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textField.layer.borderWidth = 5
        textField.layer.borderColor = UIColor.white.cgColor
        textField.backgroundColor = .white
            textField.layer.cornerRadius = 18
        shadowedField(txtfield: textField)
    }
    
    
    func addTextField (with item: UITextField, toItem: UIView?, totextField: UITextField, placeholder: String, constantInt: Int ){
        configureTxtFLD(textField: item, placeHolder: placeholder)
        
        let left = NSLayoutConstraint(item: item,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        let top = NSLayoutConstraint(item: item,
                                     attribute: .top,
                                     relatedBy: .equal ,
                                     toItem: toItem != nil ? toItem : totextField,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: CGFloat(constantInt)).isActive = true
        let right = NSLayoutConstraint(item: item,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -30).isActive = true
        let height = NSLayoutConstraint(item: item,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 45).isActive = true
        
//        shadowedField(txtfield: userPasswordTextfield)
//        shadowedField(txtfield: userNameTextfield)
    }
    
    func shadowedField(txtfield: UITextField){
      
       // txtfield.layer.shadowColor = UIColor.darkGray.cgColor
        txtfield.layer.shadowRadius = 10
        txtfield.layer.shadowOpacity = 0.4
        txtfield.layer.shadowOffset = CGSize(width: 15,
           height: 17)
        //txtfield.layer.masksToBounds = true
       
    }
   
}
