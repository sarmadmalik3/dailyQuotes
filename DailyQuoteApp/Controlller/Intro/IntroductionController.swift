//
//  IntroductionController.swift
//  DailyQuoteApp
//
//  Created by Sarmad Ishfaq on 01/09/2021.
//

import UIKit

class IntroductionController: UIViewController {

    let quoteLabel =  label(text: CustomuserDefaults.introText, textcolor: .white, font: .setFont(FontName: .Poppins_ExtraLight, fontSize: 18), alignment: .justified)
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
        
            quoteLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30.autoSized),
            quoteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            quoteLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.widthRatio),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.widthRatio),
            
            backButton.widthAnchor.constraint(equalToConstant: 25.widthRatio),
            backButton.heightAnchor.constraint(equalToConstant: 25.heightRatio),
        
        ])
    }
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}
