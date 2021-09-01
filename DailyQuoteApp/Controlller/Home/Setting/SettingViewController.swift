//
//  SettingViewController.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 09/07/2021.
//

import UIKit

class SettingViewController: UIViewController {

    //MARK:-UI-Elements
   lazy var tableview : UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        table.backgroundColor = .clear
        table.register(SettingDetailTableViewCell.self, forCellReuseIdentifier: "SettingDetailTableViewCell")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .systemBackground
    }
    //helper Function
    func setUpUI(){
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            
            tableview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0.heightRatio),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.widthRatio),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.widthRatio),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            

        ])
        

   
}
}
extension SettingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "SettingDetailTableViewCell", for: indexPath) as! SettingDetailTableViewCell
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = HomeViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    

}
