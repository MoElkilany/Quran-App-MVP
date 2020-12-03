//
//  QuranDetailsVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit
class QuranDetailsVC: UIViewController {
    
    
    var mainView: QuranDetailsView {
        return view as!  QuranDetailsView
    }
    
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
    
    func ennglishName(englishName: String) {
        mainView.englishNameLabel.text = englishName
    }
    
    func arabicName(arabicName: String) {
        mainView.arabicNameLabel.text = arabicName
    }
    
    func numberOfAyahshName(number: Int) {
        mainView.numberOfAyahsLabel.text = "\(number)"
    }
    
    func typeName(type: String) {
        mainView.revelationTypeLabel.text = type
    }
    
    
    
    func getDataSucessfully() {
        print("Get Data Successfully" )
    }
}
