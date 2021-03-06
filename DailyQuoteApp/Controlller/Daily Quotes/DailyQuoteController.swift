//
//  DailyQuoteController.swift
//  DailyQuoteApp
//
//  Created by Sarmad Ishfaq on 29/08/2021.
//

import UIKit

class DailyQuoteController: UIViewController {

    let quoteLabel =  label(text: "", textcolor: CustomuserDefaults.textColor, font: .setFont(FontName: .Poppins_ExtraLight, fontSize: 30), alignment: .center)
    let backButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.backward")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = CustomuserDefaults.appColor
        navigationController?.navigationBar.isHidden = true
        setupViews()
        loadDailyQuote()
        backButton.imageView?.tintColor = .white
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    func setupViews(){
        view.addSubview(backButton)
        view.addSubview(quoteLabel)
        NSLayoutConstraint.activate([
        
            quoteLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            quoteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            quoteLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.widthRatio),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.widthRatio),
            
            backButton.widthAnchor.constraint(equalToConstant: 25.widthRatio),
            backButton.heightAnchor.constraint(equalToConstant: 25.heightRatio),
        
        ])
    }

    func loadDailyQuote(){
        let dailyQuote = UserDefaults.standard.string(forKey: CustomuserDefaults.dailyQuote)
        quoteLabel.text = dailyQuote ?? ""
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}
