//
//  QuranDetailsVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit
class QuranDetailsVC: UIViewController {
    
    var presenter: QuranDetailsDataPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = QuranDetailsDataPresenter(with: presenter.quranDetails, with: self)
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = presenter.navigationTitle()
    }
}


extension QuranDetailsVC :QuranDetailsProtocol {
    
    func printEnglishName(englishName: String) {
        print("englishName is :  \(englishName)" )
    }
    
    func getDataSucessfully() {
        print("Get Data Successfully" )
    }
}
