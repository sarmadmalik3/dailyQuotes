//
//  Extensionss.swift
//  DeliciousFood
//
//  Created by Malik Farhan Asim on 05/04/2021.
//

import Foundation
import UIKit
//import JGProgressHUD

extension UIViewController {
    
    func addbgImage(name : String)
    {
        let Image = ImageView(image: name)
        Image.contentMode = .scaleAspectFill
        
        
        self.view.addSubview(Image)
        
       
        NSLayoutConstraint.activate([
        
        
            Image.topAnchor.constraint(equalTo: self.view.topAnchor , constant: 0),
            Image.leadingAnchor.constraint(equalTo: self.view.leadingAnchor , constant: 0),
            Image.trailingAnchor.constraint(equalTo: self.view.trailingAnchor , constant: 0),
            Image.bottomAnchor.constraint(equalTo: self.view.bottomAnchor , constant: 0),
            
        
        
        
        ])
        
        
    }
    
    
    
    
}
extension UICollectionViewCell {
    func shadowDecorate() {

        self.layer.cornerRadius = 5.autoSized
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.shadowColor = #colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2274509804, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 3)
        self.layer.shadowRadius = 7.5
        self.layer.shadowOpacity = 0.7
        self.layer.masksToBounds = false
        
    }
}
//let hud = JGProgressHUD()
//extension UIViewController {
//   
//    func showLoadingView(){
//        
//        hud.textLabel.text = "Loading"
//        hud.show(in: self.view)
//    }
//    func dissmissLoadingView(){
//        hud.dismiss()
//    }
//}
enum fontName : String
{
    case popins_Bold = "Poppins-Bold"
    case popins_SemiBold = "Poppins-SemiBold"
    case popins_Medium = "Poppins-Medium"
    
    
}
extension UIFont
{
    static func setFont(FontName : fontName , fontSize : CGFloat) -> UIFont
    {
        let font = UIFont(name: FontName.rawValue , size: fontSize)!
        return font
    }
}
extension Int{
    var autoSized : CGFloat{
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let diagonalSize = sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight))
        let percentage = CGFloat(self)/894*100 //987 is the diagonal size of iphone xs max
        return diagonalSize * percentage / 100
    }
    
    var widthRatio: CGFloat {
        let width = UIScreen.main.bounds.width/375.0 //iphone xs max
        return CGFloat(self)*width
    }
    var heightRatio: CGFloat {
        let width = UIScreen.main.bounds.height/812.0 //iphone xs max
        return CGFloat(self)*width
    }
}
