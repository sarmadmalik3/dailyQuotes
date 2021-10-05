//
//  SettingDetailTableViewCell.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 09/07/2021.
//

import UIKit

class SettingDetailTableViewCell: UITableViewCell {
    
    //MARK:-UI-Elements
    let catagoryLabel = label(text: "Lips", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 16), alignment: .natural)
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10.heightRatio
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        selectionStyle = .none
        backgroundColor = .clear
    }

    //MARK:-Helper Functions
    func setUpUI(){
        addSubview(containerView)
        containerView.addSubview(catagoryLabel)

        NSLayoutConstraint.activate([
            
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25.widthRatio),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -25.widthRatio),
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 10.heightRatio),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10.heightRatio),
            
            catagoryLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            catagoryLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 19.widthRatio),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bindData(index: Int) {
        switch index {
        case 0:
            catagoryLabel.text = "Notifications"
        case 1:
            catagoryLabel.text = "Feedback"
        case 2:
            catagoryLabel.text = "Copyright & Legal"
        
        
        default:
            break
        }
    }

}
