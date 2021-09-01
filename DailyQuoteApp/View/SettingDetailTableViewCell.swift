//
//  SettingDetailTableViewCell.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 09/07/2021.
//

import UIKit

class SettingDetailTableViewCell: UITableViewCell {
    
    //MARK:-UI-Elements
    let settingLabel = label(text: "Notisfication", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 16), alignment: .natural)    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUPUI()
    }
    
    func setUPUI()
    {
        addSubview(settingLabel)
        
        NSLayoutConstraint.activate([
           // settingLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            settingLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            settingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            settingLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
