//
//  DailyQuoteController.swift
//  DailyQuoteApp
//
//  Created by Sarmad Ishfaq on 29/08/2021.
//

import UIKit

class DailyQuoteController: UIViewController {

    let quoteLabel =  label(text: "", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 13), alignment: .center)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        loadDailyQuote()
    }
    
    func setupViews(){
        view.addSubview(quoteLabel)
        NSLayoutConstraint.activate([
        
            quoteLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            quoteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            quoteLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.widthRatio),
        
        ])
    }

    func loadDailyQuote(){
        let dailyQuote = UserDefaults.standard.string(forKey: CustomuserDefaults.dailyQuote)
        quoteLabel.text = dailyQuote ?? ""
    }
    
    
}
