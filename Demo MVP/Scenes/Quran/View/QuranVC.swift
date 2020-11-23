//
//  QuranVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

class QuranVC: UIViewController {
    
    var presenter :QuranPresenter!
    let tableList = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = QuranPresenter(view: self)
        setTableViewConfigration()
        presenter.startAPI()
    }
    
    func setTableViewConfigration(){
        
        view.addSubview(tableList)
        tableList.register(QuranCell.self, forCellReuseIdentifier: QuranCell.reuseID)
        tableList.delegate   = self
        tableList.dataSource = self
        tableList.showsVerticalScrollIndicator = false
        tableList.showsHorizontalScrollIndicator = false

        tableList.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableList.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor),
            tableList.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            tableList.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            tableList.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


extension QuranVC : QuranProtocol {
    func showProgress() {
        print("showProgress")
    }
    
    func dismissProgress() {
        print("DismissProgress")
    }
    
    func getDataSucessfully() {
        self.tableList.reloadData()
    }
    
    func showErrorMessage(error: String) {
        print("Error Message is \(error) ")
    }
}
