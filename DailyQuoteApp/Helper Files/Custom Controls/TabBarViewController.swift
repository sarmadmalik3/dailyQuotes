////
////  TabBarViewController.swift
////  DeliciousFood
////
////  Created by Malik Farhan Asim on 04/04/2021.
////
//
//import UIKit
//
//class TabBarViewController: UITabBarController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .black
//        UITabBar.appearance().barTintColor = .systemBackground
//        tabBar.tintColor = .label
//        setUpVc()
//    }
//
//    private func setUpVc() {
//        viewControllers = [createNavBar(for: HomeViewController(), title: "Home", image: UIImage(systemName: "house")!),
//                           createNavBar(for: CartViewController(), title: "Cart", image: UIImage(systemName: "cart")!),
//                           createNavBar(for: ProfileViewController(), title: "Profile", image: UIImage(systemName : "person.fill")!),
//                            createNavBar(for: OderViewController(), title: "Tracking", image: UIImage(systemName: "cart")!)]
//    }
//    
//    fileprivate func createNavBar(for rootViewController : UIViewController , title : String , image  : UIImage) -> UIViewController{
//        
//        let navController = UINavigationController(rootViewController: rootViewController)
//        
//        navController.tabBarItem.title = title
//        navController.tabBarItem.image = image
//        navController.navigationBar.prefersLargeTitles = true
//        navController.navigationItem.title = title
//        navController.navigationBar.largeTitleTextAttributes = [
//            NSAttributedString.Key.foregroundColor: UIColor.navTitleColor , NSAttributedString.Key.font: UIFont.setFont(FontName: .popins_SemiBold, fontSize: 30.widthRatio)
//        ]
//        return navController
//    }
//}
