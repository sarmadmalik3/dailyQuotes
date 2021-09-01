//
//  TextFields.swift
//  DeliciousFood
//
//  Created by Malik Farhan Asim on 02/04/2021.
//

import Foundation
import UIKit

class txtField: UITextField {
    init(text : String , textColor : UIColor , font : UIFont) {
        super.init(frame: CGRect.zero)
        self.placeholder = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = .natural
        self.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.2682202483)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 15
        let padding = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftView = padding
        self.leftViewMode = .always
        self.rightView = padding
        self.rightViewMode = .always
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
