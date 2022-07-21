//
//  ViewController.swift
//  NatiaL_HW18
//
//  Created by Natia's Mac on 21.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: add Title "IOS App Templates"
    
    lazy var titleLb: UILabel = {
        let titleLb = UILabel()
        titleLb.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLb)
        return titleLb
    }()
    
    // MARK: add gradient background for imageView
    
    lazy var imageBackView: UIView = {
        makeViewGradianT()
    }()
    
    // MARK: add ImageView
    
    lazy var myImageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        imageBackView.addSubview(myImageView)
        return myImageView
     }()
    
    // MARK: add username textField
    
    lazy var userNameTextfield: UITextField = {
        let userNameTextfield = UITextField()
        userNameTextfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameTextfield)
        
        return userNameTextfield
    }()
    
    // MARK: add password textField
    
    lazy var userPasswordTextfield: UITextField = {
        let userPasswordTextfield = UITextField()
        userPasswordTextfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userPasswordTextfield)
       
        return userPasswordTextfield
    }()
    
    // MARK: add log in button
    
    lazy var signBtn: UIButton = {
        let signBtn = UIButton()
        signBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signBtn)
        return signBtn
    }()
    
    // MARK: add bottom textLabel
    
    lazy var lastLineLb: UILabel = {
        let lastLineLb = UILabel()
        lastLineLb.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lastLineLb)
        return lastLineLb
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    
    
    func setUpView(){
        addGradianTToBackView()
        setUPTitleLabel()
        addBackViewForImage()
        setMyImageView()
        addTextField(with: userNameTextfield, toItem: myImageView, totextField: userPasswordTextfield, placeholder: "    Username", constantInt: 100)
    
        addTextField(with: userPasswordTextfield, toItem: nil, totextField: userNameTextfield , placeholder: "   Password", constantInt: 30)
        addButtonToView ()
        addLastLabel()
    }
    
    // MARK: add GradianT To Background
    
    func addGradianTToBackView(){
        let firstColor =  UIColor(red: 146/255, green: 60/255, blue: 213/255, alpha: 1.0)
         let secondColor = UIColor(red: 20/255, green: 79/255, blue: 255/255, alpha: 1.0)
        self.view.applyGradient(colours: [firstColor, secondColor])
    }

    // MARK: make image background view gradient
    
    func makeViewGradianT() -> UIView{
        let imageBackView = UIView()
        imageBackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageBackView)
        let gradientLayer = CAGradientLayer()
        let imX = Int(imageBackView.frame.origin.x)
        let imy = Int(imageBackView.frame.origin.y)
        let imagewidth = Int(UIScreen.main.bounds.width/2)
        
        gradientLayer.frame = CGRect(x: imX, y: imy , width: imagewidth, height: imagewidth)
        gradientLayer.colors = [UIColor(red: 47/255, green: 76/255, blue: 238/255, alpha: 0.9).cgColor,
                                UIColor(red: 190/255, green: 60/255, blue: 213/255, alpha: 0.9).cgColor]
        gradientLayer.cornerRadius = UIScreen.main.bounds.width/4
        imageBackView.layer.addSublayer(gradientLayer)
        
        
        imageBackView.layer.shadowOffset = CGSize(width: 15,
            height: 20)
        imageBackView.layer.shadowRadius = 10
        imageBackView.layer.shadowOpacity = 0.4
        imageBackView.layer.borderWidth = 4
        imageBackView.layer.borderColor = UIColor.white.cgColor
        
        return imageBackView
    }
    
   
}








#if canImport(swiftUI) && DEBUG
import SwiftUI
struct PreviewViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }.previewDevice("iPhone 12")
    }
}

struct ViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
#endif
