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
        table.separatorStyle = .none
        table.backgroundColor = .clear
        table.register(SettingDetailTableViewCell.self, forCellReuseIdentifier: "SettingDetailTableViewCell")
        return table
    }()
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
    
    //helper Function
    func setupViews(){
        view.addSubview(backButton)
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.widthRatio),
            
            backButton.widthAnchor.constraint(equalToConstant: 25.widthRatio),
            backButton.heightAnchor.constraint(equalToConstant: 25.heightRatio),
            
            tableview.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30.heightRatio),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.widthRatio),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.widthRatio),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            

        ])
}
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}
extension SettingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "SettingDetailTableViewCell", for: indexPath) as! SettingDetailTableViewCell
        cell.bindData(index: indexPath.row)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = HomeViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    

}
