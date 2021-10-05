//
//  HomeViewController.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 06/07/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK:- UI-Elements
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        layout.estimatedItemSize = .zero
        collectionView.backgroundColor = .systemBackground
        collectionView.clipsToBounds = false
        collectionView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "MenuCollectionViewCell")
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "Dashboard"
        self.navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.prefersLargeTitles = false
        setUpUI()
        
//        DataManager.shared.showDailyQuote()
    }
    //MARK:- Helper Functions
    func setUpUI(){
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.heightRatio),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }

    
}
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.updateCellWithTitlteAndImage(index: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = 335.widthRatio
        let spacing = 15.widthRatio
        let totalWidth = collectionViewWidth - spacing
        
        return CGSize(width: totalWidth / 2, height: 200.heightRatio)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15.autoSized
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let controlller = ReflectionViewController()
            navigationController?.pushViewController(controlller, animated: true)
        case 1:
            let controlller = IntroductionController()
            navigationController?.pushViewController(controlller, animated: true)
        case 2:
            let controlller = DailyQuoteController()
            navigationController?.pushViewController(controlller, animated: true)
        case 3:
            let controlller = AfirmationsController()
            navigationController?.pushViewController(controlller, animated: true)
        case 4:
            let controlller = DesiresController()
            navigationController?.pushViewController(controlller, animated: true)
        case 5:
            let controlller = SettingViewController()
            navigationController?.pushViewController(controlller, animated: true)
            
        default:
            return
        }
    }
}






