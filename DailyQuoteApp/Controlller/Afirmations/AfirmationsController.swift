//
//  AfirmationsController.swift
//  DailyQuoteApp
//
//  Created by Sarmad Ishfaq on 29/08/2021.
//

import UIKit

class AfirmationsController: UIViewController {

    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = true
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.clipsToBounds = false
        collectionView.isScrollEnabled = true
        collectionView.isPagingEnabled = true
        collectionView.register(QuoteCollectionViewCell.self, forCellWithReuseIdentifier: "QuoteCollectionViewCell")
        return collectionView
    }()
    let PreviousButton = button(text: "Previous", color: CustomuserDefaults.appColor, font: .setFont(FontName: .popins_Medium, fontSize: 15), cornerradius: 5, bgcolor: CustomuserDefaults.textColor)
    let NextButton = button(text: "Next", color: CustomuserDefaults.appColor, font: .setFont(FontName: .popins_Medium, fontSize: 15), cornerradius: 5, bgcolor: CustomuserDefaults.textColor)
    let backButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.backward")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var afirmations : [String] = []
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = CustomuserDefaults.appColor
        setUpUI()
       getAfirmations()
        navigationController?.navigationBar.isHidden = true
        PreviousButton.addTarget(self, action: #selector(handlePreviousButton), for: .touchUpInside)
        NextButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
        backButton.imageView?.tintColor = .white
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    func setUpUI(){
        view.addSubview(collectionView)
        view.addSubview(PreviousButton)
        view.addSubview(NextButton)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
        
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.widthRatio),
            
            backButton.widthAnchor.constraint(equalToConstant: 25.widthRatio),
            backButton.heightAnchor.constraint(equalToConstant: 25.heightRatio),
            
            collectionView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20.heightRatio),
            collectionView.bottomAnchor.constraint(equalTo: PreviousButton.topAnchor, constant: -20.heightRatio),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            PreviousButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            PreviousButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            PreviousButton.widthAnchor.constraint(equalToConstant: 130.widthRatio),
            PreviousButton.heightAnchor.constraint(equalToConstant: 50.heightRatio),
            
            NextButton.widthAnchor.constraint(equalToConstant: 130.widthRatio),
            NextButton.heightAnchor.constraint(equalToConstant: 50.heightRatio),
            NextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            NextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
        
    }
    
        func getAfirmations(){
            if let afirmations = UserDefaults.standard.stringArray(forKey: CustomuserDefaults.dailyQuotesArray) {
                for quote in afirmations {
                    print(quote)
                }
                print(afirmations.count)
                
                self.afirmations = afirmations
                collectionView.reloadData()
            }
    
        }
    
    @objc func handleNextButton() {
        
        if afirmations.count > 0 && index < afirmations.count {
            index += 1
            collectionView.reloadData()
        }else {
            NextButton.isUserInteractionEnabled = false
            NextButton.alpha = 0.5
        }
    }
    
    @objc func handlePreviousButton() {
        
        if  index > 0{
            index -= 1
            collectionView.reloadData()
        }
        
        if index < afirmations.count {
            NextButton.isUserInteractionEnabled = true
            NextButton.alpha = 1
        }
    }
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}
extension AfirmationsController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if afirmations.count > 0 {
        return 1
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuoteCollectionViewCell", for: indexPath) as! QuoteCollectionViewCell
        cell.quoteLabel.text = afirmations[index]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15.autoSized
    }
    
}
