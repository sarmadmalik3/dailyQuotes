//
//  QuoteViewController.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 11/07/2021.
//

import UIKit

class QuoteViewController: UIViewController {

    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = true
        collectionView.backgroundColor = .brown
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        //layout.estimatedItemSize = .zero
        collectionView.clipsToBounds = false
        collectionView.isScrollEnabled = true
        collectionView.register(QuoteCollectionViewCell.self, forCellWithReuseIdentifier: "QuoteCollectionViewCell")
        return collectionView
    }()
    let PreviousButton = button(text: "Previous", color: .black, font: .setFont(FontName: .popins_Medium, fontSize: 15), cornerradius: 5, bgcolor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 0.3342251712))
    let NextButton = button(text: "Next", color: .black, font: .setFont(FontName: .popins_Medium, fontSize: 15), cornerradius: 5, bgcolor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 0.3342251712))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpUI()
       
    }
    func setUpUI(){
        view.addSubview(collectionView)
        view.addSubview(PreviousButton)
        view.addSubview(NextButton)
        
        NSLayoutConstraint.activate([
        
          //  collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            collectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 300.heightRatio),
         //   collectionView.widthAnchor.constraint(equalToConstant: 300.widthRatio),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            PreviousButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            PreviousButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            PreviousButton.widthAnchor.constraint(equalToConstant: 70.widthRatio),
            PreviousButton.heightAnchor.constraint(equalToConstant: 50.heightRatio),
            
            NextButton.widthAnchor.constraint(equalToConstant: 70.widthRatio),
            NextButton.heightAnchor.constraint(equalToConstant: 50.heightRatio),
            NextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            NextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            
            
            
        
        ])
        
    }
    
    func loadDailyQuote() {
        
    }
    
}
extension QuoteViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuoteCollectionViewCell", for: indexPath) as! QuoteCollectionViewCell
         
       // cell.updateCellWithTitlteAndImage(index: indexPath.row)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 335.widthRatio, height: 300.heightRatio)
    }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 15.autoSized
        }
   
    }
      

