//
//  MenuCollectionViewCell.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 09/07/2021.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    let menuImage = ImageView(image: "dummy")
    let menuName =  label(text: "", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 13), alignment: .center)
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        backgroundColor = .systemBackground
        
    }
  
    //MARK:-Helper Functions
    func setUpUI(){
        addSubview(containerView)
        containerView.addSubview(menuImage)
        containerView.addSubview(menuName)
        shadowDecorate()
        clipsToBounds = false
        NSLayoutConstraint.activate([
            
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),

            menuImage.topAnchor.constraint(equalTo: containerView.topAnchor),
            menuImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            menuImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            menuImage.heightAnchor.constraint(equalToConstant: 60.heightRatio),
            menuImage.widthAnchor.constraint(equalToConstant: 60.widthRatio),
            
            menuName.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            menuName.topAnchor.constraint(equalTo: menuImage.bottomAnchor, constant: 10.heightRatio),
            menuName.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCellWithTitlteAndImage(index : Int){
        switch index {
        case 0:
            menuName.text = "Introduction"
            menuImage.image = UIImage(named: "business")
            
        case 1:
            menuName.text = "Daily Inspiration"
            menuImage.image = UIImage(named: "presentation")
            
        case 2:
            menuName.text = "Afirmations"
            menuImage.image = UIImage(named: "business")
            
        case 3:
            menuName.text = "Desires"
            menuImage.image = UIImage(named: "presentation")
        case 4:
            menuName.text = "Setting"
            menuImage.image = UIImage(named: "presentation")

        default:
            break
        }
    }
    
}
