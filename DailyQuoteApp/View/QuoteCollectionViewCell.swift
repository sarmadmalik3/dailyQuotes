//
//  QuoteCollectionViewCell.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 11/07/2021.
//

import UIKit

class QuoteCollectionViewCell: UICollectionViewCell {
    
    //MARK:-UI-Elements
    let quoteLabel = label(text: "farHan Malik", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 30), alignment: .center)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        //contentView.backgroundColor = .blue
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   //MARK:-Helper Functions
    func setUpUI()
    {
        addSubview(quoteLabel)
        quoteLabel.numberOfLines = 0
        quoteLabel.lineBreakMode = .byWordWrapping
        
        NSLayoutConstraint.activate([
            quoteLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            quoteLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25.widthRatio),
            quoteLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25.widthRatio),
        
        
        ])
    }
}
